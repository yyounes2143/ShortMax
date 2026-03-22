.class public interface abstract Lcom/bytedance/applog/ISessionObserver;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onSessionBatchEvent(JLjava/lang/String;Lorg/json/JSONObject;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSessionStart(JLjava/lang/String;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onSessionTerminate(JLjava/lang/String;Lorg/json/JSONObject;)V
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
