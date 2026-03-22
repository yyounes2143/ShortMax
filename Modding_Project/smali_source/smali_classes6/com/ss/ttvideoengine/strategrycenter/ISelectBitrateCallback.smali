.class public interface abstract Lcom/ss/ttvideoengine/strategrycenter/ISelectBitrateCallback;
.super Ljava/lang/Object;
.source "ISelectBitrateCallback.java"


# static fields
.field public static final KEY_STREAM_AUDIO:Ljava/lang/String; = "audio"

.field public static final KEY_STREAM_DUBBED_AUDIO:Ljava/lang/String; = "dubbed_audio"

.field public static final KEY_STREAM_VIDEO:Ljava/lang/String; = "video"

.field public static final SELECT_BITRATE_TYPE_PLAY:I = 0x1

.field public static final SELECT_BITRATE_TYPE_PRELOAD:I = 0x2


# virtual methods
.method public abstract selectBitrate(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
