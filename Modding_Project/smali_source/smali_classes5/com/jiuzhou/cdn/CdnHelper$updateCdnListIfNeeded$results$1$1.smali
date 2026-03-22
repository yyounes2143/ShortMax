.class final Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CdnHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkt/c<",
        "-",
        "Lcom/jiuzhou/cdn/model/CdnInfo;",
        ">;",
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
    c = "com.jiuzhou.cdn.CdnHelper$updateCdnListIfNeeded$results$1$1"
    f = "CdnHelper.kt"
    l = {
        0xb8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field private synthetic i:Ljava/lang/Object;

.field final synthetic j:Lcom/jiuzhou/cdn/a$a;

.field final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiuzhou/cdn/a$a;",
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->j:Lcom/jiuzhou/cdn/a$a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->k:Ljava/util/List;

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
    .locals 3
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
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->j:Lcom/jiuzhou/cdn/a$a;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->k:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;-><init>(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->i:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkt/c;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/c<",
            "-",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->h:I

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
    iget-object p1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Lkt/c;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->j:Lcom/jiuzhou/cdn/a$a;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->k:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    invoke-static {v1, v3}, Lcom/jiuzhou/cdn/CdnHelper;->c(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;)Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iput v2, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;->h:I

    .line 45
    .line 46
    invoke-interface {p1, v1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-ne p1, v0, :cond_2

    .line 51
    .line 52
    return-object v0

    .line 53
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    return-object p1
.end method
