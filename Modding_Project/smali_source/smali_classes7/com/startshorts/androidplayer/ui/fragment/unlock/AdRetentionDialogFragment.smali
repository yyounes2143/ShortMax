.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "AdRetentionDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final n:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Z

.field private j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$a;

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
    new-instance v0, Lzi/i;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lzi/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->m:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->P()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->m:Lms/i;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;->a:Landroid/widget/ImageView;

    .line 13
    .line 14
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$b;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)V

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
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getCanWatchAdNum()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    sub-int/2addr v2, v3

    .line 39
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    const/16 v3, 0x2f

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;->getTotalWatchAdNum()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 85
    .line 86
    sget v1, Lcom/startshorts/androidplayer/R$string;->ad_retention_dialog_fragment_unlocked_today:I

    .line 87
    .line 88
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    const-string v2, "getString(...)"

    .line 93
    .line 94
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;

    .line 113
    .line 114
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAdRetentionBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 115
    .line 116
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$c;

    .line 117
    .line 118
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;
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

.method private final P()V
    .locals 14

    .line 1
    sget-object v7, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "ad_retention_click"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    move-object v0, v7

    .line 11
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 15
    .line 16
    invoke-virtual {v7, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    const-string v0, "ad_active"

    .line 21
    .line 22
    const-string v1, "ad_retention"

    .line 23
    .line 24
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "type"

    .line 28
    .line 29
    const-string v1, "1"

    .line 30
    .line 31
    invoke-virtual {v2, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    const/4 v5, 0x4

    .line 37
    const-string v1, "watch_ad_click"

    .line 38
    .line 39
    move-object v0, v7

    .line 40
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object v8, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 44
    .line 45
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->l:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    iget-object v12, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 52
    .line 53
    new-instance v13, Lzi/j;

    .line 54
    .line 55
    invoke-direct {v13, p0}, Lzi/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;)V

    .line 56
    .line 57
    .line 58
    const-string v11, "ad_retention"

    .line 59
    .line 60
    invoke-virtual/range {v8 .. v13}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->p0(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private static final Q(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;Z)Lkotlin/Unit;
    .locals 7

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->x()V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->E(F)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v6, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->i:Z

    .line 23
    .line 24
    const/4 v4, 0x4

    .line 25
    const/4 v5, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    move-object v0, v6

    .line 28
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$l;-><init>(Landroid/content/Context;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v6}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 35
    .line 36
    return-object p0
.end method


# virtual methods
.method public final L(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->i:Z

    .line 2
    .line 3
    return-void
.end method

.method public final M(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    return-void
.end method

.method public final N(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->l:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final O(Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_ad_retention:I

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
    const-string v0, "AdRetentionDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
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
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 10
    .line 11
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 12
    .line 13
    sget-object v0, Lud/a;->a:Lud/a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const/4 v6, 0x0

    .line 20
    const-string v2, "SubsExpansionDialog"

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 25
    .line 26
    .line 27
    const/4 v6, 0x6

    .line 28
    const/4 v7, 0x0

    .line 29
    const-string v2, "ad_retention_close"

    .line 30
    .line 31
    const-wide/16 v4, 0x0

    .line 32
    .line 33
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 34
    .line 35
    .line 36
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 10
    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 14
    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->I()Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 25
    .line 26
    invoke-direct {p2, v0}, Lcom/startshorts/androidplayer/viewmodel/immersion/e$d;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/immersion/UnlockViewModel;->j0(Lcom/startshorts/androidplayer/viewmodel/immersion/e;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    const/4 p2, 0x0

    .line 39
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->J()V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 46
    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 48
    .line 49
    sget-object p2, Lud/a;->a:Lud/a;

    .line 50
    .line 51
    invoke-virtual {p2}, Lud/a;->p()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    const/4 v5, 0x0

    .line 56
    const-string v1, "SubsExpansionDialog"

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    move-object v0, p1

    .line 60
    invoke-virtual/range {v0 .. v5}, Lcom/startshorts/androidplayer/manager/event/EventManager;->a1(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Z)V

    .line 61
    .line 62
    .line 63
    const/4 v5, 0x6

    .line 64
    const/4 v6, 0x0

    .line 65
    const-string v1, "ad_retention_show"

    .line 66
    .line 67
    const-wide/16 v3, 0x0

    .line 68
    .line 69
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string p2, "dismiss for invalid arguments -> mMethod("

    .line 79
    .line 80
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->j:Lcom/startshorts/androidplayer/bean/unlock/UnlockEpisodeAdMethod;

    .line 84
    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string p2, ") mEpisode("

    .line 89
    .line 90
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const/16 p2, 0x29

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->g(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 111
    .line 112
    .line 113
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdRetentionDialogFragment;->k:Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

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
    move-result p1

    .line 71
    if-ne v0, p1, :cond_0

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method
