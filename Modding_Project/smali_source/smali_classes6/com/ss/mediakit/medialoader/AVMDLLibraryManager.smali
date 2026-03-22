.class Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;
.super Ljava/lang/Object;
.source "AVMDLLibraryManager.java"


# static fields
.field private static final BaseLibName:Ljava/lang/String; = "avmdlbase"

.field private static final CryptoName:Ljava/lang/String; = "ttcrypto"

.field public static final MediaLoadBase:I = 0x4

.field public static final MediaLoadBoringssl:I = 0x20

.field public static final MediaLoadP2P:I = 0x1

.field public static final MediaLoadTTNet:I = 0x2

.field public static final MediaLoadV1:I = 0x8

.field public static final MediaLoadV2:I = 0x10

.field public static final MediaLoadVcn:I = 0x40

.field private static final P2PLibName:Ljava/lang/String; = "avmdlp2p"

.field private static final SSLName:Ljava/lang/String; = "ttboringssl"

.field private static final ShadowVerName:Ljava/lang/String; = "avmdls"

.field private static final TTNetLibName:Ljava/lang/String; = "avmdlttnet"

.field private static final V1LibName:Ljava/lang/String; = "avmdl"

.field private static final V2LibName:Ljava/lang/String; = "avmdlv2"

.field private static final VcnName:Ljava/lang/String; = "vcn"

.field private static dependBoringSSl:Z = true

.field private static dependVcn:Z = true

.field private static enableV2:Z = false

.field private static libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader; = null

.field private static loadLevel:I = 0x0

.field private static needBase:Z = true

.field private static needP2PLib:Z = false

.field private static needTTnetLib:Z = false

.field private static useShadowVersion:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static declared-synchronized loadLibraries()Z
    .locals 5

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadSSL()Z

    .line 5
    .line 6
    .line 7
    invoke-static {}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadVcn()Z

    .line 8
    .line 9
    .line 10
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->needBase:Z

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadLibray(I)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    goto :goto_2

    .line 21
    :cond_0
    :goto_0
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->enableV2:Z

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/16 v1, 0x10

    .line 28
    .line 29
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadLibray(I)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_2

    .line 34
    .line 35
    sget-boolean v4, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->useShadowVersion:Z

    .line 36
    .line 37
    if-eqz v4, :cond_2

    .line 38
    .line 39
    sput-boolean v2, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->useShadowVersion:Z

    .line 40
    .line 41
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadLibray(I)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v2, v3

    .line 47
    :goto_1
    if-nez v2, :cond_4

    .line 48
    .line 49
    const/16 v1, 0x8

    .line 50
    .line 51
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadLibray(I)Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->needP2PLib:Z

    .line 56
    .line 57
    if-eqz v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadLibray(I)Z

    .line 61
    .line 62
    .line 63
    :cond_3
    sget-boolean v1, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->needTTnetLib:Z

    .line 64
    .line 65
    if-eqz v1, :cond_4

    .line 66
    .line 67
    const/4 v1, 0x2

    .line 68
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->tryLoadLibray(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    :cond_4
    monitor-exit v0

    .line 72
    return v2

    .line 73
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    throw v1
.end method

.method public static declared-synchronized setBoringSSLDependency(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->dependBoringSSl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setEnableV2(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->enableV2:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setLibraryLoadLevel(I)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->loadLevel:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setLibraryLoader(Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setNeedBase(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->needBase:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setNeedP2PLib(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->needP2PLib:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setNeedTTnetLib(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->needTTnetLib:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setUseShadowVersion(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->useShadowVersion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method public static declared-synchronized setVcnDependency(Z)V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->dependVcn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw p0
.end method

.method private static shouldLoadLib(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    if-gtz p0, :cond_1

    .line 8
    .line 9
    return v1

    .line 10
    :cond_1
    sget v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->loadLevel:I

    .line 11
    .line 12
    and-int/2addr v0, p0

    .line 13
    if-ne v0, p0, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_2
    return v1
.end method

.method private static tryLoadLibray(I)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eq p0, v1, :cond_5

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    if-eq p0, v2, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    if-eq p0, v2, :cond_3

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eq p0, v2, :cond_2

    .line 14
    .line 15
    const/16 v2, 0x10

    .line 16
    .line 17
    if-eq p0, v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    sget-boolean v2, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->useShadowVersion:Z

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    const-string v2, "avmdls"

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const-string v2, "avmdlv2"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    const-string v2, "avmdl"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const-string v2, "avmdlbase"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_4
    const-string v2, "avmdlttnet"

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_5
    const-string v2, "avmdlp2p"

    .line 40
    .line 41
    :goto_0
    invoke-static {p0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->shouldLoadLib(I)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    const-string/jumbo v3, "ttmn"

    .line 46
    .line 47
    .line 48
    if-eqz p0, :cond_6

    .line 49
    .line 50
    sget-object p0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 51
    .line 52
    invoke-interface {p0, v2}, Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    new-instance p0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string/jumbo v4, "tryLoadLibray "

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, " result: "

    .line 71
    .line 72
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p0

    .line 82
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    :cond_6
    if-nez v0, :cond_7

    .line 86
    .line 87
    :try_start_0
    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :catchall_0
    move-exception p0

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "Can\'t load "

    .line 98
    .line 99
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v4, ", cause: "

    .line 106
    .line 107
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_7
    move v1, v0

    .line 121
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v0, "load lib "

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    const-string v0, " result : "

    .line 135
    .line 136
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p0

    .line 146
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    return v1
.end method

.method private static tryLoadSSL()Z
    .locals 5

    .line 1
    const-string/jumbo v0, "ttmn"

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    invoke-static {v1}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->shouldLoadLib(I)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 13
    .line 14
    const-string/jumbo v2, "ttcrypto"

    .line 15
    .line 16
    .line 17
    invoke-interface {v1, v2}, Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    sget-object v1, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 24
    .line 25
    const-string/jumbo v2, "ttboringssl"

    .line 26
    .line 27
    .line 28
    invoke-interface {v1, v2}, Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x0

    .line 34
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 35
    .line 36
    :try_start_0
    sget-boolean v2, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->dependBoringSSl:Z

    .line 37
    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    invoke-static {}, Lcom/bytedance/boringssl/so/BoringsslLoaderWrapper;->loadBoringssl()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-nez v2, :cond_2

    .line 45
    .line 46
    const-string v2, "load boringssl fail!"

    .line 47
    .line 48
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v2

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    const/4 v1, 0x1

    .line 55
    goto :goto_3

    .line 56
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v4, "load ssl failed: "

    .line 62
    .line 63
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_3
    return v1
.end method

.method private static tryLoadVcn()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->dependVcn:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/16 v0, 0x40

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->shouldLoadLib(I)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/ss/mediakit/medialoader/AVMDLLibraryManager;->libraryLoader:Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;

    .line 16
    .line 17
    const-string/jumbo v1, "vcn"

    .line 18
    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/ss/mediakit/medialoader/IAVMDLLibraryLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    if-nez v0, :cond_2

    .line 27
    .line 28
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnlib()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-static {}, Lcom/ss/mediakit/vcnlib/VcnlibloadWrapper;->tryLoadVcnverifylib()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    :cond_2
    if-nez v0, :cond_3

    .line 39
    .line 40
    const-string/jumbo v1, "ttmn"

    .line 41
    .line 42
    .line 43
    const-string v2, "Can\'t load vcn "

    .line 44
    .line 45
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    :cond_3
    return v0
.end method
