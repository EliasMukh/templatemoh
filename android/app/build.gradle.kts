plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("kotlin-android")
    // Flutter plugin must come after the Android and Kotlin plugins
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.templatemoh"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = "27.0.12077973"

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_11
        targetCompatibility = JavaVersion.VERSION_11
    }

    kotlinOptions {
        jvmTarget = JavaVersion.VERSION_11.toString()
    }

    defaultConfig {
        applicationId = "com.example.templatemoh"
        minSdk = 23
        targetSdk = 34
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

     buildTypes {
        getByName("debug") {
            isMinifyEnabled = false
        }
        getByName("release") {
            // مؤقتًا نستخدم توقيع debug فقط
            signingConfig = signingConfigs.getByName("debug")
            isMinifyEnabled = true
            proguardFiles(
                getDefaultProguardFile("proguard-android-optimize.txt"),
                "proguard-rules.pro"
            )
        }
    }

     flavorDimensions += "default"
    productFlavors {
        create("development") {
            dimension = "default"
            applicationIdSuffix = ".development"
            versionNameSuffix = "-dev"
            resValue("string", "app_name","DocDoc development")
        }
        create("production") {
            dimension = "default"
            applicationIdSuffix = ".production"
            versionNameSuffix = "-production"
            resValue("string", "app_name","DocDoc production")
        }
    }
}

flutter {
    source = "../.."
}
