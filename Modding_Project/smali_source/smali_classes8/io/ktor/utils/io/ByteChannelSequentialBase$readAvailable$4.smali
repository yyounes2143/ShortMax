.class final Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ByteChannelSequential.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/ktor/utils/io/ByteChannelSequentialBase;->H(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "io.ktor.utils.io.ByteChannelSequentialBase"
    f = "ByteChannelSequential.kt"
    l = {
        0x212
    }
    m = "readAvailable$suspendImpl"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field k:I

.field synthetic l:Ljava/lang/Object;

.field final synthetic m:Lio/ktor/utils/io/ByteChannelSequentialBase;

.field n:I


# direct methods
.method constructor <init>(Lio/ktor/utils/io/ByteChannelSequentialBase;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/ktor/utils/io/ByteChannelSequentialBase;",
            "Lrs/c<",
            "-",
            "Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->m:Lio/ktor/utils/io/ByteChannelSequentialBase;

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
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->l:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->n:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->n:I

    .line 9
    .line 10
    iget-object p1, p0, Lio/ktor/utils/io/ByteChannelSequentialBase$readAvailable$4;->m:Lio/ktor/utils/io/ByteChannelSequentialBase;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-static {p1, v0, v1, v1, p0}, Lio/ktor/utils/io/ByteChannelSequentialBase;->H(Lio/ktor/utils/io/ByteChannelSequentialBase;[BIILrs/c;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method
