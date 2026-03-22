.class public Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;
.super Ljava/lang/Object;
.source "PCDNConfig.java"


# static fields
.field private static final DEFAULT_VALUE:Ljava/lang/String; = "{\"vdp_abgroup_id\":\"287\",\"vdp_abtest_id\":\"test_group\",\"heartbeat_interval_ms\":300,\"mdl_extension_opts\":{\"enable_pcioctrl\":1,\"ioctrl_conf\":{\"initial_cdn_bytes\":0,\"least_bw_for_p2p\":0,\"p2p_file_size_min\":1048576,\"cache_ms_safe\":0,\"cache_ms_danger\":3000,\"mdl_cache_ms_safe\":0,\"p2p_req_timeout_safe_buf_pct\":30,\"enable_sc_req\":1,\"rst_conn_url_mode\":1,\"cdn1_open_timeout_sec\":3,\"cdn1_rw_timeout_sec\":3,\"p2p_open_timeout\":5000,\"cdn_first_range_end_min\":819200,\"cdn_slide_win_min\":311296,\"cdn_slide_win_init\":311296,\"cdn_slide_win_step\":311296,\"cdn_slide_win_max\":2097152,\"p2p_slide_win_min\":655360,\"p2p_speed_pct_danger\":40,\"p2p_speed_pct_newborn\":20,\"p2p_speed_pct_stable\":20,\"p2p_protect_speed\":614400,\"task_slide_win_max\":1048576,\"enable_loader_lock_tmp\":0,\"enable_p2p_req_timeout\":1,\"enable_player_range\":1,\"retry_mdl_cache_ms_safe\":0,\"retry_cache_ms_safe\":0,\"retry_cache_ms_danger\":1,\"ign_invalid_p2p_data\":1,\"enable_sto_last_piece\":2,\"cache_ms_keep_p2p\":5000,\"mdl_cache_ms_keep_p2p\":3000,\"p2p_tail_range_min\":262144,\"p2p_speed_retry_pct_danger\":20,\"p2p_speed_retry_pct_newborn\":10,\"p2p_speed_retry_pct_stable\":10,\"enable_retry\":1}}}"

.field public static final KEY_HEARTBEAT_INTERVAL_MS:Ljava/lang/String; = "heartbeat_interval_ms"

.field public static final KEY_MDL_EXTENSION_OPTS:Ljava/lang/String; = "mdl_extension_opts"

.field public static final KEY_VDP_ABGROUP_ID:Ljava/lang/String; = "vdp_abgroup_id"

.field public static final KEY_VDP_ABTEST_ID:Ljava/lang/String; = "vdp_abtest_id"

.field public static final TAG:Ljava/lang/String; = "TTVideoEngine_PCDNConfig"

.field private static sDefaultValue:Lorg/json/JSONObject;


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

.method public static configEngine(Lcom/ss/ttvideoengine/TTVideoEngineInterface;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->getValue()Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "configEngine "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, " "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "TTVideoEngine_PCDNConfig"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    if-nez v0, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    const-string v1, "heartbeat_interval_ms"

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-lez v0, :cond_2

    .line 52
    .line 53
    const/16 v1, 0x291

    .line 54
    .line 55
    invoke-interface {p0, v1, v0}, Lcom/ss/ttvideoengine/TTVideoEngineInterface;->setIntOption(II)V

    .line 56
    .line 57
    .line 58
    :cond_2
    return-void
.end method

.method public static configMDL(Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mLoaderType:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    const-string v0, "pcdn"

    .line 8
    .line 9
    invoke-static {v0}, Lcom/ss/ttvideoengine/FeatureManager;->hasPermission(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->getValue()Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v2, "configMDL "

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const-string v2, "TTVideoEngine_PCDNConfig"

    .line 44
    .line 45
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_2
    if-nez v0, :cond_3

    .line 49
    .line 50
    return-void

    .line 51
    :cond_3
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlExtensionOptsStr:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-eqz v1, :cond_4

    .line 58
    .line 59
    const-string v1, "mdl_extension_opts"

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mMdlExtensionOptsStr:Ljava/lang/String;

    .line 66
    .line 67
    :cond_4
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpABTestId:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_5

    .line 74
    .line 75
    const-string/jumbo v1, "vdp_abtest_id"

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpABTestId:Ljava/lang/String;

    .line 83
    .line 84
    :cond_5
    iget-object v1, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpGroupId:Ljava/lang/String;

    .line 85
    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eqz v1, :cond_6

    .line 91
    .line 92
    const-string/jumbo v1, "vdp_abgroup_id"

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/ss/mediakit/medialoader/AVMDLDataLoaderConfigure;->mVdpGroupId:Ljava/lang/String;

    .line 100
    .line 101
    :cond_6
    return-void
.end method

.method private static getDefaultValue()Lorg/json/JSONObject;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->sDefaultValue:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    const-string/jumbo v1, "{\"vdp_abgroup_id\":\"287\",\"vdp_abtest_id\":\"test_group\",\"heartbeat_interval_ms\":300,\"mdl_extension_opts\":{\"enable_pcioctrl\":1,\"ioctrl_conf\":{\"initial_cdn_bytes\":0,\"least_bw_for_p2p\":0,\"p2p_file_size_min\":1048576,\"cache_ms_safe\":0,\"cache_ms_danger\":3000,\"mdl_cache_ms_safe\":0,\"p2p_req_timeout_safe_buf_pct\":30,\"enable_sc_req\":1,\"rst_conn_url_mode\":1,\"cdn1_open_timeout_sec\":3,\"cdn1_rw_timeout_sec\":3,\"p2p_open_timeout\":5000,\"cdn_first_range_end_min\":819200,\"cdn_slide_win_min\":311296,\"cdn_slide_win_init\":311296,\"cdn_slide_win_step\":311296,\"cdn_slide_win_max\":2097152,\"p2p_slide_win_min\":655360,\"p2p_speed_pct_danger\":40,\"p2p_speed_pct_newborn\":20,\"p2p_speed_pct_stable\":20,\"p2p_protect_speed\":614400,\"task_slide_win_max\":1048576,\"enable_loader_lock_tmp\":0,\"enable_p2p_req_timeout\":1,\"enable_player_range\":1,\"retry_mdl_cache_ms_safe\":0,\"retry_cache_ms_safe\":0,\"retry_cache_ms_danger\":1,\"ign_invalid_p2p_data\":1,\"enable_sto_last_piece\":2,\"cache_ms_keep_p2p\":5000,\"mdl_cache_ms_keep_p2p\":3000,\"p2p_tail_range_min\":262144,\"p2p_speed_retry_pct_danger\":20,\"p2p_speed_retry_pct_newborn\":10,\"p2p_speed_retry_pct_stable\":10,\"enable_retry\":1}}}"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->sDefaultValue:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    .line 19
    .line 20
    :cond_0
    :goto_0
    sget-object v0, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->sDefaultValue:Lorg/json/JSONObject;

    .line 21
    .line 22
    return-object v0
.end method

.method public static getValue()Lorg/json/JSONObject;
    .locals 2

    .line 1
    const-string v0, "pcdn_config"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/ttvideoengine/VodSettings;->getVodJsonObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "TTVideoEngine_PCDNConfig"

    .line 10
    .line 11
    const-string/jumbo v1, "using default value."

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/ss/ttvideoengine/strategy/pcdn/PCDNConfig;->getDefaultValue()Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_0
    return-object v0
.end method
