.class public Lcom/ss/mediakit/medialoader/AVMDLLibraryManagerWrapper;
.super Ljava/lang/Object;
.source "AVMDLLibraryManagerWrapper.java"


# static fields
.field public static final LOADBASELIB:I = 0x4

.field public static final LOADP2PLIB:I = 0x1

.field public static final LOADSSL:I = 0x20

.field public static final LOADTTNETLIB:I = 0x2

.field public static final LOADV1LIB:I = 0x8

.field public static final LOADV2LIB:I = 0x10

.field public static final LOADVCN:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setBoringSSLDependency(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setBoringSSLDependency(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setEnableV2(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setEnableV2(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setLibraryLoadLevel(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setLibraryLoadLevel(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setLibraryLoader(Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setLibraryLoader(Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setNeedBase(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setNeedBase(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setNeedP2pLib(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setNeedP2PLib(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setNeedTTnetLib(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setNeedTTnetLib(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setUseShadowVersion(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setUseShadowVersion(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setVcnDependency(Z)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->setVcnDependency(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
