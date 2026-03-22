.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;
.source "ImmersionEpisodeListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment<",
        "Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;",
        "Lcom/startshorts/androidplayer/databinding/FragmentEpisodeListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionEpisodeListFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionEpisodeListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,247:1\n15#2,9:248\n1863#3,2:257\n1863#3,2:259\n1872#3,3:261\n*S KotlinDebug\n*F\n+ 1 ImmersionEpisodeListFragment.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment\n*L\n124#1:248,9\n199#1:257,2\n204#1:259,2\n213#1:261,3\n*E\n"
    }
.end annotation


# static fields
.field public static final G:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final A:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final B:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private C:I

.field private D:I

.field private E:I

.field private F:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->G:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/v;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/v;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->A:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/w;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/w;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->B:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic E0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/viewmodel/immersion/b;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->U0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/viewmodel/immersion/b;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic F0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->T0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->V0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->M0()Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->D:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic K0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->E:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic L0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->i0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M0()Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->B:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final N0()Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->A:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/lifecycle/ViewModelProvider;

    .line 8
    .line 9
    return-object v0
.end method

.method private final O0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->B5()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    const/4 v0, -0x1

    .line 21
    return v0
.end method

.method private final P0()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

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
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->C5()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_1
    const/4 v0, -0x1

    .line 21
    return v0
.end method

.method private final Q0(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->d0()Ljava/util/List;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    monitor-enter v1

    .line 10
    :try_start_0
    move-object v2, v1

    .line 11
    check-cast v2, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    const/4 v3, 0x0

    .line 18
    move v4, v3

    .line 19
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-eqz v5, :cond_4

    .line 24
    .line 25
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    add-int/lit8 v6, v4, 0x1

    .line 30
    .line 31
    if-gez v4, :cond_1

    .line 32
    .line 33
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    goto :goto_3

    .line 39
    :cond_1
    :goto_1
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 40
    .line 41
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->getPlaying()Z

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    if-eqz v7, :cond_2

    .line 46
    .line 47
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eq v7, p1, :cond_3

    .line 52
    .line 53
    invoke-virtual {v5, v3}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->setPlaying(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    if-eqz v5, :cond_3

    .line 61
    .line 62
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    if-ne v7, p1, :cond_3

    .line 71
    .line 72
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->setPlaying(Z)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setUnlocked()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v5, :cond_3

    .line 83
    .line 84
    invoke-virtual {v5, v4}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_2
    move v4, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 93
    :goto_3
    monitor-exit v1

    .line 94
    throw p1
.end method

.method private final R0()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "shorts_id"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string v3, "page_number"

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    move v2, v1

    .line 30
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    const-string v1, "page_size"

    .line 37
    .line 38
    invoke-virtual {v3, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    :cond_2
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->C:I

    .line 43
    .line 44
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->D:I

    .line 45
    .line 46
    iput v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->E:I

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    return v0
.end method

.method private static final S0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->N0()Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/x;

    .line 18
    .line 19
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/x;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V

    .line 20
    .line 21
    .line 22
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$e;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/y;

    .line 35
    .line 36
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/y;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V

    .line 37
    .line 38
    .line 39
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$e;

    .line 40
    .line 41
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$e;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 45
    .line 46
    .line 47
    return-object v0
.end method

.method private static final T0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 3

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
    move v0, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0, v1, v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->x0(ZZLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getState()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-ne p1, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->M()V

    .line 25
    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->O()V

    .line 29
    .line 30
    .line 31
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    return-object p0
.end method

.method private static final U0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;Lcom/startshorts/androidplayer/viewmodel/immersion/b;)Lkotlin/Unit;
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;->a()Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;->getDramaListResponseList()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object v0, v1

    .line 20
    :goto_0
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->W0(Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;->a()Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;->getDramaListResponseList()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    :cond_1
    const/4 v0, 0x1

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/ListFragment;->y0(ZLjava/util/List;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$b;->a()Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsListNewBean;->getHasTrailer()Ljava/lang/Boolean;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-eqz p1, :cond_2

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    const/4 p1, 0x0

    .line 55
    :goto_1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->F:Z

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/b$a;

    .line 59
    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/b$a;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$a;->b()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    new-instance p1, Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;

    .line 75
    .line 76
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/eventbus/ShowDisableSkipUnlockToastEvent;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0, p1}, Lau/c;->l(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    instance-of v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 88
    .line 89
    if-eqz v0, :cond_5

    .line 90
    .line 91
    move-object v1, p0

    .line 92
    check-cast v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;

    .line 93
    .line 94
    :cond_5
    if-eqz v1, :cond_6

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 97
    .line 98
    .line 99
    :cond_6
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/ScrollToEpisodeEvent;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/b$a;->a()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    const-string v1, "short_menu"

    .line 110
    .line 111
    invoke-direct {v0, p1, v1}, Lcom/startshorts/androidplayer/bean/eventbus/ScrollToEpisodeEvent;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_7
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p0
.end method

.method private static final V0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)Landroidx/lifecycle/ViewModelProvider;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final W0(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;",
            ">;)V"
        }
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_4

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
    goto :goto_4

    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->P0()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x1

    .line 19
    const/4 v3, -0x1

    .line 20
    if-ne v0, v3, :cond_2

    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->O0()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eq v0, v3, :cond_4

    .line 27
    .line 28
    check-cast p1, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_4

    .line 39
    .line 40
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-ne v4, v0, :cond_1

    .line 51
    .line 52
    move v4, v2

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v4, v1

    .line 55
    :goto_1
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->setPlaying(Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    check-cast p1, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    if-ne v4, v0, :cond_3

    .line 82
    .line 83
    move v4, v2

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    move v4, v1

    .line 86
    :goto_3
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;->setPlaying(Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_4
    :goto_4
    return-void
.end method


# virtual methods
.method public R()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->M0()Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;

    .line 6
    .line 7
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->C:I

    .line 8
    .line 9
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->D:I

    .line 10
    .line 11
    iget v4, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->E:I

    .line 12
    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/immersion/a$a;-><init>(III)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/EpisodeViewModel;->D(Lcom/startshorts/androidplayer/viewmodel/immersion/a;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public i0()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$c;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$c;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_episode_list:I

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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/PageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->R0()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->R()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionEpisodeListFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveEpisodePlayingEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;
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
    const-string v1, "receiveEpisodePlayingEvent -> "

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->C:I

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;->getShortsId()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;->getEpisodeId()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->Q0(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method
