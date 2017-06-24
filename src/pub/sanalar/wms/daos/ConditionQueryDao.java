package pub.sanalar.wms.daos;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

public class ConditionQueryDao extends HibernateDaoSupport {

	public Map<Integer, String> getAllConditions(){
		String hql = "select con.conditionId, con.conditionDesciption from WmsCondition con";
		List<?> conditions = getHibernateTemplate().find(hql);
		
		Map<Integer, String> results = new HashMap<Integer, String>();
		for(int i=0; i < conditions.size(); ++i){
			Object[] category = (Object[])conditions.get(i);
			results.put((Integer)category[0], (String)category[1]);
		}
		
		return results;
	}
}