.class public Lcom/ss/ttvideoengine/log/AppLogTOBVer2;
.super Ljava/lang/Object;
.source "AppLogTOBVer2.java"

# interfaces
.implements Lcom/ss/ttvideoengine/log/IVideoEventUploader;


# static fields
.field public static final APPLOGWRAPPE_CLASS_NAME:Ljava/lang/String; = "com.pandora.common.applog.AppLogWrapper"

.field public static final APPLOG_CLASS_NAME:Ljava/lang/String; = "com.bytedance.applog.AppLog"

.field private static final TAG:Ljava/lang/String; = "AppLogTOBVer2"

.field private static sAppLogClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sAppLogWrapperClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/ss/ttvideoengine/log/AppLogTOBVer2;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static getAppLogClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sAppLogClass:Ljava/lang/Class;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/bytedance/applog/AppLog;

    .line 9
    .line 10
    sget-object v2, Lcom/bytedance/applog/AppLog;->a:Lcom/bytedance/applog/IAppLogInstance;

    .line 11
    .line 12
    sput-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sAppLogClass:Ljava/lang/Class;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sAppLogClass:Ljava/lang/Class;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method private static getAppLogWrapperClass()Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sAppLogWrapperClass:Ljava/lang/Class;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    const-class v1, Lcom/pandora/common/applog/AppLogWrapper;

    .line 9
    .line 10
    sget v2, Lcom/pandora/common/applog/AppLogWrapper;->a:I

    .line 11
    .line 12
    sput-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sAppLogWrapperClass:Ljava/lang/Class;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catchall_0
    move-exception v1

    .line 16
    goto :goto_1

    .line 17
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sAppLogWrapperClass:Ljava/lang/Class;

    .line 18
    .line 19
    monitor-exit v0

    .line 20
    return-object v1

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw v1
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getAppLogWrapperClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getDid"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    new-array v3, v2, [Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 16
    .line 17
    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    const-string v0, ""

    .line 32
    .line 33
    return-object v0
.end method

.method public static declared-synchronized instance()Lcom/ss/ttvideoengine/log/AppLogTOBVer2;
    .locals 2

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sInstance:Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sInstance:Lcom/ss/ttvideoengine/log/AppLogTOBVer2;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->sInstance:Lcom/ss/ttvideoengine/log/AppLogTOBVer2;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method

.method public static isAppLogVer2Exist()Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getAppLogClass()Ljava/lang/Class;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getAppLogWrapperClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :catch_0
    :cond_0
    return v0
.end method


# virtual methods
.method public onUplaod(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getAppLogWrapperClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "upload"

    .line 6
    .line 7
    .line 8
    const-class v2, Ljava/lang/String;

    .line 9
    .line 10
    const-class v3, Lorg/json/JSONObject;

    .line 11
    .line 12
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 22
    .line 23
    .line 24
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    const-string v0, "AppLogTOBVer2"

    .line 32
    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v2, "onUpload "

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string p1, " "

    .line 47
    .line 48
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    move-exception p1

    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method
