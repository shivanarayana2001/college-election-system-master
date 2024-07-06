package com.election;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import java.io.File;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;

public class ReadFromXml {
	public static Map<String, String> ReadDBDetails() {
		Map<String, String> map = new HashMap<>();
		try {
            File xmlFile = new File("C:\\Users\\Saketh\\OneDrive\\Desktop\\SUSRUTH GIT\\college-election-system-master\\election\\WebContent\\DBDetails.xml");
            DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
            Document doc = dBuilder.parse(xmlFile);

            doc.getDocumentElement().normalize();

            String databaseNameId = "name";
            String databaseDriverId = "driver";
            String urlId = "url";
            String passwordId = "password"; // Note the correct spelling here as per your XML

            String user ="user";
            // Get database name
            String dbName = getTextContentById(doc, "database-name", databaseNameId);
            
            System.out.println("Database Name: " + dbName);

            // Get database driver
            String dbDriver = getTextContentById(doc, "database-driver", databaseDriverId);
            System.out.println("Database Driver: " + dbDriver);

            String dbUser = getTextContentById(doc, "user", user);
            System.out.println("Database Password: " + user);
            
            
            // Get URL
            String dbUrl = getTextContentById(doc, "url", urlId);
            System.out.println("Database URL: " + dbUrl);

            // Get password
            String dbPassword = getTextContentById(doc, "password", passwordId);
            System.out.println("Database Password: " + dbPassword);
            
            map.put("name", dbName);
            map.put("url", dbUrl);
            map.put("driver", dbDriver);
            map.put("password", dbPassword);
            map.put("user", dbUser);

        } catch (Exception e) {
            e.printStackTrace();
        }
     return map;
}

	private static String getTextContentById(Document doc, String tagName, String id) {
        NodeList nodeList = doc.getElementsByTagName(tagName);
        for (int i = 0; i < nodeList.getLength(); i++) {
            Element element = (Element) nodeList.item(i);
            if (element.getAttribute("id").equals(id)) {
                return element.getTextContent().trim();
            }
        }
        return null;
    }
}
