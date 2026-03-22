.class public final Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;
.super Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.source "ImmersionBackAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final l:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroid/view/TextureView;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final m:I

.field private final n:I

.field private final o:F

.field private p:I

.field private q:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lat/n;)V
    .locals 1
    .param p1    # Lat/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lat/n<",
            "-",
            "Landroid/view/TextureView;",
            "-",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "onPlay"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->l:Lat/n;

    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/high16 v0, 0x42a80000    # 84.0f

    .line 18
    .line 19
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    sub-int/2addr p1, v0

    .line 24
    div-int/lit8 p1, p1, 0x2

    .line 25
    .line 26
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->m:I

    .line 27
    .line 28
    int-to-float p1, p1

    .line 29
    const v0, 0x3faa5e35    # 1.331f

    .line 30
    .line 31
    .line 32
    mul-float/2addr p1, v0

    .line 33
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->n:I

    .line 38
    .line 39
    const/high16 p1, 0x41a00000    # 20.0f

    .line 40
    .line 41
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    int-to-float p1, p1

    .line 46
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o:F

    .line 47
    .line 48
    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->n(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(I)I
    .locals 0

    .line 1
    sget p1, Lcom/startshorts/androidplayer/R$layout;->item_immersion_back_shorts:I

    .line 2
    .line 3
    return p1
.end method

.method protected n(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;III)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            "III)V"
        }
    .end annotation

    .line 1
    const-string p4, "holder"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p2, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    sget p4, Lcom/startshorts/androidplayer/R$id;->video_render_view:I

    .line 10
    .line 11
    invoke-virtual {p1, p4}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    check-cast p4, Landroid/view/TextureView;

    .line 16
    .line 17
    sget p5, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 18
    .line 19
    invoke-virtual {p1, p5}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p5

    .line 23
    check-cast p5, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 24
    .line 25
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    if-ne v0, p3, :cond_1

    .line 29
    .line 30
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {p5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    const/4 v0, 0x4

    .line 41
    invoke-virtual {p4, v0}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    sget v2, Lcom/startshorts/androidplayer/R$string;->cover_pic:I

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p5, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 72
    .line 73
    .line 74
    sget-object v0, Lkk/f;->a:Lkk/f;

    .line 75
    .line 76
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 77
    .line 78
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->m:I

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 91
    .line 92
    .line 93
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->n:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 96
    .line 97
    .line 98
    sget v2, Lcom/startshorts/androidplayer/R$drawable;->ic_banner_placeholder:I

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x1

    .line 104
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 105
    .line 106
    .line 107
    iget v2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->o:F

    .line 108
    .line 109
    invoke-virtual {v1, v2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 110
    .line 111
    .line 112
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    invoke-virtual {v0, p5, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 115
    .line 116
    .line 117
    iget p5, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 118
    .line 119
    if-eq p5, p3, :cond_2

    .line 120
    .line 121
    return-void

    .line 122
    :cond_2
    sget p3, Lcom/startshorts/androidplayer/R$id;->short_rating_view:I

    .line 123
    .line 124
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    check-cast p3, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 129
    .line 130
    new-instance p5, Ljava/lang/ref/WeakReference;

    .line 131
    .line 132
    invoke-direct {p5, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    iput-object p5, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 136
    .line 137
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->l:Lat/n;

    .line 138
    .line 139
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, p4, p2, p3}, Lat/n;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    return-void
.end method

.method public final o()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 8
    .line 9
    if-le v0, v1, :cond_0

    .line 10
    .line 11
    if-ltz v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    return-object v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public final q(I)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    const-string v1, "mList"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 13
    .line 14
    return-object p1
.end method

.method public final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->q:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$id;->cover_iv:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;->findViewById(I)Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public final s(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ImmersionBackAdapter;->p:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
