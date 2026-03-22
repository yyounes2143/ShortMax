.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;
.source "PhoneAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPhoneAuthFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n+ 2 TextView.kt\nandroidx/core/widget/TextViewKt\n+ 3 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n*L\n1#1,495:1\n58#2,23:496\n93#2,3:519\n58#2,23:522\n93#2,3:545\n15#3,9:548\n*S KotlinDebug\n*F\n+ 1 PhoneAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment\n*L\n158#1:496,23\n158#1:519,3\n177#1:522,23\n177#1:545,3\n386#1:548,9\n*E\n"
    }
.end annotation


# static fields
.field public static final p:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private o:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->p:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->j:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$e;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$e;

    .line 14
    .line 15
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->l:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$d;

    .line 21
    .line 22
    new-instance v0, Lni/n;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lni/n;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->m:Lms/i;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->a0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/viewmodel/auth/f;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->e0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/viewmodel/auth/f;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->i0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->X(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->c0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Lhi/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->n:Lhi/b;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->m0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Q()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x19

    .line 18
    .line 19
    if-lt v0, v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 28
    .line 29
    const/high16 v1, 0x41500000    # 13.0f

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 39
    .line 40
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 54
    .line 55
    .line 56
    :cond_0
    return-void
.end method

.method private final R()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->l0()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3c

    .line 6
    .line 7
    cmp-long v0, v0, v2

    .line 8
    .line 9
    if-ltz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private final S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->m:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final T()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private final U()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->n:Lhi/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->n:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final V()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_c

    .line 6
    .line 7
    const-string v1, "auth_reason"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "2"

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    move-object v0, v1

    .line 18
    :cond_0
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->V(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 31
    .line 32
    .line 33
    const-string v1, "initParams mAuthReason(bind)"

    .line 34
    .line 35
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    const-string v1, "1"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->V(Lcom/startshorts/androidplayer/bean/auth/AuthReason;)V

    .line 53
    .line 54
    .line 55
    const-string v0, "initParams mAuthReason(login)"

    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, ""

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    const-string v2, "auth_reason_phone"

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-nez v0, :cond_4

    .line 75
    .line 76
    :cond_3
    move-object v0, v1

    .line 77
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_5

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 88
    .line 89
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 90
    .line 91
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_6

    .line 99
    .line 100
    const-string v2, "auth_reason_area_code"

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    .line 108
    :cond_6
    move-object v0, v1

    .line 109
    :cond_7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 110
    .line 111
    .line 112
    move-result-object v2

    .line 113
    if-eqz v2, :cond_8

    .line 114
    .line 115
    const-string v3, "auth_reason_country_code"

    .line 116
    .line 117
    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-nez v2, :cond_9

    .line 122
    .line 123
    :cond_8
    move-object v2, v1

    .line 124
    :cond_9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    if-eqz v3, :cond_b

    .line 129
    .line 130
    const-string v4, "from"

    .line 131
    .line 132
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-nez v3, :cond_a

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_a
    move-object v1, v3

    .line 140
    :cond_b
    :goto_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->j:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    if-nez v1, :cond_c

    .line 147
    .line 148
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    if-nez v1, :cond_c

    .line 153
    .line 154
    new-instance v1, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 155
    .line 156
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/region/Region;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/bean/region/Region;->setAreaCode(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/region/Region;->setAreaCode(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 170
    .line 171
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    :cond_c
    return-void
.end method

.method private final W()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$b;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->c:Landroid/widget/LinearLayout;

    .line 27
    .line 28
    new-instance v1, Lni/h;

    .line 29
    .line 30
    invoke-direct {v1, p0}, Lni/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 41
    .line 42
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$c;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 62
    .line 63
    new-instance v1, Lni/i;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lni/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    new-instance v1, Lni/j;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lni/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lni/k;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lni/k;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->d0(Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method private static final X(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    const-string v0, ""

    .line 22
    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/region/Region;->getAreaCode()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-nez v1, :cond_2

    .line 30
    .line 31
    :cond_1
    move-object v1, v0

    .line 32
    :cond_2
    if-eqz p1, :cond_4

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/region/Region;->getCountryName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-nez p1, :cond_3

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    move-object v0, p1

    .line 42
    :cond_4
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->v:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;

    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string v2, "requireActivity(...)"

    .line 49
    .line 50
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, p0, v1, v0}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;->c(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private static final Y(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    check-cast p1, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/region/Region;->getAreaCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-nez p1, :cond_2

    .line 28
    .line 29
    :cond_1
    const-string p1, ""

    .line 30
    .line 31
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 48
    .line 49
    const/4 v6, 0x6

    .line 50
    const/4 v7, 0x0

    .line 51
    const-string v2, "send_phone_otp_click"

    .line 52
    .line 53
    const/4 v3, 0x0

    .line 54
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/auth/e$b;

    .line 64
    .line 65
    invoke-direct {v1, p1, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/e$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->S(Lcom/startshorts/androidplayer/viewmodel/auth/e;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    check-cast v0, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    :goto_0
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/region/Region;->getAreaCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :cond_1
    const-string v0, ""

    .line 30
    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;

    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 62
    .line 63
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 64
    .line 65
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-direct {v2, p0, v0, p1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->S(Lcom/startshorts/androidplayer/viewmodel/auth/e;)V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method private static final a0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->b0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private static final b0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V
    .locals 1

    .line 1
    const-string v0, "onSendStart"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 11
    .line 12
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final c0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private final d0(Lkotlin/jvm/functions/Function0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->L()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lni/o;

    .line 14
    .line 15
    invoke-direct {v2, p0, p1}, Lni/o;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Lkotlin/jvm/functions/Function0;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$f;

    .line 19
    .line 20
    invoke-direct {p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method private static final e0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/viewmodel/auth/f;)Lkotlin/Unit;
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$g;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    const-string v1, "PhoneAuthState.Checking"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->g0()V

    .line 15
    .line 16
    .line 17
    invoke-interface/range {p1 .. p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    goto/16 :goto_6

    .line 21
    .line 22
    :cond_0
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x1

    .line 27
    const-string v6, "firebase"

    .line 28
    .line 29
    const-string v7, "server"

    .line 30
    .line 31
    const-string v8, "type"

    .line 32
    .line 33
    if-eqz v2, :cond_8

    .line 34
    .line 35
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->U()V

    .line 36
    .line 37
    .line 38
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->b()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_1

    .line 45
    .line 46
    sget-object v2, Lud/b;->a:Lud/b;

    .line 47
    .line 48
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 49
    .line 50
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 51
    .line 52
    .line 53
    move-result-wide v9

    .line 54
    invoke-virtual {v2, v9, v10}, Lud/b;->Z2(J)V

    .line 55
    .line 56
    .line 57
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->h0()V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 66
    .line 67
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 68
    .line 69
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 70
    .line 71
    .line 72
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "PhoneAuthState.SendFailed "

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->c()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->c()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    const-string v2, ""

    .line 103
    .line 104
    :cond_2
    const/4 v5, 0x2

    .line 105
    const-string v9, "network error"

    .line 106
    .line 107
    invoke-static {v2, v9, v4, v5, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    const-string v3, "err_msg"

    .line 112
    .line 113
    if-eqz v2, :cond_4

    .line 114
    .line 115
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 116
    .line 117
    new-instance v12, Landroid/os/Bundle;

    .line 118
    .line 119
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v12, v3, v9}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->a()Lcom/hades/aar/auth/base/AuthType;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-nez v1, :cond_3

    .line 130
    .line 131
    move-object v6, v7

    .line 132
    :cond_3
    invoke-virtual {v12, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 136
    .line 137
    const/4 v15, 0x4

    .line 138
    const/16 v16, 0x0

    .line 139
    .line 140
    const-string v11, "send_phone_otp_failed"

    .line 141
    .line 142
    const-wide/16 v13, 0x0

    .line 143
    .line 144
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_network_error:I

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_6

    .line 157
    .line 158
    :cond_4
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->c()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    if-eqz v2, :cond_7

    .line 163
    .line 164
    invoke-static {v2}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_5

    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 172
    .line 173
    new-instance v11, Landroid/os/Bundle;

    .line 174
    .line 175
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->c()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-virtual {v11, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->a()Lcom/hades/aar/auth/base/AuthType;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    if-nez v2, :cond_6

    .line 190
    .line 191
    move-object v6, v7

    .line 192
    :cond_6
    invoke-virtual {v11, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 196
    .line 197
    const/4 v14, 0x4

    .line 198
    const/4 v15, 0x0

    .line 199
    const-string v10, "send_phone_otp_failed"

    .line 200
    .line 201
    const-wide/16 v12, 0x0

    .line 202
    .line 203
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$e;->c()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-direct {v0, v1, v4}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->p0(Ljava/lang/String;Z)V

    .line 211
    .line 212
    .line 213
    goto/16 :goto_6

    .line 214
    .line 215
    :cond_7
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->T()V

    .line 216
    .line 217
    .line 218
    goto/16 :goto_6

    .line 219
    .line 220
    :cond_8
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;

    .line 221
    .line 222
    if-eqz v2, :cond_a

    .line 223
    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->U()V

    .line 225
    .line 226
    .line 227
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    .line 229
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    .line 231
    .line 232
    const-string v3, "PhoneAuthState.SendSucceed "

    .line 233
    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 238
    .line 239
    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 248
    .line 249
    new-instance v11, Landroid/os/Bundle;

    .line 250
    .line 251
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 252
    .line 253
    .line 254
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$f;->a()Lcom/hades/aar/auth/base/AuthType;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    if-nez v1, :cond_9

    .line 261
    .line 262
    move-object v6, v7

    .line 263
    :cond_9
    invoke-virtual {v11, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 267
    .line 268
    const/4 v14, 0x4

    .line 269
    const/4 v15, 0x0

    .line 270
    const-string v10, "send_phone_otp_success"

    .line 271
    .line 272
    const-wide/16 v12, 0x0

    .line 273
    .line 274
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 275
    .line 276
    .line 277
    sget-object v1, Lud/b;->a:Lud/b;

    .line 278
    .line 279
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 280
    .line 281
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 282
    .line 283
    .line 284
    move-result-wide v2

    .line 285
    invoke-virtual {v1, v2, v3}, Lud/b;->Z2(J)V

    .line 286
    .line 287
    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->h0()V

    .line 289
    .line 290
    .line 291
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->T()V

    .line 292
    .line 293
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 299
    .line 300
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 301
    .line 302
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 303
    .line 304
    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 310
    .line 311
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 312
    .line 313
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 314
    .line 315
    .line 316
    goto/16 :goto_6

    .line 317
    .line 318
    :cond_a
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$j;

    .line 319
    .line 320
    if-eqz v2, :cond_b

    .line 321
    .line 322
    const-string v1, "PhoneAuthState.VerifyingOtp"

    .line 323
    .line 324
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->g0()V

    .line 328
    .line 329
    .line 330
    goto/16 :goto_6

    .line 331
    .line 332
    :cond_b
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;

    .line 333
    .line 334
    const-string v9, "is_success"

    .line 335
    .line 336
    const-string v10, "scene"

    .line 337
    .line 338
    const-string v11, "phone"

    .line 339
    .line 340
    if-eqz v2, :cond_11

    .line 341
    .line 342
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->U()V

    .line 343
    .line 344
    .line 345
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->a()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 348
    .line 349
    .line 350
    move-result-object v2

    .line 351
    sget-object v3, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 352
    .line 353
    if-ne v2, v3, :cond_c

    .line 354
    .line 355
    const-string v2, "login_phone_success"

    .line 356
    .line 357
    :goto_2
    move-object v13, v2

    .line 358
    goto :goto_3

    .line 359
    :cond_c
    const-string v2, "bind_phone_success"

    .line 360
    .line 361
    goto :goto_2

    .line 362
    :goto_3
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 363
    .line 364
    new-instance v14, Landroid/os/Bundle;

    .line 365
    .line 366
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->b()Lcom/hades/aar/auth/base/AuthType;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    if-nez v4, :cond_d

    .line 374
    .line 375
    move-object v4, v7

    .line 376
    goto :goto_4

    .line 377
    :cond_d
    move-object v4, v6

    .line 378
    :goto_4
    invoke-virtual {v14, v8, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    .line 380
    .line 381
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 382
    .line 383
    const/16 v17, 0x4

    .line 384
    .line 385
    const/16 v18, 0x0

    .line 386
    .line 387
    const-wide/16 v15, 0x0

    .line 388
    .line 389
    move-object v12, v2

    .line 390
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 391
    .line 392
    .line 393
    new-instance v4, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    const-string v5, "onResultSucceed "

    .line 399
    .line 400
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->b()Lcom/hades/aar/auth/base/AuthType;

    .line 404
    .line 405
    .line 406
    move-result-object v12

    .line 407
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v4

    .line 414
    invoke-virtual {v0, v4}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->a()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 418
    .line 419
    .line 420
    move-result-object v4

    .line 421
    if-ne v4, v3, :cond_e

    .line 422
    .line 423
    new-instance v3, Landroid/os/Bundle;

    .line 424
    .line 425
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 426
    .line 427
    .line 428
    invoke-virtual {v3, v8, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->j:Ljava/lang/String;

    .line 432
    .line 433
    invoke-virtual {v3, v10, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    .line 435
    .line 436
    const-string v4, "1"

    .line 437
    .line 438
    invoke-virtual {v3, v9, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    const/16 v19, 0x4

    .line 442
    .line 443
    const/16 v20, 0x0

    .line 444
    .line 445
    const-string v15, "account_login_result"

    .line 446
    .line 447
    const-wide/16 v17, 0x0

    .line 448
    .line 449
    move-object v14, v2

    .line 450
    move-object/from16 v16, v3

    .line 451
    .line 452
    invoke-static/range {v14 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 453
    .line 454
    .line 455
    sget v2, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_succeed:I

    .line 456
    .line 457
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 458
    .line 459
    .line 460
    goto :goto_5

    .line 461
    :cond_e
    new-instance v3, Landroid/os/Bundle;

    .line 462
    .line 463
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 464
    .line 465
    .line 466
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->b()Lcom/hades/aar/auth/base/AuthType;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    if-nez v4, :cond_f

    .line 471
    .line 472
    move-object v6, v7

    .line 473
    :cond_f
    invoke-virtual {v3, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    const/16 v19, 0x4

    .line 477
    .line 478
    const/16 v20, 0x0

    .line 479
    .line 480
    const-string v15, "bind_phone_success"

    .line 481
    .line 482
    const-wide/16 v17, 0x0

    .line 483
    .line 484
    move-object v14, v2

    .line 485
    move-object/from16 v16, v3

    .line 486
    .line 487
    invoke-static/range {v14 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 488
    .line 489
    .line 490
    sget v2, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_succeed:I

    .line 491
    .line 492
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 493
    .line 494
    .line 495
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 496
    .line 497
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->b()Lcom/hades/aar/auth/base/AuthType;

    .line 504
    .line 505
    .line 506
    move-result-object v3

    .line 507
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    const/16 v3, 0x20

    .line 511
    .line 512
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$i;->a()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 516
    .line 517
    .line 518
    move-result-object v1

    .line 519
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 523
    .line 524
    .line 525
    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 527
    .line 528
    .line 529
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 530
    .line 531
    .line 532
    move-result-object v1

    .line 533
    if-eqz v1, :cond_10

    .line 534
    .line 535
    new-instance v2, Landroid/content/Intent;

    .line 536
    .line 537
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 538
    .line 539
    .line 540
    const/4 v3, -0x1

    .line 541
    invoke-virtual {v1, v3, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 542
    .line 543
    .line 544
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 545
    .line 546
    .line 547
    goto/16 :goto_6

    .line 548
    .line 549
    :cond_11
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;

    .line 550
    .line 551
    if-eqz v2, :cond_16

    .line 552
    .line 553
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->U()V

    .line 554
    .line 555
    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 561
    .line 562
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 563
    .line 564
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 565
    .line 566
    .line 567
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;

    .line 568
    .line 569
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;->c()Ljava/lang/String;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;->c()Ljava/lang/String;

    .line 574
    .line 575
    .line 576
    move-result-object v3

    .line 577
    if-eqz v3, :cond_12

    .line 578
    .line 579
    invoke-static {v3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-eqz v3, :cond_13

    .line 584
    .line 585
    :cond_12
    move v4, v5

    .line 586
    :cond_13
    invoke-direct {v0, v2, v4}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->p0(Ljava/lang/String;Z)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;->a()Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 590
    .line 591
    .line 592
    move-result-object v2

    .line 593
    sget-object v3, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 594
    .line 595
    if-ne v2, v3, :cond_14

    .line 596
    .line 597
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 598
    .line 599
    new-instance v14, Landroid/os/Bundle;

    .line 600
    .line 601
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v14, v8, v11}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    .line 606
    .line 607
    iget-object v0, v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->j:Ljava/lang/String;

    .line 608
    .line 609
    invoke-virtual {v14, v10, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    .line 611
    .line 612
    const-string v0, "0"

    .line 613
    .line 614
    invoke-virtual {v14, v9, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    .line 616
    .line 617
    const-string v0, "reason"

    .line 618
    .line 619
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;->c()Ljava/lang/String;

    .line 620
    .line 621
    .line 622
    move-result-object v1

    .line 623
    invoke-virtual {v14, v0, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    .line 625
    .line 626
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 627
    .line 628
    const/16 v17, 0x4

    .line 629
    .line 630
    const/16 v18, 0x0

    .line 631
    .line 632
    const-string v13, "account_login_result"

    .line 633
    .line 634
    const-wide/16 v15, 0x0

    .line 635
    .line 636
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 637
    .line 638
    .line 639
    goto/16 :goto_6

    .line 640
    .line 641
    :cond_14
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 642
    .line 643
    new-instance v2, Landroid/os/Bundle;

    .line 644
    .line 645
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 646
    .line 647
    .line 648
    const-string v3, "errorMessage"

    .line 649
    .line 650
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;->c()Ljava/lang/String;

    .line 651
    .line 652
    .line 653
    move-result-object v4

    .line 654
    invoke-virtual {v2, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$h;->b()Lcom/hades/aar/auth/base/AuthType;

    .line 658
    .line 659
    .line 660
    move-result-object v1

    .line 661
    if-nez v1, :cond_15

    .line 662
    .line 663
    move-object v6, v7

    .line 664
    :cond_15
    invoke-virtual {v2, v8, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 668
    .line 669
    const/4 v5, 0x4

    .line 670
    const/4 v6, 0x0

    .line 671
    const-string v1, "bind_phone_failed"

    .line 672
    .line 673
    const-wide/16 v3, 0x0

    .line 674
    .line 675
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 676
    .line 677
    .line 678
    goto/16 :goto_6

    .line 679
    .line 680
    :cond_16
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$b;

    .line 681
    .line 682
    if-eqz v2, :cond_17

    .line 683
    .line 684
    new-instance v2, Ljava/lang/StringBuilder;

    .line 685
    .line 686
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 687
    .line 688
    .line 689
    const-string v3, "PhoneAuthState.Idle "

    .line 690
    .line 691
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    .line 693
    .line 694
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    goto/16 :goto_6

    .line 705
    .line 706
    :cond_17
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$a;

    .line 707
    .line 708
    if-eqz v2, :cond_18

    .line 709
    .line 710
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->U()V

    .line 711
    .line 712
    .line 713
    sget-object v1, Lud/b;->a:Lud/b;

    .line 714
    .line 715
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 716
    .line 717
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 718
    .line 719
    .line 720
    move-result-wide v2

    .line 721
    invoke-virtual {v1, v2, v3}, Lud/b;->Z2(J)V

    .line 722
    .line 723
    .line 724
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->h0()V

    .line 725
    .line 726
    .line 727
    goto :goto_6

    .line 728
    :cond_18
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$c;

    .line 729
    .line 730
    if-eqz v2, :cond_1b

    .line 731
    .line 732
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$c;

    .line 733
    .line 734
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$c;->a()Lcom/startshorts/androidplayer/bean/region/Region;

    .line 735
    .line 736
    .line 737
    move-result-object v2

    .line 738
    if-eqz v2, :cond_19

    .line 739
    .line 740
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/region/Region;->getAreaCode()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v3

    .line 744
    :cond_19
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 745
    .line 746
    .line 747
    move-result v2

    .line 748
    if-eqz v2, :cond_1a

    .line 749
    .line 750
    sget v1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_invalid_area_code:I

    .line 751
    .line 752
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 753
    .line 754
    .line 755
    goto :goto_6

    .line 756
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 757
    .line 758
    .line 759
    move-result-object v2

    .line 760
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 761
    .line 762
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 763
    .line 764
    new-instance v4, Ljava/lang/StringBuilder;

    .line 765
    .line 766
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 767
    .line 768
    .line 769
    const/16 v5, 0x2b

    .line 770
    .line 771
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v3

    .line 781
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    .line 783
    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 789
    .line 790
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 791
    .line 792
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$c;->a()Lcom/startshorts/androidplayer/bean/region/Region;

    .line 793
    .line 794
    .line 795
    move-result-object v1

    .line 796
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 797
    .line 798
    .line 799
    goto :goto_6

    .line 800
    :cond_1b
    instance-of v2, v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$d;

    .line 801
    .line 802
    if-eqz v2, :cond_1d

    .line 803
    .line 804
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/auth/f$d;

    .line 805
    .line 806
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$d;->b()Z

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    if-eqz v2, :cond_1c

    .line 811
    .line 812
    sget v1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_network_error:I

    .line 813
    .line 814
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 815
    .line 816
    .line 817
    goto :goto_6

    .line 818
    :cond_1c
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/auth/f$d;->a()Ljava/lang/String;

    .line 819
    .line 820
    .line 821
    move-result-object v1

    .line 822
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 823
    .line 824
    .line 825
    :goto_6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 826
    .line 827
    return-object v0

    .line 828
    :cond_1d
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 829
    .line 830
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 831
    .line 832
    .line 833
    throw v0
.end method

.method private final f0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->k:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$e;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->l:Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$d;

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

.method private final g0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->U()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$h;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment$h;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final h0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->k0()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3c

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->l0()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2

    .line 11
    sub-long/2addr v0, v2

    .line 12
    const-wide/16 v2, 0x1

    .line 13
    .line 14
    cmp-long v2, v2, v0

    .line 15
    .line 16
    if-gtz v2, :cond_0

    .line 17
    .line 18
    const-wide/16 v2, 0x3d

    .line 19
    .line 20
    cmp-long v2, v0, v2

    .line 21
    .line 22
    if-gez v2, :cond_0

    .line 23
    .line 24
    new-instance v2, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v3, "canSendOtp = false seconds("

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v3, ",60)"

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 50
    .line 51
    long-to-int v0, v0

    .line 52
    new-instance v1, Lni/l;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lni/l;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 55
    .line 56
    .line 57
    new-instance v3, Lni/m;

    .line 58
    .line 59
    invoke-direct {v3, p0}, Lni/m;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0, v1, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->o:Lkotlinx/coroutines/r;

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->m0()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method private static final i0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;I)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_resend:I

    .line 14
    .line 15
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method

.method private static final j0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->m0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final k0()V
    .locals 3

    .line 1
    const-string v0, "stopInvalidateGetCodeJob"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->o:Lkotlinx/coroutines/r;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private final l0()J
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lud/b;->a:Lud/b;

    .line 8
    .line 9
    invoke-virtual {v2}, Lud/b;->P()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    const/16 v2, 0x3e8

    .line 15
    .line 16
    int-to-long v2, v2

    .line 17
    div-long/2addr v0, v2

    .line 18
    return-wide v0
.end method

.method private final m0()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->o0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->n0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "updateButtonStatus otp("

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ") phoneValid("

    .line 39
    .line 40
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ") otpValid("

    .line 47
    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x29

    .line 55
    .line 56
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const/4 v0, 0x0

    .line 67
    const/4 v3, 0x1

    .line 68
    if-eqz v1, :cond_0

    .line 69
    .line 70
    if-eqz v2, :cond_0

    .line 71
    .line 72
    move v2, v3

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    move v2, v0

    .line 75
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->R()Z

    .line 76
    .line 77
    .line 78
    move-result v4

    .line 79
    if-eqz v4, :cond_1

    .line 80
    .line 81
    if-eqz v1, :cond_1

    .line 82
    .line 83
    move v0, v3

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 89
    .line 90
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 100
    .line 101
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 102
    .line 103
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 104
    .line 105
    .line 106
    if-eqz v2, :cond_2

    .line 107
    .line 108
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->T()V

    .line 109
    .line 110
    .line 111
    :cond_2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->R()Z

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-eqz v0, :cond_3

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 124
    .line 125
    sget v1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_get:I

    .line 126
    .line 127
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    .line 133
    .line 134
    :cond_3
    return-void
.end method

.method private static final n0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->j:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    xor-int/lit8 p0, p0, 0x1

    .line 22
    .line 23
    return p0
.end method

.method private static final o0(Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 24
    .line 25
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v3, "isPhoneNumberValid -> phoneNumber("

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v3, ") countryCode("

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const/16 v3, 0x29

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 67
    .line 68
    .line 69
    move-result p0

    .line 70
    if-lez p0, :cond_0

    .line 71
    .line 72
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result p0

    .line 76
    if-lez p0, :cond_0

    .line 77
    .line 78
    const/4 p0, 0x1

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    const/4 p0, 0x0

    .line 81
    :goto_0
    return p0
.end method

.method private final p0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_check_content:I

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 16
    .line 17
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2}, Landroidx/databinding/ViewStubProxy;->getRoot()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    instance-of v0, p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p2, 0x0

    .line 35
    :goto_0
    if-eqz p2, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    return-void
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_phone_auth:I

    .line 2
    .line 3
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p3    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_0

    .line 6
    .line 7
    const/16 p2, 0xfa1

    .line 8
    .line 9
    if-ne p1, p2, :cond_0

    .line 10
    .line 11
    if-eqz p3, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->v:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;

    .line 14
    .line 15
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;->b(Landroid/content/Intent;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$a;->a(Landroid/content/Intent;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    if-lez p3, :cond_0

    .line 28
    .line 29
    new-instance p3, Lcom/startshorts/androidplayer/bean/region/Region;

    .line 30
    .line 31
    invoke-direct {p3}, Lcom/startshorts/androidplayer/bean/region/Region;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/bean/region/Region;->setAreaCode(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p3, p1}, Lcom/startshorts/androidplayer/bean/region/Region;->setCountryName(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;

    .line 45
    .line 46
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentPhoneAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 47
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x2b

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->V()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->W()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->Q()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->f0()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->h0()V

    .line 22
    .line 23
    .line 24
    sget-object p1, Lfk/t;->a:Lfk/t;

    .line 25
    .line 26
    invoke-virtual {p1}, Lfk/t;->a()V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;->D()Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->O(Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;)V

    .line 38
    .line 39
    .line 40
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/auth/e$a;

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    const/4 v1, 0x0

    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-direct {p2, v2, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/auth/e$a;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->S(Lcom/startshorts/androidplayer/viewmodel/auth/e;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "PhoneAuthFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->v()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->S()Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/PhoneAuthViewModel;->w()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/PhoneAuthFragment;->k0()V

    .line 12
    .line 13
    .line 14
    sget-object v0, Lud/b;->a:Lud/b;

    .line 15
    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lud/b;->Y2(J)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
