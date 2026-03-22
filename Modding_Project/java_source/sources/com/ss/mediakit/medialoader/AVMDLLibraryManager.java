package com.ss.mediakit.medialoader;

import android.util.Log;
import com.bytedance.boringssl.so.BoringsslLoaderWrapper;
import com.ss.mediakit.vcnlib.VcnlibloadWrapper;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes6.dex */
public class AVMDLLibraryManager {
    private static final String BaseLibName = "avmdlbase";
    private static final String CryptoName = "ttcrypto";
    public static final int MediaLoadBase = 4;
    public static final int MediaLoadBoringssl = 32;
    public static final int MediaLoadP2P = 1;
    public static final int MediaLoadTTNet = 2;
    public static final int MediaLoadV1 = 8;
    public static final int MediaLoadV2 = 16;
    public static final int MediaLoadVcn = 64;
    private static final String P2PLibName = "avmdlp2p";
    private static final String SSLName = "ttboringssl";
    private static final String ShadowVerName = "avmdls";
    private static final String TTNetLibName = "avmdlttnet";
    private static final String V1LibName = "avmdl";
    private static final String V2LibName = "avmdlv2";
    private static final String VcnName = "vcn";
    private static boolean dependBoringSSl = true;
    private static boolean dependVcn = true;
    private static boolean enableV2 = false;
    private static IAVMDLLibraryLoader libraryLoader = null;
    private static int loadLevel = 0;
    private static boolean needBase = true;
    private static boolean needP2PLib = false;
    private static boolean needTTnetLib = false;
    private static boolean useShadowVersion = false;

    AVMDLLibraryManager() {
    }

    public static synchronized boolean loadLibraries() {
        boolean z10;
        synchronized (AVMDLLibraryManager.class) {
            try {
                tryLoadSSL();
                tryLoadVcn();
                if (needBase) {
                    tryLoadLibray(4);
                }
                z10 = false;
                if (enableV2) {
                    boolean tryLoadLibray = tryLoadLibray(16);
                    if (!tryLoadLibray && useShadowVersion) {
                        useShadowVersion = false;
                        z10 = tryLoadLibray(16);
                    } else {
                        z10 = tryLoadLibray;
                    }
                }
                if (!z10) {
                    z10 = tryLoadLibray(8);
                    if (needP2PLib) {
                        tryLoadLibray(1);
                    }
                    if (needTTnetLib) {
                        tryLoadLibray(2);
                    }
                }
            } finally {
            }
        }
        return z10;
    }

    public static synchronized void setBoringSSLDependency(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            dependBoringSSl = z10;
        }
    }

    public static synchronized void setEnableV2(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            enableV2 = z10;
        }
    }

    public static synchronized void setLibraryLoadLevel(int i10) {
        synchronized (AVMDLLibraryManager.class) {
            loadLevel = i10;
        }
    }

    public static synchronized void setLibraryLoader(IAVMDLLibraryLoader iAVMDLLibraryLoader) {
        synchronized (AVMDLLibraryManager.class) {
            libraryLoader = iAVMDLLibraryLoader;
        }
    }

    public static synchronized void setNeedBase(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            needBase = z10;
        }
    }

    public static synchronized void setNeedP2PLib(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            needP2PLib = z10;
        }
    }

    public static synchronized void setNeedTTnetLib(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            needTTnetLib = z10;
        }
    }

    public static synchronized void setUseShadowVersion(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            useShadowVersion = z10;
        }
    }

    public static synchronized void setVcnDependency(boolean z10) {
        synchronized (AVMDLLibraryManager.class) {
            dependVcn = z10;
        }
    }

    private static boolean shouldLoadLib(int i10) {
        if (libraryLoader == null || i10 <= 0 || (loadLevel & i10) != i10) {
            return false;
        }
        return true;
    }

    private static boolean tryLoadLibray(int i10) {
        String str;
        boolean z10 = false;
        boolean z11 = true;
        if (i10 != 1) {
            if (i10 != 2) {
                if (i10 != 4) {
                    if (i10 != 8) {
                        if (i10 != 16) {
                            return false;
                        }
                        if (useShadowVersion) {
                            str = ShadowVerName;
                        } else {
                            str = V2LibName;
                        }
                    } else {
                        str = V1LibName;
                    }
                } else {
                    str = BaseLibName;
                }
            } else {
                str = TTNetLibName;
            }
        } else {
            str = P2PLibName;
        }
        if (shouldLoadLib(i10)) {
            z10 = libraryLoader.loadLibrary(str);
            Log.e("ttmn", "tryLoadLibray " + str + " result: " + z10);
        }
        if (!z10) {
            try {
                System.loadLibrary(str);
            } catch (Throwable th2) {
                Log.e("ttmn", "Can't load " + str + ", cause: " + th2);
            }
            Log.e("ttmn", "load lib " + str + " result : " + z11);
            return z11;
        }
        z11 = z10;
        Log.e("ttmn", "load lib " + str + " result : " + z11);
        return z11;
    }

    private static boolean tryLoadSSL() {
        boolean z10;
        if (shouldLoadLib(32)) {
            z10 = libraryLoader.loadLibrary(CryptoName);
            if (z10) {
                z10 = libraryLoader.loadLibrary(SSLName);
            }
        } else {
            z10 = false;
        }
        if (!z10) {
            try {
                if (dependBoringSSl) {
                    if (!BoringsslLoaderWrapper.loadBoringssl()) {
                        Log.e("ttmn", "load boringssl fail!");
                    }
                    return true;
                }
                return z10;
            } catch (Exception e10) {
                Log.e("ttmn", "load ssl failed: " + e10);
                return z10;
            }
        }
        return z10;
    }

    private static boolean tryLoadVcn() {
        boolean z10;
        if (!dependVcn) {
            return true;
        }
        if (shouldLoadLib(64)) {
            z10 = libraryLoader.loadLibrary("vcn");
        } else {
            z10 = false;
        }
        if (!z10 && (z10 = VcnlibloadWrapper.tryLoadVcnlib())) {
            z10 = VcnlibloadWrapper.tryLoadVcnverifylib();
        }
        if (!z10) {
            Log.e("ttmn", "Can't load vcn ");
        }
        return z10;
    }
}
