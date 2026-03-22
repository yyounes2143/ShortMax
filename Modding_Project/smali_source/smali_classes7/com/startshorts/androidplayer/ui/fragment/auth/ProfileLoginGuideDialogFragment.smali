.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;
.source "ProfileLoginGuideDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lms/c;
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final m:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final p:Z

.field private q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->r:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$a;

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->m:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$d;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$d;

    .line 17
    .line 18
    new-instance v0, Lni/r;

    .line 19
    .line 20
    invoke-direct {v0}, Lni/r;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 28
    .line 29
    sget-object v0, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->a:Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/campaign/CampaignRepo;->x()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->p:Z

    .line 36
    .line 37
    const-string v0, "porfile_windows"

    .line 38
    .line 39
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->q:Ljava/lang/String;

    .line 40
    .line 41
    return-void
.end method

.method public static synthetic B()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->J()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic C(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Lms/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->p:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const-string v0, "initAuthManager"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 16
    .line 17
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->q:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$b;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->s(Lke/b;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final H()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->login_activity_login_with:I

    .line 10
    .line 11
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->p:Z

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const-string v2, "Google"

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v2, "Facebook"

    .line 19
    .line 20
    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->c:Landroid/widget/ImageView;

    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->p:Z

    .line 40
    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_login_google:I

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_login_facebook:I

    .line 47
    .line 48
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->b:Landroid/view/View;

    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->p:Z

    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_login_method_google:I

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_login_method_facebook:I

    .line 67
    .line 68
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 69
    .line 70
    .line 71
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;

    .line 72
    .line 73
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private final I()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "policyTv"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v0, Lcom/startshorts/androidplayer/R$string;->login_activity_policy:I

    .line 15
    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 17
    .line 18
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 23
    .line 24
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v0, "getString(...)"

    .line 37
    .line 38
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    sget v0, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 48
    .line 49
    invoke-virtual {p0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    filled-new-array {v0, v3}, [Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    sget-object v0, Lyf/a;->a:Lyf/a;

    .line 58
    .line 59
    invoke-virtual {v0}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const v4, 0x106000b

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 71
    .line 72
    .line 73
    move-result v4

    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->m:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$e;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment$d;

    .line 77
    .line 78
    const/4 v7, 0x2

    .line 79
    new-array v7, v7, [Lyd/d;

    .line 80
    .line 81
    const/4 v8, 0x0

    .line 82
    aput-object v0, v7, v8

    .line 83
    .line 84
    const/4 v0, 0x1

    .line 85
    aput-object v6, v7, v0

    .line 86
    .line 87
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v8

    .line 91
    const/16 v9, 0x30

    .line 92
    .line 93
    const/4 v10, 0x0

    .line 94
    const/4 v6, 0x0

    .line 95
    const/4 v7, 0x0

    .line 96
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method

.method private static final J()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final K()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->e:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "loginRewardCoinViewstub"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final L()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->f:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "loginRewardIconViewstub"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final M()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuideBinding;->g:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    if-eqz v0, :cond_2

    .line 28
    .line 29
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_fragment_reward_tip2:I

    .line 30
    .line 31
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->p:Z

    .line 32
    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->g()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 43
    .line 44
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    :goto_1
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {p0, v1, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    .line 58
    .line 59
    :cond_2
    return-void
.end method

.method private final N()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->L()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->K()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->M()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_profile_login_guide:I

    .line 2
    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "requireActivity(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/auth/a;->l(Landroid/app/Activity;IILandroid/content/Intent;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
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
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->J0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 13
    .line 14
    .line 15
    :cond_0
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->H()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->N()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->I()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ProfileLoginGuideDialogFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 5
    .line 6
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuideDialogFragment;->o:Lms/i;

    .line 13
    .line 14
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/auth/a;->n()V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method
