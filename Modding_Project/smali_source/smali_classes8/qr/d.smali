.class public interface abstract Lqr/d;
.super Ljava/lang/Object;
.source "HttpClientPlugin.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TConfig:",
        "Ljava/lang/Object;",
        "TPlugin:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a(Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TTConfig;",
            "Lkotlin/Unit;",
            ">;)TTPlugin;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;Lio/ktor/client/HttpClient;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/ktor/client/HttpClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTPlugin;",
            "Lio/ktor/client/HttpClient;",
            ")V"
        }
    .end annotation
.end method

.method public abstract getKey()Lyr/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lyr/a<",
            "TTPlugin;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
