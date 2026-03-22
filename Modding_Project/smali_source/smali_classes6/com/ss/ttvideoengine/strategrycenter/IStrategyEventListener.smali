.class public interface abstract Lcom/ss/ttvideoengine/strategrycenter/IStrategyEventListener;
.super Ljava/lang/Object;
.source "IStrategyEventListener.java"


# static fields
.field public static final EVENT_KEY_PLAY_RELATED_PRELOAD_FINISHED:I = 0x7dc


# virtual methods
.method public onCustomEvent(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onEvent(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method
