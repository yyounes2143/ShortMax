package com.bytedance.boringssl.so;

import android.util.Log;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes3.dex */
public class BoringsslLoaderWrapper {
    private static volatile String DEFAULT_BORINGSSL_NAME = "ttboringssl";
    private static volatile String DEFAULT_CRYPTO_NAME = "ttcrypto";
    private static final String TAG = "BoringsslLoaderWrapper";
    private static volatile boolean hasLoadBoringssl = false;
    private static volatile boolean hasLoadCrypto = false;
    private static volatile IBoringsslLoader iBoringsslLoader;
    private static Lock lock = new ReentrantLock();

    public static boolean loadBoringssl() {
        try {
            try {
                lock.lock();
            } catch (Error e10) {
                Log.e(TAG, "load boringssl:" + hasLoadBoringssl + " load crypto:" + hasLoadCrypto + "  err:" + e10.toString());
            }
            if (iBoringsslLoader != null) {
                return iBoringsslLoader.loadBoringssl();
            }
            if (!hasLoadCrypto) {
                System.loadLibrary(DEFAULT_CRYPTO_NAME);
                hasLoadCrypto = true;
            }
            if (!hasLoadBoringssl) {
                System.loadLibrary(DEFAULT_BORINGSSL_NAME);
                hasLoadBoringssl = true;
            }
            if (hasLoadBoringssl && hasLoadCrypto) {
                return true;
            }
            return false;
        } finally {
            lock.unlock();
        }
    }

    public static void setBoringsslLoader(IBoringsslLoader iBoringsslLoader2) {
        iBoringsslLoader = iBoringsslLoader2;
    }

    public static void setDefaultBoringsslName(String str) {
        DEFAULT_BORINGSSL_NAME = str;
    }

    public static void setDefaultCryptoName(String str) {
        DEFAULT_CRYPTO_NAME = str;
    }
}
