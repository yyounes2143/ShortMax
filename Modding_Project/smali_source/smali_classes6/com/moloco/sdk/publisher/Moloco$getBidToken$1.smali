.class final Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/publisher/Moloco;->getBidToken(Lcom/moloco/sdk/publisher/MediationInfo;Landroid/content/Context;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.publisher.Moloco$getBidToken$1"
    f = "Moloco.kt"
    l = {
        0xa8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $listener:Lcom/moloco/sdk/publisher/MolocoBidTokenListener;

.field final synthetic $metricsRecorder:Lcom/moloco/sdk/acm/recorder/a;

.field label:I


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/publisher/MolocoBidTokenListener;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->$metricsRecorder:Lcom/moloco/sdk/acm/recorder/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->$listener:Lcom/moloco/sdk/publisher/MolocoBidTokenListener;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->$metricsRecorder:Lcom/moloco/sdk/acm/recorder/a;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->$listener:Lcom/moloco/sdk/publisher/MolocoBidTokenListener;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;-><init>(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    sget-object v3, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 28
    .line 29
    const/16 v8, 0xc

    .line 30
    .line 31
    const/4 v9, 0x0

    .line 32
    const-string v4, "Moloco"

    .line 33
    .line 34
    const-string v5, "Handling bid token request"

    .line 35
    .line 36
    const/4 v6, 0x0

    .line 37
    const/4 v7, 0x0

    .line 38
    invoke-static/range {v3 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lcom/moloco/sdk/publisher/Moloco;->INSTANCE:Lcom/moloco/sdk/publisher/Moloco;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/moloco/sdk/publisher/Moloco;->access$getBidTokenHandler(Lcom/moloco/sdk/publisher/Moloco;)Lcom/moloco/sdk/internal/services/bidtoken/k;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v1, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->$metricsRecorder:Lcom/moloco/sdk/acm/recorder/a;

    .line 48
    .line 49
    iget-object v3, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->$listener:Lcom/moloco/sdk/publisher/MolocoBidTokenListener;

    .line 50
    .line 51
    iput v2, p0, Lcom/moloco/sdk/publisher/Moloco$getBidToken$1;->label:I

    .line 52
    .line 53
    invoke-interface {p1, v1, v3, p0}, Lcom/moloco/sdk/internal/services/bidtoken/k;->a(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/publisher/MolocoBidTokenListener;Lrs/c;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-ne p1, v0, :cond_2

    .line 58
    .line 59
    return-object v0

    .line 60
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 61
    .line 62
    return-object p1
.end method
