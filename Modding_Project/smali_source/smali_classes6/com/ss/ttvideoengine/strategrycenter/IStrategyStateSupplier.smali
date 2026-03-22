.class public interface abstract Lcom/ss/ttvideoengine/strategrycenter/IStrategyStateSupplier;
.super Ljava/lang/Object;
.source "IStrategyStateSupplier.java"


# static fields
.field public static final KEY_INFO_COMMENT:Ljava/lang/String; = "comment"

.field public static final KEY_INFO_LIKE:Ljava/lang/String; = "like"

.field public static final KEY_INFO_SHARE:Ljava/lang/String; = "share"

.field public static final KEY_STREAM_AUDIO:Ljava/lang/String; = "audio"

.field public static final KEY_STREAM_VIDEO:Ljava/lang/String; = "video"

.field public static final SELECT_BITRATE_TYPE_PLAY:I = 0x1

.field public static final SELECT_BITRATE_TYPE_PRELOAD:I = 0x2


# virtual methods
.method public abstract getNetworkSpeed()D
.end method

.method public abstract mediaInfo(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public selectBitrate(Lcom/ss/ttvideoengine/strategrycenter/StrategyMediaParam;)Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategrycenter/StrategyMediaParam;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract selectBitrate(Ljava/lang/String;I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method
