.class public interface abstract Lcom/facebook/fresco/urimod/UriModifierInterface;
.super Ljava/lang/Object;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/urimod/UriModifierInterface$DefaultImpls;,
        Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract modifyPrefetchUri(Landroid/net/Uri;Ljava/lang/Object;)Landroid/net/Uri;
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract modifyUri(Lcom/facebook/fresco/vito/source/UriImageSource;Lcom/facebook/fresco/urimod/Dimensions;Lc3/q;Ljava/lang/Object;Lcom/facebook/common/callercontext/ContextChain;Z)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
    .param p1    # Lcom/facebook/fresco/vito/source/UriImageSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/fresco/urimod/Dimensions;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lc3/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/common/callercontext/ContextChain;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract unregisterReverseFallbackUri(Landroid/net/Uri;)V
    .param p1    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
