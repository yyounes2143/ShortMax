.class final Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CollectionViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->J(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.viewmodel.mylist.CollectionViewModel$cancelCollections$1"
    f = "CollectionViewModel.kt"
    l = {
        0xe4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Landroid/content/Context;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

.field final synthetic l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->i:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->j:Ljava/util/List;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->k:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->l:Ljava/util/List;

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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->i:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->j:Ljava/util/List;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->k:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->l:Ljava/util/List;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->h:I

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
    sget-object p1, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;->a:Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->i:Landroid/content/Context;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->j:Ljava/util/List;

    .line 38
    .line 39
    invoke-static {v3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->h:I

    .line 44
    .line 45
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/mylist/collection/CollectionRepo;->d(Landroid/content/Context;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->k:Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->l:Ljava/util/List;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel$cancelCollections$1;->j:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-eqz p1, :cond_3

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;Ljava/util/List;Z)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 73
    .line 74
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;-><init>(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method
