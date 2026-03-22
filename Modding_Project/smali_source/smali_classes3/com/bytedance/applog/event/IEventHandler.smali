.class public interface abstract Lcom/bytedance/applog/event/IEventHandler;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract acceptType()I
.end method

.method public abstract onReceive(ILjava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/applog/event/EventPolicy;
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
