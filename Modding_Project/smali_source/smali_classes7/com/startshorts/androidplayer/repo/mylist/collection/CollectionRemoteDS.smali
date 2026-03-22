.class public final Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;
.super Ljava/lang/Object;
.source "CollectionRemoteDS.kt"


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
.method public final a(Landroid/content/Context;IIIILrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    move-object v6, p1

    .line 70
    invoke-virtual {v0, p1, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    const/4 v6, 0x0

    .line 75
    invoke-static {v0, v4, v5, v6}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    new-instance v4, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$2;

    .line 80
    .line 81
    const/4 v11, 0x0

    .line 82
    move-object v6, v4

    .line 83
    move v7, p2

    .line 84
    move v8, p3

    .line 85
    move/from16 v9, p4

    .line 86
    .line 87
    move/from16 v10, p5

    .line 88
    .line 89
    invoke-direct/range {v6 .. v11}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$2;-><init>(IIIILrs/c;)V

    .line 90
    .line 91
    .line 92
    iput v5, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$addCollection$1;->j:I

    .line 93
    .line 94
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-ne v0, v3, :cond_3

    .line 99
    .line 100
    return-object v3

    .line 101
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final b(Landroid/content/Context;IIILrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "III",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;->j:I

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
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p5, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p5}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p5, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p5}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p5, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p5

    .line 70
    invoke-virtual {p5, p1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p5, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$2;

    .line 75
    .line 76
    invoke-direct {p5, p2, p3, p4, v4}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$2;-><init>(IIILrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollection$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, p5, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final c(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;->j:I

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
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p3, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3, p1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p3, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$2;

    .line 75
    .line 76
    invoke-direct {p3, p2, v4}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$2;-><init>(Ljava/lang/String;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final d(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;->j:I

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
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p3, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

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
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p3, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 60
    .line 61
    invoke-direct {p3}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p3, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    invoke-virtual {p3, p1, v2}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->u(Landroid/content/Context;Z)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance p3, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$2;

    .line 75
    .line 76
    invoke-direct {p3, p2, v4}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$2;-><init>(Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$cancelCollections2$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, p3, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final e(Lrs/c;)Ljava/lang/Object;
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
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;->j:I

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
    const/4 v2, 0x0

    .line 65
    const/4 v4, 0x0

    .line 66
    invoke-static {p1, v2, v3, v4}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    new-instance v2, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$2;

    .line 75
    .line 76
    invoke-direct {v2, v4}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$2;-><init>(Lrs/c;)V

    .line 77
    .line 78
    .line 79
    iput v3, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectShowRedPointIds$1;->j:I

    .line 80
    .line 81
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-ne p1, v1, :cond_3

    .line 86
    .line 87
    return-object v1

    .line 88
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    check-cast p1, Ljava/util/List;

    .line 95
    .line 96
    if-nez p1, :cond_4

    .line 97
    .line 98
    new-instance p1, Ljava/util/ArrayList;

    .line 99
    .line 100
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    .line 102
    .line 103
    :cond_4
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    return-object p1
.end method

.method public final f(JIILjava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p6

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static {v0, v4, v5, v6}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$2;

    .line 79
    .line 80
    const/4 v12, 0x0

    .line 81
    move-object v6, v4

    .line 82
    move-wide v7, p1

    .line 83
    move/from16 v9, p3

    .line 84
    .line 85
    move/from16 v10, p4

    .line 86
    .line 87
    move-object/from16 v11, p5

    .line 88
    .line 89
    invoke-direct/range {v6 .. v12}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$2;-><init>(JIILjava/lang/String;Lrs/c;)V

    .line 90
    .line 91
    .line 92
    iput v5, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollections$1;->j:I

    .line 93
    .line 94
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-ne v0, v3, :cond_3

    .line 99
    .line 100
    return-object v3

    .line 101
    :cond_3
    :goto_1
    return-object v0
.end method

.method public final g(JIILjava/lang/String;ILrs/c;)Ljava/lang/Object;
    .locals 14
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/lang/String;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p7

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;

    .line 24
    .line 25
    move-object v2, p0

    .line 26
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;-><init>(Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;->j:I

    .line 36
    .line 37
    const/4 v5, 0x1

    .line 38
    if-eqz v4, :cond_2

    .line 39
    .line 40
    if-ne v4, v5, :cond_1

    .line 41
    .line 42
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    check-cast v0, Lkotlin/Result;

    .line 46
    .line 47
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw v0

    .line 60
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 64
    .line 65
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v6, 0x0

    .line 70
    invoke-static {v0, v4, v5, v6}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->z(Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;ZILjava/lang/Object;)Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->n()Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v4, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$2;

    .line 79
    .line 80
    const/4 v13, 0x0

    .line 81
    move-object v6, v4

    .line 82
    move-wide v7, p1

    .line 83
    move/from16 v9, p3

    .line 84
    .line 85
    move/from16 v10, p4

    .line 86
    .line 87
    move-object/from16 v11, p5

    .line 88
    .line 89
    move/from16 v12, p6

    .line 90
    .line 91
    invoke-direct/range {v6 .. v13}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$2;-><init>(JIILjava/lang/String;ILrs/c;)V

    .line 92
    .line 93
    .line 94
    iput v5, v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRemoteDS$queryCollectionsV2$1;->j:I

    .line 95
    .line 96
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/manager/api/base/ApiBuilder;->o(Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    if-ne v0, v3, :cond_3

    .line 101
    .line 102
    return-object v3

    .line 103
    :cond_3
    :goto_1
    return-object v0
.end method
