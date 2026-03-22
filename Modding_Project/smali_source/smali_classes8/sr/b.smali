.class public interface abstract Lsr/b;
.super Ljava/lang/Object;
.source "HttpRequest.kt"

# interfaces
.implements Lwr/k;
.implements Lgt/g0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsr/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMethod()Lwr/m;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getUrl()Lio/ktor/http/Url;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract m()Lyr/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract x()Lio/ktor/client/call/HttpClientCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
