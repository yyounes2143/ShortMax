package com.amazonaws.auth;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
/* loaded from: classes2.dex */
public class PropertiesCredentials implements AWSCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final String f4958a;

    /* renamed from: b  reason: collision with root package name */
    private final String f4959b;

    public PropertiesCredentials(File file) throws IOException {
        if (file.exists()) {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                Properties properties = new Properties();
                properties.load(fileInputStream);
                if (properties.getProperty("accessKey") != null && properties.getProperty("secretKey") != null) {
                    this.f4958a = properties.getProperty("accessKey");
                    this.f4959b = properties.getProperty("secretKey");
                    try {
                        fileInputStream.close();
                        return;
                    } catch (IOException unused) {
                        return;
                    }
                }
                throw new IllegalArgumentException("The specified file (" + file.getAbsolutePath() + ") doesn't contain the expected properties 'accessKey' and 'secretKey'.");
            } catch (Throwable th2) {
                try {
                    fileInputStream.close();
                } catch (IOException unused2) {
                }
                throw th2;
            }
        }
        throw new FileNotFoundException("File doesn't exist:  " + file.getAbsolutePath());
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String a() {
        return this.f4958a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.f4959b;
    }

    public PropertiesCredentials(InputStream inputStream) throws IOException {
        Properties properties = new Properties();
        try {
            properties.load(inputStream);
            if (properties.getProperty("accessKey") != null && properties.getProperty("secretKey") != null) {
                this.f4958a = properties.getProperty("accessKey");
                this.f4959b = properties.getProperty("secretKey");
                return;
            }
            throw new IllegalArgumentException("The specified properties data doesn't contain the expected properties 'accessKey' and 'secretKey'.");
        } finally {
            try {
                inputStream.close();
            } catch (Exception unused) {
            }
        }
    }
}
