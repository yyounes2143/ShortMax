.class public final Ltr/a;
.super Ltr/c;
.source "DefaultHttpResponse.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/ktor/client/call/HttpClientCall;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lwr/o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lwr/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lbs/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Lbs/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lio/ktor/utils/io/ByteReadChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lwr/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/ktor/client/call/HttpClientCall;Lsr/e;)V
    .locals 1
    .param p1    # Lio/ktor/client/call/HttpClientCall;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lsr/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "call"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "responseData"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ltr/c;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Ltr/a;->a:Lio/ktor/client/call/HttpClientCall;

    .line 15
    .line 16
    invoke-virtual {p2}, Lsr/e;->b()Lkotlin/coroutines/CoroutineContext;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Ltr/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 21
    .line 22
    invoke-virtual {p2}, Lsr/e;->f()Lwr/o;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Ltr/a;->c:Lwr/o;

    .line 27
    .line 28
    invoke-virtual {p2}, Lsr/e;->g()Lwr/n;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iput-object p1, p0, Ltr/a;->d:Lwr/n;

    .line 33
    .line 34
    invoke-virtual {p2}, Lsr/e;->d()Lbs/a;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Ltr/a;->e:Lbs/a;

    .line 39
    .line 40
    invoke-virtual {p2}, Lsr/e;->e()Lbs/a;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iput-object p1, p0, Ltr/a;->f:Lbs/a;

    .line 45
    .line 46
    invoke-virtual {p2}, Lsr/e;->a()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    instance-of v0, p1, Lio/ktor/utils/io/ByteReadChannel;

    .line 51
    .line 52
    if-eqz v0, :cond_0

    .line 53
    .line 54
    check-cast p1, Lio/ktor/utils/io/ByteReadChannel;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 p1, 0x0

    .line 58
    :goto_0
    if-nez p1, :cond_1

    .line 59
    .line 60
    sget-object p1, Lio/ktor/utils/io/ByteReadChannel;->a:Lio/ktor/utils/io/ByteReadChannel$Companion;

    .line 61
    .line 62
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteReadChannel$Companion;->a()Lio/ktor/utils/io/ByteReadChannel;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    :cond_1
    iput-object p1, p0, Ltr/a;->g:Lio/ktor/utils/io/ByteReadChannel;

    .line 67
    .line 68
    invoke-virtual {p2}, Lsr/e;->c()Lwr/f;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iput-object p1, p0, Ltr/a;->h:Lwr/f;

    .line 73
    .line 74
    return-void
.end method


# virtual methods
.method public a()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->h:Lwr/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->g:Lio/ktor/utils/io/ByteReadChannel;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lbs/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->e:Lbs/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lbs/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->f:Lbs/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lwr/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->c:Lwr/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lwr/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->d:Lwr/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->b:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public x()Lio/ktor/client/call/HttpClientCall;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Ltr/a;->a:Lio/ktor/client/call/HttpClientCall;

    .line 2
    .line 3
    return-object v0
.end method
