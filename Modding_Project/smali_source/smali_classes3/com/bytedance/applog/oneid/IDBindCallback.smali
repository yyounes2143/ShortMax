.class public interface abstract Lcom/bytedance/applog/oneid/IDBindCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onFail(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lcom/bytedance/applog/oneid/IDBindResult;)V
    .param p1    # Lcom/bytedance/applog/oneid/IDBindResult;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
.end method
