.class final Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CdnHelper.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lcom/jiuzhou/cdn/a$a;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.jiuzhou.cdn.CdnHelper$checkCdnAsync$2$1"
    f = "CdnHelper.kt"
    l = {
        0xee
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/jiuzhou/cdn/model/CdnInfo;


# direct methods
.method constructor <init>(Lcom/jiuzhou/cdn/model/CdnInfo;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiuzhou/cdn/model/CdnInfo;",
            "Lrs/c<",
            "-",
            "Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->i:Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->i:Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1}, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;-><init>(Lcom/jiuzhou/cdn/model/CdnInfo;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    invoke-virtual {p0, p1}, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->invoke(Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/jiuzhou/cdn/a$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->create(Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;

    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->h:I

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
    goto :goto_1

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
    iget-object p1, p0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->i:Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/jiuzhou/cdn/model/CdnInfo;->getCdn()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string v1, ""

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    move-object p1, v1

    .line 38
    :cond_2
    iget-object v3, p0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->i:Lcom/jiuzhou/cdn/model/CdnInfo;

    .line 39
    .line 40
    invoke-virtual {v3}, Lcom/jiuzhou/cdn/model/CdnInfo;->getPath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-nez v3, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move-object v1, v3

    .line 48
    :goto_0
    iput v2, p0, Lcom/jiuzhou/cdn/CdnHelper$checkCdnAsync$2$1;->h:I

    .line 49
    .line 50
    invoke-static {p1, v1, p0}, Lcom/jiuzhou/cdn/a;->b(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-ne p1, v0, :cond_4

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_4
    :goto_1
    return-object p1
.end method
