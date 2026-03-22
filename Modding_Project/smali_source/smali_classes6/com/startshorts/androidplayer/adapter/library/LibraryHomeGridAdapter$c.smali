.class final Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "LibraryHomeGridAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLibraryHomeGridAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LibraryHomeGridAdapter.kt\ncom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$RegionViewHolder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,185:1\n1863#2,2:186\n*S KotlinDebug\n*F\n+ 1 LibraryHomeGridAdapter.kt\ncom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$RegionViewHolder\n*L\n90#1:186,2\n*E\n"
    }
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 7
    .line 8
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 16
    .line 17
    new-instance p1, Lcom/startshorts/androidplayer/adapter/library/d;

    .line 18
    .line 19
    invoke-direct {p1}, Lcom/startshorts/androidplayer/adapter/library/d;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->j:Lms/i;

    .line 27
    .line 28
    return-void
.end method

.method public static synthetic g()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private static final i()F
    .locals 1

    .line 1
    const/high16 v0, 0x40c00000    # 6.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method private final j()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->j:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Number;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final k(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    const/high16 v0, 0x40800000    # 4.0f

    .line 2
    .line 3
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v1, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final l(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    sget-object v0, Lfk/v;->a:Lfk/v;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/v;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/high16 v1, 0x40800000    # 4.0f

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p1, v0, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {v1}, Ljk/g;->a(F)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    .line 28
    .line 29
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 34
    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(ILcom/startshorts/androidplayer/bean/shorts/BaseShorts;)V
    .locals 5
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 9
    .line 10
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v3, Lid/c;->a:Lid/c;

    .line 25
    .line 26
    invoke-virtual {v3}, Lid/c;->b()I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Lid/c;->a()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->p(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v2}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->o(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;)I

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->j()F

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 59
    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 63
    .line 64
    .line 65
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 68
    .line 69
    .line 70
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-virtual {p1, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 89
    .line 90
    const-string/jumbo v0, "tvLabelStyle"

    .line 91
    .line 92
    .line 93
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelStyle()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getCornerLabelText()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-virtual {p0, p1, v0, v1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->m(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 110
    .line 111
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 121
    .line 122
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 123
    .line 124
    const/4 v0, 0x4

    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    const/4 v0, 0x0

    .line 133
    if-eqz p1, :cond_1

    .line 134
    .line 135
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    goto :goto_0

    .line 140
    :cond_1
    move p1, v0

    .line 141
    :goto_0
    if-lez p1, :cond_8

    .line 142
    .line 143
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 144
    .line 145
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_3

    .line 153
    .line 154
    check-cast v1, Ljava/lang/Iterable;

    .line 155
    .line 156
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    if-eqz v2, :cond_3

    .line 165
    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    check-cast v2, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 171
    .line 172
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 173
    .line 174
    .line 175
    move-result-object v3

    .line 176
    if-eqz v3, :cond_2

    .line 177
    .line 178
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getRankingId()Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 186
    .line 187
    .line 188
    move-result v3

    .line 189
    if-lez v3, :cond_2

    .line 190
    .line 191
    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_3
    iget-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 195
    .line 196
    const/4 v2, 0x0

    .line 197
    if-eqz v1, :cond_5

    .line 198
    .line 199
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 200
    .line 201
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->d:Landroid/widget/TextView;

    .line 202
    .line 203
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 204
    .line 205
    if-eqz v1, :cond_4

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    :cond_4
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    .line 213
    .line 214
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 215
    .line 216
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->d:Landroid/widget/TextView;

    .line 217
    .line 218
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 219
    .line 220
    sget v2, Lcom/startshorts/androidplayer/R$color;->color_drama_tag_more:I

    .line 221
    .line 222
    invoke-virtual {v1, v2}, Lfk/u;->a(I)I

    .line 223
    .line 224
    .line 225
    move-result v1

    .line 226
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 227
    .line 228
    .line 229
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 230
    .line 231
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 232
    .line 233
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->bg_drama_tag_more:I

    .line 234
    .line 235
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 236
    .line 237
    .line 238
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 239
    .line 240
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->c:Landroid/widget/ImageView;

    .line 241
    .line 242
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 246
    .line 247
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->d:Landroid/widget/TextView;

    .line 248
    .line 249
    new-instance v1, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;

    .line 250
    .line 251
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->k:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;

    .line 252
    .line 253
    invoke-direct {v1, v2, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c$a;-><init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 260
    .line 261
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 264
    .line 265
    .line 266
    goto :goto_3

    .line 267
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getLabelList()Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object p2

    .line 271
    if-eqz p2, :cond_6

    .line 272
    .line 273
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 274
    .line 275
    .line 276
    move-result-object p2

    .line 277
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 278
    .line 279
    goto :goto_2

    .line 280
    :cond_6
    move-object p2, v2

    .line 281
    :goto_2
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 282
    .line 283
    if-eqz p2, :cond_8

    .line 284
    .line 285
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 286
    .line 287
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->d:Landroid/widget/TextView;

    .line 288
    .line 289
    if-eqz p2, :cond_7

    .line 290
    .line 291
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v2

    .line 295
    :cond_7
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 299
    .line 300
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->d:Landroid/widget/TextView;

    .line 301
    .line 302
    sget-object p2, Lfk/u;->a:Lfk/u;

    .line 303
    .line 304
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_drama_tag_more_normal:I

    .line 305
    .line 306
    invoke-virtual {p2, v1}, Lfk/u;->a(I)I

    .line 307
    .line 308
    .line 309
    move-result p2

    .line 310
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 314
    .line 315
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 316
    .line 317
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_drama_tag2:I

    .line 318
    .line 319
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 320
    .line 321
    .line 322
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 323
    .line 324
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->c:Landroid/widget/ImageView;

    .line 325
    .line 326
    const/16 p2, 0x8

    .line 327
    .line 328
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->i:Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 332
    .line 333
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    :cond_8
    :goto_3
    return-void
.end method

.method public final m(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "view"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    if-eq p2, v1, :cond_3

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x5

    .line 18
    if-eq p2, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x6

    .line 21
    if-eq p2, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 29
    .line 30
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_member_only_label:I

    .line 42
    .line 43
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->l(Landroid/widget/TextView;)V

    .line 51
    .line 52
    .line 53
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_member_only:I

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->k(Landroid/widget/TextView;)V

    .line 73
    .line 74
    .line 75
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_new:I

    .line 76
    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    sget v0, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 86
    .line 87
    invoke-virtual {p2, v0}, Landroid/content/Context;->getColor(I)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    .line 93
    .line 94
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->k(Landroid/widget/TextView;)V

    .line 95
    .line 96
    .line 97
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_hot:I

    .line 98
    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object p2

    .line 107
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_common_white:I

    .line 108
    .line 109
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_excusive_label:I

    .line 121
    .line 122
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 127
    .line 128
    .line 129
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;->l(Landroid/widget/TextView;)V

    .line 130
    .line 131
    .line 132
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_label_style_exclusive:I

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 135
    .line 136
    .line 137
    :goto_0
    if-eqz p3, :cond_5

    .line 138
    .line 139
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 140
    .line 141
    .line 142
    move-result p2

    .line 143
    if-nez p2, :cond_4

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :cond_4
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    const/4 p2, 0x0

    .line 150
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    :goto_1
    const/4 p2, 0x4

    .line 155
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    :goto_2
    return-void
.end method
