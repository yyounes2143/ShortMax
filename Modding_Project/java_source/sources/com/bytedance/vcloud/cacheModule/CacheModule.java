package com.bytedance.vcloud.cacheModule;

import com.bytedance.vcloud.cacheModule.utils.CmLog;
import com.ss.mediakit.medialoader.AVMDLDataLoader;
/* loaded from: classes3.dex */
public class CacheModule {
    private static final String TAG = "CacheModule";

    static {
        CacheModuleLoader.loadLibrary();
    }

    private static native String _generateProxyUrl(String str, String str2);

    private static native String _generateProxyUrl(String str, String str2, String str3);

    private static native String _generateProxyUrl(String str, String str2, String str3, String str4);

    private static native String _generateProxyUrl(String str, String str2, String str3, String str4, String str5);

    private static native String _generateProxyUrl(String str, String str2, String str3, String str4, String str5, boolean z10);

    private static native long _getLongValue(int i10);

    private static native String _getNativeErrorMsg(int i10);

    private static native void _setNeedCacheModuleInfo(boolean z10);

    private static native void _setProxyUrlGenerator(long j10);

    @CalledByNative
    private static void cacheModuleInfoCallback(int i10, String str) {
        CacheInfoHelper.getInstance().onInfo(i10, str);
    }

    public static String generateProxyUrl(String str, String str2, String str3, String str4, String str5, boolean z10) {
        if (!CacheModuleLoader.inited) {
            return "";
        }
        try {
            return _generateProxyUrl(str, str2, str3, str4, str5, z10);
        } catch (UnsatisfiedLinkError e10) {
            String str6 = TAG;
            CmLog.w(str6, "api-native not match: " + e10.getMessage());
            try {
                return _generateProxyUrl(str, str2, str3, str4, str5);
            } catch (UnsatisfiedLinkError e11) {
                String str7 = TAG;
                CmLog.w(str7, "api-native not match: " + e11.getMessage());
                try {
                    return _generateProxyUrl(str, str2, str3, str5);
                } catch (UnsatisfiedLinkError e12) {
                    String str8 = TAG;
                    CmLog.w(str8, "api-native not match: " + e12.getMessage());
                    try {
                        return _generateProxyUrl(str2, str3, str5);
                    } catch (UnsatisfiedLinkError e13) {
                        String str9 = TAG;
                        CmLog.w(str9, "api-native not match: " + e13.getMessage());
                        try {
                            return _generateProxyUrl(str2, str3);
                        } catch (UnsatisfiedLinkError e14) {
                            String str10 = TAG;
                            CmLog.w(str10, "api-native not match: " + e14.getMessage());
                            return "";
                        }
                    }
                }
            }
        }
    }

    public static long getHlsProxyProtocol() {
        if (!CacheModuleLoader.inited) {
            return -1L;
        }
        try {
            return _getLongValue(1000);
        } catch (UnsatisfiedLinkError e10) {
            String str = TAG;
            CmLog.w(str, "api-native not match: " + e10.getMessage());
            return -1L;
        }
    }

    @CalledByNative
    private static long getMdlProtocolHandle() {
        return AVMDLDataLoader.getInstance().getLongValue(AVMDLDataLoader.KeyIsGetMdlProtocolHandle);
    }

    public static String getNativeErrorMsg(int i10) {
        if (CacheModuleLoader.inited) {
            return _getNativeErrorMsg(i10);
        }
        return "UnknownError:" + i10;
    }

    public static void setCacheModuleInfoListener(CacheModuleInfoListener cacheModuleInfoListener) {
        boolean z10;
        CacheInfoHelper.getInstance().setCacheModuleInfoListener(cacheModuleInfoListener);
        if (cacheModuleInfoListener != null) {
            z10 = true;
        } else {
            z10 = false;
        }
        _setNeedCacheModuleInfo(z10);
    }

    public static void setProxyUrlGenerator(long j10) {
        if (!CacheModuleLoader.inited) {
            return;
        }
        try {
            _setProxyUrlGenerator(j10);
        } catch (UnsatisfiedLinkError e10) {
            String str = TAG;
            CmLog.w(str, "api-native not match: " + e10.getMessage());
        }
    }
}
