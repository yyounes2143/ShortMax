.class final Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "Reading.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/jvm/javaio/ReadingKt;->a(Ljava/io/InputStream;Lkotlin/coroutines/CoroutineContext;Lio/ktor/utils/io/pool/b;)Lio/ktor/utils/io/ByteReadChannel;
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
    c = "io.ktor.utils.io.jvm.javaio.ReadingKt$toByteReadChannel$1"
    f = "Reading.kt"
    l = {
        0x3d
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
            "Ljava/nio/ByteBuffer;",
            ">;"
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
            "Ljava/nio/ByteBuffer;",
            ">;",
            "Ljava/io/InputStream;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->k:Lio/ktor/utils/io/pool/b;

    .line 2
    .line 3
    iput-object p2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->l:Ljava/io/InputStream;

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
    new-instance v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;

    .line 2
    .line 3
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->k:Lio/ktor/utils/io/pool/b;

    .line 4
    .line 5
    iget-object v2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->l:Ljava/io/InputStream;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;-><init>(Lio/ktor/utils/io/pool/b;Ljava/io/InputStream;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->j:Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->i(Lio/ktor/utils/io/o;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
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
    iget v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->i:I

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
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->h:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 15
    .line 16
    iget-object v3, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->j:Ljava/lang/Object;

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
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->j:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Lio/ktor/utils/io/o;

    .line 40
    .line 41
    iget-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->k:Lio/ktor/utils/io/pool/b;

    .line 42
    .line 43
    invoke-interface {v1}, Lio/ktor/utils/io/pool/b;->p0()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/nio/ByteBuffer;

    .line 48
    .line 49
    move-object v3, p1

    .line 50
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->l:Ljava/io/InputStream;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    add-int/2addr v5, v6

    .line 68
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    invoke-virtual {p1, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-ltz p1, :cond_3

    .line 77
    .line 78
    if-eqz p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    add-int/2addr v4, p1

    .line 85
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 89
    .line 90
    .line 91
    invoke-interface {v3}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object v3, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->j:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->h:Ljava/lang/Object;

    .line 98
    .line 99
    iput v2, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->i:I

    .line 100
    .line 101
    invoke-interface {p1, v1, p0}, Lio/ktor/utils/io/e;->i(Ljava/nio/ByteBuffer;Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    if-ne p1, v0, :cond_2

    .line 106
    .line 107
    return-object v0

    .line 108
    :cond_3
    :goto_1
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->k:Lio/ktor/utils/io/pool/b;

    .line 109
    .line 110
    invoke-interface {p1, v1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->l:Ljava/io/InputStream;

    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 116
    .line 117
    .line 118
    goto :goto_3

    .line 119
    :goto_2
    :try_start_2
    invoke-interface {v3}, Lio/ktor/utils/io/o;->getChannel()Lio/ktor/utils/io/e;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-interface {v0, p1}, Lio/ktor/utils/io/e;->a(Ljava/lang/Throwable;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 128
    .line 129
    return-object p1

    .line 130
    :catchall_1
    move-exception p1

    .line 131
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->k:Lio/ktor/utils/io/pool/b;

    .line 132
    .line 133
    invoke-interface {v0, v1}, Lio/ktor/utils/io/pool/b;->y(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lio/ktor/utils/io/jvm/javaio/ReadingKt$toByteReadChannel$1;->l:Ljava/io/InputStream;

    .line 137
    .line 138
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 139
    .line 140
    .line 141
    throw p1
.end method
