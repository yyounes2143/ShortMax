.class public Lcom/pandora/common/applog/AppLogWrapper;
.super Ljava/lang/Object;
.source "AppLogWrapper.java"


# static fields
.field private static final BYTE_PLUS_LIVE_APPID:Ljava/lang/String; = "500808"

.field private static final SECOND_APP_ID_KEY:Ljava/lang/String; = "second_appid"

.field private static final SECOND_APP_NAME_KEY:Ljava/lang/String; = "second_appname"

.field private static final SECOND_APP_PREFIX:Ljava/lang/String; = "second_app_"

.field private static final SECOND_APP_PRODUCT_TYPE_KEY:Ljava/lang/String; = "product_type"

.field private static final SECOND_APP_SPECIAL_KEY:Ljava/lang/String; = "params_for_special"

.field private static final SECOND_APP_VALUE:Ljava/lang/String; = "second_app"

.field private static final TAG:Ljava/lang/String; = "AppLogWrapper"

.field private static final TTSDK_TOB_CUSTOM:Ljava/lang/String; = "ttsdk_tob_custom"

.field public static final synthetic a:I

.field private static iDataObserver:Ljava/lang/Object;

.field private static mBytePlusAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

.field private static mCustomLogJsonObject:Lorg/json/JSONObject;

.field private static mCustomLogLock:Ljava/lang/Object;

.field private static final mLogObject:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mLogObject:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogLock:Ljava/lang/Object;

    .line 14
    .line 15
    new-instance v0, Lorg/json/JSONObject;

    .line 16
    .line 17
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogJsonObject:Lorg/json/JSONObject;

    .line 21
    .line 22
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

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/pandora/common/applog/AppLogWrapper;->updateDeviceID(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static addCustomLog(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogJsonObject:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    :try_start_0
    const-string/jumbo v0, "ttsdk_tob_custom"

    .line 14
    .line 15
    .line 16
    sget-object v1, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogJsonObject:Lorg/json/JSONObject;

    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    .line 29
    .line 30
    :cond_0
    :goto_0
    return-object p0
.end method

.method private static addEventCache(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mLogObject:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    monitor-exit v0

    .line 27
    return-void

    .line 28
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw p0
.end method

.method private static addVersionInfo()V
    .locals 5

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    const-string v1, "1.42.3.107"

    .line 4
    .line 5
    const-string/jumbo v2, "ttsdk_version"

    .line 6
    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/IAppLogInstance;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lkc/a;->g()Llc/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Llc/a;->d()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v3, "mya"

    .line 24
    .line 25
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 32
    .line 33
    const-string v3, "log_from_region"

    .line 34
    .line 35
    const-string/jumbo v4, "volc-overseas"

    .line 36
    .line 37
    .line 38
    invoke-interface {v0, v3, v4}, Lcom/bytedance/applog/IAppLogInstance;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mBytePlusAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Lcom/bytedance/applog/IAppLogInstance;->setHeaderInfo(Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    const-string v0, "AppLogWrapper"

    .line 49
    .line 50
    const-string/jumbo v1, "ttsdk_version 1.42.3.107"

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public static createAppLogInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/applog/IAppLogInstance;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/applog/InitConfig;

    .line 2
    .line 3
    invoke-direct {v0, p1, p3}, Lcom/bytedance/applog/InitConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2}, Lcom/pandora/common/applog/AppLogParams;->getUriConfig(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setUriConfig(I)Lcom/bytedance/applog/InitConfig;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p4}, Lcom/bytedance/applog/InitConfig;->setAutoStart(Z)Lcom/bytedance/applog/InitConfig;

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setMacEnable(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setGaidEnabled(Z)V

    .line 21
    .line 22
    .line 23
    if-eqz p5, :cond_0

    .line 24
    .line 25
    const-string p2, "AppLogWrapper"

    .line 26
    .line 27
    const-string p3, "init security deviceId"

    .line 28
    .line 29
    invoke-static {p2, p3}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setImeiEnable(Z)Lcom/bytedance/applog/InitConfig;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setAndroidIdEnabled(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setOaidEnabled(Z)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setIccIdEnabled(Z)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, p1}, Lcom/bytedance/applog/InitConfig;->setSerialNumberEnable(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    new-instance p2, Lcom/pandora/common/applog/AppLogWrapper$2;

    .line 48
    .line 49
    invoke-direct {p2}, Lcom/pandora/common/applog/AppLogWrapper$2;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, p2}, Lcom/bytedance/applog/InitConfig;->setLogger(Lcom/bytedance/applog/ILogger;)Lcom/bytedance/applog/InitConfig;

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/bytedance/applog/AppLog;->newInstance()Lcom/bytedance/applog/IAppLogInstance;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->dataObserverInstance()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    check-cast p3, Lcom/bytedance/applog/IDataObserver;

    .line 64
    .line 65
    invoke-interface {p2, p3}, Lcom/bytedance/applog/IAppLogInstance;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 66
    .line 67
    .line 68
    if-eqz p5, :cond_1

    .line 69
    .line 70
    invoke-interface {p2, p1}, Lcom/bytedance/applog/IAppLogInstance;->setClipboardEnabled(Z)V

    .line 71
    .line 72
    .line 73
    :cond_1
    invoke-interface {p2, p0, v0}, Lcom/bytedance/applog/IAppLogInstance;->init(Landroid/content/Context;Lcom/bytedance/applog/InitConfig;)V

    .line 74
    .line 75
    .line 76
    if-eqz p5, :cond_2

    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    invoke-interface {p2, p0}, Lcom/bytedance/applog/IAppLogInstance;->setForbidReportPhoneDetailInfo(Z)V

    .line 80
    .line 81
    .line 82
    :cond_2
    return-object p2
.end method

.method private static declared-synchronized dataObserverInstance()Ljava/lang/Object;
    .locals 2

    .line 1
    const-class v0, Lcom/pandora/common/applog/AppLogWrapper;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/common/applog/AppLogWrapper;->iDataObserver:Ljava/lang/Object;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/pandora/common/applog/AppLogWrapper$1;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/pandora/common/applog/AppLogWrapper$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/pandora/common/applog/AppLogWrapper;->iDataObserver:Ljava/lang/Object;

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
    sget-object v1, Lcom/pandora/common/applog/AppLogWrapper;->iDataObserver:Ljava/lang/Object;
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

.method public static getAppLogInstance()Lcom/bytedance/applog/IAppLogInstance;
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getDid()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getDid()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static getUserUniqueID()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->getUserUniqueID()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 6

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p0, "AppLogWrapper"

    .line 6
    .line 7
    const-string p1, "already init"

    .line 8
    .line 9
    invoke-static {p0, p1}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    move-object v0, p0

    .line 14
    move-object v1, p1

    .line 15
    move-object v2, p2

    .line 16
    move-object v3, p3

    .line 17
    move v4, p5

    .line 18
    move v5, p4

    .line 19
    invoke-static/range {v0 .. v5}, Lcom/pandora/common/applog/AppLogWrapper;->createAppLogInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/bytedance/applog/IAppLogInstance;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sput-object p0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 24
    .line 25
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->addVersionInfo()V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->uploadCacheLog()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static onBDUploaderEventV3(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 3

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    const-string v1, "AppLogWrapper"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p0, "onBDUploaderEventV3 but not init"

    .line 8
    .line 9
    invoke-static {v1, p0}, Lmc/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v2, "onBDUploaderEventV3 "

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " "

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 43
    .line 44
    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 45
    .line 46
    .line 47
    const/4 p0, 0x1

    .line 48
    return p0
.end method

.method public static onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/pandora/common/applog/AppLogWrapper;->addEventCache(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "AppLogWrapper"

    .line 9
    .line 10
    const-string p1, "onEventV3 but not init"

    .line 11
    .line 12
    invoke-static {p0, p1}, Lmc/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p0, 0x0

    .line 16
    return p0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "onEventV3 "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string/jumbo v1, "upload"

    .line 43
    .line 44
    .line 45
    invoke-static {v1, v0}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    const-string v0, "159973"

    .line 49
    .line 50
    invoke-static {p0, p1, v0, v0, p0}, Lcom/pandora/common/applog/AppLogWrapper;->onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    const/4 p0, 0x1

    .line 54
    return p0
.end method

.method public static onInternalEventV3(Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    const-string v0, "AppLogWrapper"

    .line 19
    .line 20
    const-string v1, "both second appid and second app name is empty"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lmc/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    if-nez p1, :cond_2

    .line 26
    .line 27
    new-instance p1, Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 30
    .line 31
    .line 32
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "second_app_"

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogLock:Ljava/lang/Object;

    .line 50
    .line 51
    monitor-enter v0

    .line 52
    :try_start_0
    invoke-static {p1}, Lcom/pandora/common/applog/AppLogWrapper;->addCustomLog(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :try_start_1
    const-string v0, "params_for_special"

    .line 58
    .line 59
    const-string v1, "second_app"

    .line 60
    .line 61
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    const-string v0, "second_appid"

    .line 65
    .line 66
    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    const-string p2, "second_appname"

    .line 70
    .line 71
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    const-string p2, "product_type"

    .line 75
    .line 76
    invoke-virtual {p1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catch_0
    move-exception p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    .line 83
    .line 84
    const-string p3, "AppLogWrapper"

    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-static {p3, p2}, Lmc/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_0
    sget-object p2, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 94
    .line 95
    invoke-interface {p2, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 96
    .line 97
    .line 98
    const-string p2, "AppLogWrapper"

    .line 99
    .line 100
    new-instance p3, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string p4, "onEventV3\uff1a"

    .line 106
    .line 107
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string/jumbo p0, "\uff0c"

    .line 114
    .line 115
    .line 116
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {p2, p0}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :catchall_0
    move-exception p0

    .line 131
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    throw p0
.end method

.method public static setAppLogCustomData(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sput-object p0, Lcom/pandora/common/applog/AppLogWrapper;->mCustomLogJsonObject:Lorg/json/JSONObject;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p0

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw p0
.end method

.method public static setAppLogInstance(Lcom/bytedance/applog/IAppLogInstance;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setAppLogInstance "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "AppLogWrapper"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object p0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 24
    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p0}, Lcom/bytedance/applog/IAppLogInstance;->getAppId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    if-eqz p0, :cond_0

    .line 36
    .line 37
    sget-object p0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 38
    .line 39
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->dataObserverInstance()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/bytedance/applog/IDataObserver;

    .line 44
    .line 45
    invoke-interface {p0, v0}, Lcom/bytedance/applog/IAppLogInstance;->addDataObserver(Lcom/bytedance/applog/IDataObserver;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->addVersionInfo()V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Lcom/pandora/common/applog/AppLogWrapper;->uploadCacheLog()V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public static start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "AppLogWrapper"

    .line 6
    .line 7
    const-string v1, "sAppLogInstance is null, call init first!"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lmc/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/applog/IAppLogInstance;->start()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private static updateDeviceID(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "updateDeviceID:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "AppLogWrapper"

    .line 20
    .line 21
    invoke-static {v1, v0}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return-void

    .line 31
    :cond_0
    :try_start_0
    const-class v0, Lcom/pandora/vod/VodSDK;

    .line 32
    .line 33
    const-string/jumbo v2, "updateDeviceID"

    .line 34
    .line 35
    .line 36
    const-class v3, Ljava/lang/String;

    .line 37
    .line 38
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    invoke-virtual {v2, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string/jumbo v2, "updateDeviceID "

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v1, v0}, Lmc/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public static upload(Ljava/lang/String;Lorg/json/JSONObject;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Lcom/pandora/common/applog/AppLogWrapper;->addEventCache(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    const-string p0, "AppLogWrapper"

    .line 9
    .line 10
    const-string/jumbo p1, "upload but not init"

    .line 11
    .line 12
    .line 13
    invoke-static {p0, p1}, Lmc/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    return p0

    .line 18
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/bytedance/applog/IAppLogInstance;->onMiscEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 19
    .line 20
    .line 21
    const/4 p0, 0x1

    .line 22
    return p0
.end method

.method private static uploadCacheLog()V
    .locals 6

    .line 1
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->sAppLogInstance:Lcom/bytedance/applog/IAppLogInstance;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/pandora/common/applog/AppLogWrapper;->mLogObject:Ljava/util/HashMap;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    sget-object v3, Lcom/pandora/common/applog/AppLogWrapper;->mLogObject:Ljava/util/HashMap;

    .line 30
    .line 31
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    :goto_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-ge v4, v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    check-cast v5, Lorg/json/JSONObject;

    .line 49
    .line 50
    invoke-static {v2, v5}, Lcom/pandora/common/applog/AppLogWrapper;->upload(Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 51
    .line 52
    .line 53
    add-int/lit8 v4, v4, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v1

    .line 57
    goto :goto_1

    .line 58
    :cond_2
    sget-object v1, Lcom/pandora/common/applog/AppLogWrapper;->mLogObject:Ljava/util/HashMap;

    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 61
    .line 62
    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 65
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw v1
.end method
