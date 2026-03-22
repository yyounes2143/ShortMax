.class public interface abstract Lcom/ss/ttvideoengine/metrics/IMediaMetrics;
.super Ljava/lang/Object;
.source "IMediaMetrics.java"


# static fields
.field public static final KEY_METRICS_FIRST_FRAME_DECODE_DURATION:Ljava/lang/String; = "ffr_decode_duration"

.field public static final KEY_METRICS_FIRST_FRAME_PLAYER_DURATION:Ljava/lang/String; = "ffr_prender_duration"

.field public static final KEY_METRICS_FIRST_RENDER_DURATION:Ljava/lang/String; = "ffr_render_duration"

.field public static final KEY_METRICS_PLAYBACK_BUFFERING_DURATION:Ljava/lang/String; = "ffr_playback_buffering_duration"

.field public static final KEY_METRICS_READ_FIRST_DATA_DURATION:Ljava/lang/String; = "ffr_read_first_data_duration"

.field public static final KEY_METRICS_READ_HEAD_DURATION:Ljava/lang/String; = "ffr_read_head_duration"

.field public static final KEY_METRICS_RELEASE_LAST:Ljava/lang/String; = "ffr_free_duration"

.field public static final METRICS_TYPE_FIRST_FRAME:I


# virtual methods
.method public abstract getType()I
.end method

.method public abstract logMetric(Lcom/ss/ttvideoengine/log/VideoEventOnePlay;)V
.end method

.method public abstract logMetric(Ljava/lang/String;F)V
.end method

.method public abstract logMetric(Ljava/lang/String;I)V
.end method

.method public abstract logMetric(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract logMetric(Ljava/lang/String;Z)V
.end method

.method public abstract popMetricBoolean(Ljava/lang/String;)Z
.end method

.method public abstract popMetricFloat(Ljava/lang/String;)F
.end method

.method public abstract popMetricInt(Ljava/lang/String;)I
.end method

.method public abstract popMetricLong(Ljava/lang/String;)J
.end method

.method public abstract popMetrics()Landroid/os/Bundle;
.end method

.method public abstract printf()Ljava/lang/String;
.end method
