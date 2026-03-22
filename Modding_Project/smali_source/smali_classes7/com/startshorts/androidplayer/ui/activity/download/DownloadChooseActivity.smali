.class public final Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;
.source "DownloadChooseActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDownloadChooseActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadChooseActivity.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,265:1\n1948#2,14:266\n*S KotlinDebug\n*F\n+ 1 DownloadChooseActivity.kt\ncom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity\n*L\n110#1:266,14\n*E\n"
    }
.end annotation


# static fields
.field public static final x:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final u:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->x:Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Luh/f;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Luh/f;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->u:Lms/i;

    .line 14
    .line 15
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->getPLAY_RESOLUTION_AUTO()Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 22
    .line 23
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->w:Ljava/util/List;

    .line 29
    .line 30
    return-void
.end method

.method public static synthetic X(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->o0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Integer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Y(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Z(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Luh/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Luh/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->n0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Boolean;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->u0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->s0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->p0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Long;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic f0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->x0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->m0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    return-object p0
.end method

.method private final i0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->isAuto()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->w:Ljava/util/List;

    .line 10
    .line 11
    check-cast v0, Ljava/lang/Iterable;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_3

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-nez v2, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object v2, v1

    .line 35
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    move-object v4, v3

    .line 46
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 47
    .line 48
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-ge v2, v4, :cond_2

    .line 53
    .line 54
    move-object v1, v3

    .line 55
    move v2, v4

    .line 56
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    if-nez v3, :cond_1

    .line 61
    .line 62
    :goto_0
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 63
    .line 64
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    new-instance v0, Ljava/util/NoSuchElementException;

    .line 68
    .line 69
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 70
    .line 71
    .line 72
    throw v0

    .line 73
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 80
    .line 81
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 82
    .line 83
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method private final j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->u:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final k0()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->w0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l0()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Luh/j;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Luh/j;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 12
    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;

    .line 15
    .line 16
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    new-instance v1, Luh/k;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Luh/k;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 33
    .line 34
    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;

    .line 36
    .line 37
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    new-instance v1, Luh/l;

    .line 52
    .line 53
    invoke-direct {v1, p0}, Luh/l;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 54
    .line 55
    .line 56
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;

    .line 57
    .line 58
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 62
    .line 63
    .line 64
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->M()Landroidx/lifecycle/MutableLiveData;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    new-instance v1, Luh/m;

    .line 71
    .line 72
    invoke-direct {v1, p0}, Luh/m;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 73
    .line 74
    .line 75
    new-instance v2, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;

    .line 76
    .line 77
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private static final m0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/QueryDownloadEpisodesResult;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 10
    .line 11
    const-string v0, "recyclerView"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->C()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {p1, v0}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->P()V

    .line 28
    .line 29
    .line 30
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Boolean;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$string;->select_all:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 32
    .line 33
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 34
    .line 35
    sget v0, Lcom/startshorts/androidplayer/R$string;->download_select_cancel:I

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    .line 46
    return-object p0
.end method

.method private static final o0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Integer;)Lkotlin/Unit;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 16
    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$string;->view_download:I

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 34
    .line 35
    sget v1, Lcom/startshorts/androidplayer/R$string;->view_download_count:I

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p0
.end method

.method private static final p0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Ljava/lang/Long;)Lkotlin/Unit;
    .locals 4

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Luh/s;->e(J)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget v0, Lcom/startshorts/androidplayer/R$string;->store_remain:I

    .line 12
    .line 13
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "getString(...)"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroid/text/SpannableString;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    .line 32
    .line 33
    sget v2, Lcom/startshorts/androidplayer/R$color;->download_storage_remain:I

    .line 34
    .line 35
    invoke-virtual {p0, v2}, Landroid/content/Context;->getColor(I)I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-direct {v0, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const/16 v2, 0x21

    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-virtual {v1, v0, v3, p1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 57
    .line 58
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->m:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 64
    .line 65
    return-object p0
.end method

.method private static final r0(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;I)Lkotlin/Unit;
    .locals 9

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->T()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelect()Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    const/4 p1, 0x0

    .line 33
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setSelect(Z)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelectAble()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->setSelect(Z)V

    .line 45
    .line 46
    .line 47
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->Q()V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;->isSelectAble()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v2, p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->s:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    invoke-static {p1}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    new-instance v8, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    move-object v1, v8

    .line 72
    move-object v3, p2

    .line 73
    move-object v4, p1

    .line 74
    move-object v5, p0

    .line 75
    move v6, p3

    .line 76
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$initView$2$1$1$1;-><init>(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;Lcom/startshorts/androidplayer/bean/shorts/DownloadActivityListItem;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;ILrs/c;)V

    .line 77
    .line 78
    .line 79
    const/4 v7, 0x3

    .line 80
    const/4 p0, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    const/4 v5, 0x0

    .line 83
    move-object v3, v0

    .line 84
    move-object v6, v8

    .line 85
    move-object v8, p0

    .line 86
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 90
    .line 91
    return-object p0
.end method

.method private static final s0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->D()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Integer;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "tvViewDownload click :"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Luh/s;->b(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-nez p1, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_1

    .line 48
    .line 49
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity;->v:Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$a;

    .line 50
    .line 51
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadManageActivity$a;->a(Landroid/content/Context;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 56
    .line 57
    if-eqz p1, :cond_2

    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->s:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 60
    .line 61
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->getResolutionValue()I

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    invoke-virtual {p1, v0, p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->R(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;I)V

    .line 68
    .line 69
    .line 70
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    return-object p0
.end method

.method private static final t0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->E()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-eqz p1, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 31
    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->P()V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 39
    .line 40
    if-eqz p0, :cond_2

    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->W()V

    .line 43
    .line 44
    .line 45
    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 46
    .line 47
    return-object p0
.end method

.method private static final u0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Landroid/view/View;)Lkotlin/Unit;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;

    .line 7
    .line 8
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;-><init>()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->w:Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->R(Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Luh/n;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Luh/n;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/ClarityChooseDialog;->V(Lkotlin/jvm/functions/Function1;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    const-string v0, "getSupportFragmentManager(...)"

    .line 31
    .line 32
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->v(Landroidx/fragment/app/FragmentManager;)Z

    .line 36
    .line 37
    .line 38
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final v0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;Luh/d;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "solution"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Luh/d;->b()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->create(I)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->i0()V

    .line 19
    .line 20
    .line 21
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    .line 23
    return-object p0
.end method

.method private final w0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->U()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->F(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final x0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 13
    .line 14
    return-object p0
.end method


# virtual methods
.method public final handleDownloadStateEvent(Lcom/startshorts/androidplayer/ui/activity/download/b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/download/b;
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
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/activity/download/b$b;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public o()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_download_choose:I

    .line 2
    .line 3
    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Led/a;->a:Led/a;

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p1, p0, v0}, Led/a;->b(Landroid/app/Activity;Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "episode"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const-class v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    invoke-static {p1, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object p1, v0

    .line 33
    :goto_0
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;->H(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 45
    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    new-instance v7, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCheckedShortPlayName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getRowDramaCover()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v6

    .line 70
    move-object v1, v7

    .line 71
    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iput-object v7, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->s:Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 75
    .line 76
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 77
    .line 78
    if-nez p1, :cond_2

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    :cond_2
    sget-object p1, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;->Companion:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;

    .line 84
    .line 85
    const/4 v1, 0x0

    .line 86
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/bean/shorts/PlayResolution$Companion;->create(I)Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->v:Lcom/startshorts/androidplayer/bean/shorts/PlayResolution;

    .line 91
    .line 92
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->w:Ljava/util/List;

    .line 93
    .line 94
    sget-object v2, Lpf/k;->a:Lpf/k;

    .line 95
    .line 96
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 97
    .line 98
    const/4 v4, 0x2

    .line 99
    invoke-static {v2, v3, v1, v4, v0}, Lpf/k;->m(Lpf/k;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZILjava/lang/Object;)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Ljava/util/Collection;

    .line 104
    .line 105
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 113
    .line 114
    iget-object v0, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->e:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    const-string p1, "llClarity"

    .line 117
    .line 118
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    new-instance v3, Luh/e;

    .line 122
    .line 123
    invoke-direct {v3, p0}, Luh/e;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 124
    .line 125
    .line 126
    const/4 v4, 0x1

    .line 127
    const/4 v5, 0x0

    .line 128
    const-wide/16 v1, 0x0

    .line 129
    .line 130
    invoke-static/range {v0 .. v5}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->l0()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->q0()V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->i0()V

    .line 140
    .line 141
    .line 142
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->k0()V

    .line 143
    .line 144
    .line 145
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->V()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/activity/base/PageStateActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 9
    .line 10
    new-instance v3, Landroid/os/Bundle;

    .line 11
    .line 12
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "0"

    .line 22
    .line 23
    :cond_0
    const-string v2, "from"

    .line 24
    .line 25
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    const/4 v6, 0x4

    .line 31
    const/4 v7, 0x0

    .line 32
    const-string v2, "download_show"

    .line 33
    .line 34
    const-wide/16 v4, 0x0

    .line 35
    .line 36
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public q()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final q0()V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->j:Landroid/view/View;

    .line 8
    .line 9
    const-string v1, "toolbarView"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v0, v1}, Ljk/b0;->g(Landroid/view/View;I)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->f:Landroid/widget/ImageView;

    .line 30
    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$b;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->r:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCheckedShortPlayName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object v1, v2

    .line 58
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->j0()Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-direct {v0, p0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;-><init>(Landroidx/lifecycle/LifecycleOwner;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseViewModel;)V

    .line 68
    .line 69
    .line 70
    new-instance v1, Luh/g;

    .line 71
    .line 72
    invoke-direct {v1, v0, p0}, Luh/g;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;->X(Lkotlin/jvm/functions/Function2;)V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 85
    .line 86
    iget-object v3, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->n:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 87
    .line 88
    const-string v0, "tvViewDownload"

    .line 89
    .line 90
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    new-instance v6, Luh/h;

    .line 94
    .line 95
    invoke-direct {v6, p0}, Luh/h;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 96
    .line 97
    .line 98
    const/4 v7, 0x1

    .line 99
    const/4 v8, 0x0

    .line 100
    const-wide/16 v4, 0x0

    .line 101
    .line 102
    invoke-static/range {v3 .. v8}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 110
    .line 111
    iget-object v3, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 112
    .line 113
    const-string v0, "recyclerView"

    .line 114
    .line 115
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    const/16 v8, 0xe

    .line 119
    .line 120
    const/4 v9, 0x0

    .line 121
    const/4 v4, 0x5

    .line 122
    const/4 v5, 0x0

    .line 123
    const/4 v6, 0x0

    .line 124
    const/4 v7, 0x0

    .line 125
    invoke-static/range {v3 .. v9}, Lo1/b;->c(Landroidx/recyclerview/widget/RecyclerView;IIZZILjava/lang/Object;)Landroidx/recyclerview/widget/RecyclerView;

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 133
    .line 134
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 135
    .line 136
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 144
    .line 145
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 146
    .line 147
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;->t:Lcom/startshorts/androidplayer/ui/activity/download/adapter/DownloadChooseListAdapter;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;

    .line 157
    .line 158
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ActivityDownloadChooseBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 159
    .line 160
    const-string v0, "tvSelectAll"

    .line 161
    .line 162
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v4, Luh/i;

    .line 166
    .line 167
    invoke-direct {v4, p0}, Luh/i;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadChooseActivity;)V

    .line 168
    .line 169
    .line 170
    const/4 v5, 0x1

    .line 171
    const/4 v6, 0x0

    .line 172
    const-wide/16 v2, 0x0

    .line 173
    .line 174
    invoke-static/range {v1 .. v6}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->f0()V

    .line 180
    .line 181
    .line 182
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "DownloadChooseActivity"

    .line 2
    .line 3
    return-object v0
.end method
