package com.ss.mediakit.medialoader;
/* loaded from: classes6.dex */
public class AVMDLLibraryManagerWrapper {
    public static final int LOADBASELIB = 4;
    public static final int LOADP2PLIB = 1;
    public static final int LOADSSL = 32;
    public static final int LOADTTNETLIB = 2;
    public static final int LOADV1LIB = 8;
    public static final int LOADV2LIB = 16;
    public static final int LOADVCN = 64;

    public static void setBoringSSLDependency(boolean z10) {
        AVMDLLibraryManager.setBoringSSLDependency(z10);
    }

    public static void setEnableV2(boolean z10) {
        AVMDLLibraryManager.setEnableV2(z10);
    }

    public static void setLibraryLoadLevel(int i10) {
        AVMDLLibraryManager.setLibraryLoadLevel(i10);
    }

    public static void setLibraryLoader(IAVMDLLibraryLoader iAVMDLLibraryLoader) {
        AVMDLLibraryManager.setLibraryLoader(iAVMDLLibraryLoader);
    }

    public static void setNeedBase(boolean z10) {
        AVMDLLibraryManager.setNeedBase(z10);
    }

    public static void setNeedP2pLib(boolean z10) {
        AVMDLLibraryManager.setNeedP2PLib(z10);
    }

    public static void setNeedTTnetLib(boolean z10) {
        AVMDLLibraryManager.setNeedTTnetLib(z10);
    }

    public static void setUseShadowVersion(boolean z10) {
        AVMDLLibraryManager.setUseShadowVersion(z10);
    }

    public static void setVcnDependency(boolean z10) {
        AVMDLLibraryManager.setVcnDependency(z10);
    }
}
