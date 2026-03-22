.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "ImmersionEpisodeListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionEpisodeListDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionEpisodeListDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,365:1\n360#2,7:366\n*S KotlinDebug\n*F\n+ 1 ImmersionEpisodeListDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog\n*L\n289#1:366,7\n*E\n"
    }
.end annotation


# static fields
.field public static final A:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F

.field private final r:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final s:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:I

.field private v:I

.field private w:Lcom/startshorts/androidplayer/ui/view/base/TabView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/base/TabView<",
            "Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private x:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->A:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    const/high16 v0, 0x42800000    # 64.0f

    .line 2
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->o:I

    const/high16 v0, 0x42ac0000    # 86.0f

    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->p:I

    .line 4
    sget-object v0, Lfk/z;->a:Lfk/z;

    invoke-virtual {v0}, Lfk/z;->m()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->q:F

    .line 5
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/s;

    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/s;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object v0

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->r:Lms/i;

    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->s:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->u:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$b;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    const/high16 v0, 0x42800000    # 64.0f

    .line 9
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->o:I

    const/high16 v0, 0x42ac0000    # 86.0f

    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    move-result v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->p:I

    .line 11
    sget-object v0, Lfk/z;->a:Lfk/z;

    invoke-virtual {v0}, Lfk/z;->m()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->q:F

    .line 12
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/s;

    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/s;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object v0

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->r:Lms/i;

    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;

    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->s:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;

    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->t:Ljava/lang/String;

    .line 15
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->u:I

    .line 16
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->z:Z

    .line 17
    invoke-virtual {p0, p4}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->u(Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment$b;)V

    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->b0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)Lcom/startshorts/androidplayer/ui/view/base/TabView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->w:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)Landroidx/viewpager2/widget/ViewPager2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->x:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->v:I

    .line 2
    .line 3
    return-void
.end method

.method private final U(I)V
    .locals 2

    .line 1
    rem-int/lit8 v0, p1, 0x19

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    div-int/lit8 p1, p1, 0x19

    .line 6
    .line 7
    add-int/lit8 p1, p1, -0x1

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    div-int/lit8 p1, p1, 0x19

    .line 11
    .line 12
    :goto_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->v:I

    .line 13
    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->y:I

    .line 17
    .line 18
    if-ge p1, v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->x:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private final V()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->r:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final W(Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;->getHasTrailer()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->z:Z

    .line 12
    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->c0(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->e0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->f0(II)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;->getLabelResponseList()Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->d0(Ljava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    goto :goto_0

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    :goto_0
    if-lez v0, :cond_7

    .line 61
    .line 62
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->z:Z

    .line 63
    .line 64
    if-eqz v1, :cond_2

    .line 65
    .line 66
    add-int/lit8 v1, v0, 0x1

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    move v1, v0

    .line 70
    :goto_1
    rem-int/lit8 v2, v1, 0x19

    .line 71
    .line 72
    div-int/lit8 v1, v1, 0x19

    .line 73
    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    :goto_2
    iput v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->y:I

    .line 80
    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    instance-of v2, v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 86
    .line 87
    if-eqz v2, :cond_4

    .line 88
    .line 89
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_4
    const/4 v1, 0x0

    .line 93
    :goto_3
    const/4 v2, -0x1

    .line 94
    if-eqz v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->C5()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    goto :goto_4

    .line 101
    :cond_5
    move v1, v2

    .line 102
    :goto_4
    if-ne v1, v2, :cond_6

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 105
    .line 106
    .line 107
    move-result v1

    .line 108
    :cond_6
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->y:I

    .line 109
    .line 110
    invoke-direct {p0, v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->g0(III)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->y:I

    .line 118
    .line 119
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->z:Z

    .line 120
    .line 121
    invoke-direct {p0, p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->Y(IIZ)V

    .line 122
    .line 123
    .line 124
    :cond_7
    return-void
.end method

.method private final X(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->x:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;->h:Landroidx/databinding/ViewStubProxy;

    .line 13
    .line 14
    const-string v2, "viewPagerViewstub"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v0, Landroidx/viewpager2/widget/ViewPager2;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->x:Landroidx/viewpager2/widget/ViewPager2;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->x:Landroidx/viewpager2/widget/ViewPager2;

    .line 40
    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    const-string v3, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 53
    .line 54
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->w:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 55
    .line 56
    if-eqz v3, :cond_3

    .line 57
    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    const/4 v3, -0x1

    .line 64
    :goto_2
    iput v3, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToBottom:I

    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, p1}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x2

    .line 73
    invoke-static {v0, v2}, Lkd/d;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->s:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 79
    .line 80
    .line 81
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->v:I

    .line 82
    .line 83
    if-ltz v2, :cond_4

    .line 84
    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-ge v2, p1, :cond_4

    .line 90
    .line 91
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->v:I

    .line 92
    .line 93
    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 94
    .line 95
    .line 96
    :cond_4
    return-void
.end method

.method private final Y(IIZ)V
    .locals 4

    .line 1
    new-instance p3, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    if-gt v0, p2, :cond_0

    .line 8
    .line 9
    move v1, v0

    .line 10
    :goto_0
    const-class v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;

    .line 11
    .line 12
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    if-eq v1, p2, :cond_0

    .line 16
    .line 17
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    if-gt v0, p2, :cond_1

    .line 26
    .line 27
    :goto_1
    int-to-long v2, v0

    .line 28
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    if-eq v0, p2, :cond_1

    .line 36
    .line 37
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;

    .line 41
    .line 42
    invoke-direct {p2, p0, p3, p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$loadFragmentAdapter$fragmentStateAdapter$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Ljava/util/List;ILjava/util/List;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->X(Landroidx/viewpager2/adapter/FragmentStateAdapter;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
    .locals 4

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class v1, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->o()Landroidx/lifecycle/MutableLiveData;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/t;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/t;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$b;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/u;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/u;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$b;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$b;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->M()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->F()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->N(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->H()V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method

.method private static final b0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/d;)Lkotlin/Unit;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/immersion/d$h;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/immersion/d$h;->a()Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->W(Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

    .line 15
    .line 16
    .line 17
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p0
.end method

.method private final c0(Ljava/lang/String;)V
    .locals 4

    .line 1
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object p1, Lid/c;->a:Lid/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lid/c;->b()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lid/c;->a()I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 33
    .line 34
    .line 35
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->o:I

    .line 36
    .line 37
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 38
    .line 39
    .line 40
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->p:I

    .line 41
    .line 42
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 43
    .line 44
    .line 45
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 46
    .line 47
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 48
    .line 49
    .line 50
    const/4 p1, 0x1

    .line 51
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 52
    .line 53
    .line 54
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->q:F

    .line 55
    .line 56
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 60
    .line 61
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private final d0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;",
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, " \u00b7 "

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;->b:Landroidx/databinding/ViewStubProxy;

    .line 54
    .line 55
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    sget v1, Lcom/startshorts/androidplayer/R$id;->label_tv:I

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 74
    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const-string v1, "toString(...)"

    .line 82
    .line 83
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v1, 0x3

    .line 87
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->B1(Ljava/lang/String;I)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :cond_2
    :goto_1
    return-void
.end method

.method private final e0(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private final f0(II)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->episode_list_dialog_fragment_shorts_episode_status:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private final g0(III)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->w:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionEpisodeListBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 13
    .line 14
    const-string v2, "tabViewViewstub"

    .line 15
    .line 16
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v2, v0, Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->w:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$showTabView$itemDecoration$1;

    .line 40
    .line 41
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$showTabView$itemDecoration$1;-><init>()V

    .line 42
    .line 43
    .line 44
    new-instance v2, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    move v3, v1

    .line 50
    :goto_2
    const/4 v4, 0x1

    .line 51
    if-ge v3, p3, :cond_a

    .line 52
    .line 53
    if-nez v3, :cond_3

    .line 54
    .line 55
    move v5, v4

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    iget-boolean v5, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->z:Z

    .line 58
    .line 59
    if-eqz v5, :cond_4

    .line 60
    .line 61
    mul-int/lit8 v5, v3, 0x19

    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_4
    mul-int/lit8 v5, v3, 0x19

    .line 65
    .line 66
    add-int/2addr v5, v4

    .line 67
    :goto_3
    iget-boolean v6, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->z:Z

    .line 68
    .line 69
    if-eqz v6, :cond_5

    .line 70
    .line 71
    add-int/lit8 v6, v3, 0x1

    .line 72
    .line 73
    mul-int/lit8 v6, v6, 0x19

    .line 74
    .line 75
    sub-int/2addr v6, v4

    .line 76
    goto :goto_4

    .line 77
    :cond_5
    add-int/lit8 v6, v3, 0x1

    .line 78
    .line 79
    mul-int/lit8 v6, v6, 0x19

    .line 80
    .line 81
    :goto_4
    if-le v6, p1, :cond_6

    .line 82
    .line 83
    move v6, p1

    .line 84
    :cond_6
    if-ne v5, v6, :cond_8

    .line 85
    .line 86
    new-instance v7, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;

    .line 87
    .line 88
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-direct {v7, v8}, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    if-gt v5, p2, :cond_7

    .line 96
    .line 97
    if-gt p2, v6, :cond_7

    .line 98
    .line 99
    goto :goto_5

    .line 100
    :cond_7
    move v4, v1

    .line 101
    :goto_5
    invoke-virtual {v7, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 102
    .line 103
    .line 104
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    goto :goto_7

    .line 108
    :cond_8
    new-instance v7, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;

    .line 109
    .line 110
    new-instance v8, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const/16 v9, 0x2d

    .line 119
    .line 120
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v8

    .line 130
    invoke-direct {v7, v8}, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    if-gt v5, p2, :cond_9

    .line 134
    .line 135
    if-gt p2, v6, :cond_9

    .line 136
    .line 137
    goto :goto_6

    .line 138
    :cond_9
    move v4, v1

    .line 139
    :goto_6
    invoke-virtual {v7, v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 140
    .line 141
    .line 142
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    .line 144
    .line 145
    :goto_7
    add-int/lit8 v3, v3, 0x1

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    move p2, v1

    .line 153
    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result p3

    .line 157
    if-eqz p3, :cond_c

    .line 158
    .line 159
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p3

    .line 163
    check-cast p3, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;

    .line 164
    .line 165
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 166
    .line 167
    .line 168
    move-result p3

    .line 169
    if-eqz p3, :cond_b

    .line 170
    .line 171
    goto :goto_9

    .line 172
    :cond_b
    add-int/lit8 p2, p2, 0x1

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_c
    const/4 p2, -0x1

    .line 176
    :goto_9
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->v:I

    .line 177
    .line 178
    new-instance p1, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;

    .line 179
    .line 180
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;-><init>()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v4}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->K(Z)V

    .line 184
    .line 185
    .line 186
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$c;

    .line 187
    .line 188
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->J(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;)V

    .line 192
    .line 193
    .line 194
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->w:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 195
    .line 196
    if-eqz p2, :cond_d

    .line 197
    .line 198
    new-instance p3, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;

    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const-string v4, "requireContext(...)"

    .line 205
    .line 206
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p3, v3, v1, v1}, Lcom/startshorts/androidplayer/ui/view/base/CatchExceptionLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p2, v2, p1, v0, p3}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 213
    .line 214
    .line 215
    :cond_d
    return-void
.end method


# virtual methods
.method public J()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->V()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;

    .line 6
    .line 7
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->u:I

    .line 8
    .line 9
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public l()F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_episode_list:I

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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->u:I

    .line 10
    .line 11
    const/4 p2, -0x1

    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    const-string p1, "dismiss for invalid arguments -> mShortsId == -1"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->j(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->V()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->t:Ljava/lang/String;

    .line 30
    .line 31
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->J()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionEpisodeListDialog"

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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->u:I

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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodePlayingEvent;->getEpisodeNum()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->U(I)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->x:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->s:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$mOnPageChangeCallback$1;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
