package com.bytedance.vcloud.cacheModule;

import android.util.Log;
import com.ss.vcbkit.VCBaseKitLoader;
/* loaded from: classes3.dex */
public class CacheModuleLoader {
    private static final String TAG = "CacheModuleLoader";
    public static volatile boolean inited = false;
    private static LibraryLoaderProxy sLibraryLoaderProxy;

    /* loaded from: classes3.dex */
    private static class DefaultLibraryLoaderProxy implements LibraryLoaderProxy {
        private DefaultLibraryLoaderProxy() {
        }

        @Override // com.bytedance.vcloud.cacheModule.CacheModuleLoader.LibraryLoaderProxy
        public boolean loadLibrary(String str) {
            try {
                System.loadLibrary(str);
                return true;
            } catch (Throwable th2) {
                String str2 = CacheModuleLoader.TAG;
                Log.e(str2, "default load cacheModule fail : " + th2.getMessage());
                return false;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface LibraryLoaderProxy {
        boolean loadLibrary(String str);
    }

    public static synchronized boolean loadLibrary() {
        synchronized (CacheModuleLoader.class) {
            if (inited) {
                return true;
            }
            VCBaseKitLoader.loadLibrary();
            if (sLibraryLoaderProxy == null) {
                sLibraryLoaderProxy = new DefaultLibraryLoaderProxy();
            }
            inited = sLibraryLoaderProxy.loadLibrary("cachemodule");
            return inited;
        }
    }

    public static void setLoadProxy(LibraryLoaderProxy libraryLoaderProxy) {
        sLibraryLoaderProxy = libraryLoaderProxy;
    }
}
