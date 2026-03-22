.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment;
.source "EmailAuthFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/ToolbarFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmailAuthFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n+ 2 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt\n+ 3 TextView.kt\nandroidx/core/widget/TextViewKt\n*L\n1#1,288:1\n15#2,9:289\n58#3,23:298\n93#3,3:321\n58#3,23:324\n93#3,3:347\n*S KotlinDebug\n*F\n+ 1 EmailAuthFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment\n*L\n107#1:289,9\n186#1:298,23\n186#1:321,3\n197#1:324,23\n197#1:347,3\n*E\n"
    }
.end annotation


# static fields
.field public static final q:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private l:Lhi/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Lcom/startshorts/androidplayer/bean/auth/AuthReason;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final n:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final o:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private p:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->q:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$a;

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
    new-instance v0, Lni/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lni/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->j:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lni/d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lni/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->k:Lms/i;

    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->m:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 29
    .line 30
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$e;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$e;

    .line 36
    .line 37
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$d;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$d;

    .line 43
    .line 44
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->f0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->V(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic I(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Lcom/startshorts/androidplayer/viewmodel/auth/d;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->a0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Lcom/startshorts/androidplayer/viewmodel/auth/d;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic J(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic K(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->W(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic L(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->g0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->Z(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Lhi/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->l:Lhi/b;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->j0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final P()Z
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->i0()J

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

.method private final Q()Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method private final R()Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->k:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object v0
.end method

.method private final S()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->a:Landroidx/databinding/ViewStubProxy;

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

.method private final T()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->l:Lhi/b;

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
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->l:Lhi/b;

    .line 10
    .line 11
    return-void
.end method

.method private final U()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$c;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

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
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$b;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 44
    .line 45
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 46
    .line 47
    new-instance v1, Lni/e;

    .line 48
    .line 49
    invoke-direct {v1, p0}, Lni/e;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 62
    .line 63
    new-instance v1, Lni/f;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lni/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method private static final V(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Landroid/view/View;)V
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 6
    .line 7
    const/4 v6, 0x6

    .line 8
    const/4 v7, 0x0

    .line 9
    const-string v2, "send_email_otp_click"

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->Q()Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/c$a;

    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 28
    .line 29
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/c$a;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/auth/c;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private static final W(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Landroid/view/View;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->Q()Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/auth/c$b;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    invoke-direct {v0, v1, p0}, Lcom/startshorts/androidplayer/viewmodel/auth/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->B(Lcom/startshorts/androidplayer/viewmodel/auth/c;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private final X()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "2"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v2, "auth_reason"

    .line 10
    .line 11
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :cond_1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    sget-object v1, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->BIND:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 25
    .line 26
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->m:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 27
    .line 28
    const-string v1, "initParams mAuthReason(bind)"

    .line 29
    .line 30
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_2
    const-string v1, "1"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/bean/auth/AuthReason;->LOGIN:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->m:Lcom/startshorts/androidplayer/bean/auth/AuthReason;

    .line 44
    .line 45
    const-string v0, "initParams mAuthReason(login)"

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_3
    return-void
.end method

.method private static final Y(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;
    .locals 1

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    .line 4
    .line 5
    .line 6
    const-class p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 7
    .line 8
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    check-cast p0, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final Z(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->Q()Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;->A()Landroidx/lifecycle/MutableLiveData;

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
    new-instance v2, Lni/g;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lni/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 16
    .line 17
    .line 18
    new-instance p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$f;

    .line 19
    .line 20
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$f;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p0}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final a0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;Lcom/startshorts/androidplayer/viewmodel/auth/d;)Lkotlin/Unit;
    .locals 8

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string p1, "EmailAuthState.Checking"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->d0()V

    .line 11
    .line 12
    .line 13
    goto/16 :goto_0

    .line 14
    .line 15
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 20
    .line 21
    new-instance v3, Landroid/os/Bundle;

    .line 22
    .line 23
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;->a()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "errorMessage"

    .line 33
    .line 34
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    .line 39
    const/4 v6, 0x4

    .line 40
    const/4 v7, 0x0

    .line 41
    const-string v2, "send_email_otp_failed"

    .line 42
    .line 43
    const-wide/16 v4, 0x0

    .line 44
    .line 45
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->T()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/d$b;->a()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->b0(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$c;

    .line 61
    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 65
    .line 66
    const/4 v6, 0x6

    .line 67
    const/4 v7, 0x0

    .line 68
    const-string v2, "send_email_otp_success"

    .line 69
    .line 70
    const/4 v3, 0x0

    .line 71
    const-wide/16 v4, 0x0

    .line 72
    .line 73
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->T()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->e0()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

    .line 100
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 102
    .line 103
    .line 104
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->S()V

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_2
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$g;

    .line 110
    .line 111
    if-eqz v0, :cond_3

    .line 112
    .line 113
    const-string p1, "EmailAuthState.VerifyingOtp"

    .line 114
    .line 115
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->d0()V

    .line 119
    .line 120
    .line 121
    goto/16 :goto_0

    .line 122
    .line 123
    :cond_3
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$f;

    .line 124
    .line 125
    if-eqz v0, :cond_4

    .line 126
    .line 127
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 128
    .line 129
    const/4 v6, 0x6

    .line 130
    const/4 v7, 0x0

    .line 131
    const-string v2, "bind_email_success"

    .line 132
    .line 133
    const/4 v3, 0x0

    .line 134
    const-wide/16 v4, 0x0

    .line 135
    .line 136
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->T()V

    .line 140
    .line 141
    .line 142
    sget v0, Lcom/startshorts/androidplayer/R$string;->email_auth_fragment_succeed:I

    .line 143
    .line 144
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 145
    .line 146
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v1, "onResultSucceed "

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string p1, ".authType"

    .line 161
    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->h()V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$e;

    .line 177
    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 181
    .line 182
    new-instance v3, Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 185
    .line 186
    .line 187
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$e;

    .line 188
    .line 189
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/d$e;->a()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v2, "err_msg"

    .line 194
    .line 195
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 199
    .line 200
    const/4 v6, 0x4

    .line 201
    const/4 v7, 0x0

    .line 202
    const-string v2, "bind_email_failed"

    .line 203
    .line 204
    const-wide/16 v4, 0x0

    .line 205
    .line 206
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->T()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/auth/d$e;->a()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->b0(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    goto :goto_0

    .line 220
    :cond_5
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/auth/d$a;

    .line 221
    .line 222
    if-eqz v0, :cond_6

    .line 223
    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    .line 225
    .line 226
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v1, "EmailAuthState.Idle "

    .line 230
    .line 231
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 245
    .line 246
    return-object p0

    .line 247
    :cond_6
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 248
    .line 249
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 250
    .line 251
    .line 252
    throw p0
.end method

.method private final b0(Ljava/lang/String;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, ""

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->m0(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->m0(Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method

.method private final c0()V
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$e;

    .line 75
    .line 76
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$d;

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

.method private final d0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->T()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$g;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$h;

    .line 10
    .line 11
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment$h;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, v0, v1}, Lcom/startshorts/androidplayer/utils/ext/FragmentExtKt;->b(Landroidx/fragment/app/Fragment;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final e0()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->h0()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3c

    .line 5
    .line 6
    int-to-long v0, v0

    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->i0()J

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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 29
    .line 30
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "canSendOtp = false seconds("

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const/16 v3, 0x29

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {p0, v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 62
    .line 63
    long-to-int v0, v0

    .line 64
    new-instance v1, Lni/a;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lni/a;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 67
    .line 68
    .line 69
    new-instance v3, Lni/b;

    .line 70
    .line 71
    invoke-direct {v3, p0}, Lni/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v0, v1, v3}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->p:Lkotlinx/coroutines/r;

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->j0()V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-void
.end method

.method private static final f0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;I)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    sget v1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_resend:I

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    .line 25
    .line 26
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 27
    .line 28
    return-object p0
.end method

.method private static final g0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->j0()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method

.method private final h0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->p:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method private final i0()J
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
    invoke-virtual {v2}, Lud/b;->O()J

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

.method private final j0()V
    .locals 6

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->k0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->l0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    move v1, v3

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v1, v2

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 23
    .line 24
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    invoke-virtual {v4, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    check-cast v4, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 34
    .line 35
    iget-object v4, v4, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/view/View;->isEnabled()Z

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->P()Z

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    if-eqz v5, :cond_1

    .line 46
    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    move v2, v3

    .line 50
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 57
    .line 58
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 59
    .line 60
    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->S()V

    .line 64
    .line 65
    .line 66
    :cond_2
    if-eq v4, v2, :cond_3

    .line 67
    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 77
    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$string;->phone_auth_fragment_get:I

    .line 79
    .line 80
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-void
.end method

.method private static final k0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

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
    const/4 v0, 0x2

    .line 18
    const/4 v1, 0x0

    .line 19
    const-string v2, "@"

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {p0, v2, v3, v0, v1}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    return p0
.end method

.method private static final l0(Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseEditText;

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

.method private final m0(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget p1, Lcom/startshorts/androidplayer/R$string;->email_auth_fragment_check_content:I

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
    check-cast p2, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;

    .line 14
    .line 15
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/FragmentEmailAuthBinding;->a:Landroidx/databinding/ViewStubProxy;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_email_auth:I

    .line 2
    .line 3
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->X()V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->U()V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->c0()V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->e0()V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->R()Lkotlin/Unit;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "EmailAuthFragment"

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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->Q()Lcom/startshorts/androidplayer/viewmodel/auth/EmailAuthViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->w()V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/EmailAuthFragment;->h0()V

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
