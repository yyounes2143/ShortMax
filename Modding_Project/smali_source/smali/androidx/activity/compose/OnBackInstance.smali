.class final Landroidx/activity/compose/OnBackInstance;
.super Ljava/lang/Object;
.source "PredictiveBackHandler.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final channel:Ljt/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljt/d<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isPredictiveBack:Z

.field private final job:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lgt/g0;ZLkotlin/jvm/functions/Function2;)V
    .locals 9
    .param p1    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lkt/b<",
            "Landroidx/activity/BackEventCompat;",
            ">;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p2, p0, Landroidx/activity/compose/OnBackInstance;->isPredictiveBack:Z

    .line 5
    .line 6
    sget-object p2, Lkotlinx/coroutines/channels/BufferOverflow;->SUSPEND:Lkotlinx/coroutines/channels/BufferOverflow;

    .line 7
    .line 8
    const/4 v0, 0x4

    .line 9
    const/4 v1, -0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v1, p2, v2, v0, v2}, Ljt/g;->b(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljt/d;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iput-object p2, p0, Landroidx/activity/compose/OnBackInstance;->channel:Ljt/d;

    .line 16
    .line 17
    new-instance v6, Landroidx/activity/compose/OnBackInstance$job$1;

    .line 18
    .line 19
    invoke-direct {v6, p3, p0, v2}, Landroidx/activity/compose/OnBackInstance$job$1;-><init>(Lkotlin/jvm/functions/Function2;Landroidx/activity/compose/OnBackInstance;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v7, 0x3

    .line 23
    const/4 v8, 0x0

    .line 24
    const/4 v4, 0x0

    .line 25
    const/4 v5, 0x0

    .line 26
    move-object v3, p1

    .line 27
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Landroidx/activity/compose/OnBackInstance;->job:Lkotlinx/coroutines/r;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/OnBackInstance;->channel:Ljt/d;

    .line 2
    .line 3
    new-instance v1, Ljava/util/concurrent/CancellationException;

    .line 4
    .line 5
    const-string v2, "onBack cancelled"

    .line 6
    .line 7
    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0, v1}, Ljt/i;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Landroidx/activity/compose/OnBackInstance;->job:Lkotlinx/coroutines/r;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public final close()Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/OnBackInstance;->channel:Ljt/d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/channels/h$a;->a(Lkotlinx/coroutines/channels/h;Ljava/lang/Throwable;ILjava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final getChannel()Ljt/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljt/d<",
            "Landroidx/activity/BackEventCompat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/OnBackInstance;->channel:Ljt/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getJob()Lkotlinx/coroutines/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/OnBackInstance;->job:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isPredictiveBack()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/activity/compose/OnBackInstance;->isPredictiveBack:Z

    .line 2
    .line 3
    return v0
.end method

.method public final send-JP2dKIU(Landroidx/activity/BackEventCompat;)Ljava/lang/Object;
    .locals 1
    .param p1    # Landroidx/activity/BackEventCompat;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/activity/compose/OnBackInstance;->channel:Ljt/d;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lkotlinx/coroutines/channels/h;->h(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
