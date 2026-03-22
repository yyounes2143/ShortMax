.class public interface abstract Lcom/facebook/fresco/vito/source/SingleImageSource;
.super Ljava/lang/Object;
.source "SingleImageSource.kt"

# interfaces
.implements Lcom/facebook/fresco/vito/source/UriImageSource;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract getUri()Landroid/net/Uri;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
