package com.pandora.ttlicense2;

import com.pandora.ttlicense2.utils.L;
import com.ss.ttvideoengine.InfoWrapper;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class LicenseManagerNative {
    static {
        System.loadLibrary("ttlicense2");
    }

    private LicenseManagerNative() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized String addLicense(LicenseFile licenseFile) {
        String nativeAddLicense;
        synchronized (LicenseManagerNative.class) {
            long nanoTime = System.nanoTime();
            nativeAddLicense = nativeAddLicense(licenseFile.getContent(), licenseFile.getSignature());
            L.v("LicenseManagerNative", "addLicense", Long.valueOf(System.nanoTime() - nanoTime));
        }
        return nativeAddLicense;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized int checkFeatureAuth(String str, String str2) {
        int nativeCheckFeatureAuth;
        synchronized (LicenseManagerNative.class) {
            nativeCheckFeatureAuth = nativeCheckFeatureAuth(str, str2);
        }
        return nativeCheckFeatureAuth;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized int checkSDKAuth(String str) {
        int nativeCheckSDKAuth;
        synchronized (LicenseManagerNative.class) {
            nativeCheckSDKAuth = nativeCheckSDKAuth(str);
        }
        return nativeCheckSDKAuth;
    }

    static synchronized int getIntValue(int i10, int i11) {
        int nativeGetIntValue;
        synchronized (LicenseManagerNative.class) {
            nativeGetIntValue = nativeGetIntValue(i10, i11);
        }
        return nativeGetIntValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized License getLicense(String str) {
        License nativeGetLicenseInfo;
        synchronized (LicenseManagerNative.class) {
            nativeGetLicenseInfo = nativeGetLicenseInfo(str);
        }
        return nativeGetLicenseInfo;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized String getSDKEdition(String str) {
        String nativeGetSDKEdition;
        synchronized (LicenseManagerNative.class) {
            nativeGetSDKEdition = nativeGetSDKEdition(str);
        }
        return nativeGetSDKEdition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void init(String str) {
        synchronized (LicenseManagerNative.class) {
            nativeInit(str);
        }
    }

    private static native String nativeAddLicense(String str, String str2);

    private static native int nativeCheckFeatureAuth(String str, String str2);

    private static native int nativeCheckSDKAuth(String str);

    private static native int nativeGetIntValue(int i10, int i11);

    private static native License nativeGetLicenseInfo(String str);

    private static native String nativeGetSDKEdition(String str);

    private static native int nativeInit(String str);

    private static native int nativeSetIntValue(int i10, int i11);

    public static native void openLog(boolean z10);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void setAuthParams() {
        synchronized (LicenseManagerNative.class) {
            try {
                try {
                    try {
                        Method method = InfoWrapper.class.getMethod("getExpiredDegradeEnabled", new Class[0]);
                        method.setAccessible(true);
                        nativeSetIntValue(0, ((Integer) method.invoke(null, new Object[0])).intValue());
                    } catch (InvocationTargetException e10) {
                        e10.printStackTrace();
                    }
                } catch (IllegalAccessException e11) {
                    e11.printStackTrace();
                }
            } catch (ClassNotFoundException e12) {
                e12.printStackTrace();
            } catch (NoSuchMethodException e13) {
                e13.printStackTrace();
            }
        }
    }

    static synchronized int setIntValue(int i10, int i11) {
        int nativeSetIntValue;
        synchronized (LicenseManagerNative.class) {
            nativeSetIntValue = nativeSetIntValue(i10, i11);
        }
        return nativeSetIntValue;
    }
}
