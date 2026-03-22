.class public final Lcom/moloco/sdk/internal/services/init/l$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/init/l;->d(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.init.InitServiceImpl$fetchInitResponse$3"
    f = "InitService.kt"
    l = {
        0x64
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/services/init/l;

.field public final synthetic j:Ljava/lang/String;

.field public final synthetic k:Lcom/moloco/sdk/publisher/MediationInfo;

.field public final synthetic l:Lcom/moloco/sdk/acm/recorder/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/services/init/l;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/init/l;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/publisher/MediationInfo;",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/init/l$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/init/l$b;->i:Lcom/moloco/sdk/internal/services/init/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/init/l$b;->j:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/init/l$b;->k:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/init/l$b;->l:Lcom/moloco/sdk/acm/recorder/a;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/l$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/init/l$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/services/init/l$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/moloco/sdk/internal/services/init/l$b;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/init/l$b;->i:Lcom/moloco/sdk/internal/services/init/l;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/init/l$b;->j:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/init/l$b;->k:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/internal/services/init/l$b;->l:Lcom/moloco/sdk/acm/recorder/a;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/internal/services/init/l$b;-><init>(Lcom/moloco/sdk/internal/services/init/l;Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/init/l$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 15

    .line 1
    move-object v6, p0

    .line 2
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object v7

    .line 6
    iget v0, v6, Lcom/moloco/sdk/internal/services/init/l$b;->h:I

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object v8, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 29
    .line 30
    const/16 v13, 0xc

    .line 31
    .line 32
    const/4 v14, 0x0

    .line 33
    const-string v9, "InitService"

    .line 34
    .line 35
    const-string v10, "Async fetching init response"

    .line 36
    .line 37
    const/4 v11, 0x0

    .line 38
    const/4 v12, 0x0

    .line 39
    invoke-static/range {v8 .. v14}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, v6, Lcom/moloco/sdk/internal/services/init/l$b;->i:Lcom/moloco/sdk/internal/services/init/l;

    .line 43
    .line 44
    iget-object v2, v6, Lcom/moloco/sdk/internal/services/init/l$b;->j:Ljava/lang/String;

    .line 45
    .line 46
    iget-object v3, v6, Lcom/moloco/sdk/internal/services/init/l$b;->k:Lcom/moloco/sdk/publisher/MediationInfo;

    .line 47
    .line 48
    iget-object v4, v6, Lcom/moloco/sdk/internal/services/init/l$b;->l:Lcom/moloco/sdk/acm/recorder/a;

    .line 49
    .line 50
    iput v1, v6, Lcom/moloco/sdk/internal/services/init/l$b;->h:I

    .line 51
    .line 52
    const/4 v5, 0x1

    .line 53
    move-object v1, v2

    .line 54
    move-object v2, v3

    .line 55
    move-object v3, v4

    .line 56
    move v4, v5

    .line 57
    move-object v5, p0

    .line 58
    invoke-virtual/range {v0 .. v5}, Lcom/moloco/sdk/internal/services/init/l;->e(Ljava/lang/String;Lcom/moloco/sdk/publisher/MediationInfo;Lcom/moloco/sdk/acm/recorder/a;ZLrs/c;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-ne v0, v7, :cond_2

    .line 63
    .line 64
    return-object v7

    .line 65
    :cond_2
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 66
    .line 67
    return-object v0
.end method
