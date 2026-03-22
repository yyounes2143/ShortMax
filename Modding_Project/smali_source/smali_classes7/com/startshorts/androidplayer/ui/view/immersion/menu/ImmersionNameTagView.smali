.class public final Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "ImmersionNameTagView.kt"

# interfaces
.implements Lnj/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nImmersionNameTagView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImmersionNameTagView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView\n+ 2 ViewGroup.kt\nandroidx/core/view/ViewGroupKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,262:1\n46#2:263\n1328#3,3:264\n774#4:267\n865#4,2:268\n1872#4,3:270\n*S KotlinDebug\n*F\n+ 1 ImmersionNameTagView.kt\ncom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView\n*L\n123#1:263\n128#1:264,3\n93#1:267\n93#1:268,2\n105#1:270,3\n*E\n"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:I

.field private final d:I

.field private e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/google/android/flexbox/FlexboxLayout;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
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
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    .line 4
    const-string p1, "ImmersionShortNameView"

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->b:Ljava/lang/String;

    const/4 p1, 0x2

    .line 5
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->c:I

    const/16 p1, 0x64

    .line 6
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->d:I

    return-void
.end method

.method public static final synthetic A(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->c:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->d:I

    .line 2
    .line 3
    return p0
.end method

.method private final C()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private final D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

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
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    sget v2, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_more:I

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;

    .line 23
    .line 24
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$b;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private static final E(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 13

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Z0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/16 v1, 0x8

    .line 22
    .line 23
    if-eqz v0, :cond_14

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 30
    .line 31
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->b:Ljava/lang/String;

    .line 32
    .line 33
    new-instance v4, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string v5, "ImmersionShortNameView updateEpisode "

    .line 39
    .line 40
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x1

    .line 44
    xor-int/2addr p1, v5

    .line 45
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-virtual {v2, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCheckedShortPlayName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    if-eqz v7, :cond_2

    .line 60
    .line 61
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    goto :goto_2

    .line 68
    :cond_0
    iget-object v6, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 69
    .line 70
    if-eqz v6, :cond_2

    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-eqz p1, :cond_1

    .line 77
    .line 78
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    sget v2, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_trailer:I

    .line 83
    .line 84
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    :goto_0
    move-object v9, p1

    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    sget v2, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 95
    .line 96
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    goto :goto_0

    .line 113
    :goto_1
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    const/16 v11, 0x10

    .line 117
    .line 118
    const/4 v12, 0x0

    .line 119
    const-string v8, "..."

    .line 120
    .line 121
    const/4 v10, 0x0

    .line 122
    invoke-static/range {v6 .. v12}, Ljk/y;->f(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    :cond_2
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->g:Lcom/google/android/flexbox/FlexboxLayout;

    .line 126
    .line 127
    if-eqz p1, :cond_11

    .line 128
    .line 129
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCornerLabelStyle()I

    .line 145
    .line 146
    .line 147
    move-result v4

    .line 148
    const/4 v6, 0x6

    .line 149
    if-ne v4, v6, :cond_3

    .line 150
    .line 151
    move v6, v5

    .line 152
    goto :goto_3

    .line 153
    :cond_3
    move v6, v0

    .line 154
    :goto_3
    new-instance v7, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 155
    .line 156
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 157
    .line 158
    .line 159
    if-eqz v6, :cond_5

    .line 160
    .line 161
    if-eqz v3, :cond_5

    .line 162
    .line 163
    invoke-static {v3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v6

    .line 167
    if-eqz v6, :cond_4

    .line 168
    .line 169
    goto :goto_4

    .line 170
    :cond_4
    move v6, v5

    .line 171
    goto :goto_5

    .line 172
    :cond_5
    :goto_4
    move v6, v0

    .line 173
    :goto_5
    iput-boolean v6, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getLabelList()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    if-eqz v6, :cond_9

    .line 180
    .line 181
    check-cast v6, Ljava/lang/Iterable;

    .line 182
    .line 183
    new-instance v8, Ljava/util/ArrayList;

    .line 184
    .line 185
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 189
    .line 190
    .line 191
    move-result-object v6

    .line 192
    :cond_6
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 193
    .line 194
    .line 195
    move-result v9

    .line 196
    if-eqz v9, :cond_a

    .line 197
    .line 198
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v9

    .line 202
    move-object v10, v9

    .line 203
    check-cast v10, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 204
    .line 205
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v10

    .line 209
    if-eqz v10, :cond_8

    .line 210
    .line 211
    invoke-static {v10}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 212
    .line 213
    .line 214
    move-result v10

    .line 215
    if-eqz v10, :cond_7

    .line 216
    .line 217
    goto :goto_7

    .line 218
    :cond_7
    move v10, v0

    .line 219
    goto :goto_8

    .line 220
    :cond_8
    :goto_7
    move v10, v5

    .line 221
    :goto_8
    if-nez v10, :cond_6

    .line 222
    .line 223
    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    goto :goto_6

    .line 227
    :cond_9
    const/4 v8, 0x0

    .line 228
    :cond_a
    iget-boolean v6, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 229
    .line 230
    if-nez v6, :cond_c

    .line 231
    .line 232
    if-eqz v8, :cond_b

    .line 233
    .line 234
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    .line 235
    .line 236
    .line 237
    move-result v6

    .line 238
    if-eqz v6, :cond_c

    .line 239
    .line 240
    :cond_b
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_a

    .line 244
    .line 245
    :cond_c
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 246
    .line 247
    .line 248
    iget-boolean v1, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 249
    .line 250
    const-string v6, "inflate(...)"

    .line 251
    .line 252
    if-eqz v1, :cond_d

    .line 253
    .line 254
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->g:Lcom/google/android/flexbox/FlexboxLayout;

    .line 255
    .line 256
    invoke-static {v2, v1, v5}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-static {v1, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 264
    .line 265
    const-string v9, "tvTag"

    .line 266
    .line 267
    invoke-static {v1, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v1, v4, v3}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->setTextViewLabelStyle(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    :cond_d
    if-eqz v8, :cond_10

    .line 274
    .line 275
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 276
    .line 277
    .line 278
    move-result-object v1

    .line 279
    move v3, v0

    .line 280
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v4

    .line 284
    if-eqz v4, :cond_10

    .line 285
    .line 286
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    add-int/lit8 v8, v3, 0x1

    .line 291
    .line 292
    if-gez v3, :cond_e

    .line 293
    .line 294
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 295
    .line 296
    .line 297
    :cond_e
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;

    .line 298
    .line 299
    iget-object v9, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->g:Lcom/google/android/flexbox/FlexboxLayout;

    .line 300
    .line 301
    invoke-static {v2, v9, v5}, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;

    .line 302
    .line 303
    .line 304
    move-result-object v9

    .line 305
    invoke-static {v9, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    iget-boolean v10, v7, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 309
    .line 310
    if-nez v10, :cond_f

    .line 311
    .line 312
    if-nez v3, :cond_f

    .line 313
    .line 314
    iget-object v3, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 315
    .line 316
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 317
    .line 318
    .line 319
    move-result-object v3

    .line 320
    const-string v10, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    .line 321
    .line 322
    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 323
    .line 324
    .line 325
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 326
    .line 327
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 328
    .line 329
    .line 330
    iget-object v10, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 331
    .line 332
    invoke-virtual {v10, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 333
    .line 334
    .line 335
    :cond_f
    iget-object v3, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 336
    .line 337
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;->getLabelName()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v10

    .line 341
    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    .line 343
    .line 344
    iget-object v3, v9, Lcom/startshorts/androidplayer/databinding/ViewShortsImmersionTagClickableBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 345
    .line 346
    new-instance v9, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;

    .line 347
    .line 348
    invoke-direct {v9, p0, v4}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$c;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {v3, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    .line 353
    .line 354
    move v3, v8

    .line 355
    goto :goto_9

    .line 356
    :cond_10
    new-instance v0, Lnj/i;

    .line 357
    .line 358
    invoke-direct {v0, p1, p0, v7}, Lnj/i;-><init>(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 359
    .line 360
    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 362
    .line 363
    .line 364
    :cond_11
    :goto_a
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 365
    .line 366
    if-eqz p1, :cond_15

    .line 367
    .line 368
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    if-eqz v0, :cond_13

    .line 373
    .line 374
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 375
    .line 376
    .line 377
    move-result v0

    .line 378
    if-nez v0, :cond_12

    .line 379
    .line 380
    goto :goto_b

    .line 381
    :cond_12
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 382
    .line 383
    .line 384
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->c:I

    .line 385
    .line 386
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object p2

    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    .line 395
    .line 396
    new-instance p2, Lnj/j;

    .line 397
    .line 398
    invoke-direct {p2, p1, p0}, Lnj/j;-><init>(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 402
    .line 403
    .line 404
    goto :goto_c

    .line 405
    :cond_13
    :goto_b
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 406
    .line 407
    .line 408
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->C()V

    .line 409
    .line 410
    .line 411
    goto :goto_c

    .line 412
    :cond_14
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 413
    .line 414
    .line 415
    :cond_15
    :goto_c
    return-void
.end method

.method private static final F(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {p0}, Landroidx/core/view/ViewGroupKt;->getChildren(Landroid/view/ViewGroup;)Lkotlin/sequences/Sequence;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-interface {p0}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    move v3, v0

    .line 31
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_8

    .line 36
    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    add-int/lit8 v5, v3, 0x1

    .line 42
    .line 43
    if-gez v3, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 46
    .line 47
    .line 48
    :cond_1
    check-cast v4, Landroid/view/View;

    .line 49
    .line 50
    sget v6, Lcom/startshorts/androidplayer/R$id;->tv_tag:I

    .line 51
    .line 52
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 57
    .line 58
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    .line 59
    .line 60
    .line 61
    move-result v7

    .line 62
    const/4 v8, 0x1

    .line 63
    if-le v7, v2, :cond_2

    .line 64
    .line 65
    move v7, v8

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v7, v0

    .line 68
    :goto_1
    if-eqz v6, :cond_3

    .line 69
    .line 70
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-ne v6, v8, :cond_3

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    move v8, v0

    .line 78
    :goto_2
    if-nez v7, :cond_5

    .line 79
    .line 80
    if-eqz v8, :cond_4

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-static {v4}, Ljk/b0;->l(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_5
    :goto_3
    iget-boolean v6, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 88
    .line 89
    if-eqz v6, :cond_6

    .line 90
    .line 91
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 92
    .line 93
    .line 94
    goto :goto_4

    .line 95
    :cond_6
    if-nez v3, :cond_7

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_7
    invoke-static {v4}, Ljk/b0;->d(Landroid/view/View;)V

    .line 102
    .line 103
    .line 104
    :goto_4
    move v3, v5

    .line 105
    goto :goto_0

    .line 106
    :cond_8
    return-void
.end method

.method private static final G(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-le v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;->c()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    .line 14
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->D()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->C()V

    .line 19
    .line 20
    .line 21
    :goto_0
    return-void
.end method

.method private static final H(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final setTextLabelPadding(Landroid/widget/TextView;)V
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

.method private final setTextLabelPaddingWithImg(Landroid/widget/TextView;)V
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

.method public static synthetic v(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->H(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic w(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->E(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic x(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->G(Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic y(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->F(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic z(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Z0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eq v0, p1, :cond_2

    .line 28
    .line 29
    if-nez p1, :cond_0

    .line 30
    .line 31
    new-instance p1, Lnj/g;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lnj/g;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/16 p1, 0x8

    .line 45
    .line 46
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    :goto_0
    return-void
.end method

.method public f()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Z0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public g(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "shortsInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->Z0()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    if-nez p2, :cond_1

    .line 29
    .line 30
    const/4 p1, 0x0

    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/16 p1, 0x8

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->a(I)V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_0
    return-void
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_name_tag:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMListener()Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Z)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "episode"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lnj/h;

    .line 7
    .line 8
    invoke-direct {v0, p0, p2, p1}, Lnj/h;-><init>(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;ZLcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setMListener(Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->e:Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextViewLabelStyle(Landroid/widget/TextView;ILjava/lang/String;)V
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
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x6

    .line 11
    if-ne p2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$color;->drama_member_only_label:I

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/content/Context;->getColor(I)I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_shorts_member_only_label:I

    .line 31
    .line 32
    invoke-static {p2, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->setTextLabelPaddingWithImg(Landroid/widget/TextView;)V

    .line 40
    .line 41
    .line 42
    sget p2, Lcom/startshorts/androidplayer/R$drawable;->bg_short_label_style_member_only:I

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    .line 49
    .line 50
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
    sget p1, Lcom/startshorts/androidplayer/R$id;->shorts_name_tv:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    sget p1, Lcom/startshorts/androidplayer/R$id;->flexboxLayout:I

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/google/android/flexbox/FlexboxLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->g:Lcom/google/android/flexbox/FlexboxLayout;

    .line 25
    .line 26
    sget p1, Lcom/startshorts/androidplayer/R$id;->summary_tv:I

    .line 27
    .line 28
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 33
    .line 34
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->h:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    sget p1, Lcom/startshorts/androidplayer/R$id;->expand_tv:I

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 43
    .line 44
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView;->i:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 45
    .line 46
    return-void
.end method
