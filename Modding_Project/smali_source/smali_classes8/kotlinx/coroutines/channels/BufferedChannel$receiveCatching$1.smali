.class final Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "BufferedChannel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlinx/coroutines/channels/BufferedChannel;->V0(Lkotlinx/coroutines/channels/BufferedChannel;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlin/coroutines/jvm/internal/ContinuationImpl;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.channels.BufferedChannel"
    f = "BufferedChannel.kt"
    l = {
        0x2f7
    }
    m = "receiveCatching-JP2dKIU$suspendImpl"
.end annotation


# instance fields
.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lkotlinx/coroutines/channels/BufferedChannel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;"
        }
    .end annotation
.end field

.field j:I


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/BufferedChannel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/BufferedChannel<",
            "TE;>;",
            "Lrs/c<",
            "-",
            "Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->i:Lkotlinx/coroutines/channels/BufferedChannel;

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
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->j:I

    .line 9
    .line 10
    iget-object p1, p0, Lkotlinx/coroutines/channels/BufferedChannel$receiveCatching$1;->i:Lkotlinx/coroutines/channels/BufferedChannel;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lkotlinx/coroutines/channels/BufferedChannel;->V0(Lkotlinx/coroutines/channels/BufferedChannel;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-ne p1, v0, :cond_0

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/channels/a;->b(Ljava/lang/Object;)Lkotlinx/coroutines/channels/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method
