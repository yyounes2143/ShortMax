.class public interface abstract Lcom/bytedance/vcloud/strategy/IStrategyStateSupplier;
.super Ljava/lang/Object;
.source "IStrategyStateSupplier.java"


# static fields
.field public static final AUDIO_BITRATE:Ljava/lang/String; = "audio"

.field public static final BITRATE_BEFORE_FIT_SCREEN:Ljava/lang/String; = "bitrate_before_fit_screen"

.field public static final DOWNGRADE_TYPE:Ljava/lang/String; = "downgrade_type"

.field public static final MAX_CACHE_BITRATE:Ljava/lang/String; = "max_cache_bitrate"

.field public static final SR_INFO:Ljava/lang/String; = "sr_info"

.field public static final STARTUP_AVERAGE_SPEED:Ljava/lang/String; = "startup_average_speed"

.field public static final STARTUP_INFO:Ljava/lang/String; = "startup_info"

.field public static final STARTUP_PREDICT_SPEED:Ljava/lang/String; = "startup_predict_speed"

.field public static final STARTUP_SPEED:Ljava/lang/String; = "startup_speed"

.field public static final USER_ENTER_FULL_SCREEN:Ljava/lang/String; = "user_enter_full_screen"

.field public static final USER_QUALITY_SENSITIVITY:Ljava/lang/String; = "user_quality_sen"

.field public static final USE_AUDIO_LABEL:Ljava/lang/String; = "use_audio_lab"

.field public static final VIDEO_BITRATE:Ljava/lang/String; = "video"

.field public static final VIDEO_BITRATE_ORIGIN:Ljava/lang/String; = "video_bitrate_origin"


# virtual methods
.method public getNetworkScore()D
    .locals 2

    .line 1
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 2
    .line 3
    return-wide v0
.end method

.method public abstract getNetworkSpeed()D
.end method

.method public abstract getNetworkType()I
.end method

.method public abstract mediaInfoJsonString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public onAfterSelect(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p2
.end method

.method public onBeforeSelect(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    return-object p2
.end method

.method public abstract selectBitrateJsonString(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method public selectBitrateJsonString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    return-object p1
.end method
