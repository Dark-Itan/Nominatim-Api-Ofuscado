package com.ejemplo.nominatimgeolocalizacionapi.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeControllerObfuscated {

    @GetMapping("/obf")
    public ResponseEntity<String> a() {
        String b = "Nominatim Geolocalizacion API - Corriendo correctamente (ofuscado)";
        return ResponseEntity.ok(b);
    }
}