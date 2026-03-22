.class final Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CollectionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->H(Landroid/content/Context;IIII)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$addCollection$1"
    f = "CollectionViewModel.kt"
    l = {
        0xc0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:I

.field final synthetic m:I

.field final synthetic n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;


# direct methods
.method constructor <init>(Landroid/content/Context;IIIILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "IIII",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->k:I

    .line 6
    .line 7
    iput p4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->l:I

    .line 8
    .line 9
    iput p5, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->m:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 12
    .line 13
    const/4 p1, 0x2

    .line 14
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->k:I

    .line 8
    .line 9
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->l:I

    .line 10
    .line 11
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->m:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 14
    .line 15
    move-object v0, p1

    .line 16
    move-object v7, p2

    .line 17
    invoke-direct/range {v0 .. v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;-><init>(Landroid/content/Context;IIIILcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->h:I

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
    sget-object v3, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;->a:Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget v5, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->j:I

    .line 38
    .line 39
    iget v6, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->k:I

    .line 40
    .line 41
    iget v7, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->l:I

    .line 42
    .line 43
    iget v8, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->m:I

    .line 44
    .line 45
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->h:I

    .line 46
    .line 47
    move-object v9, p0

    .line 48
    invoke-virtual/range {v3 .. v9}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;->b(Landroid/content/Context;IIIILrs/c;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-ne p1, v0, :cond_2

    .line 53
    .line 54
    return-object v0

    .line 55
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->n:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 56
    .line 57
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$addCollection$1;->l:I

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    filled-new-array {p1}, [Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1, v2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Z)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/mylist/b$a;

    .line 85
    .line 86
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$a;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->F(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;)V

    .line 93
    .line 94
    .line 95
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1
.end method
