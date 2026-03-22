package com.bytedance.vcloud.abrmodule;
/* loaded from: classes3.dex */
public class ABRJniLoader {
    public static volatile String exception = "";
    public static volatile boolean isLibraryLoaded = false;
    private static LibraryLoaderProxy mLibraryLoader;

    /* loaded from: classes3.dex */
    private static class DefaultLoader implements LibraryLoaderProxy {
        private DefaultLoader() {
        }

        @Override // com.bytedance.vcloud.abrmodule.LibraryLoaderProxy
        public boolean loadLibrary(String str) {
            try {
                System.loadLibrary(str);
                return true;
            } catch (Throwable unused) {
                return false;
            }
        }
    }

    public static synchronized boolean loadLibrary() {
        boolean z10;
        synchronized (ABRJniLoader.class) {
            try {
                if (!isLibraryLoaded) {
                    LibraryLoaderProxy libraryLoaderProxy = mLibraryLoader;
                    if (libraryLoaderProxy == null) {
                        libraryLoaderProxy = new DefaultLoader();
                    }
                    isLibraryLoaded = libraryLoaderProxy.loadLibrary("abrmodule");
                }
                z10 = isLibraryLoaded;
            }
        }
        return z10;
    }

    public static void setLoadProxy(LibraryLoaderProxy libraryLoaderProxy) {
        mLibraryLoader = libraryLoaderProxy;
    }
}
