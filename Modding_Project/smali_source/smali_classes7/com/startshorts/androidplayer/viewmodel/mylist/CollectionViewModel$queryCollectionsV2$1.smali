.class final Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CollectionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->S(JIILjava/util/List;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
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
    c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$queryCollectionsV2$1"
    f = "CollectionViewModel.kt"
    l = {
        0xaa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:J

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic m:I

.field final synthetic n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;


# direct methods
.method constructor <init>(JIILjava/util/List;ILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->i:J

    .line 2
    .line 3
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->j:I

    .line 4
    .line 5
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->k:I

    .line 6
    .line 7
    iput-object p5, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->l:Ljava/util/List;

    .line 8
    .line 9
    iput p6, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->m:I

    .line 10
    .line 11
    iput-object p7, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 9
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->i:J

    .line 4
    .line 5
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->j:I

    .line 6
    .line 7
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->k:I

    .line 8
    .line 9
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->l:Ljava/util/List;

    .line 10
    .line 11
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->m:I

    .line 12
    .line 13
    iget-object v7, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v8, p2

    .line 17
    invoke-direct/range {v0 .. v8}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;-><init>(JIILjava/util/List;ILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V

    .line 18
    .line 19
    .line 20
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

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;->a:Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;

    .line 34
    .line 35
    iget-wide v3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->i:J

    .line 36
    .line 37
    iget p1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->j:I

    .line 38
    .line 39
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->k:I

    .line 40
    .line 41
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->l:Ljava/util/List;

    .line 42
    .line 43
    invoke-static {v6}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v6

    .line 47
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->m:I

    .line 48
    .line 49
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->h:I

    .line 50
    .line 51
    move-wide v2, v3

    .line 52
    move v4, p1

    .line 53
    move-object v8, p0

    .line 54
    invoke-virtual/range {v1 .. v8}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;->j(JIILjava/lang/String;ILrs/c;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ne p1, v0, :cond_2

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 62
    .line 63
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_3

    .line 68
    .line 69
    move-object v1, p1

    .line 70
    check-cast v1, Ljava/util/List;

    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->G(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Z)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;

    .line 81
    .line 82
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;-><init>(Ljava/util/List;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 86
    .line 87
    .line 88
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$queryCollectionsV2$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 89
    .line 90
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-eqz p1, :cond_4

    .line 95
    .line 96
    invoke-static {p1}, Ljk/z;->a(Ljava/lang/Throwable;)Lcom/startshorts/androidplayer/bean/exception/ResponseException;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lcom/startshorts/androidplayer/bean/exception/ResponseException;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p1
.end method
