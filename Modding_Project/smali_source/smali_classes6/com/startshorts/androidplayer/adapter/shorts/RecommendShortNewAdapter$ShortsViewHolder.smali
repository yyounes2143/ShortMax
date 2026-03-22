.class public final Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "RecommendShortNewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ShortsViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->k(ILcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->g:Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;
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
    add-int/lit8 v0, p1, -0x1

    .line 10
    .line 11
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v2, v2, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 18
    .line 19
    new-instance v3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 20
    .line 21
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;->getCoverUrl()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->F(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;)I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-virtual {v3, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {v4}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->E(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;)I

    .line 41
    .line 42
    .line 43
    move-result v4

    .line 44
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 45
    .line 46
    .line 47
    sget v4, Lcom/startshorts/androidplayer/R$drawable;->ic_cover_placeholder:I

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 50
    .line 51
    .line 52
    sget-object v4, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    invoke-virtual {v1, v2, v3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 62
    .line 63
    const/4 v2, 0x0

    .line 64
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 72
    .line 73
    new-instance v3, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v4, "Top "

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayName()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->K()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-ne p1, v0, :cond_0

    .line 113
    .line 114
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 115
    .line 116
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->N()Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_0

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->e:Landroid/view/TextureView;

    .line 127
    .line 128
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 129
    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->e:Landroid/view/TextureView;

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 140
    .line 141
    .line 142
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->K()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    if-ne p1, v0, :cond_2

    .line 149
    .line 150
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 151
    .line 152
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->N()Z

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    if-eqz p1, :cond_1

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 160
    .line 161
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 162
    .line 163
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->H(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;Ljava/lang/ref/WeakReference;)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->h:Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->G(Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;)Lkotlin/jvm/functions/Function2;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter$ShortsViewHolder;->j()Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemRecommendShortsNewBinding;->e:Landroid/view/TextureView;

    .line 180
    .line 181
    const-string/jumbo v1, "videoRenderView"

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    :cond_2
    :goto_1
    return-void
.end method
