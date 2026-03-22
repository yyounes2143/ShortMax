.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;
.source "AccumulativeaWatchDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;,
        Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment<",
        "Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAccumulativeaWatchDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AccumulativeaWatchDialog.kt\ncom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,246:1\n1010#2,2:247\n1872#2,3:249\n1317#3,2:252\n*S KotlinDebug\n*F\n+ 1 AccumulativeaWatchDialog.kt\ncom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog\n*L\n117#1:247,2\n126#1:249,3\n136#1:252,2\n*E\n"
    }
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public i:Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;

.field private j:Landroid/animation/AnimatorSet;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public k:Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->m:Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$a;

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->dialog_fragment_accumulativea_watch:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->l:I

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->P(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->Q(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final I(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x3c

    .line 2
    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 p1, 0x73

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    div-int/2addr p1, v0

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, "min"

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :goto_0
    return-object p1
.end method

.method private final J(I)V
    .locals 7

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$string;->accumulativea_watch_tip_get_coin:I

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "getString(...)"

    .line 16
    .line 17
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    new-instance v1, Lkotlin/text/Regex;

    .line 26
    .line 27
    const-string v2, "\\d+"

    .line 28
    .line 29
    invoke-direct {v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-static {v1, p1, v4, v2, v3}, Lkotlin/text/Regex;->h(Lkotlin/text/Regex;Ljava/lang/CharSequence;IILjava/lang/Object;)Lkotlin/sequences/Sequence;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p1}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lkotlin/text/MatchResult;

    .line 54
    .line 55
    invoke-interface {v1}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-virtual {v2}, Lkotlin/ranges/d;->c()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-interface {v1}, Lkotlin/text/MatchResult;->d()Lkotlin/ranges/IntRange;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lkotlin/ranges/d;->d()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 72
    .line 73
    sget-object v3, Lyf/a;->a:Lyf/a;

    .line 74
    .line 75
    invoke-virtual {v3}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-nez v3, :cond_0

    .line 80
    .line 81
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 82
    .line 83
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 84
    .line 85
    const/16 v5, 0x1c

    .line 86
    .line 87
    const/16 v6, 0x21

    .line 88
    .line 89
    if-lt v4, v5, :cond_1

    .line 90
    .line 91
    invoke-static {v3}, Lvi/a;->a(Landroid/graphics/Typeface;)Landroid/text/style/TypefaceSpan;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$c;

    .line 100
    .line 101
    invoke-direct {v4, v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$c;-><init>(Landroid/graphics/Typeface;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0, v4, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 105
    .line 106
    .line 107
    :goto_1
    new-instance v3, Landroid/text/style/ForegroundColorSpan;

    .line 108
    .line 109
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    sget v5, Lcom/startshorts/androidplayer/R$color;->colorPrimary:I

    .line 114
    .line 115
    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    .line 116
    .line 117
    .line 118
    move-result v4

    .line 119
    invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 123
    .line 124
    .line 125
    new-instance v3, Landroid/text/style/RelativeSizeSpan;

    .line 126
    .line 127
    const v4, 0x3fa66666    # 1.3f

    .line 128
    .line 129
    .line 130
    invoke-direct {v3, v4}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v2, v1, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    check-cast p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 142
    .line 143
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->g:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method private final K()V
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

.method private final N()V
    .locals 6

    .line 1
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->e:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const/4 v4, 0x0

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    move-object v3, v4

    .line 33
    :goto_0
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget v3, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 39
    .line 40
    .line 41
    const/4 v3, 0x1

    .line 42
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 43
    .line 44
    .line 45
    const/high16 v5, 0x41000000    # 8.0f

    .line 46
    .line 47
    invoke-static {v5}, Ljk/g;->a(F)I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    int-to-float v5, v5

    .line 52
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 53
    .line 54
    .line 55
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 65
    .line 66
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->a:Landroidx/appcompat/widget/AppCompatImageView;

    .line 67
    .line 68
    new-instance v1, Lvi/b;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lvi/b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->c:Landroidx/cardview/widget/CardView;

    .line 83
    .line 84
    new-instance v1, Lvi/c;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lvi/c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 97
    .line 98
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->d:Landroid/widget/FrameLayout;

    .line 99
    .line 100
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    const/high16 v2, 0x41a80000    # 21.0f

    .line 109
    .line 110
    invoke-static {v3, v2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    float-to-int v1, v1

    .line 115
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 120
    .line 121
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 122
    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    sget v5, Lcom/startshorts/androidplayer/R$drawable;->ic_discover_play:I

    .line 128
    .line 129
    invoke-static {v3, v5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    if-eqz v3, :cond_1

    .line 134
    .line 135
    const/4 v5, 0x0

    .line 136
    invoke-virtual {v3, v5, v5, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 137
    .line 138
    .line 139
    :cond_1
    invoke-virtual {v2, v3, v4, v4, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 140
    .line 141
    .line 142
    new-instance v1, Lvi/d;

    .line 143
    .line 144
    invoke-direct {v1, p0}, Lvi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->U(Landroid/view/View;)V

    .line 154
    .line 155
    .line 156
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->T()V

    .line 157
    .line 158
    .line 159
    return-void
.end method

.method private static final O(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->M()Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    invoke-interface {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;->onClose()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final P(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->M()Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;->a(Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final Q(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->M()Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getShortPlay()Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p1, p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;->a(Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final T()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-le v1, v2, :cond_1

    .line 30
    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$d;

    .line 32
    .line 33
    invoke-direct {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$d;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getList()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const/4 v1, 0x4

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getCumsumBonus()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->J(I)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Ljava/util/ArrayList;

    .line 62
    .line 63
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->i:Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->j:Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->k:Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 104
    .line 105
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->l:Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;

    .line 106
    .line 107
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 115
    .line 116
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->m:Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    const/4 v1, 0x0

    .line 126
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_3

    .line 131
    .line 132
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    add-int/lit8 v3, v1, 0x1

    .line 137
    .line 138
    if-gez v1, :cond_2

    .line 139
    .line 140
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 141
    .line 142
    .line 143
    :cond_2
    check-cast v2, Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;

    .line 144
    .line 145
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;->getList()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    check-cast v1, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;

    .line 158
    .line 159
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getPayTime()I

    .line 160
    .line 161
    .line 162
    move-result v4

    .line 163
    invoke-direct {p0, v4}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->I(I)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/NewbieWatchBonus;->getCumsumBonus()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    invoke-virtual {v2, v4, v1}, Lcom/startshorts/androidplayer/ui/view/reward/DisplayRewardForAccumulativeaView;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    move v1, v3

    .line 179
    goto :goto_0

    .line 180
    :cond_3
    return-void
.end method

.method private final U(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->V(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    new-array v2, v1, [F

    .line 8
    .line 9
    fill-array-data v2, :array_0

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 17
    .line 18
    new-array v3, v1, [F

    .line 19
    .line 20
    fill-array-data v3, :array_1

    .line 21
    .line 22
    .line 23
    invoke-static {p1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, -0x1

    .line 28
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 38
    .line 39
    .line 40
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 41
    .line 42
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 43
    .line 44
    .line 45
    new-array v1, v1, [Landroid/animation/Animator;

    .line 46
    .line 47
    const/4 v3, 0x0

    .line 48
    aput-object v0, v1, v3

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    aput-object p1, v1, v0

    .line 52
    .line 53
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v0, 0x258

    .line 57
    .line 58
    invoke-virtual {v2, v0, v1}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 62
    .line 63
    .line 64
    iput-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->j:Landroid/animation/AnimatorSet;

    .line 65
    .line 66
    return-void

    .line 67
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f866666    # 1.05f
    .end array-data

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f866666    # 1.05f
    .end array-data
.end method


# virtual methods
.method public final L()Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "data"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final M()Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final R(Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->k:Lcom/startshorts/androidplayer/bean/shorts/DailyWatchPopResult;

    .line 7
    .line 8
    return-void
.end method

.method public final S(Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->i:Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog$b;

    .line 7
    .line 8
    return-void
.end method

.method public final V(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->j:Landroid/animation/AnimatorSet;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->j:Landroid/animation/AnimatorSet;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 17
    .line 18
    .line 19
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->l:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AccumulativeaWatchDialog"

    .line 2
    .line 3
    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->d:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    const-string v1, "layoutPlay"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->V(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->d:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const-string v1, "layoutPlay"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->V(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->m()Landroidx/databinding/ViewDataBinding;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogFragmentAccumulativeaWatchBinding;->d:Landroid/widget/FrameLayout;

    .line 11
    .line 12
    const-string v1, "layoutPlay"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->U(Landroid/view/View;)V

    .line 18
    .line 19
    .line 20
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
    const/4 p1, 0x1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 11
    .line 12
    .line 13
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->K()V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/AccumulativeaWatchDialog;->N()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
