.class public Lcom/ss/ttvideoengine/InfoWrapper;
.super Ljava/lang/Object;
.source "InfoWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoWrapper"


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

.method public static getApiRetryCount()I
    .locals 2

    .line 1
    const-string v0, "api_retry_count"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static getAppID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 8
    .line 9
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isCommonSDKExist()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-static {}, Lkc/a;->d()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0

    .line 25
    :cond_1
    const-string v0, ""

    .line 26
    .line 27
    return-object v0
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppName:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isCommonSDKExist()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lkc/a;->e()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    const-string v0, ""

    .line 22
    .line 23
    return-object v0
.end method

.method public static getBufferTimeOut()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x1e

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const-string v0, "buffer_timeout"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static getDeviceID()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->isAppLogVer2Exist()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/ss/ttvideoengine/log/AppLogTOBVer2;->getDeviceID()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    return-object v0
.end method

.method public static getExpiredDegradeEnabled()I
    .locals 2

    .line 1
    const-string v0, "expired_degrade_enable"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static getH264HardwareEnable()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const-string v0, "h264_hardware_enable"

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static getHardwareEnable()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "hardware_decode_enable"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static getLicenseIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseManager;->getInstance()Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/pandora/ttlicense2/LicenseManager;->getLoadedLicenseIds()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public static getNativeMdlEnable()I
    .locals 2

    .line 1
    const-string v0, "native_mdl_enable"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method public static getRegion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mRegion:Ljava/lang/String;

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isCommonSDKExist()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {}, Lkc/a;->f()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_1
    const-string v0, ""

    .line 22
    .line 23
    return-object v0
.end method

.method public static getSmartUrlEnabled()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const-string/jumbo v0, "smart_strategy_enable"

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0
.end method

.method public static getTTSDKVersion()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isCommonSDKExist()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lkc/a;->i()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0

    .line 12
    :cond_0
    const-string v0, ""

    .line 13
    .line 14
    return-object v0
.end method

.method public static getTopHostArray()Lorg/json/JSONArray;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v0, "byte_vod_host"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/VodSettings;->getVodJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static getTopHostArrayV2()Lorg/json/JSONArray;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    const-string v0, "byte_vod_host_v2"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/VodSettings;->getVodJsonArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    return-object v0
.end method

.method public static getUseHostSelect()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "host_select"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v0, v2, :cond_1

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_1
    return v1
.end method

.method public static geth265HardwareEnable()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "bvc1"

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const-string v0, "h265_hardware_enable"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_1
    return v1
.end method

.method public static geth265SoftwareCapabilityEnable()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "h265_software_capability_enable"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static geth265SoftwareEnable()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    const-string v0, "h265_software_enable"

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static geth266SoftwareEnable()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    const-string v0, "h266_software_enable"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    return v0
.end method

.method public static isCommonSDKExist()Z
    .locals 1

    .line 1
    :try_start_0
    sget v0, Lkc/a;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    return v0

    .line 5
    :catch_0
    move-exception v0

    .line 6
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public static isGearStrategyEnable()Z
    .locals 2

    .line 1
    const-string/jumbo v0, "vod_gear_strategy_enabled"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method

.method public static isHDREnable()Z
    .locals 3

    .line 1
    const-string v0, "hdr_enable"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1
.end method

.method public static isHlsProxyEnable()Z
    .locals 2

    .line 1
    const-string v0, "hls_proxy_enable"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v1, 0x0

    .line 12
    :goto_0
    return v1
.end method

.method public static isMDLV2Enable()Z
    .locals 3

    .line 1
    const-string v0, "mdlv2_enable"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v0, v2, :cond_0

    .line 10
    .line 11
    move v1, v2

    .line 12
    :cond_0
    return v1
.end method

.method public static isSREnable()Z
    .locals 3

    .line 1
    const-string/jumbo v0, "sr_enable"

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    move v1, v2

    .line 13
    :cond_0
    return v1
.end method

.method public static isSetAppInfo()Z
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mAppID:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/ss/ttvideoengine/BaseAppInfo;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method public static maxRetryTimeOut()I
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSetAppInfo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0xa

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    const-string v0, "http_retry_timeout_when_fail"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/VodSettings;->getVodInt(Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public static printSettings()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "setting notify  host_select:"

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getUseHostSelect()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", byte_vod_host:"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTopHostArray()Lorg/json/JSONArray;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", byte_vod_host_v2:"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getTopHostArrayV2()Lorg/json/JSONArray;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", buffer_timeout:"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getBufferTimeOut()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", http_retry_timeout_when_fail:"

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->maxRetryTimeOut()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", hardware_decode_enable:"

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getHardwareEnable()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v1, ", h264_hardware_enable:"

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getH264HardwareEnable()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v1, ", h265_hardware_enable:"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265HardwareEnable()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v1, ", h265_software_enable:"

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265SoftwareEnable()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v1, ", h266_software_enable:"

    .line 116
    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth266SoftwareEnable()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v1, ", h265_software_capability_enable:"

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265SoftwareCapabilityEnable()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v1, ", "

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string/jumbo v1, "smart_strategy_enable"

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    const-string v1, ":"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getSmartUrlEnabled()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", sr_enable:"

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isSREnable()Z

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v1, ", hdr_enable:"

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->isHDREnable()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    const-string v1, ", expired_degrade_enable:"

    .line 187
    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getExpiredDegradeEnabled()I

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    const-string v1, ", native_mdl_enable:"

    .line 199
    .line 200
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getNativeMdlEnable()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    const-string v1, "InfoWrapper"

    .line 215
    .line 216
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    return-void
.end method
