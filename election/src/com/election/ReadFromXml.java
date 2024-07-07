package com.election;

import javax.servlet.ServletContext;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import java.io.InputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class ReadFromXml {

    public Map<String, String> readDBDetails(ServletContext servletContext) {
        Map<String, String> map = new HashMap<>();
        try {
            // Get the input stream of the file from the servlet context
            InputStream inputStream = servletContext.getResourceAsStream("/WEB-INF/DBDetails.xml");

            if (inputStream != null) {
                DocumentBuilderFactory dbFactory = DocumentBuilderFactory.newInstance();
                DocumentBuilder dBuilder = dbFactory.newDocumentBuilder();
                Document doc = dBuilder.parse(inputStream);

                doc.getDocumentElement().normalize();

                // Define IDs or tag names from your XML file
                String databaseNameId = "name";
                String databaseDriverId = "driver";
                String urlId = "url";
                String passwordId = "password";
                String userId = "user"; // Adjusted variable name for consistency
                String databaseId = "database";

                // Get database name
                String dbName = getTextContentById(doc, "database-name", databaseNameId);
                System.out.println("Database Name: " + dbName);

                // Get database driver
                String dbDriver = getTextContentById(doc, "database-driver", databaseDriverId);
                System.out.println("Database Driver: " + dbDriver);

                // Get database URL
                String dbUrl = getTextContentById(doc, "url", urlId);
                System.out.println("Database URL: " + dbUrl);

                // Get database user
                String dbUser = getTextContentById(doc, "user", userId);
                System.out.println("Database User: " + dbUser);

                // Get database password
                String dbPassword = getTextContentById(doc, "password", passwordId);
                System.out.println("Database Password: " + dbPassword);
                
                String database = getTextContentById(doc, "database", databaseId);
                System.out.println("DB NAME : " + database);

                // Populate the map with retrieved values
                map.put("name", dbName);
                map.put("url", dbUrl);
                map.put("driver", dbDriver);
                map.put("password", dbPassword);
                map.put("user", dbUser);
                map.put("database", database);

            } else {
                System.out.println("DBDetails.xml not found!");
                // Handle case where file is not found
            }
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
