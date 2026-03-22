.class public Lcom/applovin/shadow/okio/ForwardingTimeout;
.super Lcom/applovin/shadow/okio/Timeout;
.source "ForwardingTimeout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private delegate:Lcom/applovin/shadow/okio/Timeout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/applovin/shadow/okio/Timeout;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/applovin/shadow/okio/Timeout;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public clearDeadline()Lcom/applovin/shadow/okio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Timeout;->clearDeadline()Lcom/applovin/shadow/okio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public clearTimeout()Lcom/applovin/shadow/okio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Timeout;->clearTimeout()Lcom/applovin/shadow/okio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lcom/applovin/shadow/okio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    invoke-virtual {v0, p1, p2}, Lcom/applovin/shadow/okio/Timeout;->deadlineNanoTime(J)Lcom/applovin/shadow/okio/Timeout;

    move-result-object p1

    return-object p1
.end method

.method public final delegate()Lcom/applovin/shadow/okio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 2
    .line 3
    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Timeout;->hasDeadline()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setDelegate(Lcom/applovin/shadow/okio/Timeout;)Lcom/applovin/shadow/okio/ForwardingTimeout;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/Timeout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    return-object p0
.end method

.method public final synthetic setDelegate(Lcom/applovin/shadow/okio/Timeout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    return-void
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Timeout;->throwIfReached()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okio/Timeout;
    .locals 1
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "unit"

    .line 2
    .line 3
    .line 4
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 8
    .line 9
    invoke-virtual {v0, p1, p2, p3}, Lcom/applovin/shadow/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lcom/applovin/shadow/okio/Timeout;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public timeoutNanos()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okio/ForwardingTimeout;->delegate:Lcom/applovin/shadow/okio/Timeout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Timeout;->timeoutNanos()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method
