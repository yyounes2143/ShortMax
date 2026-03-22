.class public Lcom/ss/ttvideoengine/BaseAppInfo;
.super Ljava/lang/Object;
.source "BaseAppInfo.java"


# static fields
.field public static mAppChannel:Ljava/lang/String; = null

.field public static mAppID:I = -0x1

.field public static mAppName:Ljava/lang/String;

.field public static mAppVersion:Ljava/lang/String;

.field public static mContext:Landroid/content/Context;

.field public static mDeviceId:Ljava/lang/String;

.field public static mOpenApiHostName:Ljava/lang/String;

.field public static mRegion:Ljava/lang/String;

.field public static mScreenHeight:I

.field public static mScreenWidth:I

.field public static mSmartUrlApiHostName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static toJsonString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sget v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 7
    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const-string v2, "app_id"

    .line 13
    .line 14
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-string v1, "app_name"

    .line 18
    .line 19
    sget-object v2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenWidth:I

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "screen_width"

    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mScreenHeight:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "screen_height"

    .line 42
    .line 43
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    sget-object v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    const-string v1, "did"

    .line 57
    .line 58
    sget-object v2, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object v1, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 64
    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    const-string v1, "app_version"

    .line 74
    .line 75
    sget-object v2, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppVersion:Ljava/lang/String;

    .line 76
    .line 77
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :cond_1
    new-instance v1, Lorg/json/JSONObject;

    .line 81
    .line 82
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method
