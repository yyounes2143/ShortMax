package com.ss.ttvideoengine;

import android.text.TextUtils;
import android.util.Base64;
import com.ss.ttm.ttvideodecode.Native;
import com.ss.ttvideoengine.utils.TTVideoEngineLog;
/* loaded from: classes6.dex */
public class JniUtils {
    private static final String TAG = "JniUtils";
    public static volatile String exception = "";
    public static volatile boolean isLibraryLoaded = false;
    public static volatile LibraryLoaderProxy mProxy;

    static {
        if (EngineGlobalConfig.getInstance().getLazyLoadVideodec() == 1) {
            TTVideoEngineLog.d(TAG, "JniUtils.loadLibrary in static block");
            loadLibrary();
        }
    }

    private static byte[] encryptAesCbc128(byte[] bArr, byte[] bArr2) {
        return Native.encryptAesCbc128(bArr, bArr2);
    }

    public static String encryptTimestamp(String str, String str2) {
        if (!isLibraryLoaded) {
            TTVideoEngineLog.d(TAG, "library not load exception:" + exception);
            return "";
        } else if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return "";
        } else {
            byte[] encryptAesCbc128 = encryptAesCbc128(str.getBytes(), str2.getBytes());
            if (encryptAesCbc128.length <= 0) {
                return "";
            }
            return new String(Base64.encode(encryptAesCbc128, 0));
        }
    }

    public static int getDecodeMethod() throws Exception {
        String str = "exception is null";
        if (!isLibraryLoaded) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("library not load suc exception:");
            if (exception != null) {
                str = exception;
            }
            sb2.append(str);
            throw new Exception(sb2.toString());
        }
        try {
            return getSupportedMethod();
        } catch (Throwable th2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getDecodedStr exception:");
            if (th2.toString() != null) {
                str = th2.toString();
            }
            sb3.append(str);
            throw new Exception(sb3.toString());
        }
    }

    public static String getDecodedStr(byte[] bArr, byte[] bArr2) {
        return Native.getDecodedStr(bArr, bArr2);
    }

    public static String getDecodedStrWithKey(byte[] bArr, byte[] bArr2) throws Exception {
        String str = "exception is null";
        if (!isLibraryLoaded) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("library not load suc exception:");
            if (exception != null) {
                str = exception;
            }
            sb2.append(str);
            throw new Exception(sb2.toString());
        }
        try {
            return getDecodedStr(bArr, bArr2);
        } catch (Throwable th2) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("getDecodedStr exception:");
            if (th2.toString() != null) {
                str = th2.toString();
            }
            sb3.append(str);
            throw new Exception(sb3.toString());
        }
    }

    public static byte[] getSettingSignature(String str) {
        if (!isLibraryLoaded) {
            TTVideoEngineLog.d(TAG, "library not load exception:" + exception);
            return null;
        } else if (str == null) {
            TTVideoEngineLog.d(TAG, "getSettingSignature content is null");
            return null;
        } else {
            try {
                return getSignature(str);
            } catch (Throwable th2) {
                TTVideoEngineLog.d(TAG, "getSettingSignature throwable:" + th2);
                return null;
            }
        }
    }

    public static byte[] getSignature(String str) {
        return Native.getSignature(str);
    }

    public static int getSupportedMethod() {
        return Native.getSupportedMethod();
    }

    public static synchronized void loadLibrary() {
        synchronized (JniUtils.class) {
            try {
                if (!isLibraryLoaded) {
                    TTVideoEngineLog.d(TAG, "JniUtils.loadLibrary");
                    if (mProxy != null) {
                        mProxy.loadLibrary("videodec");
                    } else {
                        System.loadLibrary("videodec");
                    }
                    isLibraryLoaded = true;
                }
            } finally {
            }
        }
    }

    public static void setLoadProxy(LibraryLoaderProxy libraryLoaderProxy) {
        if (libraryLoaderProxy != null) {
            mProxy = libraryLoaderProxy;
        }
    }
}
