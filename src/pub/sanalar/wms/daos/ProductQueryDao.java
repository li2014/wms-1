package pub.sanalar.wms.daos;

import java.util.List;

import org.hibernate.Session;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;
import org.springframework.transaction.annotation.Transactional;

import pub.sanalar.wms.models.WmsProduct;

@Transactional
public class ProductQueryDao extends HibernateDaoSupport {

	private String getQueryConditionHql(Integer category1, Integer category2, String search){
		String result = "";
		String categoryFilter = "";
		String nameFilter = "";
		
		if(category1 == 0){
			categoryFilter = "";
		}else if(category2 == 0){
			categoryFilter = "product.wmsCategory.wmsCategory.categoryId=" + category1;
		}else{
			categoryFilter = "product.wmsCategory.categoryId=" + category2;
		}
		
		search = search.trim();
		if(!search.isEmpty()){
			nameFilter = "product.productName like '%" + search + "%'";
		}
		
		if(!categoryFilter.isEmpty() || !search.isEmpty()){
			result += " where";
		}
		
		if(!categoryFilter.isEmpty()){
			result += " " + categoryFilter;
			if(!nameFilter.isEmpty()){
				result += " and";
			}
		}
		
		if(!nameFilter.isEmpty()){
			result += " " + nameFilter;
		}
		
		return result;
	}
	
	public Long getProductCount(Integer category1, Integer category2, String search){
		String hql = "select count(*) from WmsProduct product"
				+ getQueryConditionHql(category1, category2, search);
		
		Object result = getSessionFactory().getCurrentSession().createQuery(hql).uniqueResult();
		return (Long)result;
	}
	
	@SuppressWarnings("unchecked")
	public List<WmsProduct> getProductList(Integer category1, Integer category2, String search, 
			Integer pageSize, Integer page){
		String hql = "from WmsProduct product"
				+ getQueryConditionHql(category1, category2, search);
		
		if(pageSize == 0){
			return (List<WmsProduct>)getSessionFactory().getCurrentSession().createQuery(hql).list();
		}else{
			return (List<WmsProduct>)getSessionFactory().getCurrentSession().createQuery(hql)
					.setFirstResult((page - 1) * pageSize)
					.setMaxResults(pageSize)
					.list();
		}
	}
	
	public WmsProduct getProductById(Integer id){
		return getHibernateTemplate().get(WmsProduct.class, id);
	}
	
	public void updateProduct(WmsProduct product){
		Session session = getHibernateTemplate().getSessionFactory().getCurrentSession();
		session.save(product);
		session.flush();
	}
}