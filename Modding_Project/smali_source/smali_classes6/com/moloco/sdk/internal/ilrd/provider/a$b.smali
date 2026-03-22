.class public final Lcom/moloco/sdk/internal/ilrd/provider/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/ilrd/provider/a;->f()Lcom/moloco/sdk/internal/ilrd/provider/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/internal/ilrd/provider/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/ilrd/provider/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/ilrd/provider/a$b;->a:Lcom/moloco/sdk/internal/ilrd/provider/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Moloco"

    .line 2
    .line 3
    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 7

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/a$b;->a:Lcom/moloco/sdk/internal/ilrd/provider/a;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/moloco/sdk/internal/ilrd/provider/a;->c(Lcom/moloco/sdk/internal/ilrd/provider/a;)Lgt/g0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "max_revenue_events"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const-string v0, "getMessageData(...)"

    .line 36
    .line 37
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/a$b;->a:Lcom/moloco/sdk/internal/ilrd/provider/a;

    .line 41
    .line 42
    invoke-static {v0, p1}, Lcom/moloco/sdk/internal/ilrd/provider/a;->b(Lcom/moloco/sdk/internal/ilrd/provider/a;Landroid/os/Bundle;)Lcom/moloco/sdk/internal/ilrd/h$a$b;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/a$b;->a:Lcom/moloco/sdk/internal/ilrd/provider/a;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/moloco/sdk/internal/ilrd/provider/a;->c(Lcom/moloco/sdk/internal/ilrd/provider/a;)Lgt/g0;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    new-instance v4, Lcom/moloco/sdk/internal/ilrd/provider/a$b$a;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/moloco/sdk/internal/ilrd/provider/a$b;->a:Lcom/moloco/sdk/internal/ilrd/provider/a;

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    invoke-direct {v4, v0, p1, v2}, Lcom/moloco/sdk/internal/ilrd/provider/a$b$a;-><init>(Lcom/moloco/sdk/internal/ilrd/provider/a;Lcom/moloco/sdk/internal/ilrd/h$a$b;Lrs/c;)V

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x3

    .line 61
    const/4 v6, 0x0

    .line 62
    const/4 v3, 0x0

    .line 63
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method
