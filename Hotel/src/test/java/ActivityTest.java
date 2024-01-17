import java.util.List;
import java.util.Optional;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.example.dao.ActivityDaoImpl;
import com.example.entity.Activity;

public class ActivityTest {

	public static void main(String[] args) {
		
		ApplicationContext ctx = new ClassPathXmlApplicationContext("/WEB-INF/springmvc-servlet.xml");
		
		ActivityDaoImpl activityDaoImpl = ctx.getBean("activityDaoImpl",ActivityDaoImpl.class);
		
		List<Activity> activities = activityDaoImpl.findAllActivities();
		
		System.out.println(activities);
		
		Optional<Activity> actOptional = activityDaoImpl.findActivityById(5);
<<<<<<< HEAD
		System.out.println(actOptional.get()); 
	}

}


=======
		System.out.println(actOptional.get());
	}

}
>>>>>>> branch 'w0616' of https://github.com/starcool0505/JavaProject-Hotel.git
