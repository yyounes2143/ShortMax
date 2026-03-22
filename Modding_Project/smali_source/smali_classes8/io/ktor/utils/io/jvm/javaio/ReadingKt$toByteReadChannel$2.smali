.class final Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Reading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/ReadingKt;->b(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;)Lio/ktor/utils/io/ByteReadChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/ktor/utils/io/o;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$2"
    f = "Reading.kt"
    l = {
        0x5a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field private synthetic j:Ljava/lang/Object;

.field final synthetic k:Lio/ktor/utils/io/pool/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/ktor/utils/io/pool/b<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic l:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/pool/b;Ljava/io/InputStream;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/pool/b<",
            "[B>;",
            "Ljava/io/InputStream;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->k:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->l:Ljava/io/InputStream;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->k:Lio/ktor/utils/io/pool/b;

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->l:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;-><init>(Lio/ktor/utils/io/pool/b;Ljava/io/InputStream;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->j:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public final i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lio/ktor/utils/io/o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/o;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lio/ktor/utils/io/o;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->i:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->h:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, [B

    .line 15
    .line 16
    iget-object v3, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->j:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v3, Lio/ktor/utils/io/o;

    .line 19
    .line 20
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    goto :goto_2

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->j:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lio/ktor/utils/io/o;

    .line 40
    .line 41
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->k:Lio/ktor/utils/io/pool/b;

    .line 42
    .line 43
    invoke-interface {v1}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, [B

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    :cond_2
    :goto_0
    :try_start_1
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->l:Ljava/io/InputStream;

    .line 51
    .line 52
    array-length v4, v1

    .line 53
    const/4 v5, 0x0

    .line 54
    invoke-virtual {p1, v1, v5, v4}, Ljava/io/InputStream;->read([BII)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-ltz p1, :cond_3

    .line 59
    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-interface {v3}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    iput-object v3, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->j:Ljava/lang/Object;

    .line 67
    .line 68
    iput-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->i:I

    .line 71
    .line 72
    invoke-interface {v4, v1, v5, p1, p0}, Lio/ktor/utils/io/e;->b([BIILrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 76
    if-ne p1, v0, :cond_2

    .line 77
    .line 78
    return-object v0

    .line 79
    :cond_3
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->k:Lio/ktor/utils/io/pool/b;

    .line 80
    .line 81
    invoke-interface {p1, v1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    :goto_1
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->l:Ljava/io/InputStream;

    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 87
    .line 88
    .line 89
    goto :goto_3

    .line 90
    :goto_2
    :try_start_2
    invoke-interface {v3}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0, p1}, Lio/ktor/utils/io/e;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->k:Lio/ktor/utils/io/pool/b;

    .line 98
    .line 99
    invoke-interface {p1, v1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p1

    .line 106
    :catchall_1
    move-exception p1

    .line 107
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->k:Lio/ktor/utils/io/pool/b;

    .line 108
    .line 109
    invoke-interface {v0, v1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$2;->l:Ljava/io/InputStream;

    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 115
    .line 116
    .line 117
    throw p1
.end method
