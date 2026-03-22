.class public abstract Lio/ktor/utils/io/ByteChannelSequentialBase;
.super Ljava/lang/Object;
.source "ByteChannelSequential.kt"

# interfaces
.implements Lio/ktor/utils/io/b;
.implements Lio/ktor/utils/io/ByteReadChannel;
.implements Lio/ktor/utils/io/e;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nByteChannelSequential.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n+ 2 AtomicFU.kt\nkotlinx/atomicfu/AtomicInt\n+ 3 AtomicFU.kt\nkotlinx/atomicfu/AtomicRef\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 Buffer.kt\nio/ktor/utils/io/core/Buffer\n+ 6 Packet.kt\nio/ktor/utils/io/core/PacketKt\n*L\n1#1,855:1\n207#2,3:856\n302#2,2:874\n302#2,2:876\n295#2,2:878\n87#3,3:859\n1#4:862\n69#5:863\n69#5:864\n74#5:867\n74#5:868\n74#5:869\n69#5:870\n69#5:873\n43#6:865\n43#6:866\n43#6:871\n39#6:872\n*S KotlinDebug\n*F\n+ 1 ByteChannelSequential.kt\nio/ktor/utils/io/ByteChannelSequentialBase\n*L\n42#1:856,3\n838#1:874,2\n840#1:876,2\n849#1:878,2\n43#1:859,3\n194#1:863\n229#1:864\n483#1:867\n493#1:868\n504#1:869\n576#1:870\n651#1:873\n293#1:865\n315#1:866\n602#1:871\n640#1:872\n*E\n"
    }
.end annotation


# static fields
.field private static final synthetic h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

.field private static final synthetic j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

.field private static final synthetic l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;


# instance fields
.field private volatile synthetic _availableForRead:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _closed:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _lastReadView:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _totalBytesRead:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic _totalBytesWritten:J
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Z

.field private final c:Lhs/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic channelSize:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Lhs/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final e:Lio/ktor/utils/io/internal/AwaitingSlot;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Lhs/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic lastReadAvailable$delegate:I
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private volatile synthetic lastReadView$delegate:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "_totalBytesRead"

    .line 2
    .line 3
    const-class v1, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 4
    .line 5
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    const-string v0, "_totalBytesWritten"

    .line 12
    .line 13
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 18
    .line 19
    const-string v0, "_availableForRead"

    .line 20
    .line 21
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 26
    .line 27
    const-string v0, "channelSize"

    .line 28
    .line 29
    invoke-static {v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 34
    .line 35
    const-class v0, Ljava/lang/Object;

    .line 36
    .line 37
    const-string v2, "_closed"

    .line 38
    .line 39
    invoke-static {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sput-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 44
    .line 45
    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 5
    .line 6
    invoke-virtual {v1}, Lhs/i;->i0()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 11
    .line 12
    invoke-virtual {v2}, Lhs/n;->Y()Lis/a;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->g:Lhs/i;

    .line 20
    .line 21
    invoke-virtual {v3, v2}, Lhs/n;->Z(Lis/a;)V

    .line 22
    .line 23
    .line 24
    sget-object v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 25
    .line 26
    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->addAndGet(Ljava/lang/Object;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    .line 29
    monitor-exit v0

    .line 30
    return-void

    .line 31
    :catchall_0
    move-exception v1

    .line 32
    monitor-exit v0

    .line 33
    throw v1
.end method

.method private final D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/ktor/utils/io/i;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/utils/io/i;->a()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    :goto_1
    return v0
.end method

.method static synthetic G(Lio/ktor/utils/io/ByteChannelSequentialBase;Lis/a;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lis/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    const-string v0, "null cannot be cast to non-null type io.ktor.utils.io.core.Buffer"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->F(Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method static synthetic H(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "[BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->n:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->k:I

    .line 39
    .line 40
    iget p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->j:I

    .line 41
    .line 42
    iget-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->i:Ljava/lang/Object;

    .line 43
    .line 44
    move-object p1, p0

    .line 45
    check-cast p1, [B

    .line 46
    .line 47
    iget-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->h:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 50
    .line 51
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 67
    .line 68
    .line 69
    move-result-object p4

    .line 70
    if-nez p4, :cond_7

    .line 71
    .line 72
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    if-eqz p4, :cond_3

    .line 77
    .line 78
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    if-nez p4, :cond_3

    .line 83
    .line 84
    const/4 p0, -0x1

    .line 85
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0

    .line 90
    :cond_3
    if-nez p3, :cond_4

    .line 91
    .line 92
    const/4 p0, 0x0

    .line 93
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    return-object p0

    .line 98
    :cond_4
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 99
    .line 100
    .line 101
    move-result p4

    .line 102
    if-nez p4, :cond_5

    .line 103
    .line 104
    iput-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->h:Ljava/lang/Object;

    .line 105
    .line 106
    iput-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->i:Ljava/lang/Object;

    .line 107
    .line 108
    iput p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->j:I

    .line 109
    .line 110
    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->k:I

    .line 111
    .line 112
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->n:I

    .line 113
    .line 114
    invoke-virtual {p0, v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->v(ILrs/c;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p4

    .line 118
    if-ne p4, v1, :cond_5

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_5
    :goto_1
    iget-object p4, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 122
    .line 123
    invoke-virtual {p4}, Lhs/l;->k()Z

    .line 124
    .line 125
    .line 126
    move-result p4

    .line 127
    if-nez p4, :cond_6

    .line 128
    .line 129
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->E()V

    .line 130
    .line 131
    .line 132
    :cond_6
    int-to-long p3, p3

    .line 133
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 134
    .line 135
    invoke-virtual {v0}, Lhs/l;->a0()J

    .line 136
    .line 137
    .line 138
    move-result-wide v0

    .line 139
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 140
    .line 141
    .line 142
    move-result-wide p3

    .line 143
    long-to-int p3, p3

    .line 144
    iget-object p4, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 145
    .line 146
    invoke-static {p4, p1, p2, p3}, Lhs/m;->b(Lhs/l;[BII)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->q(I)V

    .line 150
    .line 151
    .line 152
    invoke-static {p3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p0

    .line 156
    return-object p0

    .line 157
    :cond_7
    throw p4
.end method

.method static synthetic I(Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "J",
            "Lrs/c<",
            "-",
            "Lhs/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->x()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhs/i;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2, v1}, Lhs/i;-><init>(Lio/ktor/utils/io/pool/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 12
    .line 13
    invoke-virtual {v1}, Lhs/l;->a0()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget-object v3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1, v2}, Lhs/n;->b0(Lhs/j;J)V

    .line 24
    .line 25
    .line 26
    long-to-int v1, v1

    .line 27
    invoke-virtual {p0, v1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->q(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lhs/i;->i0()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    int-to-long v1, v1

    .line 35
    sub-long v1, p1, v1

    .line 36
    .line 37
    const-wide/16 v3, 0x0

    .line 38
    .line 39
    cmp-long v1, v1, v3

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->l()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    invoke-direct {p0, v0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->J(Lhs/i;JLrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    return-object p0

    .line 55
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->y(Lhs/i;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Lhs/i;->h0()Lhs/j;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method

.method private final J(Lhs/i;JLrs/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhs/i;",
            "J",
            "Lrs/c<",
            "-",
            "Lhs/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->m:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-wide p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->j:J

    .line 39
    .line 40
    iget-object p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->i:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p3, Lhs/i;

    .line 43
    .line 44
    iget-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 47
    .line 48
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    move-wide v8, p1

    .line 52
    move-object p1, p3

    .line 53
    move-wide p2, v8

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    move-object v2, p0

    .line 67
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lhs/i;->i0()I

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    int-to-long v4, p4

    .line 72
    cmp-long p4, v4, p2

    .line 73
    .line 74
    if-gez p4, :cond_5

    .line 75
    .line 76
    invoke-virtual {p1}, Lhs/i;->i0()I

    .line 77
    .line 78
    .line 79
    move-result p4

    .line 80
    int-to-long v4, p4

    .line 81
    sub-long v4, p2, v4

    .line 82
    .line 83
    iget-object p4, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 84
    .line 85
    invoke-virtual {p4}, Lhs/l;->a0()J

    .line 86
    .line 87
    .line 88
    move-result-wide v6

    .line 89
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 90
    .line 91
    .line 92
    move-result-wide v4

    .line 93
    iget-object p4, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 94
    .line 95
    invoke-virtual {p1, p4, v4, v5}, Lhs/n;->b0(Lhs/j;J)V

    .line 96
    .line 97
    .line 98
    long-to-int p4, v4

    .line 99
    invoke-virtual {v2, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->q(I)V

    .line 100
    .line 101
    .line 102
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->y(Lhs/i;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->l()Z

    .line 106
    .line 107
    .line 108
    move-result p4

    .line 109
    if-nez p4, :cond_5

    .line 110
    .line 111
    invoke-virtual {p1}, Lhs/i;->i0()I

    .line 112
    .line 113
    .line 114
    move-result p4

    .line 115
    long-to-int v4, p2

    .line 116
    if-ne p4, v4, :cond_4

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    iput-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->h:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->i:Ljava/lang/Object;

    .line 122
    .line 123
    iput-wide p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->j:J

    .line 124
    .line 125
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readRemainingSuspend$1;->m:I

    .line 126
    .line 127
    invoke-virtual {v2, v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->v(ILrs/c;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p4

    .line 131
    if-ne p4, v1, :cond_3

    .line 132
    .line 133
    return-object v1

    .line 134
    :cond_5
    :goto_2
    invoke-direct {v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->y(Lhs/i;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1}, Lhs/i;->h0()Lhs/j;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    return-object p1
.end method

.method static synthetic L(Lio/ktor/utils/io/ByteChannelSequentialBase;Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lhs/a;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->i:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p1, p0

    .line 41
    check-cast p1, Lhs/a;

    .line 42
    .line 43
    iget-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 46
    .line 47
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iput-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    iput-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->i:Ljava/lang/Object;

    .line 65
    .line 66
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$1;->l:I

    .line 67
    .line 68
    invoke-virtual {p0, v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->t(ILrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-ne p2, v1, :cond_3

    .line 73
    .line 74
    return-object v1

    .line 75
    :cond_3
    :goto_1
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    invoke-virtual {p1}, Lhs/a;->h()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    sub-int/2addr p2, v0

    .line 84
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 85
    .line 86
    const/4 v1, 0x2

    .line 87
    const/4 v2, 0x0

    .line 88
    const/4 v3, 0x0

    .line 89
    invoke-static {v0, p1, v3, v1, v2}, Lhs/o;->c(Lhs/n;Lhs/a;IILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->r(I)V

    .line 93
    .line 94
    .line 95
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p0
.end method

.method static synthetic M(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "[BII",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->n:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->n:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->k:I

    .line 39
    .line 40
    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->j:I

    .line 41
    .line 42
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast p2, [B

    .line 45
    .line 46
    iget-object p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p3, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 49
    .line 50
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    move-object v4, p3

    .line 54
    move p3, p1

    .line 55
    move-object p1, v4

    .line 56
    goto :goto_2

    .line 57
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 58
    .line 59
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 60
    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    add-int/2addr p3, p2

    .line 69
    move-object v4, p1

    .line 70
    move-object p1, p0

    .line 71
    move p0, p3

    .line 72
    move p3, p2

    .line 73
    move-object p2, v4

    .line 74
    :goto_1
    if-ge p3, p0, :cond_4

    .line 75
    .line 76
    iput-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->h:Ljava/lang/Object;

    .line 77
    .line 78
    iput-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->i:Ljava/lang/Object;

    .line 79
    .line 80
    iput p3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->j:I

    .line 81
    .line 82
    iput p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->k:I

    .line 83
    .line 84
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$writeFully$2;->n:I

    .line 85
    .line 86
    invoke-virtual {p1, v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->t(ILrs/c;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p4

    .line 90
    if-ne p4, v1, :cond_3

    .line 91
    .line 92
    return-object v1

    .line 93
    :cond_3
    :goto_2
    invoke-virtual {p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->B()I

    .line 94
    .line 95
    .line 96
    move-result p4

    .line 97
    sub-int v2, p0, p3

    .line 98
    .line 99
    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    .line 100
    .line 101
    .line 102
    move-result p4

    .line 103
    iget-object v2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 104
    .line 105
    invoke-static {v2, p2, p3, p4}, Lhs/o;->b(Lhs/n;[BII)V

    .line 106
    .line 107
    .line 108
    add-int/2addr p3, p4

    .line 109
    invoke-virtual {p1, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->r(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    return-object p0
.end method

.method public static final synthetic n(Lio/ktor/utils/io/ByteChannelSequentialBase;Lhs/i;JLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->J(Lhs/i;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final o(I)V
    .locals 4

    .line 1
    if-ltz p1, :cond_2

    .line 2
    .line 3
    sget-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    neg-int v1, p1

    .line 6
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 7
    .line 8
    .line 9
    sget-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->h:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 10
    .line 11
    int-to-long v2, p1

    .line 12
    invoke-virtual {v0, p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 13
    .line 14
    .line 15
    sget-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->j:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 16
    .line 17
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    .line 21
    .line 22
    const-string v1, " in "

    .line 23
    .line 24
    const-string v2, ", "

    .line 25
    .line 26
    const-string v3, "Readable bytes count is negative: "

    .line 27
    .line 28
    if-ltz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-ltz v0, :cond_0

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 110
    .line 111
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    throw v0

    .line 119
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v1, "Can\'t read negative amount of bytes: "

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 137
    .line 138
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    throw v0
.end method

.method private final p(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_1

    .line 2
    .line 3
    sget-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->k:Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    .line 4
    .line 5
    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 6
    .line 7
    .line 8
    sget-object v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->i:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 9
    .line 10
    int-to-long v1, p1

    .line 11
    invoke-virtual {v0, p0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->addAndGet(Ljava/lang/Object;J)J

    .line 12
    .line 13
    .line 14
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    .line 15
    .line 16
    if-ltz v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "Readable bytes count is negative: "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p1, " in "

    .line 43
    .line 44
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "Can\'t write negative amount of bytes: "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0
.end method

.method private final w()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Lio/ktor/utils/io/ClosedWriteChannelException;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v2, "Channel "

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v2, " is already closed"

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-direct {v0, v1}, Lio/ktor/utils/io/ClosedWriteChannelException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    throw v0

    .line 41
    :cond_1
    return-void
.end method

.method private final x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    throw v0
.end method

.method private final y(Lhs/i;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Lhs/n;->release()V

    .line 9
    .line 10
    .line 11
    throw v0
.end method

.method private final z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhs/i;->j0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->e:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->c()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_0
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->A()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->e:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 20
    .line 21
    invoke-virtual {v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->c()V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    return v0
.end method


# virtual methods
.method public B()I
    .locals 2

    .line 1
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    .line 2
    .line 3
    rsub-int v0, v0, 0xff8

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method protected final C()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method protected final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->f:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 5
    .line 6
    iget-object v2, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->g:Lhs/i;

    .line 7
    .line 8
    invoke-static {v1, v2}, Lis/f;->e(Lhs/j;Lhs/i;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0

    .line 15
    throw v1
.end method

.method public final F(Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhs/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->i:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p1, Lhs/a;

    .line 41
    .line 42
    iget-object v0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->h:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 45
    .line 46
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    if-nez p2, :cond_7

    .line 66
    .line 67
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-nez p2, :cond_3

    .line 78
    .line 79
    const/4 p1, -0x1

    .line 80
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    return-object p1

    .line 85
    :cond_3
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 86
    .line 87
    .line 88
    move-result p2

    .line 89
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    sub-int/2addr p2, v2

    .line 94
    if-nez p2, :cond_4

    .line 95
    .line 96
    const/4 p1, 0x0

    .line 97
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_4
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-nez p2, :cond_5

    .line 107
    .line 108
    iput-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->h:Ljava/lang/Object;

    .line 109
    .line 110
    iput-object p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->i:Ljava/lang/Object;

    .line 111
    .line 112
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$2;->l:I

    .line 113
    .line 114
    invoke-virtual {p0, v3, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->v(ILrs/c;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    if-ne p2, v1, :cond_5

    .line 119
    .line 120
    return-object v1

    .line 121
    :cond_5
    move-object v0, p0

    .line 122
    :goto_1
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 123
    .line 124
    invoke-virtual {p2}, Lhs/l;->k()Z

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    if-nez p2, :cond_6

    .line 129
    .line 130
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->E()V

    .line 131
    .line 132
    .line 133
    :cond_6
    invoke-virtual {p1}, Lhs/a;->f()I

    .line 134
    .line 135
    .line 136
    move-result p2

    .line 137
    invoke-virtual {p1}, Lhs/a;->j()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    sub-int/2addr p2, v1

    .line 142
    int-to-long v1, p2

    .line 143
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 144
    .line 145
    invoke-virtual {p2}, Lhs/l;->a0()J

    .line 146
    .line 147
    .line 148
    move-result-wide v3

    .line 149
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    .line 150
    .line 151
    .line 152
    move-result-wide v1

    .line 153
    long-to-int p2, v1

    .line 154
    iget-object v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 155
    .line 156
    invoke-static {v1, p1, p2}, Lhs/m;->a(Lhs/l;Lhs/a;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->q(I)V

    .line 160
    .line 161
    .line 162
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    return-object p1

    .line 167
    :cond_7
    throw p2
.end method

.method public final K(Lio/ktor/utils/io/ByteChannelSequentialBase;J)J
    .locals 2
    .param p1    # Lio/ktor/utils/io/ByteChannelSequentialBase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dst"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 7
    .line 8
    invoke-virtual {v0}, Lhs/l;->a0()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    cmp-long p2, v0, p2

    .line 13
    .line 14
    if-gtz p2, :cond_0

    .line 15
    .line 16
    iget-object p2, p1, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 17
    .line 18
    iget-object p3, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 19
    .line 20
    invoke-virtual {p2, p3}, Lhs/n;->a0(Lhs/j;)V

    .line 21
    .line 22
    .line 23
    long-to-int p2, v0

    .line 24
    invoke-virtual {p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->r(I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->q(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-wide/16 v0, 0x0

    .line 32
    .line 33
    :goto_0
    return-wide v0
.end method

.method public a(Ljava/lang/Throwable;)Z
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/ktor/utils/io/j;->a()Lio/ktor/utils/io/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lio/ktor/utils/io/i;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Lio/ktor/utils/io/i;-><init>(Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    :goto_0
    sget-object v1, Lio/ktor/utils/io/ByteChannelSequentialBase;->l:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v1, p0, v2, v0}, Landroidx/concurrent/futures/a;->a(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    return p1

    .line 24
    :cond_1
    if-eqz p1, :cond_2

    .line 25
    .line 26
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 27
    .line 28
    invoke-virtual {v0}, Lhs/l;->release()V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 32
    .line 33
    invoke-virtual {v0}, Lhs/n;->release()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->g:Lhs/i;

    .line 37
    .line 38
    invoke-virtual {v0}, Lhs/n;->release()V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 46
    .line 47
    invoke-virtual {v0}, Lhs/n;->release()V

    .line 48
    .line 49
    .line 50
    :goto_1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->e:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 51
    .line 52
    invoke-virtual {v0, p1}, Lio/ktor/utils/io/internal/AwaitingSlot;->b(Ljava/lang/Throwable;)V

    .line 53
    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method public b([BIILrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
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
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->M(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_availableForRead:I

    .line 2
    .line 3
    return v0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    if-nez p1, :cond_1

    .line 15
    .line 16
    new-instance p1, Ljava/util/concurrent/CancellationException;

    .line 17
    .line 18
    const-string v0, "Channel cancelled"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->a(Ljava/lang/Throwable;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    return p1

    .line 28
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 29
    return p1
.end method

.method public e([BIILrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lio/ktor/utils/io/ByteChannelSequentialBase;->H(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Lis/a;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lis/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lis/a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->G(Lio/ktor/utils/io/ByteChannelSequentialBase;Lis/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public flush()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->z()Z

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final h()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->_closed:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lio/ktor/utils/io/i;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/ktor/utils/io/i;->a()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public k(JLrs/c;)Ljava/lang/Object;
    .locals 0
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Lhs/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/ktor/utils/io/ByteChannelSequentialBase;->I(Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public l()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->D()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->channelSize:I

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public m(Lhs/a;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lhs/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lhs/a;",
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
    invoke-static {p0, p1, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->L(Lio/ktor/utils/io/ByteChannelSequentialBase;Lhs/a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method protected final q(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->o(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->e:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 5
    .line 6
    invoke-virtual {p1}, Lio/ktor/utils/io/internal/AwaitingSlot;->c()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected final r(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->p(I)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->c:Lhs/i;

    .line 11
    .line 12
    invoke-virtual {p1}, Lhs/n;->release()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->w()V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->g()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->B()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->flush()V

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public final s(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->i:I

    .line 39
    .line 40
    iget-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v2, p0

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-ge p2, p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->l()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_4

    .line 71
    .line 72
    iget-object p2, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->e:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 73
    .line 74
    new-instance v4, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;

    .line 75
    .line 76
    invoke-direct {v4, v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;I)V

    .line 77
    .line 78
    .line 79
    iput-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->h:Ljava/lang/Object;

    .line 80
    .line 81
    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->i:I

    .line 82
    .line 83
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForRead$1;->l:I

    .line 84
    .line 85
    invoke-virtual {p2, v4, v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->d(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-ne p2, v1, :cond_3

    .line 90
    .line 91
    return-object v1

    .line 92
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1
.end method

.method public final t(ILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
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
    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->i:I

    .line 39
    .line 40
    iget-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    move-object v2, p0

    .line 60
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->B()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-ge p2, p1, :cond_4

    .line 65
    .line 66
    invoke-virtual {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->C()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-nez p2, :cond_4

    .line 71
    .line 72
    invoke-direct {v2}, Lio/ktor/utils/io/ByteChannelSequentialBase;->z()Z

    .line 73
    .line 74
    .line 75
    move-result p2

    .line 76
    if-nez p2, :cond_3

    .line 77
    .line 78
    iget-object p2, v2, Lio/ktor/utils/io/ByteChannelSequentialBase;->e:Lio/ktor/utils/io/internal/AwaitingSlot;

    .line 79
    .line 80
    new-instance v4, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$2;

    .line 81
    .line 82
    invoke-direct {v4, v2, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$2;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;I)V

    .line 83
    .line 84
    .line 85
    iput-object v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->h:Ljava/lang/Object;

    .line 86
    .line 87
    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->i:I

    .line 88
    .line 89
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitAtLeastNBytesAvailableForWrite$1;->l:I

    .line 90
    .line 91
    invoke-virtual {p2, v4, v0}, Lio/ktor/utils/io/internal/AwaitingSlot;->d(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    if-ne p2, v1, :cond_3

    .line 96
    .line 97
    return-object v1

    .line 98
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 99
    .line 100
    return-object p1
.end method

.method public final u(Lrs/c;)Ljava/lang/Object;
    .locals 2
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/ktor/utils/io/ByteChannelSequentialBase;->d:Lhs/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhs/l;->P()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-virtual {p0, v1, p1}, Lio/ktor/utils/io/ByteChannelSequentialBase;->v(ILrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected final v(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;

    .line 7
    .line 8
    iget v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;-><init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->i:I

    .line 39
    .line 40
    iget-object v0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v0, Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    if-ltz p1, :cond_6

    .line 60
    .line 61
    iput-object p0, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    iput p1, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->i:I

    .line 64
    .line 65
    iput v3, v0, Lio/ktor/utils/io/ByteChannelSequentialBase$awaitSuspend$1;->l:I

    .line 66
    .line 67
    invoke-virtual {p0, p1, v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->s(ILrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    if-ne p2, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :cond_3
    move-object v0, p0

    .line 75
    :goto_1
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->E()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->h()Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    if-nez p2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->l()Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-nez p2, :cond_4

    .line 89
    .line 90
    invoke-virtual {v0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->c()I

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-lt p2, p1, :cond_4

    .line 95
    .line 96
    goto :goto_2

    .line 97
    :cond_4
    const/4 v3, 0x0

    .line 98
    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_5
    throw p2

    .line 104
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 105
    .line 106
    const-string p2, "Failed requirement."

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p1
.end method
