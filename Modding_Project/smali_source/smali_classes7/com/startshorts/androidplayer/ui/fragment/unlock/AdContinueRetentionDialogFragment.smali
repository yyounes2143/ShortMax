.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;
.source "AdContinueRetentionDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private m:I

.field private n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final p:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->s:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->m:I

    .line 6
    .line 7
    new-instance v0, Lzi/d;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lzi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->p:Lms/i;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic B(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->M(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->q:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->m:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->p:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final J(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final L()V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v1, "ad_active"

    .line 10
    .line 11
    const-string v3, "continuous_ad_retention_pop"

    .line 12
    .line 13
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "type"

    .line 17
    .line 18
    const-string v3, "1"

    .line 19
    .line 20
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    const/4 v5, 0x4

    .line 26
    const/4 v6, 0x0

    .line 27
    const-string v1, "watch_ad_click"

    .line 28
    .line 29
    const-wide/16 v3, 0x0

    .line 30
    .line 31
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    sget-object v7, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 35
    .line 36
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->o:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    iget-object v11, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 43
    .line 44
    new-instance v12, Lzi/e;

    .line 45
    .line 46
    invoke-direct {v12, p0}, Lzi/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)V

    .line 47
    .line 48
    .line 49
    const-string v10, "continuous_ad_retention_pop"

    .line 50
    .line 51
    invoke-virtual/range {v7 .. v12}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final M(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;Z)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->A(F)V

    .line 11
    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->x()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 23
    .line 24
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    const-string v2, "continuous_ad_retention_pop"

    .line 49
    .line 50
    invoke-direct {v0, p0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 57
    .line 58
    return-object p0
.end method

.method private final N()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;->l:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->ad_continue_retention_dialog_fragment_unlocked_episode:I

    .line 10
    .line 11
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->m:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    sget v1, Lcom/startshorts/androidplayer/R$string;->ad_continue_retention_dialog_fragment_locked_episode:I

    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 39
    .line 40
    if-eqz v2, :cond_0

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const/4 v2, 0x0

    .line 52
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 68
    .line 69
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 70
    .line 71
    invoke-virtual {v2, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v7, 0x4

    .line 76
    const/4 v8, 0x0

    .line 77
    const-string v3, "continuous_ad_retention_pop_show"

    .line 78
    .line 79
    const-wide/16 v5, 0x0

    .line 80
    .line 81
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method


# virtual methods
.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_ad_continue_retention:I

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

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 7
    .param p1    # Landroid/content/DialogInterface;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const/4 v5, 0x4

    .line 21
    const/4 v6, 0x0

    .line 22
    const-string v1, "continuous_ad_retention_pop_close"

    .line 23
    .line 24
    const-wide/16 v3, 0x0

    .line 25
    .line 26
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->q:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;

    .line 30
    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->m:I

    .line 34
    .line 35
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->r:I

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    if-le v1, v2, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v2, 0x0

    .line 42
    :goto_0
    invoke-interface {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$b;->a(IZ)V

    .line 43
    .line 44
    .line 45
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->N()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;

    .line 35
    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;->a:Landroid/widget/ImageView;

    .line 37
    .line 38
    new-instance p2, Lzi/c;

    .line 39
    .line 40
    invoke-direct {p2, p0}, Lzi/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;

    .line 51
    .line 52
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueRetentionBinding;->m:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 53
    .line 54
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$c;

    .line 55
    .line 56
    invoke-direct {p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AdContinueRetentionDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
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
    const-string v1, "receive EpisodeListUnlockedEvent -> unlockType("

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUnlockType()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ") userRecharged("

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getUserRecharged()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, ") episodeId("

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/16 v1, 0x29

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getFirstUnlockedEpisodeId()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v0, v1, :cond_3

    .line 72
    .line 73
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->r:I

    .line 74
    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    .line 77
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->r:I

    .line 78
    .line 79
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 80
    .line 81
    if-eqz v0, :cond_0

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    goto :goto_0

    .line 88
    :cond_0
    const/4 v0, -0x1

    .line 89
    :goto_0
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->m:I

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_2

    .line 96
    .line 97
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;

    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getCanWatchAd()Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isUnlockByOnlyCoins()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;->a(ZZ)Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-nez v0, :cond_1

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 119
    .line 120
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 121
    .line 122
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const/4 v6, 0x4

    .line 127
    const/4 v7, 0x0

    .line 128
    const-string v2, "continuous_ad_retention_pop_close"

    .line 129
    .line 130
    const-wide/16 v4, 0x0

    .line 131
    .line 132
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 140
    .line 141
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->N()V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_2
    :goto_1
    iget p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->r:I

    .line 146
    .line 147
    add-int/lit8 p1, p1, 0x1

    .line 148
    .line 149
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueRetentionDialogFragment;->r:I

    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 152
    .line 153
    .line 154
    :cond_3
    :goto_2
    return-void
.end method
