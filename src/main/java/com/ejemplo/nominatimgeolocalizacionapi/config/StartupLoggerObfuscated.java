package com.ejemplo.nominatimgeolocalizacionapi.config;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.event.EventListener;
import org.springframework.core.env.Environment;
import org.springframework.stereotype.Component;

import java.net.InetAddress;
import java.net.UnknownHostException;

@Component
public class StartupLoggerObfuscated {

    private static final Logger a = LoggerFactory.getLogger(StartupLoggerObfuscated.class);

    private final Environment b;

    public StartupLoggerObfuscated(Environment c) {
        this.b = c;
    }

    @EventListener(ApplicationReadyEvent.class)
    public void onApplicationReady() throws UnknownHostException {
        String d = b.getProperty("server.port", "8080");
        String e = InetAddress.getLocalHost().getHostAddress();
        
        int f = 100;
        int g = 200;
        int h = f + g;
        
        if (h > 0) {
            a.info("Application started");
            a.info("Responding at http://{}:{}", e, d);
        }
    }
}