.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "MyCollectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
        "Lcom/startshorts/androidplayer/databinding/FragmentMyCollectionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMyCollectionFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,494:1\n2318#2,14:495\n1863#2,2:509\n1863#2,2:511\n1863#2,2:513\n1863#2,2:516\n360#2,7:518\n1863#2,2:525\n1#3:515\n*S KotlinDebug\n*F\n+ 1 MyCollectionFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment\n*L\n175#1:495,14\n193#1:509,2\n201#1:511,2\n236#1:513,2\n283#1:516,2\n434#1:518,7\n469#1:525,2\n*E\n"
    }
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final I:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final F:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private G:Z

.field private H:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->I:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->F:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->m1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->l1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->i1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final e1()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$checkActBannerVisible$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$checkActBannerVisible$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "checkActBannerVisible"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0
.end method

.method private final f1(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_4

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    move-object v4, v1

    .line 34
    check-cast v4, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-eqz v5, :cond_2

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    move-object v6, v5

    .line 51
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 52
    .line 53
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v6

    .line 57
    cmp-long v6, v6, v2

    .line 58
    .line 59
    if-nez v6, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p1

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    const/4 v5, 0x0

    .line 65
    :goto_1
    check-cast v5, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 66
    .line 67
    if-eqz v5, :cond_0

    .line 68
    .line 69
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    monitor-exit v1

    .line 76
    goto :goto_3

    .line 77
    :goto_2
    monitor-exit v1

    .line 78
    throw p1

    .line 79
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-eqz v0, :cond_5

    .line 88
    .line 89
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 94
    .line 95
    const-string v1, "delete_item"

    .line 96
    .line 97
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_4

    .line 101
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->L0()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    if-eqz p1, :cond_6

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->Y0()V

    .line 108
    .line 109
    .line 110
    goto :goto_5

    .line 111
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    check-cast p1, Ljava/util/Collection;

    .line 116
    .line 117
    if-eqz p1, :cond_7

    .line 118
    .line 119
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-eqz p1, :cond_8

    .line 124
    .line 125
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 126
    .line 127
    .line 128
    :cond_8
    :goto_5
    return-void
.end method

.method private final h1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->F:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->I()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v0, v2, :cond_1

    .line 22
    .line 23
    move v1, v2

    .line 24
    :cond_1
    return v1
.end method

.method private static final k1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/f;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/g;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$c;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final l1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R0(Ljava/util/List;ZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 19
    .line 20
    return-object p0
.end method

.method private static final m1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$c;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->o1(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;->a()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->f1(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final n1(JI)V
    .locals 8

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->h1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v7, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    filled-new-array {v1}, [Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    const/4 v5, 0x1

    .line 21
    move-object v1, v7

    .line 22
    move-wide v2, p1

    .line 23
    move v4, p3

    .line 24
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$e;-><init>(JIILjava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final o1(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 14
    .line 15
    invoke-virtual {v0}, Lud/b;->e1()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    :cond_1
    move-object v1, p1

    .line 27
    check-cast v1, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->setShowRedPoint(Z)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_8

    .line 66
    .line 67
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->i1()Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_8

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-eqz v0, :cond_8

    .line 78
    .line 79
    monitor-enter v0

    .line 80
    if-eqz p1, :cond_7

    .line 81
    .line 82
    :try_start_0
    move-object v1, p1

    .line 83
    check-cast v1, Ljava/lang/Iterable;

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 100
    .line 101
    move-object v3, v0

    .line 102
    check-cast v3, Ljava/lang/Iterable;

    .line 103
    .line 104
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-eqz v4, :cond_5

    .line 113
    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    move-object v5, v4

    .line 119
    check-cast v5, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 120
    .line 121
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 122
    .line 123
    .line 124
    move-result-wide v6

    .line 125
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 126
    .line 127
    .line 128
    move-result-wide v8

    .line 129
    cmp-long v5, v6, v8

    .line 130
    .line 131
    if-nez v5, :cond_4

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :catchall_0
    move-exception p1

    .line 135
    goto :goto_4

    .line 136
    :cond_5
    const/4 v4, 0x0

    .line 137
    :goto_3
    check-cast v4, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 138
    .line 139
    if-eqz v4, :cond_3

    .line 140
    .line 141
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 142
    .line 143
    .line 144
    move-result v3

    .line 145
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    goto :goto_5

    .line 152
    :goto_4
    monitor-exit v0

    .line 153
    throw p1

    .line 154
    :cond_7
    :goto_5
    monitor-exit v0

    .line 155
    :cond_8
    if-nez p1, :cond_9

    .line 156
    .line 157
    new-instance p1, Ljava/util/ArrayList;

    .line 158
    .line 159
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .line 161
    .line 162
    :cond_9
    move-object v1, p1

    .line 163
    const/4 v4, 0x6

    .line 164
    const/4 v5, 0x0

    .line 165
    const/4 v2, 0x0

    .line 166
    const/4 v3, 0x0

    .line 167
    move-object v0, p0

    .line 168
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-nez p1, :cond_b

    .line 176
    .line 177
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    check-cast p1, Ljava/util/Collection;

    .line 182
    .line 183
    if-eqz p1, :cond_a

    .line 184
    .line 185
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    if-eqz p1, :cond_b

    .line 190
    .line 191
    :cond_a
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 192
    .line 193
    .line 194
    :cond_b
    return-void
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_my_list_empty:I

    .line 2
    .line 3
    return v0
.end method

.method public T0(II)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->T0(II)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/Collection;

    .line 9
    .line 10
    const-wide/16 v0, -0x1

    .line 11
    .line 12
    if-eqz p1, :cond_5

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_5

    .line 26
    .line 27
    check-cast p1, Ljava/lang/Iterable;

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-nez v3, :cond_1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move-object v3, v2

    .line 51
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCollectTime()J

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    move-object v6, v5

    .line 62
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCollectTime()J

    .line 65
    .line 66
    .line 67
    move-result-wide v6

    .line 68
    cmp-long v8, v3, v6

    .line 69
    .line 70
    if-lez v8, :cond_3

    .line 71
    .line 72
    move-object v2, v5

    .line 73
    move-wide v3, v6

    .line 74
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    if-nez v5, :cond_2

    .line 79
    .line 80
    :goto_0
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getCollectTime()J

    .line 85
    .line 86
    .line 87
    move-result-wide v0

    .line 88
    goto :goto_1

    .line 89
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_5
    :goto_1
    invoke-direct {p0, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->n1(JI)V

    .line 96
    .line 97
    .line 98
    return-void
.end method

.method public U0(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->U0(II)V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    invoke-direct {p0, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->n1(JI)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public W(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/mylist/MyCollection;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListFragment;

    .line 6
    .line 7
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->W(Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final g1()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    new-instance v2, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    monitor-enter v0

    .line 19
    :try_start_0
    move-object v3, v0

    .line 20
    check-cast v3, Ljava/lang/Iterable;

    .line 21
    .line 22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    check-cast v4, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 37
    .line 38
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    if-eqz v5, :cond_1

    .line 43
    .line 44
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 45
    .line 46
    .line 47
    move-result-wide v5

    .line 48
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 49
    .line 50
    .line 51
    move-result-object v5

    .line 52
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v1

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    monitor-exit v0

    .line 72
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->h1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    new-instance v3, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    invoke-direct {v3, v4, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$c;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 92
    .line 93
    .line 94
    :cond_3
    return-void

    .line 95
    :goto_1
    monitor-exit v0

    .line 96
    throw v1
.end method

.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$initRecyclerView$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$initRecyclerView$1;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->e1()Lkotlinx/coroutines/r;

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final j1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v0, v2

    .line 14
    :goto_0
    if-eqz v0, :cond_3

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->m()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_3

    .line 21
    .line 22
    check-cast v0, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    move-object v3, v1

    .line 39
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 40
    .line 41
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    move-object v2, v1

    .line 48
    :cond_2
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 49
    .line 50
    :cond_3
    if-eqz v2, :cond_4

    .line 51
    .line 52
    const/4 v0, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_4
    const/4 v0, 0x0

    .line 55
    :goto_1
    return v0
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_my_collection:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->H:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->F()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "onResume -> mDataDirty("

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const/16 v1, 0x29

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->e1()Lkotlinx/coroutines/r;

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->H:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->H()V

    .line 55
    .line 56
    .line 57
    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->W0(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->L(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "MyCollectionFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final q1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionAdapter;->M(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "receiveRefreshAccountEvent"

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->h1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->w()V

    .line 16
    .line 17
    .line 18
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->X0()V

    .line 27
    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x6

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x0

    .line 38
    move-object v0, p0

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const-wide/16 v0, -0x1

    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->v0()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-direct {p0, v0, v1, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->n1(JI)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method

.method public final receiveRefreshCollectEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receive RefreshShortsCollectEvent -> "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 35
    .line 36
    return-void
.end method

.method public final receiveRefreshCollectListEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshCollectListEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v0, "receive RefreshCollectListEvent -> mPaused("

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const/16 v0, 0x29

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public final receiveRefreshEpisodeNumEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;)V
    .locals 6
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "receiveRefreshEpisodeNumEvent -> mPaused("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ") mDataDirty("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ") event("

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const/16 v1, 0x29

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    return-void

    .line 60
    :cond_0
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->G:Z

    .line 61
    .line 62
    if-eqz v1, :cond_1

    .line 63
    .line 64
    return-void

    .line 65
    :cond_1
    monitor-enter v0

    .line 66
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const/4 v4, -0x1

    .line 76
    if-eqz v3, :cond_3

    .line 77
    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 83
    .line 84
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getShortsId()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-ne v3, v5, :cond_2

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :catchall_0
    move-exception p1

    .line 99
    goto :goto_3

    .line 100
    :cond_3
    move v2, v4

    .line 101
    :goto_1
    if-eq v2, v4, :cond_5

    .line 102
    .line 103
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 108
    .line 109
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getEpisodeNum()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    if-eq v1, v3, :cond_5

    .line 118
    .line 119
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->setEpisodeNum(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    instance-of v1, p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 137
    .line 138
    if-eqz v1, :cond_4

    .line 139
    .line 140
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 141
    .line 142
    goto :goto_2

    .line 143
    :cond_4
    const/4 p1, 0x0

    .line 144
    :goto_2
    if-eqz p1, :cond_5

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->c()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    const-string v1, "update_episode_num"

    .line 153
    .line 154
    invoke-virtual {p1, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 158
    .line 159
    monitor-exit v0

    .line 160
    return-void

    .line 161
    :goto_3
    monitor-exit v0

    .line 162
    throw p1
.end method

.method public final receiveRefreshMyListRedPointEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;)V
    .locals 5
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    monitor-enter v0

    .line 14
    :try_start_0
    move-object v1, v0

    .line 15
    check-cast v1, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshMyListRedPointEvent;->getShortIds()Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->setShowRedPoint(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    :cond_2
    monitor-exit v0

    .line 67
    return-void

    .line 68
    :goto_1
    monitor-exit v0

    .line 69
    throw p1
.end method

.method public s0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public v0()I
    .locals 1

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    return v0
.end method
