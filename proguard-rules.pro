# Reglas de ProGuard - Ofuscar solo la app

-dontshrink
-dontoptimize
-dontpreverify
-dontusemixedcaseclassnames
-dontnote
-ignorewarnings

-keepattributes *

-keep class org.springframework.** { *; }
-keep class com.fasterxml.** { *; }
-keep class io.github.cdimascio.** { *; }
-keep class jakarta.** { *; }
-keep class org.slf4j.** { *; }
-keep class ch.qos.** { *; }
-keep class org.apache.** { *; }
-keep class org.yaml.** { *; }

-keep public class com.ejemplo.nominatimgeolocalizacionapi.NominatimGeolocalizacionApiApplication {
    public static void main(java.lang.String[]);
}

-keep @org.springframework.boot.autoconfigure.SpringBootApplication class * { *; }
-keep @org.springframework.context.annotation.Configuration class * { *; }
-keep @org.springframework.stereotype.Component class * { *; }
-keep @org.springframework.stereotype.Service class * { *; }
-keep @org.springframework.stereotype.Controller class * { *; }
-keep @org.springframework.web.bind.annotation.RestController class * { *; }

-keepclassmembers class * {
    @org.springframework.beans.factory.annotation.Autowired *;
    @org.springframework.beans.factory.annotation.Value *;
    @org.springframework.context.annotation.Bean *;
    @org.springframework.boot.context.properties.ConfigurationProperties *;
}

-keepclassmembers class * {
    @org.springframework.web.bind.annotation.** *;
}

-keep class com.ejemplo.nominatimgeolocalizacionapi.dto.** { *; }

-dontwarn **
