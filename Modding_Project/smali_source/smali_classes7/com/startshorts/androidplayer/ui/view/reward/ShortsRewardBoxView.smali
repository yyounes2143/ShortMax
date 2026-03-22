.class public Lcom/startshorts/androidplayer/ui/view/reward/ShortsRewardBoxView;
.super Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;
.source "ShortsRewardBoxView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
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

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_shorts_reward_box:I

    .line 2
    .line 3
    return v0
.end method

.method public setBubbleTextForAbTest()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "setBubbleTextForAbTest value = "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->k1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestValue()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->q(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->k1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    const/4 v2, 0x0

    .line 43
    if-eq v0, v1, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x2

    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    goto/16 :goto_1

    .line 49
    .line 50
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0, v2, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_fragment_reward_tip2:I

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getTotalBonus()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_1

    .line 87
    .line 88
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/high16 v3, 0x41900000    # 18.0f

    .line 97
    .line 98
    invoke-static {v1, v3, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    float-to-int v0, v0

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    const-string v4, "getContext(...)"

    .line 108
    .line 109
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->z(Landroid/content/Context;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    const/4 v4, 0x7

    .line 117
    const/4 v5, 0x0

    .line 118
    if-nez v3, :cond_2

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->w(I)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-virtual {p0, v4}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->w(I)I

    .line 129
    .line 130
    .line 131
    move-result v4

    .line 132
    invoke-virtual {v3, v1, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {p0, v4}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->w(I)I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {p0, v5}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->w(I)I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    invoke-virtual {v1, v3, v5, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 149
    .line 150
    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_coin_discover_reward:I

    .line 160
    .line 161
    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    if-eqz v3, :cond_3

    .line 166
    .line 167
    invoke-virtual {v3, v5, v5, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 168
    .line 169
    .line 170
    :cond_3
    invoke-virtual {v1, v3, v2, v2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    sget v2, Lcom/startshorts/androidplayer/R$string;->sign_in_success_dialog_bonus:I

    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getTotalBonus()I

    .line 184
    .line 185
    .line 186
    move-result v3

    .line 187
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v3

    .line 191
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/reward/DiscoverRewardBoxView;->getMTipTV()Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_fragment_reward_tip:I

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    .line 219
    .line 220
    :goto_1
    return-void
.end method
