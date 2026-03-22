.class public interface abstract Lcom/bytedance/applog/IPullAbTestConfigCallback;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onRemoteConfig(Lorg/json/JSONObject;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onThrottle(J)V
.end method

.method public abstract onTimeoutError()V
.end method
