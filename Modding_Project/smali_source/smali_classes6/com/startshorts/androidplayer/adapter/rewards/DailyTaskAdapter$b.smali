.class final Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DailyTaskAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDailyTaskAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DailyTaskAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$EnableWatchViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,163:1\n295#2,2:164\n*S KotlinDebug\n*F\n+ 1 DailyTaskAdapter.kt\ncom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$EnableWatchViewHolder\n*L\n70#1:164,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->k(ILcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V
    .locals 4
    .param p2    # Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 16
    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getIcon()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 36
    .line 37
    .line 38
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 43
    .line 44
    .line 45
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->F(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 50
    .line 51
    .line 52
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;->E(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 57
    .line 58
    .line 59
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->task_cions_icon:I

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 62
    .line 63
    .line 64
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 74
    .line 75
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskContent()Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const/16 v0, 0x2b

    .line 84
    .line 85
    if-nez p1, :cond_0

    .line 86
    .line 87
    goto/16 :goto_2

    .line 88
    .line 89
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    const/4 v1, 0x5

    .line 94
    if-ne p1, v1, :cond_5

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRewardReceiveList()Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const/4 v1, 0x0

    .line 101
    if-eqz p1, :cond_3

    .line 102
    .line 103
    check-cast p1, Ljava/lang/Iterable;

    .line 104
    .line 105
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_2

    .line 114
    .line 115
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    move-object v3, v2

    .line 120
    check-cast v3, Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;->getRewardValue()I

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-lez v3, :cond_1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    move-object v2, v1

    .line 130
    :goto_0
    check-cast v2, Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;

    .line 131
    .line 132
    if-eqz v2, :cond_3

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/ad/TaskRewardReceive;->getRewardValue()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_3
    if-eqz v1, :cond_4

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-lez p1, :cond_4

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 155
    .line 156
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->bg_unity_task_button:I

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 172
    .line 173
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    sget v3, Lcom/startshorts/androidplayer/R$color;->color_rewards_fragment_unity_task_btn:I

    .line 178
    .line 179
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 191
    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    sget-object p1, Lud/a;->a:Lud/a;

    .line 211
    .line 212
    const/4 v0, 0x1

    .line 213
    invoke-virtual {p1, v0}, Lud/a;->r0(Z)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 222
    .line 223
    sget v0, Lcom/startshorts/androidplayer/R$drawable;->bg_task_button:I

    .line 224
    .line 225
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 233
    .line 234
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 239
    .line 240
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sget v1, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 251
    .line 252
    .line 253
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 254
    .line 255
    .line 256
    move-result-object p1

    .line 257
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 258
    .line 259
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRewardValueStr()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    .line 265
    .line 266
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 271
    .line 272
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskDescription()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_3

    .line 280
    .line 281
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 282
    .line 283
    .line 284
    move-result-object p1

    .line 285
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 286
    .line 287
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_task_button:I

    .line 288
    .line 289
    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 293
    .line 294
    .line 295
    move-result-object p1

    .line 296
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 297
    .line 298
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 303
    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    sget v2, Lcom/startshorts/androidplayer/R$color;->v_light:I

    .line 309
    .line 310
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    .line 311
    .line 312
    .line 313
    move-result v1

    .line 314
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskDescription()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->isContinuedTaskType()Z

    .line 322
    .line 323
    .line 324
    move-result v1

    .line 325
    if-eqz v1, :cond_6

    .line 326
    .line 327
    new-instance v1, Ljava/lang/StringBuilder;

    .line 328
    .line 329
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    const-string p1, " ("

    .line 336
    .line 337
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    .line 339
    .line 340
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getCompletedCount()Ljava/lang/Integer;

    .line 341
    .line 342
    .line 343
    move-result-object p1

    .line 344
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const/16 p1, 0x2f

    .line 348
    .line 349
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getSumCount()Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object p1

    .line 356
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    const/16 p1, 0x29

    .line 360
    .line 361
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object p1

    .line 368
    :cond_6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 373
    .line 374
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 378
    .line 379
    .line 380
    move-result-object p1

    .line 381
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 382
    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    .line 384
    .line 385
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 389
    .line 390
    .line 391
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getRewardValue()Ljava/lang/Integer;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 399
    .line 400
    .line 401
    move-result-object v0

    .line 402
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    .line 404
    .line 405
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 406
    .line 407
    .line 408
    move-result-object p1

    .line 409
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 410
    .line 411
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b$a;

    .line 412
    .line 413
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 414
    .line 415
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b$a;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 416
    .line 417
    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemWatchAdBonusEnableWatchBinding;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 426
    .line 427
    new-instance v0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b$b;

    .line 428
    .line 429
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;

    .line 430
    .line 431
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter$b$b;-><init>(Lcom/startshorts/androidplayer/adapter/rewards/DailyTaskAdapter;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    .line 436
    .line 437
    return-void
.end method
