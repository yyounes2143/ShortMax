package com.ss.ttm.player;

import android.annotation.SuppressLint;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
@Deprecated
/* loaded from: classes6.dex */
public class TTPlayerLibraryLoader {
    private static final int DEGRADED_VERSION = 2925;
    private static final String TAG = "TTPlayerLibraryLoader";
    private static ILibraryLoader mDebugLibraryLoader;
    private static ILibraryLoader mLibraryLoader;
    private static ILibraryLoader mPluginLibLoader;
    private static ILibraryLoader mDefaultLibLoader = new DefaultLibraryLoader();
    private static boolean mLibraryLoaded = false;
    private static boolean IsErrored = false;
    private static String mErrorInfo = null;
    private static int mVersion = 0;

    /* loaded from: classes6.dex */
    private static class DefaultLibraryLoader implements ILibraryLoader {
        private DefaultLibraryLoader() {
        }

        @Override // com.ss.ttm.player.ILibraryLoader
        public boolean onLoadNativeLibs(List<String> list) {
            for (String str : list) {
                try {
                    System.loadLibrary(str);
                } catch (Throwable th2) {
                    String unused = TTPlayerLibraryLoader.mErrorInfo = th2.getMessage();
                    String str2 = TTPlayerLibraryLoader.TAG;
                    Log.d(str2, "load lib failed = " + TTPlayerLibraryLoader.mErrorInfo);
                    return false;
                }
            }
            return true;
        }
    }

    public static String getErrorInfo() {
        return mErrorInfo;
    }

    public static boolean isError() {
        return IsErrored;
    }

    public static final synchronized void loadLibrary() {
        boolean z10;
        synchronized (TTPlayerLibraryLoader.class) {
            try {
                if (mVersion == 0) {
                    mVersion = TTPlayerConfiger.getValue(13, 0) / 1000;
                }
                if (mVersion == DEGRADED_VERSION) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (TTPlayerConfiger.getValue(3, false)) {
                    if (!z10) {
                        loadPlayerlibrary("ttopenssl");
                        loadPlayerlibrary("mffmpeg");
                    }
                    if (!loadPlayerlibrary("ttmplayer")) {
                        IsErrored = true;
                    }
                } else {
                    ArrayList arrayList = new ArrayList();
                    if (!z10) {
                        arrayList.add("ttopenssl");
                        arrayList.add("mffmpeg");
                    }
                    arrayList.add("ttmplayer");
                    IsErrored = !loadLibs(arrayList, false);
                }
            } finally {
            }
        }
    }

    private static boolean loadLibs(List<String> list, boolean z10) {
        boolean z11 = mLibraryLoaded;
        if ((!z10) & z11) {
            return z11;
        }
        ILibraryLoader iLibraryLoader = mLibraryLoader;
        if (iLibraryLoader != null) {
            try {
                mLibraryLoaded = iLibraryLoader.onLoadNativeLibs(list);
            } catch (Throwable th2) {
                mErrorInfo = th2.getMessage();
            }
        } else {
            ILibraryLoader iLibraryLoader2 = mPluginLibLoader;
            if (iLibraryLoader2 != null) {
                try {
                    mLibraryLoaded = iLibraryLoader2.onLoadNativeLibs(list);
                } catch (Throwable th3) {
                    mErrorInfo = th3.getMessage();
                }
            } else {
                mLibraryLoaded = mDefaultLibLoader.onLoadNativeLibs(list);
            }
        }
        return mLibraryLoaded;
    }

    @SuppressLint({"UnsafeDynamicallyLoadedCode"})
    private static boolean loadPlayerlibrary(String str) {
        String str2;
        try {
            TTPlayerConfiger.setLibraryName("lib" + str + ".so");
            TTPlayerConfiger.checkDebugTTPlayerLib();
            str2 = TTPlayerConfiger.getPlayerLibraryPath();
            if (str2 != null && !new File(str2).exists()) {
                str2 = null;
            }
            if (str2 != null) {
                if (mDebugLibraryLoader != null) {
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(str2);
                    Log.d(TAG, "load library path = " + str2);
                    mDebugLibraryLoader.onLoadNativeLibs(arrayList);
                } else {
                    System.load(str2);
                }
            }
        } catch (Throwable th2) {
            th2.printStackTrace();
            mErrorInfo = "load path library error." + th2.toString();
            str2 = null;
        }
        if (str2 == null) {
            try {
                ArrayList arrayList2 = new ArrayList();
                arrayList2.add(str);
                loadLibs(arrayList2, true);
                mErrorInfo = null;
            } catch (Throwable unused) {
                Log.e(TAG, "load lib failed name = " + str);
                return false;
            }
        }
        return true;
    }

    public static final void setDebugLibraryLoader(ILibraryLoader iLibraryLoader) {
        mDebugLibraryLoader = iLibraryLoader;
    }

    public static final void setLibraryLoader(ILibraryLoader iLibraryLoader) {
        mLibraryLoader = iLibraryLoader;
    }

    public static final void setPluginLibraryLoader(ILibraryLoader iLibraryLoader) {
        mPluginLibLoader = iLibraryLoader;
    }
}
