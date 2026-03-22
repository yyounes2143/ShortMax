package com.ss.mediakit.vcnlib;

import android.util.Log;
import java.lang.reflect.Method;
/* loaded from: classes6.dex */
public class CustomVerify {
    public static final int CUSTOM_VERFIY_STATUS_IS_EXCEPTION = -99996;
    public static final int CUSTOM_VERFIY_STATUS_IS_GET_METHOD_EXCEPTION = -99995;
    private static Method getVerifyStatusMethod = null;
    private static boolean hasInited = false;
    private static Method verifyMethod;
    private static Class<?> verifyResultClass;

    /* JADX WARN: Removed duplicated region for block: B:24:0x0058 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.String r0 = "found verify class or method exception:"
            java.lang.String r1 = "getStatus"
            java.lang.Class<byte[][]> r2 = byte[][].class
            java.lang.String r3 = "verifyServerCertificates"
            java.lang.Class<java.lang.String> r4 = java.lang.String.class
            java.lang.String r5 = "custom_verify"
            r6 = 1
            r7 = 0
            java.lang.String r8 = "com.ttnet.org.chromium.net.X509Util"
            java.lang.Class r8 = java.lang.Class.forName(r8)     // Catch: java.lang.Exception -> L39
            java.lang.Class[] r9 = new java.lang.Class[]{r2, r4, r4}     // Catch: java.lang.Exception -> L39
            java.lang.reflect.Method r8 = r8.getMethod(r3, r9)     // Catch: java.lang.Exception -> L39
            com.ss.mediakit.vcnlib.CustomVerify.verifyMethod = r8     // Catch: java.lang.Exception -> L39
            java.lang.String r8 = "com.ttnet.org.chromium.net.AndroidCertVerifyResult"
            java.lang.Class r8 = java.lang.Class.forName(r8)     // Catch: java.lang.Exception -> L39
            com.ss.mediakit.vcnlib.CustomVerify.verifyResultClass = r8     // Catch: java.lang.Exception -> L39
            java.lang.Class[] r9 = new java.lang.Class[r7]     // Catch: java.lang.Exception -> L39
            java.lang.reflect.Method r8 = r8.getMethod(r1, r9)     // Catch: java.lang.Exception -> L39
            com.ss.mediakit.vcnlib.CustomVerify.getVerifyStatusMethod = r8     // Catch: java.lang.Exception -> L39
            java.lang.String r8 = "find ttnet verify suc"
            android.util.Log.e(r5, r8)     // Catch: java.lang.Exception -> L36
            r9 = r6
            goto L56
        L36:
            r8 = move-exception
            r9 = r6
            goto L3b
        L39:
            r8 = move-exception
            r9 = r7
        L3b:
            java.lang.StringBuilder r10 = new java.lang.StringBuilder
            r10.<init>()
            r10.append(r0)
            java.lang.String r8 = r8.getMessage()
            r10.append(r8)
            java.lang.String r8 = r10.toString()
            android.util.Log.e(r5, r8)
            java.lang.String r8 = "find ttnet verify fail"
            android.util.Log.e(r5, r8)
        L56:
            if (r9 != 0) goto L94
            java.lang.Class<com.ss.mediakit.vcnlib.X509Util> r8 = com.ss.mediakit.vcnlib.X509Util.class
            boolean r9 = com.ss.mediakit.vcnlib.X509Util.$assertionsDisabled     // Catch: java.lang.Exception -> L78
            java.lang.Class[] r2 = new java.lang.Class[]{r2, r4, r4}     // Catch: java.lang.Exception -> L78
            java.lang.reflect.Method r2 = r8.getMethod(r3, r2)     // Catch: java.lang.Exception -> L78
            com.ss.mediakit.vcnlib.CustomVerify.verifyMethod = r2     // Catch: java.lang.Exception -> L78
            java.lang.Class<com.ss.mediakit.vcnlib.AndroidCertVerifyResult> r2 = com.ss.mediakit.vcnlib.AndroidCertVerifyResult.class
            com.ss.mediakit.vcnlib.CustomVerify.verifyResultClass = r2     // Catch: java.lang.Exception -> L78
            java.lang.Class[] r3 = new java.lang.Class[r7]     // Catch: java.lang.Exception -> L78
            java.lang.reflect.Method r1 = r2.getMethod(r1, r3)     // Catch: java.lang.Exception -> L78
            com.ss.mediakit.vcnlib.CustomVerify.getVerifyStatusMethod = r1     // Catch: java.lang.Exception -> L78
            java.lang.String r1 = "find default verify suc"
            android.util.Log.e(r5, r1)     // Catch: java.lang.Exception -> L78
            goto L94
        L78:
            r1 = move-exception
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r2.append(r0)
            java.lang.String r0 = r1.getMessage()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            android.util.Log.e(r5, r0)
            java.lang.String r0 = "find default verify fail"
            android.util.Log.e(r5, r0)
        L94:
            com.ss.mediakit.vcnlib.CustomVerify.hasInited = r6
            java.lang.reflect.Method r0 = com.ss.mediakit.vcnlib.CustomVerify.verifyMethod
            if (r0 == 0) goto La3
            java.lang.Class<?> r0 = com.ss.mediakit.vcnlib.CustomVerify.verifyResultClass
            if (r0 == 0) goto La3
            java.lang.String r0 = "get verify method or verify result class suc"
            android.util.Log.e(r5, r0)
        La3:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ss.mediakit.vcnlib.CustomVerify.<clinit>():void");
    }

    private static final native void _init();

    public static int doVerify(byte[][] bArr, String str, String str2) {
        if (verifyMethod != null && verifyResultClass != null && getVerifyStatusMethod != null) {
            try {
                Log.e("custom_verify", "host: " + str2 + "  authType: " + str);
                Object invoke = verifyMethod.invoke(null, bArr, str, str2);
                Log.e("custom_verify", "get status end");
                int intValue = ((Integer) getVerifyStatusMethod.invoke(invoke, new Object[0])).intValue();
                Log.e("custom_verify", "verify result status: " + intValue);
                return intValue;
            } catch (Throwable th2) {
                th2.printStackTrace();
                Log.e("custom_verify", "verify exception stacktrace:" + th2.getMessage());
                return CUSTOM_VERFIY_STATUS_IS_EXCEPTION;
            }
        }
        Log.e("custom_verify", "verify method is null ecception");
        return CUSTOM_VERFIY_STATUS_IS_GET_METHOD_EXCEPTION;
    }

    public static void init() {
        Log.e("custom_verify", "start init native");
        _init();
        Log.e("custom_verify", "end init native");
    }
}
