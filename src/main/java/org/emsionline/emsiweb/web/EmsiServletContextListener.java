package org.emsionline.emsiweb.web;

import org.emsionline.emsiweb.web.controller.ChurchController;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Enumeration;

public class EmsiServletContextListener implements ServletContextListener {
    final Logger logger = LoggerFactory.getLogger(EmsiServletContextListener.class);

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {
        logger.info("contextInitialized");

    }

    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
            logger.info("contextDestroyed");

            ClassLoader cl = Thread.currentThread().getContextClassLoader();

            Enumeration<Driver> drivers = DriverManager.getDrivers();

            while (drivers.hasMoreElements()) {
                Driver driver = drivers.nextElement();
                logger.info(driver.getClass().toString());
                if (driver.getClass().getClassLoader() == cl) {
                    try {
                        logger.info("Deregistering " + driver.getClass().toString());
                        DriverManager.deregisterDriver(driver);
                    } catch (SQLException e) {
                        logger.error("Error deregistering " + driver.getClass().toString(), e);
                    }
                }
                else {
                    logger.info("Not deregistering " + driver.getClass().toString());
                }
            }



    }
}
