.class final Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CdnHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiuzhou/cdn/CdnHelper;->w(ZLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/jiuzhou/cdn/a$a;",
        "Lrs/c<",
        "-",
        "Lkt/b<",
        "+",
        "Lcom/jiuzhou/cdn/model/CdnInfo;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.jiuzhou.cdn.CdnHelper$updateCdnListIfNeeded$results$1"
    f = "CdnHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->j:Ljava/util/List;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
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
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->j:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;-><init>(Ljava/util/List;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->i:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Lcom/jiuzhou/cdn/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiuzhou/cdn/a$a;",
            "Lrs/c<",
            "-",
            "Lkt/b<",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/jiuzhou/cdn/a$a;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->i(Lcom/jiuzhou/cdn/a$a;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lcom/jiuzhou/cdn/a$a;

    .line 14
    .line 15
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1;->j:Ljava/util/List;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-direct {v0, p1, v1, v2}, Lcom/jiuzhou/cdn/CdnHelper$updateCdnListIfNeeded$results$1$1;-><init>(Lcom/jiuzhou/cdn/a$a;Ljava/util/List;Lrs/c;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->F(Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1
.end method
