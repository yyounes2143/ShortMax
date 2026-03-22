.class public interface abstract Lcom/bytedance/vodsetting/NetInterface$CompletionListener;
.super Ljava/lang/Object;
.source "NetInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vodsetting/NetInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CompletionListener"
.end annotation


# virtual methods
.method public abstract onCompletion(Lorg/json/JSONObject;Ljava/lang/Error;)V
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Error;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
