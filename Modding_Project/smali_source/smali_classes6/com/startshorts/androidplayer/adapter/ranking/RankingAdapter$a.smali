.class final Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "RankingAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic l:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;",
            ")V"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    const-string v2, "binding"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    move-object/from16 v2, p1

    .line 11
    .line 12
    iput-object v2, v0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->l:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v0, v2}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    iput-object v1, v0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 22
    .line 23
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_num1:I

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_num2:I

    .line 30
    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_num3:I

    .line 36
    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark4:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark5:I

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark6:I

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark7:I

    .line 60
    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark8:I

    .line 66
    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark9:I

    .line 72
    .line 73
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark10:I

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v11

    .line 83
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark11:I

    .line 84
    .line 85
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v12

    .line 89
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark12:I

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v13

    .line 95
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark13:I

    .line 96
    .line 97
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    .line 99
    .line 100
    move-result-object v14

    .line 101
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark14:I

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v15

    .line 107
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark15:I

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v16

    .line 113
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark16:I

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v17

    .line 119
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark17:I

    .line 120
    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v18

    .line 125
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark18:I

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v19

    .line 131
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark19:I

    .line 132
    .line 133
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v20

    .line 137
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark20:I

    .line 138
    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v21

    .line 143
    filled-new-array/range {v2 .. v21}, [Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, v0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->j:[Ljava/lang/Integer;

    .line 148
    .line 149
    new-instance v1, Lcom/startshorts/androidplayer/adapter/ranking/a;

    .line 150
    .line 151
    invoke-direct {v1}, Lcom/startshorts/androidplayer/adapter/ranking/a;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-static {v1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    iput-object v1, v0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->k:Lms/i;

    .line 159
    .line 160
    return-void
.end method

.method public static synthetic g()F
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i()F

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
    const/high16 v0, 0x40a00000    # 5.0f

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->k:Lms/i;

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


# virtual methods
.method public bridge synthetic e(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->h(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
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
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 7
    .line 8
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 9
    .line 10
    new-instance v2, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 11
    .line 12
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 13
    .line 14
    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->l:Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-object v4, Lid/c;->a:Lid/c;

    .line 25
    .line 26
    invoke-virtual {v4}, Lid/c;->b()I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v2, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v4}, Lid/c;->a()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->p(Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 45
    .line 46
    .line 47
    invoke-static {v3}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;->o(Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->j()F

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 59
    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    invoke-virtual {v2, v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 63
    .line 64
    .line 65
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 66
    .line 67
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 68
    .line 69
    .line 70
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 78
    .line 79
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 87
    .line 88
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    if-eqz v1, :cond_2

    .line 95
    .line 96
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-nez v1, :cond_1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 116
    .line 117
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_current_ep:I

    .line 126
    .line 127
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getEpisodeNum()I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v1, "getString(...)"

    .line 148
    .line 149
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 153
    .line 154
    invoke-virtual {v2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    sget v3, Lcom/startshorts/androidplayer/R$string;->common_total_ep:I

    .line 163
    .line 164
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getTotalEpisodes()I

    .line 165
    .line 166
    .line 167
    move-result p2

    .line 168
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    invoke-virtual {v2, v3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 184
    .line 185
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 186
    .line 187
    new-instance v2, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v0, " / "

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p2

    .line 207
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    const/4 p2, 0x0

    .line 211
    const/4 v0, 0x3

    .line 212
    const/4 v1, 0x4

    .line 213
    if-ltz p1, :cond_3

    .line 214
    .line 215
    if-ge p1, v0, :cond_3

    .line 216
    .line 217
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 218
    .line 219
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->e:Landroid/widget/ImageView;

    .line 220
    .line 221
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->j:[Ljava/lang/Integer;

    .line 222
    .line 223
    aget-object p1, v2, p1

    .line 224
    .line 225
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    .line 231
    .line 232
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 233
    .line 234
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->e:Landroid/widget/ImageView;

    .line 235
    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 240
    .line 241
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->d:Landroid/widget/ImageView;

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    goto :goto_2

    .line 247
    :cond_3
    if-gt v0, p1, :cond_4

    .line 248
    .line 249
    const/16 v0, 0x14

    .line 250
    .line 251
    if-ge p1, v0, :cond_4

    .line 252
    .line 253
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 254
    .line 255
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->e:Landroid/widget/ImageView;

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 258
    .line 259
    .line 260
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 261
    .line 262
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->d:Landroid/widget/ImageView;

    .line 263
    .line 264
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->j:[Ljava/lang/Integer;

    .line 265
    .line 266
    aget-object p1, v1, p1

    .line 267
    .line 268
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 273
    .line 274
    .line 275
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 276
    .line 277
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->d:Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    goto :goto_2

    .line 283
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 284
    .line 285
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->e:Landroid/widget/ImageView;

    .line 286
    .line 287
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 288
    .line 289
    .line 290
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/ranking/RankingAdapter$a;->i:Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;

    .line 291
    .line 292
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRankingBinding;->d:Landroid/widget/ImageView;

    .line 293
    .line 294
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 295
    .line 296
    .line 297
    :goto_2
    return-void
.end method
