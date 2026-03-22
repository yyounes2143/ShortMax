.class public interface abstract Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;
.super Ljava/lang/Object;
.source "CodecStrategyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SourceSetter"
.end annotation


# static fields
.field public static final TYPE_PLAYER:I = 0x0

.field public static final TYPE_PRELOAD:I = 0x1


# virtual methods
.method public createTag()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "CodecStrategy"

    .line 2
    .line 3
    return-object v0
.end method

.method public setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V
    .locals 0
    .param p3    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setVideoID(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 0
    .param p3    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public setVideoModel(Ljava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)V
    .locals 0

    .line 1
    return-void
.end method

.method public type()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method
