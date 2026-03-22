package com.ss.ttm.player;

import android.annotation.SuppressLint;
import android.util.Log;
import com.ss.ttm.vcshared.VCBaseKitLoader;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes6.dex */
public class TTPlayerLibLoader {
    private static final int DEGRADED_VERSION = 2925;
    private static final String TAG = "TTPlayerLibLoader";
    private static ILibraryLoader mDebugLibraryLoader;
    private static ILibraryLoader mLibraryLoader;
    private static ILibraryLoader mDefaultLibLoader = new DefaultLibraryLoader();
    private static boolean mLibraryLoaded = false;
    private static boolean IsErrored = false;
    private static String mErrorInfo = null;
    private static int mVersion = 0;
    private static String playerLibName = "";

    /* loaded from: classes6.dex */
    private static class DefaultLibraryLoader implements ILibraryLoader {
        private DefaultLibraryLoader() {
        }

        @Override // com.ss.ttm.player.ILibraryLoader
        public boolean onLoadNativeLibs(List<String> list) {
            for (String str : list) {
                try {
                    System.loadLibrary(str);
                    String str2 = TTPlayerLibLoader.TAG;
                    Log.d(str2, "load " + str + " done");
                } catch (Throwable th2) {
                    String unused = TTPlayerLibLoader.mErrorInfo = th2.getMessage();
                    String str3 = TTPlayerLibLoader.TAG;
                    Log.d(str3, "load lib failed = " + str + ",error:" + TTPlayerLibLoader.mErrorInfo);
                    return false;
                }
            }
            return true;
        }
    }

    public static String getErrorInfo() {
        return mErrorInfo;
    }

    public static String getPlayerLibName() {
        return playerLibName;
    }

    public static boolean isError() {
        return IsErrored;
    }

    public static final synchronized void loadLibrary() {
        boolean z10;
        synchronized (TTPlayerLibLoader.class) {
            try {
                if (mVersion == 0) {
                    mVersion = TTPlayerConfiger.getValue(13, 0) / 1000;
                }
                VCBaseKitLoader.loadLibrary();
                if (mVersion == DEGRADED_VERSION) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (TTPlayerConfiger.getValue(3, false)) {
                    if (!z10) {
                        TTPlayerConfiger.getValue(30, false);
                        if (!TTPlayerConfiger.getValue(28, false)) {
                            loadPlayerlibrary("ttcrypto");
                            loadPlayerlibrary("ttboringssl");
                        }
                        loadPlayerlibrary("ByteVC1_dec");
                        loadPlayerlibrary("ttffmpeg");
                    }
                    if (TTPlayerConfiger.getValue(29, false)) {
                        if (!loadPlayerlibrary("ttmplayerbeta")) {
                            IsErrored = !loadPlayerlibrary("ttmplayer");
                        } else {
                            playerLibName = "ttmplayerbeta";
                        }
                    } else if (!loadPlayerlibrary("ttmplayer")) {
                        IsErrored = true;
                    }
                    if (!IsErrored && playerLibName.isEmpty()) {
                        playerLibName = "ttmplayer";
                    }
                } else {
                    ArrayList arrayList = new ArrayList();
                    if (!z10) {
                        TTPlayerConfiger.getValue(30, false);
                        if (!TTPlayerConfiger.getValue(28, false)) {
                            arrayList.add("ttcrypto");
                            arrayList.add("ttboringssl");
                        }
                        arrayList.add("ByteVC1_dec");
                        arrayList.add("ttffmpeg");
                    }
                    if (TTPlayerConfiger.getValue(29, false)) {
                        boolean loadLibs = loadLibs(arrayList, false);
                        IsErrored = !loadLibs;
                        if (loadLibs) {
                            arrayList.clear();
                            arrayList.add("ttmplayerbeta");
                            boolean loadLibs2 = loadLibs(arrayList, true);
                            IsErrored = !loadLibs2;
                            if (loadLibs2) {
                                playerLibName = "ttmplayerbeta";
                            } else {
                                arrayList.clear();
                                arrayList.add("ttmplayer");
                                IsErrored = !loadLibs(arrayList, true);
                            }
                        }
                    } else {
                        arrayList.add("ttmplayer");
                        IsErrored = !loadLibs(arrayList, false);
                    }
                    if (!IsErrored && playerLibName.isEmpty()) {
                        playerLibName = "ttmplayer";
                    }
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
            mLibraryLoaded = mDefaultLibLoader.onLoadNativeLibs(list);
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
}
