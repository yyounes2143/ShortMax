.class public interface abstract Lcom/applovin/shadow/okhttp3/Callback;
.super Ljava/lang/Object;
.source "Callback.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onFailure(Lcom/applovin/shadow/okhttp3/Call;Ljava/io/IOException;)V
    .param p1    # Lcom/applovin/shadow/okhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onResponse(Lcom/applovin/shadow/okhttp3/Call;Lcom/applovin/shadow/okhttp3/Response;)V
    .param p1    # Lcom/applovin/shadow/okhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
