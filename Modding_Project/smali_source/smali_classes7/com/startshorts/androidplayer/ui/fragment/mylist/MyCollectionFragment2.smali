.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "MyCollectionFragment2.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$a;
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
        "SMAP\nMyCollectionFragment2.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MyCollectionFragment2.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,550:1\n1863#2,2:551\n1863#2,2:553\n1863#2,2:555\n2318#2,14:557\n1863#2,2:571\n1863#2,2:573\n1782#2,4:575\n*S KotlinDebug\n*F\n+ 1 MyCollectionFragment2.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2\n*L\n114#1:551,2\n133#1:553,2\n140#1:555,2\n302#1:557,14\n325#1:571,2\n357#1:573,2\n375#1:575,4\n*E\n"
    }
.end annotation


# static fields
.field public static final K:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private F:Z

.field private final G:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private H:Z

.field private I:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->K:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$a;

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->G:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->r1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->s1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->x1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->q1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->v1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic f1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->n1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->o1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final h1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->I:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->I:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final i1()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$checkActBannerVisible$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$checkActBannerVisible$1;-><init>(Lrs/c;)V

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

.method private final j1(Ljava/util/List;)V
    .locals 9
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
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
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
    move-result v3

    .line 21
    if-eqz v3, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Ljava/lang/Number;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    move-object v5, v1

    .line 34
    check-cast v5, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v6

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    move-object v7, v6

    .line 51
    check-cast v7, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 52
    .line 53
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 54
    .line 55
    .line 56
    move-result-wide v7

    .line 57
    cmp-long v7, v7, v3

    .line 58
    .line 59
    if-nez v7, :cond_1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    move-object v6, v2

    .line 63
    :goto_1
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 64
    .line 65
    if-eqz v6, :cond_0

    .line 66
    .line 67
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_4

    .line 80
    .line 81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 86
    .line 87
    const-string v1, "delete_item"

    .line 88
    .line 89
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->L0()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-eqz p1, :cond_5

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->Y0()V

    .line 100
    .line 101
    .line 102
    goto :goto_4

    .line 103
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Ljava/util/Collection;

    .line 108
    .line 109
    if-eqz p1, :cond_6

    .line 110
    .line 111
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_8

    .line 116
    .line 117
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 125
    .line 126
    if-eqz v0, :cond_7

    .line 127
    .line 128
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 129
    .line 130
    goto :goto_3

    .line 131
    :cond_7
    move-object p1, v2

    .line 132
    :goto_3
    if-eqz p1, :cond_8

    .line 133
    .line 134
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->e0()V

    .line 135
    .line 136
    .line 137
    :cond_8
    :goto_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 142
    .line 143
    if-eqz v0, :cond_9

    .line 144
    .line 145
    move-object v2, p1

    .line 146
    check-cast v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 147
    .line 148
    :cond_9
    if-eqz v2, :cond_a

    .line 149
    .line 150
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->V()V

    .line 151
    .line 152
    .line 153
    :cond_a
    return-void
.end method

.method private final l1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->G:Lms/i;

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

.method private final n1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->m1()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x18

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method

.method private final o1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->J()Z

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

.method private static final q1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 5

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/j;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/m$a;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/m$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/k;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/m$a;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/m$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final r1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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

.method private static final s1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 6

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->u1(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 16
    .line 17
    if-eqz v0, :cond_2

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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->j1(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/m;->a(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$mCollectionViewModel$2$1$2$1;

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$mCollectionViewModel$2$1$2$1;-><init>(Lrs/c;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    const/4 v5, 0x0

    .line 49
    const/4 v1, 0x0

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method private final t1(JII)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->l1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;

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
    move-object v1, v8

    .line 22
    move-wide v2, p1

    .line 23
    move v4, p3

    .line 24
    move v7, p4

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$f;-><init>(JIILjava/util/List;I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final u1(Ljava/util/List;)V
    .locals 11
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
    const/4 v1, 0x0

    .line 66
    if-eqz v0, :cond_6

    .line 67
    .line 68
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->o1()Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_6

    .line 79
    .line 80
    if-eqz p1, :cond_6

    .line 81
    .line 82
    move-object v2, p1

    .line 83
    check-cast v2, Ljava/lang/Iterable;

    .line 84
    .line 85
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    if-eqz v3, :cond_6

    .line 94
    .line 95
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 100
    .line 101
    move-object v4, v0

    .line 102
    check-cast v4, Ljava/lang/Iterable;

    .line 103
    .line 104
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v5

    .line 112
    if-eqz v5, :cond_5

    .line 113
    .line 114
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v5

    .line 118
    move-object v6, v5

    .line 119
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 122
    .line 123
    .line 124
    move-result-wide v7

    .line 125
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 126
    .line 127
    .line 128
    move-result-wide v9

    .line 129
    cmp-long v6, v7, v9

    .line 130
    .line 131
    if-nez v6, :cond_4

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    move-object v5, v1

    .line 135
    :goto_3
    check-cast v5, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 136
    .line 137
    if-eqz v5, :cond_3

    .line 138
    .line 139
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 140
    .line 141
    .line 142
    move-result v4

    .line 143
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    if-nez p1, :cond_7

    .line 148
    .line 149
    new-instance p1, Ljava/util/ArrayList;

    .line 150
    .line 151
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 152
    .line 153
    .line 154
    :cond_7
    move-object v3, p1

    .line 155
    const/4 v6, 0x6

    .line 156
    const/4 v7, 0x0

    .line 157
    const/4 v4, 0x0

    .line 158
    const/4 v5, 0x0

    .line 159
    move-object v2, p0

    .line 160
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_d

    .line 168
    .line 169
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    check-cast p1, Ljava/util/Collection;

    .line 174
    .line 175
    if-eqz p1, :cond_8

    .line 176
    .line 177
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    if-eqz p1, :cond_d

    .line 182
    .line 183
    :cond_8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 188
    .line 189
    if-eqz v0, :cond_9

    .line 190
    .line 191
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_9
    move-object p1, v1

    .line 195
    :goto_4
    if-eqz p1, :cond_a

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->V()V

    .line 198
    .line 199
    .line 200
    :cond_a
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 205
    .line 206
    if-eqz v0, :cond_b

    .line 207
    .line 208
    move-object v1, p1

    .line 209
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 210
    .line 211
    :cond_b
    if-eqz v1, :cond_c

    .line 212
    .line 213
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->e0()V

    .line 214
    .line 215
    .line 216
    :cond_c
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 217
    .line 218
    .line 219
    :cond_d
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->F:Z

    .line 220
    .line 221
    if-nez p1, :cond_e

    .line 222
    .line 223
    const/4 p1, 0x1

    .line 224
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->F:Z

    .line 225
    .line 226
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->g0()Landroidx/recyclerview/widget/RecyclerView;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    if-eqz p1, :cond_e

    .line 231
    .line 232
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/l;

    .line 233
    .line 234
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 235
    .line 236
    .line 237
    const-wide/16 v1, 0x0

    .line 238
    .line 239
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    .line 241
    .line 242
    :cond_e
    return-void
.end method

.method private static final v1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    instance-of v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->Y()V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method private final w1()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->h1()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/h;

    .line 7
    .line 8
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v1, 0x1f4

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->I:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method private static final x1(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->h1()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 5
    .line 6
    .line 7
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    return-object p0
.end method


# virtual methods
.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_my_list_empty_page:I

    .line 2
    .line 3
    return v0
.end method

.method public H0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-eqz p1, :cond_6

    .line 100
    .line 101
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    goto :goto_2

    .line 106
    :cond_6
    const/4 p1, 0x0

    .line 107
    :goto_2
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->t1(JII)V

    .line 108
    .line 109
    .line 110
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
    const/4 p1, 0x0

    .line 7
    invoke-direct {p0, v0, v1, p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->t1(JII)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public W(Ljava/util/List;)Z
    .locals 3
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
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-eqz v0, :cond_3

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->U()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    if-eqz p1, :cond_3

    .line 22
    .line 23
    move-object v0, p1

    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_3

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v1, p1

    .line 48
    check-cast v1, Ljava/util/Collection;

    .line 49
    .line 50
    if-eqz v1, :cond_3

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    invoke-virtual {v0, v1, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->p0(ZZ)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_2
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->W(Ljava/util/List;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public i0()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$initRecyclerView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$initRecyclerView$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->m0(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x3

    .line 16
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$initRecyclerView$2$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$initRecyclerView$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->n0(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 28
    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-direct {v0, v1, v2, v1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    .line 36
    .line 37
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;

    .line 38
    .line 39
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 46
    .line 47
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 54
    .line 55
    .line 56
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->i1()Lkotlinx/coroutines/r;

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public final k1()V
    .locals 8

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
    new-instance v3, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    check-cast v0, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 40
    .line 41
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 48
    .line 49
    .line 50
    move-result-wide v5

    .line 51
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v5

    .line 55
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getShortPlayId()I

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    new-instance v5, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;

    .line 70
    .line 71
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getId()J

    .line 72
    .line 73
    .line 74
    move-result-wide v6

    .line 75
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;->getContentTag()I

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    invoke-direct {v5, v6, v7, v4}, Lcom/startshorts/androidplayer/bean/mylist/CollectIdRequest;-><init>(JI)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_3

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->l1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    new-instance v4, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;

    .line 97
    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    new-instance v6, Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;

    .line 103
    .line 104
    invoke-direct {v6, v3}, Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;-><init>(Ljava/util/List;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v4, v5, v1, v2, v6}, Lcom/startshorts/androidplayer/viewmodel/mylist/a$d;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Lcom/startshorts/androidplayer/bean/mylist/CancelCollectBatchRequest;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->P(Lcom/startshorts/androidplayer/viewmodel/mylist/a;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_recently_watched:I

    .line 2
    .line 3
    return v0
.end method

.method public final m1()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    instance-of v2, v0, Ljava/util/Collection;

    .line 11
    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Ljava/util/Collection;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-eqz v2, :cond_2

    .line 33
    .line 34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/MyCollection;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    if-gez v1, :cond_1

    .line 49
    .line 50
    invoke-static {}, Lkotlin/collections/CollectionsKt;->x()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    :goto_1
    return v1
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->H:Z

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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->H:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->H:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->I:Lkotlinx/coroutines/r;

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->w1()V

    .line 43
    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->i1()Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->H()V

    .line 59
    .line 60
    .line 61
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->w1()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final p1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

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

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "RecentlyWatchedFragment"

    .line 2
    .line 3
    return-object v0
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
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->X0()V

    .line 20
    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    const/4 v4, 0x6

    .line 28
    const/4 v5, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    const/4 v3, 0x0

    .line 31
    move-object v0, p0

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 37
    .line 38
    .line 39
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
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    return-void

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;->getCollect()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->H:Z

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public s0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public v()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment2;->h1()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public v0()I
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    return v0
.end method

.method public final y1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

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
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->M(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public final z1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;

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
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/MyCollectionHorizontalAdapter;->N(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
