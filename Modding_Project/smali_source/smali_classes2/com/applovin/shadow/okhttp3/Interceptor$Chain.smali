.class public interface abstract Lcom/applovin/shadow/okhttp3/Interceptor$Chain;
.super Ljava/lang/Object;
.source "Interceptor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Chain"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract call()Lcom/applovin/shadow/okhttp3/Call;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract connectTimeoutMillis()I
.end method

.method public abstract connection()Lcom/applovin/shadow/okhttp3/Connection;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract proceed(Lcom/applovin/shadow/okhttp3/Request;)Lcom/applovin/shadow/okhttp3/Response;
    .param p1    # Lcom/applovin/shadow/okhttp3/Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract readTimeoutMillis()I
.end method

.method public abstract request()Lcom/applovin/shadow/okhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withConnectTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/Interceptor$Chain;
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withReadTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/Interceptor$Chain;
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract withWriteTimeout(ILjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okhttp3/Interceptor$Chain;
    .param p2    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract writeTimeoutMillis()I
.end method
