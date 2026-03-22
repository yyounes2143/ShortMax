.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "AdContinueDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final l:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Z

.field private n:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzi/a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lzi/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->l:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->P(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->l:Lms/i;

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

.method private final J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;->b:Landroid/widget/ImageView;

    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$c;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 29
    .line 30
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$d;

    .line 31
    .line 32
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;

    .line 43
    .line 44
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 45
    .line 46
    sget v2, Lcom/startshorts/androidplayer/R$string;->ad_continue_dialog_fragment_content:I

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p0, v2, v0}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdContinueBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 74
    .line 75
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$e;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
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

.method private final O()V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    const-string v3, "continuous_ad_pop"

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
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->j:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    iget-object v11, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 43
    .line 44
    new-instance v12, Lzi/b;

    .line 45
    .line 46
    invoke-direct {v12, p0}, Lzi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;)V

    .line 47
    .line 48
    .line 49
    const-string v10, "continuous_ad_pop"

    .line 50
    .line 51
    invoke-virtual/range {v7 .. v12}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final P(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;Z)Lkotlin/Unit;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->E(F)V

    .line 5
    .line 6
    .line 7
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->x()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->P()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const-string v2, "continuous_ad_pop"

    .line 29
    .line 30
    invoke-direct {v0, p0, v1, v2}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p0
.end method


# virtual methods
.method public final L(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final M(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final N(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public j()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public k()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_ad_continue:I

    .line 2
    .line 3
    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AdContinueDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 9
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
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->m:Z

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;

    .line 19
    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;->b()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->n:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/manager/immersion/feature/w;->e:Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getCanWatchAd()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;->getNextDrama()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isUnlockByOnlyCoins()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/feature/w$a;->a(ZZ)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_2

    .line 55
    .line 56
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;

    .line 57
    .line 58
    if-eqz v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    invoke-interface {v1, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment$b;->a(ILcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V

    .line 65
    .line 66
    .line 67
    :cond_2
    :goto_0
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 68
    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 70
    .line 71
    invoke-virtual {v2, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    const/4 v7, 0x4

    .line 76
    const/4 v8, 0x0

    .line 77
    const-string v3, "continuous_ad_pop_close"

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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 22
    .line 23
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 24
    .line 25
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_1

    .line 36
    .line 37
    const/4 p2, 0x0

    .line 38
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 39
    .line 40
    .line 41
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->J()V

    .line 42
    .line 43
    .line 44
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const/4 v5, 0x4

    .line 53
    const/4 v6, 0x0

    .line 54
    const-string v1, "continuous_ad_pop_show"

    .line 55
    .line 56
    const-wide/16 v3, 0x0

    .line 57
    .line 58
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public p()I
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lfk/z;->a:Lfk/z;

    .line 8
    .line 9
    invoke-virtual {v1}, Lfk/z;->p()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    mul-int/lit8 v1, v1, 0x2

    .line 14
    .line 15
    sub-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final receiveEpisodeListUnlockedEvent(Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;)V
    .locals 2
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
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->q(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->i:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 60
    .line 61
    if-eqz v0, :cond_0

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
    if-ne v0, v1, :cond_0

    .line 72
    .line 73
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->m:Z

    .line 75
    .line 76
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdContinueDialogFragment;->n:Lcom/startshorts/androidplayer/bean/eventbus/EpisodeListUnlockedEvent;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 79
    .line 80
    .line 81
    :cond_0
    return-void
.end method
