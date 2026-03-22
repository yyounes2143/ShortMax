.class public final Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "SubsProMainStyleView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private b:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_subs_type_pro_main:I

    .line 2
    .line 3
    return v0
.end method

.method public final setSku(Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 7
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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v3, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    sget v4, Lcom/startshorts/androidplayer/R$color;->color_subs_type_view_pro_card_name_start:I

    .line 30
    .line 31
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    sget v5, Lcom/startshorts/androidplayer/R$color;->color_subs_type_view_pro_card_name_end:I

    .line 40
    .line 41
    invoke-static {v4, v5}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 46
    .line 47
    .line 48
    invoke-static {v0, v2}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeWithDefaults(Landroid/widget/TextView;I)V

    .line 49
    .line 50
    .line 51
    const/16 v3, 0xa

    .line 52
    .line 53
    const/16 v4, 0x17

    .line 54
    .line 55
    invoke-static {v0, v3, v4, v2, v1}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 56
    .line 57
    .line 58
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    const/4 v3, 0x4

    .line 63
    if-eq v0, v2, :cond_3

    .line 64
    .line 65
    if-eq v0, v1, :cond_2

    .line 66
    .line 67
    if-eq v0, v3, :cond_1

    .line 68
    .line 69
    const/4 v1, 0x5

    .line 70
    if-eq v0, v1, :cond_3

    .line 71
    .line 72
    const/4 v1, 0x6

    .line 73
    if-eq v0, v1, :cond_2

    .line 74
    .line 75
    const/4 v1, 0x7

    .line 76
    if-eq v0, v1, :cond_1

    .line 77
    .line 78
    const-string v0, ""

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 82
    .line 83
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    goto :goto_0

    .line 90
    :cond_2
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 91
    .line 92
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    goto :goto_0

    .line 99
    :cond_3
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 100
    .line 101
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Lfk/u;->d(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-nez v1, :cond_4

    .line 112
    .line 113
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 114
    .line 115
    if-eqz v0, :cond_6

    .line 116
    .line 117
    invoke-static {v0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 122
    .line 123
    if-eqz v1, :cond_6

    .line 124
    .line 125
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    const-string v2, "fil"

    .line 135
    .line 136
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    const/high16 v0, 0x41300000    # 11.0f

    .line 143
    .line 144
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextSize(F)V

    .line 145
    .line 146
    .line 147
    const/4 v0, 0x3

    .line 148
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 149
    .line 150
    .line 151
    :cond_5
    invoke-static {v1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 152
    .line 153
    .line 154
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const/16 v1, 0x8

    .line 159
    .line 160
    const/4 v2, 0x0

    .line 161
    if-eqz v0, :cond_11

    .line 162
    .line 163
    sget-object v4, Lqf/h;->a:Lqf/h;

    .line 164
    .line 165
    invoke-virtual {v4, v0}, Lqf/h;->m(Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;)Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_11

    .line 170
    .line 171
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 172
    .line 173
    if-eqz v4, :cond_7

    .line 174
    .line 175
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    :cond_7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    if-eqz v1, :cond_8

    .line 183
    .line 184
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    goto :goto_2

    .line 189
    :cond_8
    move v1, v2

    .line 190
    :goto_2
    if-lez v1, :cond_a

    .line 191
    .line 192
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 193
    .line 194
    if-eqz v1, :cond_9

    .line 195
    .line 196
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v4

    .line 200
    sget v5, Lcom/startshorts/androidplayer/R$string;->discount_label_off:I

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    :cond_9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getLabelIcon()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    if-eqz v1, :cond_a

    .line 226
    .line 227
    sget-object v4, Lkk/f;->a:Lkk/f;

    .line 228
    .line 229
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 230
    .line 231
    new-instance v6, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 232
    .line 233
    invoke-direct {v6}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v6, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    invoke-virtual {v4, v5, v6}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 242
    .line 243
    .line 244
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 245
    .line 246
    if-eqz v1, :cond_a

    .line 247
    .line 248
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    :cond_a
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->i:Landroid/view/View;

    .line 252
    .line 253
    if-eqz v1, :cond_d

    .line 254
    .line 255
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPercent()Ljava/lang/Integer;

    .line 256
    .line 257
    .line 258
    move-result-object v4

    .line 259
    if-eqz v4, :cond_b

    .line 260
    .line 261
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    goto :goto_3

    .line 266
    :cond_b
    move v4, v2

    .line 267
    :goto_3
    if-lez v4, :cond_c

    .line 268
    .line 269
    move v3, v2

    .line 270
    :cond_c
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 271
    .line 272
    .line 273
    :cond_d
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-eqz v1, :cond_e

    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_subscribed:I

    .line 284
    .line 285
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    goto :goto_4

    .line 290
    :cond_e
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_f

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 297
    .line 298
    .line 299
    move-result v1

    .line 300
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getDiscountPriceText()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    goto :goto_4

    .line 309
    :cond_f
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v2

    .line 317
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v1

    .line 321
    :goto_4
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 325
    .line 326
    if-eqz v2, :cond_10

    .line 327
    .line 328
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 329
    .line 330
    .line 331
    :cond_10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 332
    .line 333
    if-eqz v1, :cond_18

    .line 334
    .line 335
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 336
    .line 337
    .line 338
    move-result p1

    .line 339
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getOriginPriceText()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->w(ILjava/lang/String;)Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object p1

    .line 347
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    .line 349
    .line 350
    goto :goto_6

    .line 351
    :cond_11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->i:Landroid/view/View;

    .line 352
    .line 353
    if-eqz v0, :cond_12

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .line 357
    .line 358
    :cond_12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 359
    .line 360
    if-eqz v0, :cond_14

    .line 361
    .line 362
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 363
    .line 364
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-nez v1, :cond_13

    .line 369
    .line 370
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 371
    .line 372
    .line 373
    move-result v1

    .line 374
    if-eqz v1, :cond_13

    .line 375
    .line 376
    move v3, v2

    .line 377
    :cond_13
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :cond_14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 381
    .line 382
    .line 383
    move-result v0

    .line 384
    if-eqz v0, :cond_15

    .line 385
    .line 386
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_subscribed:I

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v0

    .line 396
    goto :goto_5

    .line 397
    :cond_15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_16

    .line 402
    .line 403
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 404
    .line 405
    .line 406
    move-result v0

    .line 407
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v1

    .line 411
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object v0

    .line 415
    goto :goto_5

    .line 416
    :cond_16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 417
    .line 418
    .line 419
    move-result v0

    .line 420
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->v(ILjava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    :goto_5
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 429
    .line 430
    .line 431
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 432
    .line 433
    if-eqz v1, :cond_17

    .line 434
    .line 435
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    .line 437
    .line 438
    :cond_17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 439
    .line 440
    if-eqz v0, :cond_18

    .line 441
    .line 442
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-direct {p0, v1, p1}, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->w(ILjava/lang/String;)Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object p1

    .line 454
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    .line 456
    .line 457
    :cond_18
    :goto_6
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->b:Landroid/view/View;

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
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->c:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->i:Landroid/view/View;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->j:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/subs/SubsProMainStyleView;->k:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 101
    .line 102
    return-void
.end method
