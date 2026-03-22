.class public interface abstract Lcom/pandora/common/applog/IAppLogEngine;
.super Ljava/lang/Object;
.source "IAppLogEngine.java"


# virtual methods
.method public abstract addDataObserver(Lcom/pandora/common/applog/IApplogObserver;)V
.end method

.method public abstract getConfig()Ljc/a;
.end method

.method public abstract getDeviceID()Ljava/lang/String;
.end method

.method public abstract getUUID()Ljava/lang/String;
.end method

.method public abstract onPause()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onResume()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onUpload(Ljava/lang/String;Lorg/json/JSONObject;)V
.end method
