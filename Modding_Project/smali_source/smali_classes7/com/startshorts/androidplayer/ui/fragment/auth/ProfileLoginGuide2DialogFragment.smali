.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;
.source "ProfileLoginGuide2DialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProfileLoginGuide2DialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,319:1\n15#2,9:320\n*S KotlinDebug\n*F\n+ 1 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment\n*L\n193#1:320,9\n*E\n"
    }
.end annotation


# static fields
.field public static final x:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final m:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$i;
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

.field private p:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private q:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private r:Z

.field private s:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private t:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private u:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private v:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final w:Landroidx/activity/result/ActivityResultLauncher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/activity/result/ActivityResultLauncher<",
            "Landroid/content/Intent;",
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
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->x:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->m:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;

    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$i;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$i;

    .line 17
    .line 18
    new-instance v0, Lni/p;

    .line 19
    .line 20
    invoke-direct {v0}, Lni/p;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

    .line 28
    .line 29
    const-string v0, ""

    .line 30
    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->q:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    .line 34
    .line 35
    invoke-direct {v0}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>()V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lni/q;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lni/q;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "registerForActivityResult(...)"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->w:Landroidx/activity/result/ActivityResultLauncher;

    .line 53
    .line 54
    return-void
.end method

.method public static synthetic B()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->X()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;Landroidx/activity/result/ActivityResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic D(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->v:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic H(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Landroidx/activity/result/ActivityResultLauncher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->w:Landroidx/activity/result/ActivityResultLauncher;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->N()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->U(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->W()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final N()V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    const/4 v5, 0x6

    .line 4
    const/4 v6, 0x0

    .line 5
    const-string v1, "login_guide_click"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

    .line 14
    .line 15
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v0, "initAuthManager"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->q(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

    .line 28
    .line 29
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->p(Ljava/lang/ref/WeakReference;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->q:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;->F(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$c;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->s(Lke/b;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private final O()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->e:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    const-string v1, "loginGetBonus"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->r:Z

    .line 21
    .line 22
    if-eqz v1, :cond_0

    .line 23
    .line 24
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->h()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-lez v2, :cond_1

    .line 39
    .line 40
    const-string v2, "0"

    .line 41
    .line 42
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    sget v2, Lcom/startshorts/androidplayer/R$id;->facebook_login_bonus:I

    .line 49
    .line 50
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Landroid/widget/TextView;

    .line 55
    .line 56
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 57
    .line 58
    sget v4, Lcom/startshorts/androidplayer/R$string;->login_get_bonus:I

    .line 59
    .line 60
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v3, v4, v1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 72
    .line 73
    .line 74
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$d;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->r:Z

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 97
    .line 98
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_login_method_google2:I

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 110
    .line 111
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 112
    .line 113
    sget v2, Lcom/startshorts/androidplayer/R$color;->t_b_83:I

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 130
    .line 131
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_login_method_facebook2:I

    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 141
    .line 142
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 143
    .line 144
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 145
    .line 146
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 147
    .line 148
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 153
    .line 154
    .line 155
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 160
    .line 161
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 162
    .line 163
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$e;

    .line 164
    .line 165
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method private final P()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$f;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final Q()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->R()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->O()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->P()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final R()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->r:Z

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 12
    .line 13
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$g;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->s:Landroid/view/View;

    .line 33
    .line 34
    if-nez v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->g:Landroidx/databinding/ViewStubProxy;

    .line 43
    .line 44
    const-string v1, "phoneLoginGetBonus"

    .line 45
    .line 46
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-static {v0}, Ljk/e0;->c(Landroidx/databinding/ViewStubProxy;)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->s:Landroid/view/View;

    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->s:Landroid/view/View;

    .line 56
    .line 57
    if-eqz v0, :cond_4

    .line 58
    .line 59
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->i()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-lez v2, :cond_2

    .line 70
    .line 71
    const-string v2, "0"

    .line 72
    .line 73
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    sget v2, Lcom/startshorts/androidplayer/R$id;->phone_login_bonus:I

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/TextView;

    .line 86
    .line 87
    if-eqz v2, :cond_1

    .line 88
    .line 89
    sget-object v3, Lfk/u;->a:Lfk/u;

    .line 90
    .line 91
    sget v4, Lcom/startshorts/androidplayer/R$string;->login_get_bonus:I

    .line 92
    .line 93
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v3, v4, v1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    invoke-static {v0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$h;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 127
    .line 128
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 129
    .line 130
    .line 131
    :cond_4
    :goto_0
    return-void
.end method

.method private final S()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->n()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentProfileLoginGuide2Binding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const-string v0, "policyTv"

    .line 10
    .line 11
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 15
    .line 16
    sget v2, Lcom/startshorts/androidplayer/R$string;->login_activity_policy:I

    .line 17
    .line 18
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 25
    .line 26
    invoke-virtual {v0, v4}, Lfk/u;->d(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    invoke-virtual {v0, v2, v3}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    sget v3, Lcom/startshorts/androidplayer/R$string;->settings_fragment_user_agreement:I

    .line 39
    .line 40
    invoke-virtual {v0, v3}, Lfk/u;->d(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget v4, Lcom/startshorts/androidplayer/R$string;->settings_fragment_privacy_policy:I

    .line 45
    .line 46
    invoke-virtual {v0, v4}, Lfk/u;->d(I)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    filled-new-array {v3, v4}, [Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    sget-object v4, Lyf/a;->a:Lyf/a;

    .line 55
    .line 56
    invoke-virtual {v4}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget v4, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 61
    .line 62
    invoke-virtual {v0, v4}, Lfk/u;->a(I)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->m:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$j;

    .line 67
    .line 68
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$i;

    .line 69
    .line 70
    const/4 v7, 0x2

    .line 71
    new-array v7, v7, [Lyd/d;

    .line 72
    .line 73
    const/4 v8, 0x0

    .line 74
    aput-object v0, v7, v8

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    aput-object v6, v7, v0

    .line 78
    .line 79
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    const/16 v9, 0x30

    .line 84
    .line 85
    const/4 v10, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    invoke-static/range {v1 .. v10}, Ljk/y;->l(Landroid/widget/TextView;Ljava/lang/String;[Ljava/lang/String;ILandroid/graphics/Typeface;FZLjava/util/List;ILjava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method

.method private final T()V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->L0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->r:Z

    .line 8
    .line 9
    return-void
.end method

.method private final U(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 2
    .line 3
    new-instance v2, Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "scene"

    .line 9
    .line 10
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->q:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v2, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "type"

    .line 16
    .line 17
    invoke-virtual {v2, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 21
    .line 22
    const/4 v5, 0x4

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v1, "login_click"

    .line 25
    .line 26
    const-wide/16 v3, 0x0

    .line 27
    .line 28
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private final V()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->N()V

    .line 2
    .line 3
    .line 4
    const-string v0, "facebook"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->U(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->a(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final W()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->N()V

    .line 2
    .line 3
    .line 4
    const-string v0, "google"

    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->U(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

    .line 10
    .line 11
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;

    .line 16
    .line 17
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/auth/a;->b(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final X()Lcom/startshorts/androidplayer/manager/auth/FirebaseAuthManager;
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

.method private final Y()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$l;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$l;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;Landroidx/activity/result/ActivityResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroidx/activity/result/ActivityResult;->getResultCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, -0x1

    .line 6
    if-ne p1, v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseBottomSheetDialogFragment;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public final a0(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;

    .line 2
    .line 3
    return-void
.end method

.method public final b0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->q:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_profile_login_guide2:I

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$b;->onDismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->T()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->Q()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->S()V

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->o:Lms/i;

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
