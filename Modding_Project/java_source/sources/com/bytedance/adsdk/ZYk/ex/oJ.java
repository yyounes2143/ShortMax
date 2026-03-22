package com.bytedance.adsdk.ZYk.ex;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
/* loaded from: classes3.dex */
public class oJ implements ex {
    private final HttpURLConnection oJ;

    public oJ(HttpURLConnection httpURLConnection) {
        this.oJ = httpURLConnection;
    }

    @Override // com.bytedance.adsdk.ZYk.ex.ex
    public InputStream ZYk() throws IOException {
        return this.oJ.getInputStream();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.oJ.disconnect();
    }

    @Override // com.bytedance.adsdk.ZYk.ex.ex
    public String ex() {
        try {
            if (oJ()) {
                return null;
            }
            return "Unable to fetch " + this.oJ.getURL() + ". Failed with " + this.oJ.getResponseCode() + "\n" + oJ(this.oJ);
        } catch (IOException e10) {
            return e10.getMessage();
        }
    }

    @Override // com.bytedance.adsdk.ZYk.ex.ex
    public boolean oJ() {
        try {
            return this.oJ.getResponseCode() / 100 == 2;
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // com.bytedance.adsdk.ZYk.ex.ex
    public String tB() {
        return this.oJ.getContentType();
    }

    private String oJ(HttpURLConnection httpURLConnection) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
        StringBuilder sb2 = new StringBuilder();
        while (true) {
            try {
                String readLine = bufferedReader.readLine();
                if (readLine != null) {
                    sb2.append(readLine);
                    sb2.append('\n');
                } else {
                    try {
                        break;
                    } catch (Exception unused) {
                    }
                }
            } catch (Throwable th2) {
                try {
                    bufferedReader.close();
                } catch (Exception unused2) {
                }
                throw th2;
            }
        }
        bufferedReader.close();
        return sb2.toString();
    }
}
