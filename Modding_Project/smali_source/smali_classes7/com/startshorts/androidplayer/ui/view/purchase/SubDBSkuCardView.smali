.class public final Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "SubDBSkuCardView.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/purchase/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

.field private b:Z

.field private c:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/yy/mobile/rollingtextview/RollingTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private n:Lcom/airbnb/lottie/LottieAnimationView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->o:Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final A()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "mSubSku"

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 23
    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v2, v1

    .line 31
    :goto_0
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isBigCard()Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    const/4 v2, 0x2

    .line 36
    const/4 v3, 0x1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->f:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v1, :cond_3

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 47
    .line 48
    .line 49
    const/16 v0, 0xa

    .line 50
    .line 51
    const/16 v4, 0xe

    .line 52
    .line 53
    invoke-static {v1, v0, v4, v3, v2}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->g:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    invoke-static {v1, v3}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 65
    .line 66
    .line 67
    const/16 v0, 0x9

    .line 68
    .line 69
    const/16 v4, 0xc

    .line 70
    .line 71
    invoke-static {v1, v0, v4, v3, v2}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 72
    .line 73
    .line 74
    const-string v0, "#FFEACB"

    .line 75
    .line 76
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    const-string v2, "#F3AD63"

    .line 81
    .line 82
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    return-void
.end method

.method private final C()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->n:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/purchase/j;

    .line 10
    .line 11
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/j;-><init>(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 12
    .line 13
    .line 14
    const-wide/16 v2, 0x96

    .line 15
    .line 16
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private static final D(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final E()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->A()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->v()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const-string v2, "mSubSku"

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    move-object v0, v1

    .line 18
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    move-object v3, v1

    .line 30
    :cond_1
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_8

    .line 35
    .line 36
    sget-object v3, Lqf/h;->a:Lqf/h;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 39
    .line 40
    if-nez v4, :cond_2

    .line 41
    .line 42
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    move-object v4, v1

    .line 46
    :cond_2
    invoke-virtual {v3, v4}, Lqf/h;->o(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 51
    .line 52
    if-nez v4, :cond_3

    .line 53
    .line 54
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    move-object v4, v1

    .line 58
    :cond_3
    invoke-static {v4}, Ljk/u;->d(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)I

    .line 59
    .line 60
    .line 61
    move-result v4

    .line 62
    const/4 v5, 0x2

    .line 63
    if-le v4, v5, :cond_7

    .line 64
    .line 65
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 66
    .line 67
    if-nez v5, :cond_4

    .line 68
    .line 69
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    move-object v5, v1

    .line 73
    :cond_4
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getExpireTime()J

    .line 74
    .line 75
    .line 76
    move-result-wide v5

    .line 77
    sget-object v7, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 78
    .line 79
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 80
    .line 81
    .line 82
    move-result-wide v7

    .line 83
    sub-long/2addr v5, v7

    .line 84
    const/16 v7, 0x3e8

    .line 85
    .line 86
    int-to-long v7, v7

    .line 87
    div-long/2addr v5, v7

    .line 88
    sget-object v7, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->a:Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;

    .line 89
    .line 90
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/purchase/SubsExpansionManager;->f()Z

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    if-eqz v7, :cond_5

    .line 95
    .line 96
    const-wide/16 v7, 0x0

    .line 97
    .line 98
    cmp-long v7, v5, v7

    .line 99
    .line 100
    if-lez v7, :cond_5

    .line 101
    .line 102
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 103
    .line 104
    invoke-static {v7}, Ljk/b0;->l(Landroid/view/View;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->u()V

    .line 108
    .line 109
    .line 110
    sget-object v7, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 111
    .line 112
    long-to-int v5, v5

    .line 113
    new-instance v6, Lcom/startshorts/androidplayer/ui/view/purchase/k;

    .line 114
    .line 115
    invoke-direct {v6, v3, v4, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/k;-><init>(ZILcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;)V

    .line 116
    .line 117
    .line 118
    new-instance v8, Lcom/startshorts/androidplayer/ui/view/purchase/l;

    .line 119
    .line 120
    invoke-direct {v8, v3, p0, v4}, Lcom/startshorts/androidplayer/ui/view/purchase/l;-><init>(ZLcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7, v5, v6, v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->d(ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    iput-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->c:Lkotlinx/coroutines/r;

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_5
    if-nez v3, :cond_6

    .line 131
    .line 132
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 133
    .line 134
    invoke-static {v3}, Ljk/b0;->l(Landroid/view/View;)V

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 138
    .line 139
    if-eqz v3, :cond_9

    .line 140
    .line 141
    sget-object v5, Lfk/u;->a:Lfk/u;

    .line 142
    .line 143
    sget v6, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 144
    .line 145
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v5, v6, v4}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    goto :goto_0

    .line 161
    :cond_6
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-static {v3}, Ljk/b0;->d(Landroid/view/View;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_7
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 168
    .line 169
    invoke-static {v3}, Ljk/b0;->d(Landroid/view/View;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_8
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 174
    .line 175
    invoke-static {v3}, Ljk/b0;->d(Landroid/view/View;)V

    .line 176
    .line 177
    .line 178
    :cond_9
    :goto_0
    const/16 v3, 0x8

    .line 179
    .line 180
    const/4 v4, 0x0

    .line 181
    if-eqz v0, :cond_f

    .line 182
    .line 183
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 184
    .line 185
    if-nez v0, :cond_a

    .line 186
    .line 187
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    move-object v0, v1

    .line 191
    :cond_a
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 196
    .line 197
    if-nez v5, :cond_b

    .line 198
    .line 199
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    move-object v5, v1

    .line 203
    :cond_b
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v0

    .line 211
    if-nez v0, :cond_f

    .line 212
    .line 213
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 214
    .line 215
    if-eqz v0, :cond_d

    .line 216
    .line 217
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 218
    .line 219
    if-nez v5, :cond_c

    .line 220
    .line 221
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    move-object v5, v1

    .line 225
    :cond_c
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 233
    .line 234
    if-eqz v0, :cond_e

    .line 235
    .line 236
    const/4 v5, 0x1

    .line 237
    invoke-static {v0, v5}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 238
    .line 239
    .line 240
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 241
    .line 242
    if-eqz v0, :cond_10

    .line 243
    .line 244
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_1

    .line 248
    :cond_f
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 249
    .line 250
    if-eqz v0, :cond_10

    .line 251
    .line 252
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    :cond_10
    :goto_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 256
    .line 257
    if-nez v0, :cond_11

    .line 258
    .line 259
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_11
    move-object v1, v0

    .line 264
    :goto_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 269
    .line 270
    .line 271
    move-result v1

    .line 272
    if-nez v1, :cond_12

    .line 273
    .line 274
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->m:Landroid/widget/TextView;

    .line 275
    .line 276
    if-eqz v0, :cond_14

    .line 277
    .line 278
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 279
    .line 280
    .line 281
    goto :goto_3

    .line 282
    :cond_12
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->m:Landroid/widget/TextView;

    .line 283
    .line 284
    if-eqz v1, :cond_13

    .line 285
    .line 286
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 287
    .line 288
    .line 289
    :cond_13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->m:Landroid/widget/TextView;

    .line 290
    .line 291
    if-eqz v0, :cond_14

    .line 292
    .line 293
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 294
    .line 295
    .line 296
    :cond_14
    :goto_3
    return-void
.end method

.method private static final F(ZILcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)Lkotlin/Unit;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 7
    .line 8
    int-to-long v2, p3

    .line 9
    const/4 p3, 0x1

    .line 10
    invoke-virtual {v1, v2, v3, p3}, Lcom/startshorts/androidplayer/utils/TimeUtil;->c(JZ)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    if-nez p0, :cond_0

    .line 18
    .line 19
    sget-object p0, Lfk/u;->a:Lfk/u;

    .line 20
    .line 21
    sget p3, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 22
    .line 23
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p0, p3, p1}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    const-string p1, " | "

    .line 36
    .line 37
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p0, p2, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 44
    .line 45
    if-eqz p0, :cond_1

    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    .line 53
    .line 54
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method

.method private static final G(ZLcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)Lkotlin/Unit;
    .locals 2

    .line 1
    if-nez p0, :cond_1

    .line 2
    .line 3
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 4
    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 11
    .line 12
    if-eqz p0, :cond_2

    .line 13
    .line 14
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 15
    .line 16
    sget v1, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0, v1, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 35
    .line 36
    if-eqz p0, :cond_2

    .line 37
    .line 38
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    iget-object p0, p1, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->d:Lkotlin/jvm/functions/Function0;

    .line 42
    .line 43
    if-eqz p0, :cond_3

    .line 44
    .line 45
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p0
.end method

.method private final H()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->A()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->z()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->y()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const-string v0, "mSubSku"

    .line 15
    .line 16
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->setSelect(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static synthetic q(ZILcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->F(ZILcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->w(Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->D(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(ZLcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->G(ZLcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSubSku"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v3, 0x0

    .line 17
    if-eqz v0, :cond_3

    .line 18
    .line 19
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 20
    .line 21
    if-nez v4, :cond_1

    .line 22
    .line 23
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    move-object v4, v1

    .line 27
    :cond_1
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    move-object v5, v1

    .line 39
    :cond_2
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-nez v4, :cond_3

    .line 48
    .line 49
    const/4 v4, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move v4, v3

    .line 52
    :goto_0
    const-string v5, ""

    .line 53
    .line 54
    if-eqz v4, :cond_6

    .line 55
    .line 56
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 57
    .line 58
    if-nez v0, :cond_4

    .line 59
    .line 60
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    move-object v1, v0

    .line 65
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-nez v0, :cond_5

    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    move-object v5, v0

    .line 73
    goto :goto_4

    .line 74
    :cond_6
    if-eqz v0, :cond_8

    .line 75
    .line 76
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 77
    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_7
    move-object v1, v0

    .line 85
    :goto_2
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-nez v0, :cond_5

    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 93
    .line 94
    if-nez v0, :cond_9

    .line 95
    .line 96
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_9
    move-object v1, v0

    .line 101
    :goto_3
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    if-nez v0, :cond_5

    .line 106
    .line 107
    :goto_4
    invoke-static {v5}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    if-nez v0, :cond_a

    .line 112
    .line 113
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->h:Landroid/widget/TextView;

    .line 114
    .line 115
    if-eqz v0, :cond_c

    .line 116
    .line 117
    const/16 v1, 0x8

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_a
    invoke-virtual {v0}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    move-object v5, v1

    .line 128
    check-cast v5, Ljava/lang/String;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->h:Landroid/widget/TextView;

    .line 131
    .line 132
    if-eqz v1, :cond_b

    .line 133
    .line 134
    invoke-virtual {v0}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    check-cast v0, Ljava/lang/CharSequence;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    :cond_b
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->h:Landroid/widget/TextView;

    .line 144
    .line 145
    if-eqz v0, :cond_c

    .line 146
    .line 147
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 148
    .line 149
    .line 150
    :cond_c
    :goto_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 151
    .line 152
    if-eqz v0, :cond_d

    .line 153
    .line 154
    sget-object v1, Lyf/a;->a:Lyf/a;

    .line 155
    .line 156
    invoke-virtual {v1}, Lyf/a;->g()Landroid/graphics/Typeface;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v0, v1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 161
    .line 162
    .line 163
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 164
    .line 165
    if-eqz v0, :cond_e

    .line 166
    .line 167
    const-wide/16 v1, 0x7d0

    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setAnimationDuration(J)V

    .line 170
    .line 171
    .line 172
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 173
    .line 174
    if-eqz v0, :cond_f

    .line 175
    .line 176
    const-string v1, "0123456789.,"

    .line 177
    .line 178
    invoke-virtual {v0, v1}, Lcom/yy/mobile/rollingtextview/RollingTextView;->f(Ljava/lang/CharSequence;)V

    .line 179
    .line 180
    .line 181
    :cond_f
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 182
    .line 183
    if-eqz v0, :cond_10

    .line 184
    .line 185
    invoke-virtual {v0, v5}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :cond_10
    if-eqz v4, :cond_11

    .line 189
    .line 190
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/purchase/m;

    .line 191
    .line 192
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/purchase/m;-><init>(Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;)V

    .line 193
    .line 194
    .line 195
    const-wide/16 v1, 0x3e8

    .line 196
    .line 197
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    .line 199
    .line 200
    :cond_11
    return-void
.end method

.method private static final w(Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mSubSku"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    :cond_1
    invoke-static {v0}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 26
    .line 27
    if-eqz p0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/CharSequence;

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 40
    .line 41
    if-eqz p0, :cond_3

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/yy/mobile/rollingtextview/RollingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :cond_3
    :goto_0
    return-void
.end method

.method private final x(ILjava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    const-string v0, "mSubSku"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    instance-of v2, v0, Lzc/e;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    check-cast v0, Lzc/e;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v0, v1

    .line 24
    :goto_0
    const-string v2, ""

    .line 25
    .line 26
    if-eqz v0, :cond_7

    .line 27
    .line 28
    invoke-static {v0}, Ljk/k;->j(Lzc/e;)Lcom/startshorts/androidplayer/bean/subs/SubsPrice;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-eqz v0, :cond_7

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsPrice;->getOriginPriceAmountMicros()J

    .line 35
    .line 36
    .line 37
    move-result-wide v3

    .line 38
    long-to-float v0, v3

    .line 39
    const v3, 0x49742400    # 1000000.0f

    .line 40
    .line 41
    .line 42
    div-float/2addr v0, v3

    .line 43
    const/4 v3, 0x7

    .line 44
    const/4 v4, 0x1

    .line 45
    if-eq p1, v4, :cond_4

    .line 46
    .line 47
    const/4 v5, 0x2

    .line 48
    const/16 v6, 0x16d

    .line 49
    .line 50
    if-eq p1, v5, :cond_3

    .line 51
    .line 52
    const/4 v5, 0x4

    .line 53
    if-eq p1, v5, :cond_2

    .line 54
    .line 55
    const/4 v5, 0x5

    .line 56
    if-eq p1, v5, :cond_4

    .line 57
    .line 58
    const/4 v5, 0x6

    .line 59
    if-eq p1, v5, :cond_3

    .line 60
    .line 61
    if-eq p1, v3, :cond_2

    .line 62
    .line 63
    return-object v2

    .line 64
    :cond_2
    :goto_1
    int-to-float p1, v6

    .line 65
    :goto_2
    div-float/2addr v0, p1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/16 p1, 0xc

    .line 68
    .line 69
    int-to-float p1, p1

    .line 70
    mul-float/2addr v0, p1

    .line 71
    goto :goto_1

    .line 72
    :cond_4
    int-to-float p1, v3

    .line 73
    goto :goto_2

    .line 74
    :goto_3
    sget-object p1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 75
    .line 76
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    const-string v2, "%.2f"

    .line 91
    .line 92
    invoke-static {p1, v2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    const-string v0, "format(...)"

    .line 97
    .line 98
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    if-eqz p2, :cond_5

    .line 102
    .line 103
    invoke-static {p2}, Ljk/v;->q(Ljava/lang/String;)Lkotlin/Pair;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    :cond_5
    if-eqz v1, :cond_6

    .line 108
    .line 109
    new-instance p2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Ljava/lang/String;

    .line 119
    .line 120
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    sget v0, Lcom/startshorts/androidplayer/R$string;->template_unlock_dialog_day_price:I

    .line 135
    .line 136
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    const-string p2, "getString(...)"

    .line 145
    .line 146
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    return-object p1

    .line 150
    :cond_7
    return-object v2
.end method

.method private final y()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSubSku"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_3

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 23
    .line 24
    if-nez v3, :cond_1

    .line 25
    .line 26
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move-object v1, v3

    .line 31
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    :cond_2
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 39
    .line 40
    if-eqz v0, :cond_6

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    invoke-static {v0, v1}, Ljk/y;->j(Landroid/widget/TextView;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_2

    .line 47
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 48
    .line 49
    if-nez v0, :cond_4

    .line 50
    .line 51
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    move-object v0, v1

    .line 55
    :cond_4
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 60
    .line 61
    if-nez v3, :cond_5

    .line 62
    .line 63
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    move-object v1, v3

    .line 68
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->x(ILjava/lang/String;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 77
    .line 78
    if-eqz v1, :cond_6

    .line 79
    .line 80
    new-instance v2, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const/16 v3, 0x2248

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    .line 99
    .line 100
    :cond_6
    :goto_2
    return-void
.end method

.method private final z()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "mSubSku"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v0, v1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_subscribed:I

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    goto :goto_2

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 30
    .line 31
    if-nez v0, :cond_2

    .line 32
    .line 33
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    move-object v0, v1

    .line 37
    :cond_2
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_4

    .line 42
    .line 43
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 44
    .line 45
    if-nez v0, :cond_3

    .line 46
    .line 47
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v1, v0

    .line 52
    :goto_0
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 58
    .line 59
    if-nez v0, :cond_5

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_5
    move-object v1, v0

    .line 66
    :goto_1
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->j:Landroid/widget/TextView;

    .line 71
    .line 72
    if-eqz v1, :cond_6

    .line 73
    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    :cond_6
    return-void
.end method


# virtual methods
.method public final B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getOnExpired()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSku()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mSubSku"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    return-object v0
.end method

.method public i(Ljava/lang/Object;)V
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "mSubSku"

    .line 6
    .line 7
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->setSelect(Z)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$id;->bg_selected_view:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->e:Landroid/view/View;

    .line 11
    .line 12
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_desc_price_tv:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/TextView;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->k:Landroid/widget/TextView;

    .line 21
    .line 22
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_label_tv:I

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->l:Landroid/widget/TextView;

    .line 31
    .line 32
    sget v0, Lcom/startshorts/androidplayer/R$id;->sku_renew_tv:I

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->m:Landroid/widget/TextView;

    .line 41
    .line 42
    sget v0, Lcom/startshorts/androidplayer/R$id;->lottie_view:I

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    .line 49
    .line 50
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->n:Lcom/airbnb/lottie/LottieAnimationView;

    .line 51
    .line 52
    return-void
.end method

.method public final setOnExpired(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->d:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setOnRight(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->b:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setSelect(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->e:Landroid/view/View;

    .line 4
    .line 5
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->C()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->e:Landroid/view/View;

    .line 13
    .line 14
    invoke-static {p1}, Ljk/b0;->e(Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->n:Lcom/airbnb/lottie/LottieAnimationView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/airbnb/lottie/LottieAnimationView;->m()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->n:Lcom/airbnb/lottie/LottieAnimationView;

    .line 25
    .line 26
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final setSku(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "subSku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->a:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    const-string p1, "mSubSku"

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isBigCard()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    sget p1, Lcom/startshorts/androidplayer/R$id;->sku_type_name_tv:I

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/widget/TextView;

    .line 29
    .line 30
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->f:Landroid/widget/TextView;

    .line 31
    .line 32
    sget p1, Lcom/startshorts/androidplayer/R$id;->sku_db_price_symbol_tv:I

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->h:Landroid/widget/TextView;

    .line 41
    .line 42
    sget p1, Lcom/startshorts/androidplayer/R$id;->sku_db_price_tv:I

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    check-cast p1, Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->i:Lcom/yy/mobile/rollingtextview/RollingTextView;

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->E()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget p1, Lcom/startshorts/androidplayer/R$id;->sku_type_name_tv:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 63
    .line 64
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->g:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 65
    .line 66
    sget p1, Lcom/startshorts/androidplayer/R$id;->sku_price_tv:I

    .line 67
    .line 68
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    check-cast p1, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->j:Landroid/widget/TextView;

    .line 75
    .line 76
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->H()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method public final u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->c:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    const-string v2, "ReproductionSubsView"

    .line 15
    .line 16
    const-string v3, "cancelCountDownJob"

    .line 17
    .line 18
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/purchase/SubDBSkuCardView;->c:Lkotlinx/coroutines/r;

    .line 22
    .line 23
    return-void
.end method
