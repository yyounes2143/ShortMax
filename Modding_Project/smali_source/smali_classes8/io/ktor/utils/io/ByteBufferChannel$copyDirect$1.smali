.class final Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ByteBufferChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteBufferChannel;->I(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.utils.io.ByteBufferChannel"
    f = "ByteBufferChannel.kt"
    l = {
        0x4b0,
        0x4f7,
        0x4ff
    }
    m = "copyDirect$ktor_io"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:Ljava/lang/Object;

.field l:Ljava/lang/Object;

.field m:Ljava/lang/Object;

.field n:Ljava/lang/Object;

.field o:Ljava/lang/Object;

.field p:Ljava/lang/Object;

.field q:Ljava/lang/Object;

.field r:J

.field s:J

.field t:Z

.field synthetic u:Ljava/lang/Object;

.field final synthetic v:Lio/ktor/utils/io/ByteBufferChannel;

.field w:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteBufferChannel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteBufferChannel;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->v:Lio/ktor/utils/io/ByteBufferChannel;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->u:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->w:I

    .line 9
    .line 10
    iget-object v0, p0, Lio/ktor/utils/io/ByteBufferChannel$copyDirect$1;->v:Lio/ktor/utils/io/ByteBufferChannel;

    .line 11
    .line 12
    const-wide/16 v2, 0x0

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v1, 0x0

    .line 16
    move-object v5, p0

    .line 17
    invoke-virtual/range {v0 .. v5}, Lio/ktor/utils/io/ByteBufferChannel;->I(Lio/ktor/utils/io/ByteBufferChannel;JLio/ktor/utils/io/internal/c;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
