.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;
.source "ImmersionIntroductionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final w:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F

.field private r:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final v:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->w:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, 0x42800000    # 64.0f

    .line 5
    .line 6
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->o:I

    .line 11
    .line 12
    const/high16 v0, 0x42ac0000    # 86.0f

    .line 13
    .line 14
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->p:I

    .line 19
    .line 20
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 21
    .line 22
    invoke-virtual {v0}, Lfk/z;->m()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->q:F

    .line 28
    .line 29
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/z;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/z;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V

    .line 32
    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->v:Lms/i;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic O(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic P(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->Y(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic R(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic S(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic T(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->r:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic V(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->t:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$b;

    .line 2
    .line 3
    return-void
.end method

.method private final W()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->v:Lms/i;

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

.method private final X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->k:Landroidx/constraintlayout/widget/Group;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->c0()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->h0()V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->i0()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->e0()V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->f0()V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->g0()V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->d0()V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->b0()V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private static final Y(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;
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
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/a0;

    .line 19
    .line 20
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/a0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$c;

    .line 24
    .line 25
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$c;-><init>(Lkotlin/jvm/functions/Function1;)V

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
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/immersion/b0;

    .line 36
    .line 37
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/b0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V

    .line 38
    .line 39
    .line 40
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$c;

    .line 41
    .line 42
    invoke-direct {v3, v2}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$c;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 46
    .line 47
    .line 48
    return-object v0
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/bean/api/ApiErrorState;)Lkotlin/Unit;
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

.method private static final a0(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;Lcom/startshorts/androidplayer/viewmodel/immersion/d;)Lkotlin/Unit;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->X()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

    .line 17
    .line 18
    .line 19
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method

.method private final b0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 12
    .line 13
    sget-object v2, Lfk/w;->a:Lfk/w;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCollectNum()J

    .line 16
    .line 17
    .line 18
    move-result-wide v3

    .line 19
    invoke-virtual {v2, v3, v4}, Lfk/w;->a(J)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->b:Landroid/widget/ImageView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isCollected()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_collected:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_uncollect:I

    .line 44
    .line 45
    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 53
    .line 54
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->a:Landroid/view/View;

    .line 55
    .line 56
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$d;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    return-void
.end method

.method private final c0()V
    .locals 5

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->d:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v3, 0x0

    .line 26
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v3, Lid/c;->a:Lid/c;

    .line 30
    .line 31
    invoke-virtual {v3}, Lid/c;->b()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Lid/c;->a()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 43
    .line 44
    .line 45
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->o:I

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 48
    .line 49
    .line 50
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->p:I

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 53
    .line 54
    .line 55
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 56
    .line 57
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 58
    .line 59
    .line 60
    const/4 v3, 0x1

    .line 61
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 62
    .line 63
    .line 64
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->q:F

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 67
    .line 68
    .line 69
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private final d0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    :cond_0
    const/4 v2, 0x4

    .line 22
    const/4 v3, 0x6

    .line 23
    invoke-virtual {v1, v2, v3, v0, v2}, Lcom/startshorts/androidplayer/ui/view/base/FoldableTextArea;->e(IILjava/lang/String;I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private final e0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;->getLabelResponseList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    move-object v1, v0

    .line 12
    check-cast v1, Ljava/util/Collection;

    .line 13
    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v2, " \u00b7 "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 64
    .line 65
    const-string v2, "labelViewstub"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    const-string v2, "toString(...)"

    .line 86
    .line 87
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x3

    .line 91
    invoke-static {v1, v2}, Lkotlin/text/StringsKt;->B1(Ljava/lang/String;I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_2
    return-void
.end method

.method private final f0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->h:Landroid/view/View;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final g0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->m:Landroid/view/View;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$f;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final h0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->p:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final i0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionIntroductionBinding;->r:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->episode_list_dialog_fragment_shorts_episode_status:I

    .line 10
    .line 11
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpdateEpisode()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v2, v3

    .line 22
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->u:Lcom/startshorts/androidplayer/bean/shorts/ShortsDetail;

    .line 27
    .line 28
    if-eqz v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    :cond_1
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->W()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;

    .line 14
    .line 15
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$j;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 19
    .line 20
    .line 21
    :cond_0
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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_introduction:I

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
    .locals 7
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const-string p1, "dismiss for invalid arguments -> mEpisode is null"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->j(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 23
    .line 24
    new-instance v2, Landroid/os/Bundle;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string p1, "scene"

    .line 30
    .line 31
    const-string p2, "immersion"

    .line 32
    .line 33
    invoke-virtual {v2, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    const/4 v6, 0x0

    .line 40
    const-string v1, "introduction_pop_show"

    .line 41
    .line 42
    const-wide/16 v3, 0x0

    .line 43
    .line 44
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->W()Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;

    .line 52
    .line 53
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->r:Ljava/lang/String;

    .line 54
    .line 55
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/c$m;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/ImmersionViewModel;->e0(Lcom/startshorts/androidplayer/viewmodel/immersion/c;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->J()V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionIntroductionDialog"

    .line 2
    .line 3
    return-object v0
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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayId()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;->getShortsId()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshShortsCollectEvent;->getCollect()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setCollected()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->s:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->cancelCollected()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionIntroductionDialog;->b0()V

    .line 62
    .line 63
    .line 64
    :cond_2
    return-void
.end method
