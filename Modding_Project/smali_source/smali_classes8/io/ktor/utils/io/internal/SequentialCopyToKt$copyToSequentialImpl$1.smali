.class final Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "SequentialCopyTo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/internal/SequentialCopyToKt;->b(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.utils.io.internal.SequentialCopyToKt"
    f = "SequentialCopyTo.kt"
    l = {
        0x1a,
        0x1f,
        0x27
    }
    m = "copyToSequentialImpl"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:J

.field k:J

.field l:J

.field synthetic m:Ljava/lang/Object;

.field n:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->m:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/ktor/utils/io/internal/SequentialCopyToKt$copyToSequentialImpl$1;->n:I

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    const-wide/16 v0, 0x0

    .line 12
    .line 13
    invoke-static {p1, p1, v0, v1, p0}, Lio/ktor/utils/io/internal/SequentialCopyToKt;->b(Lio/ktor/utils/io/ByteChannelSequentialBase;Lio/ktor/utils/io/ByteChannelSequentialBase;JLrs/c;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
