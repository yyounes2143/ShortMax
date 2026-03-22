.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "ImmersionShortBackEarnCoinDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionShortBackEarnCoinDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionShortBackEarnCoinDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,140:1\n1317#2,2:141\n*S KotlinDebug\n*F\n+ 1 ImmersionShortBackEarnCoinDialog.kt\ncom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog\n*L\n89#1:141,2\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:I

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->l:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$b;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_immersion_back_shorts_earn_coin:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->k:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->L(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->M(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->O(Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->R()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final J()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    const/4 v3, -0x1

    .line 29
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    const/4 v3, -0x2

    .line 38
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 39
    .line 40
    :cond_2
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 45
    .line 46
    .line 47
    :cond_3
    :goto_0
    return-void
.end method

.method private final K()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceType"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/e0;

    .line 10
    .line 11
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/e0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 24
    .line 25
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/immersion/f0;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/f0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private static final L(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;->a()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private static final M(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;->onClose()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private final N()V
    .locals 8

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v4, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$loadTodayAllBonus$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    new-instance v5, Lcom/startshorts/androidplayer/ui/fragment/immersion/d0;

    .line 10
    .line 11
    invoke-direct {v5}, Lcom/startshorts/androidplayer/ui/fragment/immersion/d0;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v6, 0x5

    .line 15
    const/4 v7, 0x0

    .line 16
    const-string v2, "queryQueryTodayBonusTotal"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v0 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->k(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Lgt/g0;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final O(Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 2
    .line 3
    return-object p0
.end method

.method private final R()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    .line 9
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->j:I

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    sget v1, Lcom/startshorts/androidplayer/R$string;->immersion_retention_earn_bonus_default:I

    .line 14
    .line 15
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->j:I

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    sget v0, Lcom/startshorts/androidplayer/R$string;->immersion_retention_earn_bonus:I

    .line 37
    .line 38
    iget v2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->j:I

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "getString(...)"

    .line 53
    .line 54
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 58
    .line 59
    invoke-direct {v2, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 60
    .line 61
    .line 62
    new-instance v3, Lkotlin/text/Regex;

    .line 63
    .line 64
    const-string v4, "\\d+"

    .line 65
    .line 66
    invoke-direct {v3, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const/4 v4, 0x2

    .line 70
    const/4 v5, 0x0

    .line 71
    invoke-static {v3, v0, v1, v4, v5}, Lkotlin/text/Regex;->h(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_1

    .line 84
    .line 85
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Lkotlin/text/MatchResult;

    .line 90
    .line 91
    invoke-interface {v1}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Lkotlin/ranges/d;->c()I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-interface {v1}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1}, Lkotlin/ranges/d;->d()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    const/4 v4, 0x1

    .line 108
    add-int/2addr v1, v4

    .line 109
    new-instance v5, Landroid/text/style/ForegroundColorSpan;

    .line 110
    .line 111
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    sget v7, Lcom/startshorts/androidplayer/R$color;->color_immersion_short_back_earn_coin_dialog_text:I

    .line 116
    .line 117
    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    invoke-direct {v5, v6}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 122
    .line 123
    .line 124
    const/16 v6, 0x21

    .line 125
    .line 126
    invoke-virtual {v2, v5, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 127
    .line 128
    .line 129
    const/16 v5, 0xd

    .line 130
    .line 131
    invoke-direct {p0, v5}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->S(I)I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    .line 136
    .line 137
    invoke-direct {v7, v5, v4}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2, v7, v3, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;

    .line 149
    .line 150
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentImmersionBackShortsEarnCoinBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private final S(I)I
    .locals 2

    .line 1
    int-to-float p1, p1

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    float-to-int p1, p1

    .line 20
    return p1
.end method


# virtual methods
.method public final P(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog$a;

    .line 2
    .line 3
    return-void
.end method

.method public final Q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->j:I

    .line 2
    .line 3
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ImmersionBackShortsFragment"

    .line 2
    .line 3
    return-object v0
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
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->J()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->N()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionShortBackEarnCoinDialog;->K()V

    .line 20
    .line 21
    .line 22
    return-void
.end method
