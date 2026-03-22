.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;
.source "RecentlyWatchedFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment<",
        "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
        "Lcom/startshorts/androidplayer/databinding/FragmentRecentlyWatchedBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRecentlyWatchedFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,613:1\n2318#2,14:614\n1863#2,2:628\n1863#2,2:630\n1863#2,2:632\n1863#2,2:634\n1782#2,4:636\n360#2,7:640\n1863#2:647\n1864#2:649\n1#3:648\n*S KotlinDebug\n*F\n+ 1 RecentlyWatchedFragment.kt\ncom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment\n*L\n293#1:614,14\n306#1:628,2\n342#1:630,2\n361#1:632,2\n391#1:634,2\n407#1:636,4\n538#1:640,7\n107#1:647\n107#1:649\n*E\n"
    }
.end annotation


# static fields
.field public static final K:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final F:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->K:Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$a;

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/f0;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/f0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->F:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/g0;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/g0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->G:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method private static final A1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/e;)Lkotlin/Unit;
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/e$b;->a()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->D1(Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$a;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/e$a;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/e$a;->a()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->I1(Ljava/util/List;)V

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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->C1(Landroid/content/Context;)V

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
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1;

    .line 42
    .line 43
    const/4 p0, 0x0

    .line 44
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$mWatchHistoryViewModel$2$1$2$1;-><init>(Lrs/c;)V

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
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 58
    .line 59
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 60
    .line 61
    .line 62
    throw p0
.end method

.method private final B1(JI)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->p1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/mylist/d$b;

    .line 6
    .line 7
    invoke-direct {v1, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$b;-><init>(JI)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/mylist/d;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final D1(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->t1()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_3

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    move-object v2, p1

    .line 23
    check-cast v2, Ljava/lang/Iterable;

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_3

    .line 34
    .line 35
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 40
    .line 41
    move-object v4, v0

    .line 42
    check-cast v4, Ljava/lang/Iterable;

    .line 43
    .line 44
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_2

    .line 53
    .line 54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    move-object v6, v5

    .line 59
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 60
    .line 61
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v7

    .line 65
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getId()J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    cmp-long v6, v7, v9

    .line 70
    .line 71
    if-nez v6, :cond_1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    move-object v5, v1

    .line 75
    :goto_1
    check-cast v5, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 76
    .line 77
    if-eqz v5, :cond_0

    .line 78
    .line 79
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 80
    .line 81
    .line 82
    move-result v4

    .line 83
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_3
    if-nez p1, :cond_4

    .line 88
    .line 89
    new-instance p1, Ljava/util/ArrayList;

    .line 90
    .line 91
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .line 93
    .line 94
    :cond_4
    move-object v3, p1

    .line 95
    const/4 v6, 0x6

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v4, 0x0

    .line 98
    const/4 v5, 0x0

    .line 99
    move-object v2, p0

    .line 100
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->P0()Z

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    if-nez p1, :cond_a

    .line 108
    .line 109
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Ljava/util/Collection;

    .line 114
    .line 115
    if-eqz p1, :cond_5

    .line 116
    .line 117
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_a

    .line 122
    .line 123
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 128
    .line 129
    if-eqz v0, :cond_6

    .line 130
    .line 131
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 132
    .line 133
    goto :goto_2

    .line 134
    :cond_6
    move-object p1, v1

    .line 135
    :goto_2
    if-eqz p1, :cond_7

    .line 136
    .line 137
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->S()V

    .line 138
    .line 139
    .line 140
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 145
    .line 146
    if-eqz v0, :cond_8

    .line 147
    .line 148
    move-object v1, p1

    .line 149
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 150
    .line 151
    :cond_8
    if-eqz v1, :cond_9

    .line 152
    .line 153
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->a0()V

    .line 154
    .line 155
    .line 156
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 157
    .line 158
    .line 159
    :cond_a
    return-void
.end method

.method private final E1()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->k1()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/h0;

    .line 7
    .line 8
    invoke-direct {v4, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/h0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->I:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method private static final F1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->k1()V

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

.method private final I1(Ljava/util/List;)V
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
    if-eqz v1, :cond_4

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-eqz v3, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    check-cast v3, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    move-object v5, v1

    .line 35
    check-cast v5, Ljava/lang/Iterable;

    .line 36
    .line 37
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    if-eqz v6, :cond_2

    .line 46
    .line 47
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    move-object v7, v6

    .line 52
    check-cast v7, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 53
    .line 54
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getId()J

    .line 55
    .line 56
    .line 57
    move-result-wide v7

    .line 58
    cmp-long v7, v7, v3

    .line 59
    .line 60
    if-nez v7, :cond_1

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :catchall_0
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_2
    move-object v6, v2

    .line 66
    :goto_1
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 67
    .line 68
    if-eqz v6, :cond_0

    .line 69
    .line 70
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    monitor-exit v1

    .line 77
    goto :goto_3

    .line 78
    :goto_2
    monitor-exit v1

    .line 79
    throw p1

    .line 80
    :cond_4
    :goto_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 95
    .line 96
    const-string v1, "delete_item"

    .line 97
    .line 98
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Y(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->L0()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->Y0()V

    .line 109
    .line 110
    .line 111
    goto :goto_6

    .line 112
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/util/Collection;

    .line 117
    .line 118
    if-eqz p1, :cond_7

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_9

    .line 125
    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->S()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 134
    .line 135
    if-eqz v0, :cond_8

    .line 136
    .line 137
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_8
    move-object p1, v2

    .line 141
    :goto_5
    if-eqz p1, :cond_9

    .line 142
    .line 143
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->a0()V

    .line 144
    .line 145
    .line 146
    :cond_9
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 151
    .line 152
    if-eqz v0, :cond_a

    .line 153
    .line 154
    move-object v2, p1

    .line 155
    check-cast v2, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 156
    .line 157
    :cond_a
    if-eqz v2, :cond_b

    .line 158
    .line 159
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->S()V

    .line 160
    .line 161
    .line 162
    :cond_b
    return-void
.end method

.method public static synthetic a1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->r1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->y1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->F1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->v1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/e;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/e;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->x1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g1(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->w1(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->z1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->s1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic j1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->t1()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final k1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->I:Lkotlinx/coroutines/r;

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
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->I:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final l1()Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$checkActBannerVisible$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$checkActBannerVisible$1;-><init>(Lrs/c;)V

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

.method private final m1(Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->isCollect()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->o1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getDramaId()I

    .line 21
    .line 22
    .line 23
    move-result v7

    .line 24
    const/4 v4, 0x1

    .line 25
    const/4 v5, 0x1

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->H(Landroid/content/Context;IIII)Lkotlinx/coroutines/r;

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->o1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v1, v2, v2, p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;->I(Landroid/content/Context;III)Lkotlinx/coroutines/r;

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method private final o1()Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->G:Lms/i;

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

.method private final p1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->F:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final r1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->m1(Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private final s1()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->q1()I

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

.method private final t1()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;->J()Z

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

.method private static final v1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/CollectionViewModel;
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
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/j0;

    .line 23
    .line 24
    invoke-direct {v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/j0;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

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
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/k0;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/k0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final w1(Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final x1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/viewmodel/mylist/b;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_5

    .line 5
    .line 6
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$b;->a()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Iterable;

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Number;

    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 31
    .line 32
    .line 33
    move-result-wide v2

    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    check-cast v0, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    move-object v5, v4

    .line 57
    check-cast v5, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 58
    .line 59
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    long-to-int v6, v2

    .line 64
    if-ne v5, v6, :cond_1

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move-object v4, v1

    .line 68
    :goto_1
    check-cast v4, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 69
    .line 70
    if-eqz v4, :cond_0

    .line 71
    .line 72
    const/4 v0, 0x2

    .line 73
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->setCollect(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-eqz p1, :cond_4

    .line 82
    .line 83
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 84
    .line 85
    .line 86
    :cond_4
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$mCollectionViewModel$2$1$2$2;

    .line 91
    .line 92
    invoke-direct {v5, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$mCollectionViewModel$2$1$2$2;-><init>(Lrs/c;)V

    .line 93
    .line 94
    .line 95
    const/4 v6, 0x3

    .line 96
    const/4 v7, 0x0

    .line 97
    const/4 v3, 0x0

    .line 98
    const/4 v4, 0x0

    .line 99
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 100
    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$a;

    .line 104
    .line 105
    if-eqz v0, :cond_b

    .line 106
    .line 107
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-eqz v0, :cond_6

    .line 112
    .line 113
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0;->a(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    :cond_6
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/mylist/b$a;

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/b$a;->a()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_9

    .line 127
    .line 128
    check-cast v0, Ljava/lang/Iterable;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_8

    .line 139
    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object v3, v2

    .line 145
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-ne v3, p1, :cond_7

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_8
    move-object v2, v1

    .line 155
    :goto_2
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 156
    .line 157
    if-eqz v2, :cond_9

    .line 158
    .line 159
    const/4 p1, 0x1

    .line 160
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->setCollect(I)V

    .line 161
    .line 162
    .line 163
    :cond_9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_a

    .line 168
    .line 169
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 170
    .line 171
    .line 172
    :cond_a
    invoke-static {p0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$mCollectionViewModel$2$1$2$4;

    .line 177
    .line 178
    invoke-direct {v5, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$mCollectionViewModel$2$1$2$4;-><init>(Lrs/c;)V

    .line 179
    .line 180
    .line 181
    const/4 v6, 0x3

    .line 182
    const/4 v7, 0x0

    .line 183
    const/4 v3, 0x0

    .line 184
    const/4 v4, 0x0

    .line 185
    invoke-static/range {v2 .. v7}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 186
    .line 187
    .line 188
    goto :goto_3

    .line 189
    :cond_b
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 190
    .line 191
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    return-object p0
.end method

.method private static final y1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;
    .locals 5

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

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
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/l0;

    .line 23
    .line 24
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/l0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

    .line 25
    .line 26
    .line 27
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;

    .line 28
    .line 29
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2, v4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->G()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/mylist/m0;

    .line 44
    .line 45
    invoke-direct {v3, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/m0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

    .line 46
    .line 47
    .line 48
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;

    .line 49
    .line 50
    invoke-direct {p0, v3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/n0$a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 54
    .line 55
    .line 56
    return-object v0
.end method

.method private static final z1(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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


# virtual methods
.method public final C1(Landroid/content/Context;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1f

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_delete_success:I

    .line 14
    .line 15
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sget v1, Lcom/startshorts/androidplayer/R$layout;->layout_toast_del:I

    .line 28
    .line 29
    const/4 v3, 0x0

    .line 30
    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v1, Landroid/widget/Toast;

    .line 35
    .line 36
    invoke-direct {v1, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/widget/Toast;->setDuration(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const/16 p1, 0x11

    .line 46
    .line 47
    invoke-virtual {v1, p1, v2, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 51
    .line 52
    .line 53
    :goto_0
    return-void
.end method

.method public G()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->viewstub_my_list_empty_page:I

    .line 2
    .line 3
    return v0
.end method

.method public final G1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

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
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;->O(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public H0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final H1(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

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
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;->P(Z)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
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
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getLastWatchTime()J

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
    check-cast v6, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 63
    .line 64
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getLastWatchTime()J

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
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 81
    .line 82
    if-eqz v2, :cond_5

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getLastWatchTime()J

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
    invoke-direct {p0, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->B1(JI)V

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
    invoke-direct {p0, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->B1(JI)V

    .line 7
    .line 8
    .line 9
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
            "Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;",
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
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->R()Z

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
    check-cast v1, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

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
    invoke-virtual {v0, v1, v1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerRecentlyWatchedFragment;->i0(ZZ)V

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$initRecyclerView$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$initRecyclerView$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$initRecyclerView$2$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$initRecyclerView$2$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

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
    new-instance v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 31
    .line 32
    invoke-direct {v0}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;-><init>()V

    .line 33
    .line 34
    .line 35
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/i0;

    .line 36
    .line 37
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/i0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;->M(Lkotlin/jvm/functions/Function1;)V

    .line 41
    .line 42
    .line 43
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;

    .line 44
    .line 45
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->B(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;)V

    .line 49
    .line 50
    .line 51
    new-instance v1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 52
    .line 53
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->d(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->k0(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 60
    .line 61
    .line 62
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->i0()V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->l1()Lkotlinx/coroutines/r;

    .line 66
    .line 67
    .line 68
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

.method public final n1()V
    .locals 5

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
    monitor-enter v0

    .line 14
    :try_start_0
    move-object v2, v0

    .line 15
    check-cast v2, Ljava/lang/Iterable;

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-eqz v4, :cond_1

    .line 38
    .line 39
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getId()J

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v1

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->p1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/mylist/d$a;

    .line 67
    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-direct {v2, v3, v1}, Lcom/startshorts/androidplayer/viewmodel/mylist/d$a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/mylist/d;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void

    .line 79
    :goto_1
    monitor-exit v0

    .line 80
    throw v1
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

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
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->I:Lkotlinx/coroutines/r;

    .line 39
    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->E1()V

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->l1()Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->J:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->E1()V

    .line 14
    .line 15
    .line 16
    return-void
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

.method public final q1()I
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
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->p1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->w()V

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->R()V

    .line 44
    .line 45
    .line 46
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
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public final receiveRefreshEpisodeNumEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "event"

    .line 3
    .line 4
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "receiveRefreshEpisodeNumEvent -> mPaused("

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v2, ") mDataDirty("

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ") event("

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 v2, 0x29

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 55
    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    move-object v2, v1

    .line 64
    check-cast v2, Ljava/util/Collection;

    .line 65
    .line 66
    if-eqz v2, :cond_8

    .line 67
    .line 68
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    if-eqz v2, :cond_1

    .line 73
    .line 74
    goto/16 :goto_5

    .line 75
    .line 76
    :cond_1
    monitor-enter v1

    .line 77
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    const/4 v3, 0x0

    .line 82
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    const/4 v5, -0x1

    .line 87
    if-eqz v4, :cond_3

    .line 88
    .line 89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    check-cast v4, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 94
    .line 95
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getShortPlayId()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getShortsId()I

    .line 100
    .line 101
    .line 102
    move-result v6

    .line 103
    if-ne v4, v6, :cond_2

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    add-int/2addr v3, v0

    .line 107
    goto :goto_0

    .line 108
    :catchall_0
    move-exception p1

    .line 109
    goto :goto_4

    .line 110
    :cond_3
    move v3, v5

    .line 111
    :goto_1
    if-eq v3, v5, :cond_5

    .line 112
    .line 113
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    check-cast v0, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->getEpisodeNum()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eq v0, v2, :cond_7

    .line 128
    .line 129
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    check-cast v0, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshEpisodeNumEvent;->getEpisodeNum()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;->setEpisodeNum(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    instance-of v0, p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 147
    .line 148
    if-eqz v0, :cond_4

    .line 149
    .line 150
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_4
    const/4 p1, 0x0

    .line 154
    :goto_2
    if-eqz p1, :cond_7

    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->c()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_7

    .line 161
    .line 162
    const-string v0, "update_episode_num"

    .line 163
    .line 164
    invoke-virtual {p1, v3, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 169
    .line 170
    .line 171
    move-result p1

    .line 172
    if-eqz p1, :cond_6

    .line 173
    .line 174
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->p1()Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/mylist/WatchHistoryViewModel;->w()V

    .line 182
    .line 183
    .line 184
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->I:Lkotlinx/coroutines/r;

    .line 185
    .line 186
    if-nez p1, :cond_7

    .line 187
    .line 188
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->E1()V

    .line 189
    .line 190
    .line 191
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    .line 193
    monitor-exit v1

    .line 194
    goto :goto_6

    .line 195
    :goto_4
    monitor-exit v1

    .line 196
    throw p1

    .line 197
    :cond_8
    :goto_5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->H:Z

    .line 198
    .line 199
    :goto_6
    return-void
.end method

.method public s0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final u1()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->Z()Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/adapter/mylist/RecentlyWatchedAdapter;

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
    check-cast v3, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

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
    check-cast v2, Lcom/startshorts/androidplayer/bean/mylist/WatchHistory;

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

.method public v()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/mylist/RecentlyWatchedFragment;->k1()V

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
