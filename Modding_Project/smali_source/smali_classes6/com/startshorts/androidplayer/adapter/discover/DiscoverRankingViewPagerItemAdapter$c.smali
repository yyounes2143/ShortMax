.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverRankingViewPagerItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:[Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;)V
    .locals 22
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;",
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
    iput-object v2, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 13
    .line 14
    invoke-direct/range {p0 .. p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 15
    .line 16
    .line 17
    iput-object v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 18
    .line 19
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_top1:I

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_top2:I

    .line 26
    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_top3:I

    .line 32
    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark4:I

    .line 38
    .line 39
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark5:I

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark6:I

    .line 50
    .line 51
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark7:I

    .line 56
    .line 57
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    .line 59
    .line 60
    move-result-object v8

    .line 61
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark8:I

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark9:I

    .line 68
    .line 69
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark10:I

    .line 74
    .line 75
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark11:I

    .line 80
    .line 81
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v12

    .line 85
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark12:I

    .line 86
    .line 87
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 88
    .line 89
    .line 90
    move-result-object v13

    .line 91
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark13:I

    .line 92
    .line 93
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v14

    .line 97
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark14:I

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v15

    .line 103
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark15:I

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v16

    .line 109
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark16:I

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v17

    .line 115
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark17:I

    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v18

    .line 121
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark18:I

    .line 122
    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object v19

    .line 127
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark19:I

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v20

    .line 133
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_rank_mark20:I

    .line 134
    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v21

    .line 139
    filled-new-array/range {v2 .. v21}, [Ljava/lang/Integer;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    iput-object v1, v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->h:[Ljava/lang/Integer;

    .line 144
    .line 145
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->b:Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->setShowRatio(F)V

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->setTimeLimit(I)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;

    .line 26
    .line 27
    invoke-direct {v3, v1, p2, p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c$a;-><init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/utils/exposure/ExposureLayout;->setExposureCallback(Lik/c;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const/16 v3, 0x20

    .line 52
    .line 53
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getId()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->a:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 83
    .line 84
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 85
    .line 86
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    sget-object v4, Lid/c;->a:Lid/c;

    .line 97
    .line 98
    invoke-virtual {v4}, Lid/c;->b()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v4}, Lid/c;->a()I

    .line 106
    .line 107
    .line 108
    move-result v4

    .line 109
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->J()I

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->I()I

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 124
    .line 125
    .line 126
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 129
    .line 130
    .line 131
    const/4 v4, 0x1

    .line 132
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 133
    .line 134
    .line 135
    invoke-static {}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->H()F

    .line 136
    .line 137
    .line 138
    move-result v4

    .line 139
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 140
    .line 141
    .line 142
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    invoke-virtual {v0, v1, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v1

    .line 170
    if-eqz v1, :cond_1

    .line 171
    .line 172
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_0

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getRecommendContent()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    goto :goto_1

    .line 184
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getSummary()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 192
    .line 193
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 198
    .line 199
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPlayNum()Ljava/lang/Long;

    .line 200
    .line 201
    .line 202
    move-result-object p2

    .line 203
    invoke-virtual {v0, v1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->i(Landroid/widget/TextView;Ljava/lang/Long;)V

    .line 204
    .line 205
    .line 206
    const/4 p2, 0x3

    .line 207
    const/4 v0, 0x4

    .line 208
    if-ltz p1, :cond_2

    .line 209
    .line 210
    if-ge p1, p2, :cond_2

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 213
    .line 214
    .line 215
    move-result-object p2

    .line 216
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->d:Landroid/widget/ImageView;

    .line 217
    .line 218
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->h:[Ljava/lang/Integer;

    .line 219
    .line 220
    aget-object p1, v1, p1

    .line 221
    .line 222
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 223
    .line 224
    .line 225
    move-result p1

    .line 226
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->d:Landroid/widget/ImageView;

    .line 234
    .line 235
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 239
    .line 240
    .line 241
    move-result-object p1

    .line 242
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->c:Landroid/widget/ImageView;

    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 245
    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_2
    if-gt p2, p1, :cond_3

    .line 249
    .line 250
    const/16 p2, 0x14

    .line 251
    .line 252
    if-ge p1, p2, :cond_3

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->d:Landroid/widget/ImageView;

    .line 259
    .line 260
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->c:Landroid/widget/ImageView;

    .line 268
    .line 269
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->h:[Ljava/lang/Integer;

    .line 270
    .line 271
    aget-object p1, v0, p1

    .line 272
    .line 273
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 281
    .line 282
    .line 283
    move-result-object p1

    .line 284
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->c:Landroid/widget/ImageView;

    .line 285
    .line 286
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    goto :goto_2

    .line 290
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->d:Landroid/widget/ImageView;

    .line 295
    .line 296
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$c;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;

    .line 300
    .line 301
    .line 302
    move-result-object p1

    .line 303
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingMulTagBinding;->c:Landroid/widget/ImageView;

    .line 304
    .line 305
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 306
    .line 307
    .line 308
    :goto_2
    return-void
.end method
