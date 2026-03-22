.class public final Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "SubsTypeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->l:Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic n(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->u(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic o(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final q(ILjava/lang/String;)Ljava/lang/String;
    .locals 1

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
    if-eq p1, v0, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    if-eq p1, v0, :cond_2

    .line 15
    .line 16
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x5

    .line 20
    if-eq p1, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x6

    .line 23
    if-eq p1, v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x7

    .line 26
    if-eq p1, v0, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 30
    .line 31
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_year_new:I

    .line 32
    .line 33
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_month_new:I

    .line 45
    .line 46
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    sget-object p1, Lfk/u;->a:Lfk/u;

    .line 56
    .line 57
    sget v0, Lcom/startshorts/androidplayer/R$string;->subs_type_view_per_week_new:I

    .line 58
    .line 59
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1, v0, p2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    :goto_0
    return-object p2

    .line 68
    :cond_4
    :goto_1
    const-string p1, ""

    .line 69
    .line 70
    return-object p1
.end method

.method private final r(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x6

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x7

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_subs_type_view_weekly_card:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_subs_type_view_yearly_card:I

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_subs_type_view_monthly_card:I

    .line 24
    .line 25
    :goto_0
    sget v1, Lcom/startshorts/androidplayer/R$id;->card_bg_view:I

    .line 26
    .line 27
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->c(II)V

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->z0()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/16 v2, 0x8

    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubscript()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_4

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    sget v1, Lcom/startshorts/androidplayer/R$id;->discount_tv:I

    .line 55
    .line 56
    invoke-virtual {p1, v1, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 57
    .line 58
    .line 59
    sget v1, Lcom/startshorts/androidplayer/R$id;->discount_tv:I

    .line 60
    .line 61
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSubscript()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    if-eqz v4, :cond_3

    .line 66
    .line 67
    invoke-static {v4}, Ljk/v;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const/4 v4, 0x0

    .line 73
    :goto_1
    invoke-virtual {p1, v1, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    goto :goto_3

    .line 77
    :cond_4
    :goto_2
    sget v1, Lcom/startshorts/androidplayer/R$id;->discount_tv:I

    .line 78
    .line 79
    invoke-virtual {p1, v1, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 80
    .line 81
    .line 82
    :goto_3
    sget v1, Lcom/startshorts/androidplayer/R$id;->card_name_tv:I

    .line 83
    .line 84
    sget-object v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 85
    .line 86
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-virtual {p1, v1, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    sget v1, Lcom/startshorts/androidplayer/R$id;->total_earning_value_tv:I

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCoins()I

    .line 100
    .line 101
    .line 102
    move-result v4

    .line 103
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getBonus()Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    if-eqz v5, :cond_5

    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v5

    .line 113
    goto :goto_4

    .line 114
    :cond_5
    move v5, v3

    .line 115
    :goto_4
    add-int/2addr v4, v5

    .line 116
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-virtual {p1, v1, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 121
    .line 122
    .line 123
    sget v1, Lcom/startshorts/androidplayer/R$id;->total_coins_tv:I

    .line 124
    .line 125
    sget-object v4, Lfk/u;->a:Lfk/u;

    .line 126
    .line 127
    sget v5, Lcom/startshorts/androidplayer/R$string;->common_coins:I

    .line 128
    .line 129
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getCoins()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v6

    .line 137
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {v4, v5, v6}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    invoke-virtual {p1, v1, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    sget v1, Lcom/startshorts/androidplayer/R$id;->total_bonus_tv:I

    .line 149
    .line 150
    sget v5, Lcom/startshorts/androidplayer/R$string;->common_bonus:I

    .line 151
    .line 152
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getBonus()Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v6

    .line 156
    if-eqz v6, :cond_6

    .line 157
    .line 158
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    goto :goto_5

    .line 163
    :cond_6
    move v6, v3

    .line 164
    :goto_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v6

    .line 168
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v6

    .line 172
    invoke-virtual {v4, v5, v6}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v5

    .line 176
    invoke-virtual {p1, v1, v5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->p0()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    const/4 v5, 0x1

    .line 184
    if-eqz v1, :cond_8

    .line 185
    .line 186
    if-eq v1, v5, :cond_7

    .line 187
    .line 188
    goto :goto_6

    .line 189
    :cond_7
    sget v1, Lcom/startshorts/androidplayer/R$id;->total_bonus_collect_tv:I

    .line 190
    .line 191
    sget v6, Lcom/startshorts/androidplayer/R$string;->subs_type_view_old_test_claim_bonus:I

    .line 192
    .line 193
    invoke-virtual {v4, v6}, Lfk/u;->d(I)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v6

    .line 197
    invoke-virtual {p1, v1, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 198
    .line 199
    .line 200
    goto :goto_6

    .line 201
    :cond_8
    sget v1, Lcom/startshorts/androidplayer/R$id;->total_bonus_collect_tv:I

    .line 202
    .line 203
    sget v6, Lcom/startshorts/androidplayer/R$string;->subs_type_view_claim_bonus:I

    .line 204
    .line 205
    invoke-virtual {v4, v6}, Lfk/u;->d(I)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v6

    .line 209
    invoke-virtual {p1, v1, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 210
    .line 211
    .line 212
    :goto_6
    sget v1, Lcom/startshorts/androidplayer/R$id;->renew_price_tv:I

    .line 213
    .line 214
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    invoke-virtual {p1, v1, v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-eqz v1, :cond_9

    .line 226
    .line 227
    sget p2, Lcom/startshorts/androidplayer/R$id;->subscribed_tv:I

    .line 228
    .line 229
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 230
    .line 231
    .line 232
    sget p2, Lcom/startshorts/androidplayer/R$id;->expiration_date_tv:I

    .line 233
    .line 234
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 235
    .line 236
    .line 237
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 238
    .line 239
    invoke-virtual {p1, p2, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 240
    .line 241
    .line 242
    sget p2, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 243
    .line 244
    invoke-virtual {p1, p2, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 245
    .line 246
    .line 247
    sget p2, Lcom/startshorts/androidplayer/R$id;->discount_tip_tv:I

    .line 248
    .line 249
    invoke-virtual {p1, p2, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 250
    .line 251
    .line 252
    sget p2, Lcom/startshorts/androidplayer/R$id;->expiration_date_tv:I

    .line 253
    .line 254
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_expire_time:I

    .line 255
    .line 256
    sget-object v5, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o0()J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 263
    .line 264
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    const/4 v10, 0x4

    .line 269
    const/4 v11, 0x0

    .line 270
    const/4 v9, 0x0

    .line 271
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/utils/TimeUtil;->e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v4, v1, v0}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 284
    .line 285
    .line 286
    goto :goto_7

    .line 287
    :cond_9
    sget v0, Lcom/startshorts/androidplayer/R$id;->subscribed_tv:I

    .line 288
    .line 289
    invoke-virtual {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 290
    .line 291
    .line 292
    sget v0, Lcom/startshorts/androidplayer/R$id;->expiration_date_tv:I

    .line 293
    .line 294
    invoke-virtual {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 295
    .line 296
    .line 297
    sget v0, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 298
    .line 299
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-eqz v0, :cond_b

    .line 307
    .line 308
    sget v0, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 309
    .line 310
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-direct {p0, v1, v2}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 323
    .line 324
    .line 325
    sget v0, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 326
    .line 327
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 328
    .line 329
    .line 330
    sget v0, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 331
    .line 332
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p2

    .line 336
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 337
    .line 338
    .line 339
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 340
    .line 341
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 342
    .line 343
    .line 344
    move-result-object p2

    .line 345
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 346
    .line 347
    if-eqz p2, :cond_a

    .line 348
    .line 349
    invoke-static {p2, v5}, Ljk/y;->i(Landroid/widget/TextView;Z)V

    .line 350
    .line 351
    .line 352
    :cond_a
    sget p2, Lcom/startshorts/androidplayer/R$id;->discount_tip_tv:I

    .line 353
    .line 354
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 355
    .line 356
    .line 357
    goto :goto_7

    .line 358
    :cond_b
    sget v0, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 359
    .line 360
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 361
    .line 362
    .line 363
    move-result v1

    .line 364
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p2

    .line 368
    invoke-direct {p0, v1, p2}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 373
    .line 374
    .line 375
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 376
    .line 377
    invoke-virtual {p1, p2, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 378
    .line 379
    .line 380
    sget p2, Lcom/startshorts/androidplayer/R$id;->discount_tip_tv:I

    .line 381
    .line 382
    invoke-virtual {p1, p2, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 383
    .line 384
    .line 385
    :goto_7
    return-void
.end method

.method private final s(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ")V"
        }
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->card_name_tv:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->Companion:Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku$Companion;->getCardName(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lqd/a;

    .line 25
    .line 26
    invoke-direct {v1, p1, v0}, Lqd/a;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_subs_type_view_pro_card_name_start:I

    .line 37
    .line 38
    invoke-static {v1, v2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_subs_type_view_pro_card_name_end:I

    .line 47
    .line 48
    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;->setColor(II)V

    .line 53
    .line 54
    .line 55
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    const/4 v1, 0x1

    .line 60
    if-eq v0, v1, :cond_3

    .line 61
    .line 62
    const/4 v2, 0x2

    .line 63
    if-eq v0, v2, :cond_2

    .line 64
    .line 65
    const/4 v2, 0x4

    .line 66
    if-eq v0, v2, :cond_1

    .line 67
    .line 68
    const/4 v2, 0x5

    .line 69
    if-eq v0, v2, :cond_3

    .line 70
    .line 71
    const/4 v2, 0x6

    .line 72
    if-eq v0, v2, :cond_2

    .line 73
    .line 74
    const/4 v2, 0x7

    .line 75
    if-eq v0, v2, :cond_1

    .line 76
    .line 77
    const-string v0, ""

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 81
    .line 82
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_annual_pro_card_desc:I

    .line 83
    .line 84
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    :cond_2
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 90
    .line 91
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_monthly_pro_card_desc:I

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    goto :goto_0

    .line 98
    :cond_3
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 99
    .line 100
    sget v2, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_weekly_pro_card_desc:I

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Lfk/u;->d(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    :goto_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    const/4 v3, 0x0

    .line 111
    const/16 v4, 0x8

    .line 112
    .line 113
    if-nez v2, :cond_4

    .line 114
    .line 115
    sget v0, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 116
    .line 117
    invoke-virtual {p1, v0, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    sget v2, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 122
    .line 123
    invoke-virtual {p1, v2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    sget v0, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 127
    .line 128
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 129
    .line 130
    .line 131
    :goto_1
    sget v0, Lcom/startshorts/androidplayer/R$id;->renew_price_tv:I

    .line 132
    .line 133
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->formatRenewPrice()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    invoke-virtual {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getInSubscription()Z

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    if-eqz v0, :cond_5

    .line 145
    .line 146
    sget p2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 147
    .line 148
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 149
    .line 150
    .line 151
    sget p2, Lcom/startshorts/androidplayer/R$id;->subscribed_tv:I

    .line 152
    .line 153
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 154
    .line 155
    .line 156
    sget p2, Lcom/startshorts/androidplayer/R$id;->expiration_date_tv:I

    .line 157
    .line 158
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 159
    .line 160
    .line 161
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 162
    .line 163
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 164
    .line 165
    .line 166
    sget p2, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 167
    .line 168
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 169
    .line 170
    .line 171
    sget p2, Lcom/startshorts/androidplayer/R$id;->expiration_date_tv:I

    .line 172
    .line 173
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 174
    .line 175
    sget v1, Lcom/startshorts/androidplayer/R$string;->profile_subscription_view_expire_time:I

    .line 176
    .line 177
    sget-object v2, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 178
    .line 179
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 180
    .line 181
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->o0()J

    .line 182
    .line 183
    .line 184
    move-result-wide v3

    .line 185
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 186
    .line 187
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    const/4 v7, 0x4

    .line 192
    const/4 v8, 0x0

    .line 193
    const/4 v6, 0x0

    .line 194
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/utils/TimeUtil;->e(Lcom/startshorts/androidplayer/utils/TimeUtil;JLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v2

    .line 198
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    invoke-virtual {v0, v1, v2}, Lfk/u;->e(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 207
    .line 208
    .line 209
    goto/16 :goto_3

    .line 210
    .line 211
    :cond_5
    sget v0, Lcom/startshorts/androidplayer/R$id;->subscribed_tv:I

    .line 212
    .line 213
    invoke-virtual {p1, v0, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 214
    .line 215
    .line 216
    sget v0, Lcom/startshorts/androidplayer/R$id;->expiration_date_tv:I

    .line 217
    .line 218
    invoke-virtual {p1, v0, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 219
    .line 220
    .line 221
    sget v0, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 222
    .line 223
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayment()Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;

    .line 227
    .line 228
    .line 229
    move-result-object v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    const/4 v5, 0x0

    .line 237
    if-eqz v2, :cond_6

    .line 238
    .line 239
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    goto :goto_2

    .line 244
    :cond_6
    move v2, v5

    .line 245
    :goto_2
    cmpl-float v2, v2, v5

    .line 246
    .line 247
    if-lez v2, :cond_9

    .line 248
    .line 249
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    if-eqz v2, :cond_8

    .line 254
    .line 255
    sget v2, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 256
    .line 257
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getFirstAmount()Ljava/lang/Float;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    invoke-direct {p0, p2, v4}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object p2

    .line 273
    invoke-virtual {p1, v2, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 274
    .line 275
    .line 276
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 277
    .line 278
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 279
    .line 280
    .line 281
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 282
    .line 283
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 284
    .line 285
    .line 286
    move-result-object v0

    .line 287
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v0

    .line 291
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 295
    .line 296
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 301
    .line 302
    if-eqz p2, :cond_7

    .line 303
    .line 304
    invoke-static {p2, v1}, Ljk/y;->i(Landroid/widget/TextView;Z)V

    .line 305
    .line 306
    .line 307
    :cond_7
    sget p2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 308
    .line 309
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 310
    .line 311
    .line 312
    goto :goto_3

    .line 313
    :cond_8
    sget v1, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 314
    .line 315
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 316
    .line 317
    .line 318
    move-result p2

    .line 319
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/payment/SkuPaymentMethod;->getPayAmount()Ljava/lang/Float;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-direct {p0, p2, v0}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p2

    .line 331
    invoke-virtual {p1, v1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 332
    .line 333
    .line 334
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 335
    .line 336
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 337
    .line 338
    .line 339
    sget p2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 340
    .line 341
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :cond_9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->enableDiscount()Z

    .line 346
    .line 347
    .line 348
    move-result v0

    .line 349
    if-eqz v0, :cond_b

    .line 350
    .line 351
    sget v0, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 352
    .line 353
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getDiscountPriceText()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v4

    .line 361
    invoke-direct {p0, v2, v4}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v2

    .line 365
    invoke-virtual {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 366
    .line 367
    .line 368
    sget v0, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 369
    .line 370
    invoke-virtual {p1, v0, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 371
    .line 372
    .line 373
    sget v0, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 374
    .line 375
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object p2

    .line 379
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 380
    .line 381
    .line 382
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 383
    .line 384
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 385
    .line 386
    .line 387
    move-result-object p2

    .line 388
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 389
    .line 390
    if-eqz p2, :cond_a

    .line 391
    .line 392
    invoke-static {p2, v1}, Ljk/y;->i(Landroid/widget/TextView;Z)V

    .line 393
    .line 394
    .line 395
    :cond_a
    sget p2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 396
    .line 397
    invoke-virtual {p1, p2, v3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 398
    .line 399
    .line 400
    goto :goto_3

    .line 401
    :cond_b
    sget v0, Lcom/startshorts/androidplayer/R$id;->current_price_tv:I

    .line 402
    .line 403
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getType()I

    .line 404
    .line 405
    .line 406
    move-result v1

    .line 407
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOriginPriceText()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p2

    .line 411
    invoke-direct {p0, v1, p2}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->q(ILjava/lang/String;)Ljava/lang/String;

    .line 412
    .line 413
    .line 414
    move-result-object p2

    .line 415
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->d(ILjava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    sget p2, Lcom/startshorts/androidplayer/R$id;->origin_price_tv:I

    .line 419
    .line 420
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 421
    .line 422
    .line 423
    sget p2, Lcom/startshorts/androidplayer/R$id;->first_recharge_tv:I

    .line 424
    .line 425
    invoke-virtual {p1, p2, v4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 426
    .line 427
    .line 428
    :goto_3
    return-void
.end method

.method private static final t(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V
    .locals 3

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$id;->card_bg_view:I

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    new-instance v1, Lqd/b;

    .line 12
    .line 13
    invoke-direct {v1, p1, p0}, Lqd/b;-><init>(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 14
    .line 15
    .line 16
    const/high16 p0, 0x41b80000    # 23.0f

    .line 17
    .line 18
    const/high16 v2, 0x41500000    # 13.0f

    .line 19
    .line 20
    invoke-static {p1, p0, v2, v0, v1}, Ljk/y;->c(Landroid/widget/TextView;FFILkotlin/jvm/functions/Function0;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final u(Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)Lkotlin/Unit;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    sget p0, Lcom/startshorts/androidplayer/R$id;->card_desc_tv:I

    .line 6
    .line 7
    invoke-virtual {p1, p0, v0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->e(II)V

    .line 8
    .line 9
    .line 10
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 11
    .line 12
    return-object p0
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->p(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_normal:I

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_subs_type_pro:I

    .line 8
    .line 9
    :goto_0
    return p1
.end method

.method protected g(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->d()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getData(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    :cond_1
    return v0
.end method

.method protected p(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;III)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            "III)V"
        }
    .end annotation

    .line 1
    const-string p3, "holder"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "data"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->isPro()Z

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    if-eqz p3, :cond_0

    .line 16
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->s(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->r(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method
