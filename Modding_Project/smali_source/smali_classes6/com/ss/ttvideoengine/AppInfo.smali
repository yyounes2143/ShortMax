.class public Lcom/ss/ttvideoengine/AppInfo;
.super Lcom/ss/ttvideoengine/BaseAppInfo;
.source "AppInfo.java"


# static fields
.field public static final APP_REGION_AMERICA:Ljava/lang/String; = "amercia"

.field public static final APP_REGION_CHINA:Ljava/lang/String; = "china"

.field public static final APP_REGION_CN:Ljava/lang/String; = "china"

.field public static final APP_REGION_MYA:Ljava/lang/String; = "mya"

.field public static final APP_REGION_SINGAPORE:Ljava/lang/String; = "singapore"

.field public static final SDK_REGION_CN:Ljava/lang/String; = "CN"

.field public static final SDK_REGION_GLOBAL:Ljava/lang/String; = "GLOBAL"

.field private static final TAG:Ljava/lang/String; = "AppInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/BaseAppInfo;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getDefaultVodTopHost()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnc/a;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static getDefaultVodTopHostV2()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lnc/a;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    :cond_0
    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getDeviceID()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sput-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 16
    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    sput-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 22
    .line 23
    :cond_1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mDeviceId:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method public static getSmartUrlApiHost()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mSmartUrlApiHostName:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mSmartUrlApiHostName:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lnc/a;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public static updateDeviceId(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter;->updateDeviceId()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
