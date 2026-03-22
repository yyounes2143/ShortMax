.class public final Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "AdFreeDramaDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final n:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final k:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final l:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->n:Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->k:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lzi/f;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lzi/f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->l:Ljava/lang/Runnable;

    .line 21
    .line 22
    new-instance v0, Lzi/g;

    .line 23
    .line 24
    invoke-direct {v0, p0}, Lzi/g;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->m:Ljava/lang/Runnable;

    .line 28
    .line 29
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->L(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->N(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    return-void
.end method

.method private static final K(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->M()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final M()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    const-string v1, "dialogContainer"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lzi/h;

    .line 15
    .line 16
    invoke-direct {v1, p0, v0}, Lzi/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final N(Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 10
    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 12
    .line 13
    const/4 v2, 0x2

    .line 14
    div-int/2addr v1, v2

    .line 15
    div-int/2addr v0, v2

    .line 16
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->i:Ljava/lang/Integer;

    .line 17
    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sub-int/2addr v3, v1

    .line 26
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->j:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    sub-int/2addr p0, v0

    .line 36
    const/4 v0, 0x0

    .line 37
    new-array v1, v2, [F

    .line 38
    .line 39
    fill-array-data v1, :array_0

    .line 40
    .line 41
    .line 42
    const-string v4, "scaleX"

    .line 43
    .line 44
    invoke-static {p1, v4, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v4, "scaleY"

    .line 49
    .line 50
    new-array v5, v2, [F

    .line 51
    .line 52
    fill-array-data v5, :array_1

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    int-to-float v3, v3

    .line 60
    new-array v5, v2, [F

    .line 61
    .line 62
    const/4 v6, 0x0

    .line 63
    aput v0, v5, v6

    .line 64
    .line 65
    const/4 v7, 0x1

    .line 66
    aput v3, v5, v7

    .line 67
    .line 68
    const-string v3, "translationX"

    .line 69
    .line 70
    invoke-static {p1, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    int-to-float p0, p0

    .line 75
    new-array v5, v2, [F

    .line 76
    .line 77
    aput v0, v5, v6

    .line 78
    .line 79
    aput p0, v5, v7

    .line 80
    .line 81
    const-string p0, "translationY"

    .line 82
    .line 83
    invoke-static {p1, p0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    new-instance p1, Landroid/animation/AnimatorSet;

    .line 88
    .line 89
    invoke-direct {p1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x4

    .line 93
    new-array v0, v0, [Landroid/animation/Animator;

    .line 94
    .line 95
    aput-object v1, v0, v6

    .line 96
    .line 97
    aput-object v4, v0, v7

    .line 98
    .line 99
    aput-object v3, v0, v2

    .line 100
    .line 101
    const/4 v1, 0x3

    .line 102
    aput-object p0, v0, v1

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 105
    .line 106
    .line 107
    const-wide/16 v0, 0x3e8

    .line 108
    .line 109
    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 110
    .line 111
    .line 112
    new-instance p0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 113
    .line 114
    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, p0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    nop

    .line 125
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private final O()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->k:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->m:Ljava/lang/Runnable;

    .line 4
    .line 5
    const-wide/16 v2, 0xbb8

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->k:Landroid/os/Handler;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->l:Ljava/lang/Runnable;

    .line 13
    .line 14
    const-wide/16 v2, 0xfa0

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_ad_free_drama:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AdFreeDramaDialogFragment"

    .line 2
    .line 3
    return-object v0
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
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->k:Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->l:Ljava/lang/Runnable;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->k:Landroid/os/Handler;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->m:Ljava/lang/Runnable;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogAdFreeDramaBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 32
    .line 33
    .line 34
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
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->i:Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz p2, :cond_2

    .line 12
    .line 13
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->j:Ljava/lang/Integer;

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;->J()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;

    .line 36
    .line 37
    invoke-direct {v0, p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment$b;-><init>(Landroid/view/View;Lcom/startshorts/androidplayer/ui/fragment/unlock/AdFreeDramaDialogFragment;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 45
    .line 46
    .line 47
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
