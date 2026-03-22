package com.applovin.impl;

import com.applovin.impl.sdk.utils.StringUtils;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class h4 {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicReference f8046a = new AtomicReference();

    public static String a() {
        return "iabtechlab-Applovin";
    }

    public static URL b() {
        try {
            return new URL("https://compliance.iabtechnologylab.com/compliance-js/omid-validation-verification-script-v1-APPLOVIN-01102024.js");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String c() {
        return "iabtechlab.com-omid";
    }

    public static String a(com.applovin.impl.sdk.k kVar, Map map) {
        String str = (String) f8046a.get();
        if (StringUtils.isValidString(str)) {
            return str;
        }
        URL b10 = b();
        if (b10 == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        try {
            InputStream a10 = kVar.H().a(b10.toString(), (List) null, false, map);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(a10));
            while (true) {
                try {
                    String readLine = bufferedReader.readLine();
                    if (readLine == null) {
                        break;
                    }
                    sb2.append(readLine);
                    sb2.append("\n");
                } catch (Throwable th2) {
                    try {
                        bufferedReader.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
            bufferedReader.close();
            if (a10 != null) {
                a10.close();
            }
        } catch (Throwable th4) {
            kVar.O().a("OpenMeasurementTestParameters", th4);
            kVar.E().a("OpenMeasurementTestParameters", "getTestValidationJavaScriptContent", th4);
        }
        String sb3 = sb2.toString();
        f8046a.set(sb3);
        return sb3;
    }
}
