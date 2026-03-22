.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverMain1Row2ColumnXAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Ljava/util/List<",
        "+",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;>.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverMain1Row2ColumnXAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$DoubleRowViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,173:1\n1872#2,2:174\n1874#2:178\n256#3,2:176\n*S KotlinDebug\n*F\n+ 1 DiscoverMain1Row2ColumnXAdapter.kt\ncom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$DoubleRowViewHolder\n*L\n63#1:174,2\n63#1:178\n88#1:176,2\n*E\n"
    }
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;

    .line 12
    .line 13
    return-void
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;IILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->m(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;IILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final m(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;IILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;->J()Lkotlin/jvm/functions/Function2;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-static {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;->I(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    mul-int/2addr p1, p0

    .line 10
    add-int/2addr p1, p2

    .line 11
    add-int/lit8 p1, p1, 0x1

    .line 12
    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    invoke-interface {p4, p0, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;

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
    check-cast p2, Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->l(ILjava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILjava/util/List;)V
    .locals 16
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "+",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    move/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    const-string v3, "item"

    .line 7
    .line 8
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super/range {p0 .. p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;->a:Landroid/widget/LinearLayout;

    .line 19
    .line 20
    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 21
    .line 22
    .line 23
    check-cast v1, Ljava/lang/Iterable;

    .line 24
    .line 25
    move-object/from16 v3, p0

    .line 26
    .line 27
    iget-object v4, v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v5, 0x0

    .line 34
    move v6, v5

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_4

    .line 40
    .line 41
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    add-int/lit8 v8, v6, 0x1

    .line 46
    .line 47
    if-gez v6, :cond_0

    .line 48
    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 50
    .line 51
    .line 52
    :cond_0
    check-cast v7, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 53
    .line 54
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v9}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v9

    .line 62
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v9

    .line 66
    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    sget v10, Lcom/startshorts/androidplayer/R$layout;->item_discover_main_1_row_2_column_container_item:I

    .line 71
    .line 72
    const/4 v11, 0x0

    .line 73
    invoke-virtual {v9, v10, v11, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    iget-object v10, v10, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMain1Row2ColumnContainerBinding;->a:Landroid/widget/LinearLayout;

    .line 82
    .line 83
    invoke-virtual {v10, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    sget v10, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 87
    .line 88
    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    check-cast v10, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 93
    .line 94
    sget v11, Lcom/startshorts/androidplayer/R$id;->shorts_name_tv:I

    .line 95
    .line 96
    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v11

    .line 100
    check-cast v11, Landroid/widget/TextView;

    .line 101
    .line 102
    sget v12, Lcom/startshorts/androidplayer/R$id;->shorts_label_tv:I

    .line 103
    .line 104
    invoke-virtual {v9, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 105
    .line 106
    .line 107
    move-result-object v12

    .line 108
    check-cast v12, Landroid/widget/TextView;

    .line 109
    .line 110
    sget v13, Lcom/startshorts/androidplayer/R$id;->tvPlayCount:I

    .line 111
    .line 112
    invoke-virtual {v9, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    check-cast v13, Landroid/widget/TextView;

    .line 117
    .line 118
    new-instance v14, Ljava/lang/StringBuilder;

    .line 119
    .line 120
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v15

    .line 127
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const/16 v15, 0x20

    .line 131
    .line 132
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 142
    .line 143
    .line 144
    move-result v15

    .line 145
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v14

    .line 152
    invoke-virtual {v10, v14}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    .line 154
    .line 155
    sget-object v14, Lkk/f;->a:Lkk/f;

    .line 156
    .line 157
    new-instance v15, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 158
    .line 159
    invoke-direct {v15}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v5

    .line 166
    invoke-virtual {v15, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    sget-object v5, Lid/c;->a:Lid/c;

    .line 170
    .line 171
    invoke-virtual {v5}, Lid/c;->b()I

    .line 172
    .line 173
    .line 174
    move-result v2

    .line 175
    invoke-virtual {v15, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {v5}, Lid/c;->a()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-virtual {v15, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 183
    .line 184
    .line 185
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;)I

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    invoke-virtual {v15, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 190
    .line 191
    .line 192
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;)I

    .line 193
    .line 194
    .line 195
    move-result v2

    .line 196
    invoke-virtual {v15, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 197
    .line 198
    .line 199
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 200
    .line 201
    invoke-virtual {v15, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 202
    .line 203
    .line 204
    const/4 v2, 0x1

    .line 205
    invoke-virtual {v15, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 206
    .line 207
    .line 208
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;->F(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;)F

    .line 209
    .line 210
    .line 211
    move-result v5

    .line 212
    invoke-virtual {v15, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 213
    .line 214
    .line 215
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 216
    .line 217
    invoke-virtual {v14, v10, v15}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 218
    .line 219
    .line 220
    sget-object v5, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 221
    .line 222
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    invoke-virtual {v5, v13, v10}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getLevel1CategoryName()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-virtual {v12, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    .line 242
    .line 243
    sget v5, Lcom/startshorts/androidplayer/R$id;->shorts_label_iv:I

    .line 244
    .line 245
    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 246
    .line 247
    .line 248
    move-result-object v5

    .line 249
    const-string v10, "findViewById(...)"

    .line 250
    .line 251
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getLevel1CategoryName()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v10

    .line 258
    if-eqz v10, :cond_2

    .line 259
    .line 260
    invoke-interface {v10}, Ljava/lang/CharSequence;->length()I

    .line 261
    .line 262
    .line 263
    move-result v10

    .line 264
    if-nez v10, :cond_1

    .line 265
    .line 266
    goto :goto_1

    .line 267
    :cond_1
    const/4 v10, 0x0

    .line 268
    goto :goto_2

    .line 269
    :cond_2
    :goto_1
    move v10, v2

    .line 270
    :goto_2
    if-nez v10, :cond_3

    .line 271
    .line 272
    const/4 v10, 0x0

    .line 273
    goto :goto_3

    .line 274
    :cond_3
    const/16 v10, 0x8

    .line 275
    .line 276
    :goto_3
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 277
    .line 278
    .line 279
    new-instance v5, Lcom/startshorts/androidplayer/adapter/discover/j;

    .line 280
    .line 281
    invoke-direct {v5, v4, v0, v6, v7}, Lcom/startshorts/androidplayer/adapter/discover/j;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverMain1Row2ColumnXAdapter;IILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    .line 286
    .line 287
    move v6, v8

    .line 288
    const/4 v5, 0x0

    .line 289
    goto/16 :goto_0

    .line 290
    .line 291
    :cond_4
    return-void
.end method
