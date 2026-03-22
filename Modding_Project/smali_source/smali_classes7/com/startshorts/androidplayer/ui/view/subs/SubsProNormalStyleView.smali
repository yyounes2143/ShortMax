.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "SubsProNormalStyleView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final v(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const-string v1, "getString(...)"

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_year_new:I

    .line 36
    .line 37
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_month_new:I

    .line 54
    .line 55
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_week_new:I

    .line 72
    .line 73
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object p2

    .line 85
    :cond_4
    :goto_1
    const-string p1, ""

    .line 86
    .line 87
    return-object p1
.end method

.method private final w(ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p2, :cond_4

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    const-string v1, "getString(...)"

    .line 12
    .line 13
    if-eq p1, v0, :cond_3

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    if-eq p1, v0, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x4

    .line 19
    if-eq p1, v0, :cond_1

    .line 20
    .line 21
    const/4 v0, 0x5

    .line 22
    if-eq p1, v0, :cond_3

    .line 23
    .line 24
    const/4 v0, 0x6

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    if-eq p1, v0, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_year:I

    .line 36
    .line 37
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_month:I

    .line 54
    .line 55
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_renew_per_week:I

    .line 72
    .line 73
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-virtual {p1, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_0
    return-object p2

    .line 85
    :cond_4
    :goto_1
    const-string p1, ""

    .line 86
    .line 87
    return-object p1
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_subs_type_pro_normal:I

    .line 2
    .line 3
    return v0
.end method

.method public final setSku(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 8
    .param p1    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "sku"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/16 v1, 0x8

    .line 11
    .line 12
    const/4 v2, 0x4

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v0, :cond_d

    .line 15
    .line 16
    sget-object v4, Lqf/h;->a:Lqf/h;

    .line 17
    .line 18
    invoke-virtual {v4, v0}, Lqf/h;->m(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)Z

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_d

    .line 23
    .line 24
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 25
    .line 26
    if-eqz v4, :cond_0

    .line 27
    .line 28
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-eqz v1, :cond_1

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    if-eqz v1, :cond_1

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    goto :goto_0

    .line 48
    :cond_1
    move v1, v3

    .line 49
    :goto_0
    const/4 v4, 0x0

    .line 50
    if-lez v1, :cond_4

    .line 51
    .line 52
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    sget v6, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    if-eqz v7, :cond_2

    .line 67
    .line 68
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    goto :goto_1

    .line 73
    :cond_2
    move-object v7, v4

    .line 74
    :goto_1
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-eqz v1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelIcon()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    sget-object v5, Lkk/f;->a:Lkk/f;

    .line 102
    .line 103
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 104
    .line 105
    new-instance v7, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 106
    .line 107
    invoke-direct {v7}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    invoke-virtual {v5, v6, v7}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 116
    .line 117
    .line 118
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->i:Landroid/view/View;

    .line 126
    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    if-eqz v5, :cond_5

    .line 134
    .line 135
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    if-eqz v5, :cond_5

    .line 140
    .line 141
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 142
    .line 143
    .line 144
    move-result v5

    .line 145
    goto :goto_2

    .line 146
    :cond_5
    move v5, v3

    .line 147
    :goto_2
    if-lez v5, :cond_6

    .line 148
    .line 149
    move v5, v3

    .line 150
    goto :goto_3

    .line 151
    :cond_6
    move v5, v2

    .line 152
    :goto_3
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :cond_7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_8

    .line 160
    .line 161
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    sget v4, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_subscribed:I

    .line 166
    .line 167
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    goto :goto_4

    .line 172
    :cond_8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-eqz v1, :cond_a

    .line 177
    .line 178
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 183
    .line 184
    .line 185
    move-result-object v5

    .line 186
    if-eqz v5, :cond_9

    .line 187
    .line 188
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    :cond_9
    invoke-direct {p0, v1, v4}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    goto :goto_4

    .line 197
    :cond_a
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-eqz v5, :cond_b

    .line 206
    .line 207
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    :cond_b
    invoke-direct {p0, v1, v4}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    :goto_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 216
    .line 217
    .line 218
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 219
    .line 220
    if-eqz v4, :cond_c

    .line 221
    .line 222
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    :cond_c
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 226
    .line 227
    if-eqz v1, :cond_14

    .line 228
    .line 229
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 230
    .line 231
    .line 232
    move-result v4

    .line 233
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-direct {p0, v4, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->w(ILjava/lang/String;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    .line 243
    .line 244
    goto/16 :goto_7

    .line 245
    .line 246
    :cond_d
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->i:Landroid/view/View;

    .line 247
    .line 248
    if-eqz v0, :cond_e

    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 251
    .line 252
    .line 253
    :cond_e
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 254
    .line 255
    if-eqz v0, :cond_10

    .line 256
    .line 257
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 258
    .line 259
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-nez v1, :cond_f

    .line 264
    .line 265
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_f

    .line 270
    .line 271
    move v1, v3

    .line 272
    goto :goto_5

    .line 273
    :cond_f
    move v1, v2

    .line 274
    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .line 276
    .line 277
    :cond_10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-eqz v0, :cond_11

    .line 282
    .line 283
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_subscribed:I

    .line 288
    .line 289
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    goto :goto_6

    .line 294
    :cond_11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_12

    .line 299
    .line 300
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 301
    .line 302
    .line 303
    move-result v0

    .line 304
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    goto :goto_6

    .line 313
    :cond_12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v0

    .line 325
    :goto_6
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 326
    .line 327
    .line 328
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 329
    .line 330
    if-eqz v1, :cond_13

    .line 331
    .line 332
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    .line 334
    .line 335
    :cond_13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 336
    .line 337
    if-eqz v0, :cond_14

    .line 338
    .line 339
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v4

    .line 347
    invoke-direct {p0, v1, v4}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->w(ILjava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 352
    .line 353
    .line 354
    :cond_14
    :goto_7
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 355
    .line 356
    const/4 v1, 0x2

    .line 357
    const/4 v4, 0x1

    .line 358
    if-eqz v0, :cond_15

    .line 359
    .line 360
    sget-object v5, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 361
    .line 362
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 363
    .line 364
    .line 365
    move-result v6

    .line 366
    invoke-virtual {v5, v6}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 367
    .line 368
    .line 369
    move-result-object v5

    .line 370
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    .line 372
    .line 373
    invoke-static {v0, v4}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 374
    .line 375
    .line 376
    const/16 v5, 0xa

    .line 377
    .line 378
    const/16 v6, 0x17

    .line 379
    .line 380
    invoke-static {v0, v5, v6, v4, v1}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 381
    .line 382
    .line 383
    :cond_15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 384
    .line 385
    .line 386
    move-result p1

    .line 387
    if-eq p1, v4, :cond_18

    .line 388
    .line 389
    if-eq p1, v1, :cond_17

    .line 390
    .line 391
    if-eq p1, v2, :cond_16

    .line 392
    .line 393
    const/4 v0, 0x5

    .line 394
    if-eq p1, v0, :cond_18

    .line 395
    .line 396
    const/4 v0, 0x6

    .line 397
    if-eq p1, v0, :cond_17

    .line 398
    .line 399
    const/4 v0, 0x7

    .line 400
    if-eq p1, v0, :cond_16

    .line 401
    .line 402
    const-string p1, ""

    .line 403
    .line 404
    goto :goto_8

    .line 405
    :cond_16
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 406
    .line 407
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

    .line 408
    .line 409
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 410
    .line 411
    .line 412
    move-result-object p1

    .line 413
    goto :goto_8

    .line 414
    :cond_17
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 415
    .line 416
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    .line 417
    .line 418
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object p1

    .line 422
    goto :goto_8

    .line 423
    :cond_18
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 424
    .line 425
    sget v0, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    .line 426
    .line 427
    invoke-virtual {p1, v0}, Lfk/u;->d(I)Ljava/lang/String;

    .line 428
    .line 429
    .line 430
    move-result-object p1

    .line 431
    :goto_8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 432
    .line 433
    .line 434
    move-result v0

    .line 435
    if-nez v0, :cond_19

    .line 436
    .line 437
    move v3, v4

    .line 438
    :cond_19
    if-eqz v3, :cond_1a

    .line 439
    .line 440
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 441
    .line 442
    if-eqz p1, :cond_1c

    .line 443
    .line 444
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 445
    .line 446
    .line 447
    goto :goto_9

    .line 448
    :cond_1a
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 449
    .line 450
    if-eqz v0, :cond_1b

    .line 451
    .line 452
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    .line 454
    .line 455
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 456
    .line 457
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object p1

    .line 461
    const-string v1, "fil"

    .line 462
    .line 463
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    move-result p1

    .line 467
    if-eqz p1, :cond_1b

    .line 468
    .line 469
    const/high16 p1, 0x41300000    # 11.0f

    .line 470
    .line 471
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 472
    .line 473
    .line 474
    const/4 p1, 0x3

    .line 475
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 476
    .line 477
    .line 478
    :cond_1b
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 479
    .line 480
    if-eqz p1, :cond_1c

    .line 481
    .line 482
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 483
    .line 484
    .line 485
    :cond_1c
    :goto_9
    return-void
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_bg_view:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->b:Landroid/view/View;

    .line 13
    .line 14
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_name_tv:I

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 23
    .line 24
    sget p1, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 31
    .line 32
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    sget p1, Lcom/startshorts/androidplayer/R$id;->discount_tv:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    sget p1, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 51
    .line 52
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 53
    .line 54
    sget p1, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 61
    .line 62
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 63
    .line 64
    sget p1, Lcom/startshorts/androidplayer/R$id;->renew_price_tv:I

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 71
    .line 72
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 73
    .line 74
    sget p1, Lcom/startshorts/androidplayer/R$id;->llLabel:I

    .line 75
    .line 76
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->i:Landroid/view/View;

    .line 81
    .line 82
    sget p1, Lcom/startshorts/androidplayer/R$id;->ivPayLogo:I

    .line 83
    .line 84
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 91
    .line 92
    sget p1, Lcom/startshorts/androidplayer/R$id;->tvLabel:I

    .line 93
    .line 94
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 99
    .line 100
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProNormalStyleView;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 101
    .line 102
    return-void
.end method
