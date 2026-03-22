.class Lcom/pandora/ttlicense2/LicenseManagerNative;
.super Ljava/lang/Object;
.source "LicenseManagerNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string/jumbo v0, "ttlicense2"

    .line 2
    .line 3
    .line 4
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static declared-synchronized addLicense(Lcom/pandora/ttlicense2/LicenseFile;)Ljava/lang/String;
    .locals 7

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 5
    .line 6
    .line 7
    move-result-wide v1

    .line 8
    invoke-virtual {p0}, Lcom/pandora/ttlicense2/LicenseFile;->getContent()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {p0}, Lcom/pandora/ttlicense2/LicenseFile;->getSignature()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {v3, p0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeAddLicense(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v3, "LicenseManagerNative"

    .line 21
    .line 22
    const-string v4, "addLicense"

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 25
    .line 26
    .line 27
    move-result-wide v5

    .line 28
    sub-long/2addr v5, v1

    .line 29
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v3, v4, v1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-object p0

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    throw p0
.end method

.method static declared-synchronized checkFeatureAuth(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeCheckFeatureAuth(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method

.method static declared-synchronized checkSDKAuth(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeCheckSDKAuth(Ljava/lang/String;)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method

.method static declared-synchronized getIntValue(II)I
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeGetIntValue(II)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method

.method static declared-synchronized getLicense(Ljava/lang/String;)Lcom/pandora/ttlicense2/License;
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeGetLicenseInfo(Ljava/lang/String;)Lcom/pandora/ttlicense2/License;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method

.method static declared-synchronized getSDKEdition(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeGetSDKEdition(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return-object p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method

.method static declared-synchronized init(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeInit(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    throw p0
.end method

.method private static native nativeAddLicense(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeCheckFeatureAuth(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private static native nativeCheckSDKAuth(Ljava/lang/String;)I
.end method

.method private static native nativeGetIntValue(II)I
.end method

.method private static native nativeGetLicenseInfo(Ljava/lang/String;)Lcom/pandora/ttlicense2/License;
.end method

.method private static native nativeGetSDKEdition(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private static native nativeInit(Ljava/lang/String;)I
.end method

.method private static native nativeSetIntValue(II)I
.end method

.method public static native openLog(Z)V
.end method

.method static declared-synchronized setAuthParams()V
    .locals 5

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lcom/ss/ttvideoengine/InfoWrapper;

    .line 5
    .line 6
    const-string v2, "getExpiredDegradeEnabled"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    new-array v4, v3, [Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 17
    .line 18
    .line 19
    new-array v2, v3, [Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-static {v3, v1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeSetIntValue(II)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_4

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_5

    .line 38
    :catch_0
    move-exception v1

    .line 39
    goto :goto_0

    .line 40
    :catch_1
    move-exception v1

    .line 41
    goto :goto_1

    .line 42
    :catch_2
    move-exception v1

    .line 43
    goto :goto_2

    .line 44
    :catch_3
    move-exception v1

    .line 45
    goto :goto_3

    .line 46
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    .line 48
    .line 49
    goto :goto_4

    .line 50
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    goto :goto_4

    .line 54
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 55
    .line 56
    .line 57
    goto :goto_4

    .line 58
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    .line 60
    .line 61
    :goto_4
    monitor-exit v0

    .line 62
    return-void

    .line 63
    :goto_5
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    throw v1
.end method

.method static declared-synchronized setIntValue(II)I
    .locals 1

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseManagerNative;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0, p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->nativeSetIntValue(II)I

    .line 5
    .line 6
    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit v0

    .line 9
    return p0

    .line 10
    :catchall_0
    move-exception p0

    .line 11
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    throw p0
.end method
