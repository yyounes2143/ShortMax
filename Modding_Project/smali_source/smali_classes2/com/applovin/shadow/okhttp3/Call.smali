.class public interface abstract Lcom/applovin/shadow/okhttp3/Call;
.super Ljava/lang/Object;
.source "Call.kt"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/Call$Factory;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract clone()Lcom/applovin/shadow/okhttp3/Call;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract enqueue(Lcom/applovin/shadow/okhttp3/Callback;)V
    .param p1    # Lcom/applovin/shadow/okhttp3/Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract execute()Lcom/applovin/shadow/okhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isExecuted()Z
.end method

.method public abstract request()Lcom/applovin/shadow/okhttp3/Request;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract timeout()Lcom/applovin/shadow/okio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
