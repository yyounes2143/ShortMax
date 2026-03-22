.class public final Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS;
.super Ljava/lang/Object;
.source "DiscountSubscribeRemoteDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discount/BestSubscriptionDiscountInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;-><init>(Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->y(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v2, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$2;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$2;-><init>(Lrs/c;)V

    .line 76
    .line 77
    .line 78
    iput v3, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$findBestSubscribeDiscount$1;->j:I

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final b(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/discount/DiscountSubscribeInfo;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;-><init>(Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->y(Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v2, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$2;

    .line 73
    .line 74
    const/4 v4, 0x0

    .line 75
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$2;-><init>(Lrs/c;)V

    .line 76
    .line 77
    .line 78
    iput v3, v0, Lcom/startshorts/androidplayer/repo/discount/DiscountSubscribeRemoteDS$queryDiscountSubscribe$1;->j:I

    .line 79
    .line 80
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_3

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_3
    :goto_1
    return-object p1
.end method
