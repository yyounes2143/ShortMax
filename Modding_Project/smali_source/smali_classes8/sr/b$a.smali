.class public final Lsr/b$a;
.super Ljava/lang/Object;
.source "HttpRequest.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsr/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lsr/b;)Lkotlin/coroutines/CoroutineContext;
    .locals 0
    .param p0    # Lsr/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-interface {p0}, Lsr/b;->x()Lio/ktor/client/call/HttpClientCall;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lio/ktor/client/call/HttpClientCall;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method
