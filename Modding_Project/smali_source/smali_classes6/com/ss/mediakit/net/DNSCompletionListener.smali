.class public interface abstract Lcom/ss/mediakit/net/DNSCompletionListener;
.super Ljava/lang/Object;
.source "DNSCompletionListener.java"


# virtual methods
.method public abstract onCancelled()V
.end method

.method public abstract onCompletion(Lorg/json/JSONObject;Lcom/ss/mediakit/net/Error;)V
.end method

.method public abstract onRetry(Lcom/ss/mediakit/net/Error;)V
.end method
