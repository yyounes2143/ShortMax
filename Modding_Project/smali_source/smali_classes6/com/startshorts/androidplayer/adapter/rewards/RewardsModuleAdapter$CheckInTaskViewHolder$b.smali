.class final Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;
.super Ljava/lang/Object;
.source "RewardsModuleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->I(ILcom/startshorts/androidplayer/bean/reward/RewardsModule;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->c(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final c(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->W(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Z)V

    .line 3
    .line 4
    .line 5
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object p0, v0

    .line 18
    :goto_0
    instance-of v1, p0, Landroid/view/View;

    .line 19
    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    check-cast v0, Landroid/view/View;

    .line 24
    .line 25
    :cond_1
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 28
    .line 29
    .line 30
    :cond_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    .line 32
    return-object p0
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)V
    .locals 6

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$a;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 11
    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v2, "CheckInFailed -> "

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$a;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$a;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->l(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_3

    .line 43
    .line 44
    :cond_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$b;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    const/4 v2, 0x0

    .line 48
    if-eqz v0, :cond_b

    .line 49
    .line 50
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v4, "CheckInInfoLoaded -> isFragmentResumed="

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->v0()Z

    .line 65
    .line 66
    .line 67
    move-result v4

    .line 68
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->r(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 85
    .line 86
    sget-object v3, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 87
    .line 88
    invoke-virtual {v0, v3}, Lcom/hades/aar/pagestate/StateViewGroup;->c(Lcom/hades/aar/pagestate/State;)V

    .line 89
    .line 90
    .line 91
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$b;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$b;->a()Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    goto :goto_0

    .line 104
    :cond_2
    move-object v0, v2

    .line 105
    :goto_0
    move-object v3, v0

    .line 106
    check-cast v3, Ljava/util/Collection;

    .line 107
    .line 108
    if-eqz v3, :cond_a

    .line 109
    .line 110
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_3

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_3
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 119
    .line 120
    invoke-static {v3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->w(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 124
    .line 125
    invoke-static {v3, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->q(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Ljava/util/List;)I

    .line 126
    .line 127
    .line 128
    move-result v4

    .line 129
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->t(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;I)V

    .line 130
    .line 131
    .line 132
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 133
    .line 134
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->p(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    if-lez v3, :cond_4

    .line 139
    .line 140
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->r(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    iget-object v5, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 147
    .line 148
    invoke-static {v5}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->p(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I

    .line 149
    .line 150
    .line 151
    move-result v5

    .line 152
    add-int/2addr v4, v5

    .line 153
    invoke-static {v3, v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->u(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;I)V

    .line 154
    .line 155
    .line 156
    :cond_4
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$b;->a()Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getClickDoubleAdToday()Z

    .line 161
    .line 162
    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_5

    .line 165
    .line 166
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 167
    .line 168
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->r(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I

    .line 169
    .line 170
    .line 171
    move-result v3

    .line 172
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 173
    .line 174
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->p(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I

    .line 175
    .line 176
    .line 177
    move-result v4

    .line 178
    add-int/2addr v3, v4

    .line 179
    invoke-static {p1, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->u(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;I)V

    .line 180
    .line 181
    .line 182
    :cond_5
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 183
    .line 184
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->v(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Ljava/util/List;)Z

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    if-eqz p1, :cond_9

    .line 189
    .line 190
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 191
    .line 192
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->l0()V

    .line 193
    .line 194
    .line 195
    sget-object p1, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 196
    .line 197
    sget-object v0, Lcom/startshorts/androidplayer/bean/ad/AdScene;->REWARD:Lcom/startshorts/androidplayer/bean/ad/AdScene;

    .line 198
    .line 199
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a0(Lcom/startshorts/androidplayer/bean/ad/AdScene;)Lkotlinx/coroutines/r;

    .line 200
    .line 201
    .line 202
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 203
    .line 204
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->v0()Z

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_8

    .line 209
    .line 210
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 211
    .line 212
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->W(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Z)V

    .line 213
    .line 214
    .line 215
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 216
    .line 217
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->L(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    if-eqz p1, :cond_6

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    goto :goto_1

    .line 228
    :cond_6
    move-object p1, v2

    .line 229
    :goto_1
    instance-of v0, p1, Landroid/view/View;

    .line 230
    .line 231
    if-eqz v0, :cond_7

    .line 232
    .line 233
    move-object v2, p1

    .line 234
    check-cast v2, Landroid/view/View;

    .line 235
    .line 236
    :cond_7
    if-eqz v2, :cond_16

    .line 237
    .line 238
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z

    .line 239
    .line 240
    .line 241
    goto/16 :goto_3

    .line 242
    .line 243
    :cond_8
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 244
    .line 245
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/h;

    .line 246
    .line 247
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/h;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)V

    .line 248
    .line 249
    .line 250
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->U(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlin/jvm/functions/Function0;)V

    .line 251
    .line 252
    .line 253
    goto/16 :goto_3

    .line 254
    .line 255
    :cond_9
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 256
    .line 257
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    const/4 v0, -0x1

    .line 262
    invoke-interface {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->h(I)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_3

    .line 266
    .line 267
    :cond_a
    :goto_2
    return-void

    .line 268
    :cond_b
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$c;

    .line 269
    .line 270
    if-eqz v0, :cond_d

    .line 271
    .line 272
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$c;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$c;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->isNetworkError()Z

    .line 279
    .line 280
    .line 281
    move-result v0

    .line 282
    const-string v1, "checkInStateViewGroup"

    .line 283
    .line 284
    if-eqz v0, :cond_c

    .line 285
    .line 286
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 287
    .line 288
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 289
    .line 290
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 295
    .line 296
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->i0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_3

    .line 303
    .line 304
    :cond_c
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 305
    .line 306
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 307
    .line 308
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 313
    .line 314
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$c;->a()Lcom/startshorts/androidplayer/bean/api/ApiErrorState;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/api/ApiErrorState;->getMsg()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    invoke-static {v0, v2, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->j0(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lcom/hades/aar/pagestate/StateViewGroup;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    goto/16 :goto_3

    .line 329
    .line 330
    :cond_d
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$d;

    .line 331
    .line 332
    if-eqz v0, :cond_e

    .line 333
    .line 334
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 335
    .line 336
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 337
    .line 338
    .line 339
    move-result-object p1

    .line 340
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 341
    .line 342
    sget-object v0, Lcom/hades/aar/pagestate/State;->LOADING:Lcom/hades/aar/pagestate/State;

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->h(Lcom/hades/aar/pagestate/State;)V

    .line 345
    .line 346
    .line 347
    goto/16 :goto_3

    .line 348
    .line 349
    :cond_e
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$e;

    .line 350
    .line 351
    if-eqz v0, :cond_f

    .line 352
    .line 353
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 354
    .line 355
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$e;

    .line 360
    .line 361
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$e;->a()I

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->h(I)V

    .line 366
    .line 367
    .line 368
    sget-object p1, Lud/a;->a:Lud/a;

    .line 369
    .line 370
    invoke-virtual {p1, v1}, Lud/a;->D0(Z)V

    .line 371
    .line 372
    .line 373
    goto/16 :goto_3

    .line 374
    .line 375
    :cond_f
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$f;

    .line 376
    .line 377
    if-eqz v0, :cond_10

    .line 378
    .line 379
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 380
    .line 381
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/hades/aar/pagestate/StateViewGroup;->d()V

    .line 388
    .line 389
    .line 390
    goto :goto_3

    .line 391
    :cond_10
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$g;

    .line 392
    .line 393
    if-eqz v0, :cond_13

    .line 394
    .line 395
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 396
    .line 397
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->G(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lkotlin/jvm/functions/Function0;

    .line 398
    .line 399
    .line 400
    move-result-object p1

    .line 401
    if-eqz p1, :cond_12

    .line 402
    .line 403
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 404
    .line 405
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->G(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;)Lkotlin/jvm/functions/Function0;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    if-eqz p1, :cond_11

    .line 410
    .line 411
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 412
    .line 413
    .line 414
    :cond_11
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 415
    .line 416
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->U(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;Lkotlin/jvm/functions/Function0;)V

    .line 417
    .line 418
    .line 419
    :cond_12
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 420
    .line 421
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->A()Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRewardFragmentModuleCheckInAndYourBonusBinding;->i:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 426
    .line 427
    invoke-virtual {p1}, Lcom/hades/aar/pagestate/StateViewGroup;->e()V

    .line 428
    .line 429
    .line 430
    goto :goto_3

    .line 431
    :cond_13
    instance-of v0, p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$h;

    .line 432
    .line 433
    if-eqz v0, :cond_16

    .line 434
    .line 435
    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/reward/a$h;

    .line 436
    .line 437
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$h;->a()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    if-eqz v0, :cond_14

    .line 442
    .line 443
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;->getReceiveBonus()I

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 448
    .line 449
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->p(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)I

    .line 450
    .line 451
    .line 452
    move-result v3

    .line 453
    add-int/2addr v3, v0

    .line 454
    invoke-static {v2, v3}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->u(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;I)V

    .line 455
    .line 456
    .line 457
    :cond_14
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 458
    .line 459
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$h;->a()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 460
    .line 461
    .line 462
    move-result-object v2

    .line 463
    invoke-static {v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->x(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 464
    .line 465
    .line 466
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->a:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;

    .line 467
    .line 468
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter;->r0()Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;

    .line 469
    .line 470
    .line 471
    move-result-object v0

    .line 472
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$h;->a()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    invoke-interface {v0, v2}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$d;->a(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 477
    .line 478
    .line 479
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/a$h;->a()Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 480
    .line 481
    .line 482
    move-result-object p1

    .line 483
    if-nez p1, :cond_15

    .line 484
    .line 485
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b:Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;

    .line 486
    .line 487
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;->o(Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder;)V

    .line 488
    .line 489
    .line 490
    :cond_15
    sget-object p1, Lud/a;->a:Lud/a;

    .line 491
    .line 492
    invoke-virtual {p1, v1}, Lud/a;->D0(Z)V

    .line 493
    .line 494
    .line 495
    :cond_16
    :goto_3
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/rewards/RewardsModuleAdapter$CheckInTaskViewHolder$b;->b(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p1
.end method
