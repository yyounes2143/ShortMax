.class public final Lcom/moloco/sdk/acm/services/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/moloco/sdk/acm/services/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/atomic/AtomicLong;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/services/f;)V
    .locals 2
    .param p1    # Lcom/moloco/sdk/acm/services/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "timeProviderService"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/moloco/sdk/acm/services/d;->a:Lcom/moloco/sdk/acm/services/f;

    .line 11
    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 13
    .line 14
    const-wide/16 v0, 0x0

    .line 15
    .line 16
    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/moloco/sdk/acm/services/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/services/d;->a:Lcom/moloco/sdk/acm/services/f;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/moloco/sdk/acm/services/f;->invoke()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/acm/services/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 8
    .line 9
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    return-wide v0
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/services/d;->b:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/acm/services/d;->a:Lcom/moloco/sdk/acm/services/f;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/moloco/sdk/acm/services/f;->invoke()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
