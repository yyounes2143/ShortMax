.class public final Lnr/c;
.super Ltr/c;
.source "SavedCall.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lnr/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lgt/s;
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

.field private final g:Lwr/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Lkotlin/coroutines/CoroutineContext;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Lio/ktor/utils/io/ByteReadChannel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnr/a;[BLtr/c;)V
    .locals 1
    .param p1    # Lnr/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ltr/c;
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
    const-string v0, "body"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "origin"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ltr/c;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lnr/c;->a:Lnr/a;

    .line 20
    .line 21
    const/4 p1, 0x0

    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-static {p1, v0, p1}, Lkotlinx/coroutines/t;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iput-object p1, p0, Lnr/c;->b:Lgt/s;

    .line 28
    .line 29
    invoke-virtual {p3}, Ltr/c;->e()Lwr/o;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lnr/c;->c:Lwr/o;

    .line 34
    .line 35
    invoke-virtual {p3}, Ltr/c;->f()Lwr/n;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lnr/c;->d:Lwr/n;

    .line 40
    .line 41
    invoke-virtual {p3}, Ltr/c;->c()Lbs/a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lnr/c;->e:Lbs/a;

    .line 46
    .line 47
    invoke-virtual {p3}, Ltr/c;->d()Lbs/a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lnr/c;->f:Lbs/a;

    .line 52
    .line 53
    invoke-interface {p3}, Lwr/k;->a()Lwr/f;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, p0, Lnr/c;->g:Lwr/f;

    .line 58
    .line 59
    invoke-interface {p3}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    invoke-interface {p3, p1}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iput-object p1, p0, Lnr/c;->h:Lkotlin/coroutines/CoroutineContext;

    .line 68
    .line 69
    invoke-static {p2}, Lio/ktor/utils/io/c;->a([B)Lio/ktor/utils/io/ByteReadChannel;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iput-object p1, p0, Lnr/c;->i:Lio/ktor/utils/io/ByteReadChannel;

    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public a()Lwr/f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->g:Lwr/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Lio/ktor/utils/io/ByteReadChannel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->i:Lio/ktor/utils/io/ByteReadChannel;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lbs/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->e:Lbs/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Lbs/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->f:Lbs/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lwr/o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->c:Lwr/o;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Lwr/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->d:Lwr/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lnr/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->a:Lnr/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCoroutineContext()Lkotlin/coroutines/CoroutineContext;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnr/c;->h:Lkotlin/coroutines/CoroutineContext;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic x()Lio/ktor/client/call/HttpClientCall;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lnr/c;->g()Lnr/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
