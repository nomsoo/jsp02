package config;

import org.hibernate.SessionFactory;
import org.hibernate.boot.Metadata;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistry;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;

public class HibernateManager {
	private static SessionFactory sessionFactory;
	static {
		try {
			//hibernate 설정 파일 로딩
			StandardServiceRegistry standardRegistry =
			new StandardServiceRegistryBuilder().configure(
					"hibernate.cfg.xml").build();
			//설명데이터 생성
			Metadata metaData = 
new MetadataSources(standardRegistry).getMetadataBuilder().build();
	sessionFactory = metaData.getSessionFactoryBuilder().build();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static SessionFactory getSessionFactory(){
		return sessionFactory;
	}
}
