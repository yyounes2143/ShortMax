.class final Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ByteBufferChannel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;-><init>(ZLio/ktor/utils/io/pool/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteBufferChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel\n*L\n1#1,2411:1\n1#2:2412\n1#2:2416\n2341#3,3:2413\n2345#3,6:2417\n*S KotlinDebug\n*F\n+ 1 ByteBufferChannel.kt\nio/ktor/utils/io/ByteBufferChannel$writeSuspension$1\n*L\n2280#1:2416\n2280#1:2413,3\n2280#1:2417,6\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic d:Lio/ktor/utils/io/ByteBufferChannel;


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ucont"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 7
    .line 8
    invoke-static {v0}, Lio/ktor/utils/io/ByteBufferChannel;->q(Lio/ktor/utils/io/ByteBufferChannel;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    :cond_0
    :goto_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 13
    .line 14
    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->o(Lio/ktor/utils/io/ByteBufferChannel;)Lio/ktor/utils/io/internal/b;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    invoke-virtual {v1}, Lio/ktor/utils/io/internal/b;->c()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    invoke-static {v1}, Lio/ktor/utils/io/a;->a(Ljava/lang/Throwable;)Ljava/lang/Void;

    .line 28
    .line 29
    .line 30
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 31
    .line 32
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 37
    .line 38
    invoke-static {v1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->E(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 45
    .line 46
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-interface {p1, v1}, Lrs/c;->resumeWith(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_3
    iget-object v1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 63
    .line 64
    :cond_4
    invoke-static {v1}, Lio/ktor/utils/io/ByteBufferChannel;->p(Lio/ktor/utils/io/ByteBufferChannel;)Lrs/c;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    if-nez v4, :cond_8

    .line 69
    .line 70
    invoke-static {v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->E(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    if-nez v4, :cond_5

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_5
    sget-object v4, Lio/ktor/utils/io/ByteBufferChannel;->p:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static {v4, v1, v5, v2}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_4

    .line 85
    .line 86
    invoke-static {v3, v0}, Lio/ktor/utils/io/ByteBufferChannel;->E(Lio/ktor/utils/io/ByteBufferChannel;I)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_6

    .line 91
    .line 92
    invoke-static {v4, v1, v2, v5}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-nez v1, :cond_0

    .line 97
    .line 98
    :cond_6
    :goto_2
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 99
    .line 100
    invoke-static {p1, v0}, Lio/ktor/utils/io/ByteBufferChannel;->n(Lio/ktor/utils/io/ByteBufferChannel;I)V

    .line 101
    .line 102
    .line 103
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 104
    .line 105
    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannel;->z(Lio/ktor/utils/io/ByteBufferChannel;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_7

    .line 110
    .line 111
    iget-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->d:Lio/ktor/utils/io/ByteBufferChannel;

    .line 112
    .line 113
    invoke-static {p1}, Lio/ktor/utils/io/ByteBufferChannel;->x(Lio/ktor/utils/io/ByteBufferChannel;)V

    .line 114
    .line 115
    .line 116
    :cond_7
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    return-object p1

    .line 121
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 122
    .line 123
    const-string v0, "Operation is already in progress"

    .line 124
    .line 125
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    throw p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteBufferChannel$writeSuspension$1;->b(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
