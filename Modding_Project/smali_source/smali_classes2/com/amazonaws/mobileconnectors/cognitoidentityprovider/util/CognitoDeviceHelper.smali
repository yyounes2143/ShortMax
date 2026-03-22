.class public final Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;
.super Ljava/lang/Object;
.source "CognitoDeviceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;
    }
.end annotation


# static fields
.field private static final a:Lcom/amazonaws/logging/Log;

.field private static final b:Ljava/lang/Object;

.field static c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

.field static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 18
    .line 19
    new-instance v0, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    sput-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Ljava/util/Map;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    sput-boolean v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->e:Z

    .line 28
    .line 29
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "DeviceGroupKey"

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 13
    .line 14
    const-string p2, "Error accessing SharedPreferences"

    .line 15
    .line 16
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "DeviceKey"

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 13
    .line 14
    const-string p2, "Error accessing SharedPreferences"

    .line 15
    .line 16
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string p1, "DeviceSecret"

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 13
    .line 14
    const-string p2, "Error accessing SharedPreferences"

    .line 15
    .line 16
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    move-exception p0

    .line 10
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 11
    .line 12
    const-string p2, "Error accessing SharedPreferences"

    .line 13
    .line 14
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->e()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    new-instance v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 11
    .line 12
    invoke-direct {v2, p1, p0, v1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sput-object v2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 16
    .line 17
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->d()Ljava/math/BigInteger;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->c:Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper$deviceSRP;->f()Ljava/math/BigInteger;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v2, Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0}, Lcom/amazonaws/util/Base64;->encode([B)[B

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 42
    .line 43
    .line 44
    const-string p0, "salt"

    .line 45
    .line 46
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    new-instance p0, Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/amazonaws/util/Base64;->encode([B)[B

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    .line 56
    .line 57
    .line 58
    const-string/jumbo p1, "verifier"

    .line 59
    .line 60
    .line 61
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string p0, "secret"

    .line 65
    .line 66
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    return-object v0
.end method

.method private static g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
    .locals 2

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p1, p2}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    sget-object p2, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Ljava/util/Map;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    if-eqz p2, :cond_0

    .line 15
    .line 16
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Ljava/util/Map;

    .line 17
    .line 18
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    check-cast p0, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    return-object p0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :catch_0
    move-exception p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :try_start_2
    new-instance p2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 31
    .line 32
    sget-boolean v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->e:Z

    .line 33
    .line 34
    invoke-direct {p2, p0, p1, v1}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    .line 41
    .line 42
    :try_start_3
    monitor-exit v0

    .line 43
    return-object p2

    .line 44
    :goto_0
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 45
    .line 46
    const-string p2, "Error in retrieving the persistent store."

    .line 47
    .line 48
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    monitor-exit v0

    .line 52
    const/4 p0, 0x0

    .line 53
    return-object p0

    .line 54
    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 55
    throw p0
.end method

.method private static h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "CognitoIdentityProviderDeviceCache."

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p1, "."

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DeviceGroupKey"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 22
    .line 23
    const-string p2, "Error accessing SharedPreferences"

    .line 24
    .line 25
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DeviceKey"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 22
    .line 23
    const-string p2, "Error accessing SharedPreferences"

    .line 24
    .line 25
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "DeviceSecret"

    .line 2
    .line 3
    :try_start_0
    invoke-static {p2, p0, p1}, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->b(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-object p0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    sget-object p1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 22
    .line 23
    const-string p2, "Error accessing SharedPreferences"

    .line 24
    .line 25
    invoke-interface {p1, p2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static m(Z)V
    .locals 4

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-boolean p0, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->e:Z

    .line 5
    .line 6
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Ljava/lang/String;

    .line 27
    .line 28
    sget-object v3, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->d:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;

    .line 35
    .line 36
    invoke-virtual {v2, p0}, Lcom/amazonaws/internal/keyvaluestore/AWSKeyValueStore;->r(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_0
    move-exception p0

    .line 43
    :try_start_1
    sget-object v1, Lcom/amazonaws/mobileconnectors/cognitoidentityprovider/util/CognitoDeviceHelper;->a:Lcom/amazonaws/logging/Log;

    .line 44
    .line 45
    const-string v2, "Error in setting the isPersistenceEnabled flag in the key-value store."

    .line 46
    .line 47
    invoke-interface {v1, v2, p0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    throw p0
.end method
