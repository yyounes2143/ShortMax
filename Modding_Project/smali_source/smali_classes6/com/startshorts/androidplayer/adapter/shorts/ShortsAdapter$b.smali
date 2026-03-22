.class final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;->getExtraAdInfo()Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_5

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_2

    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemShortsBrandVideoAdBinding;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsBrandVideoAdAdapterView;

    .line 28
    .line 29
    const-string v1, "adapterView"

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 35
    .line 36
    invoke-static {v1, p2, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->H(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsPicFlag()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-eqz p2, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Ljk/v;->f(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, 0x0

    .line 55
    :goto_0
    sget-object v2, Lkk/f;->a:Lkk/f;

    .line 56
    .line 57
    sget v3, Lcom/startshorts/androidplayer/R$id;->logo_iv:I

    .line 58
    .line 59
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    check-cast v3, Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 64
    .line 65
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 66
    .line 67
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 74
    .line 75
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    const/4 v1, 0x1

    .line 80
    if-eqz p2, :cond_2

    .line 81
    .line 82
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_2
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 87
    .line 88
    invoke-virtual {p2}, Lfk/z;->l()I

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Lfk/z;->l()I

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    invoke-virtual {v4, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 100
    .line 101
    .line 102
    :goto_1
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 103
    .line 104
    .line 105
    const/high16 p2, 0x40000000    # 2.0f

    .line 106
    .line 107
    invoke-static {p2}, Ljk/g;->b(F)F

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-virtual {v4, p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 112
    .line 113
    .line 114
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    invoke-virtual {v2, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 117
    .line 118
    .line 119
    sget p2, Lcom/startshorts/androidplayer/R$id;->title_tv:I

    .line 120
    .line 121
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 126
    .line 127
    if-eqz p2, :cond_3

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsTitle()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    :cond_3
    sget p2, Lcom/startshorts/androidplayer/R$id;->content_tv:I

    .line 137
    .line 138
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 143
    .line 144
    if-eqz p2, :cond_4

    .line 145
    .line 146
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsText()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    sget p2, Lcom/startshorts/androidplayer/R$id;->install_tv:I

    .line 154
    .line 155
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 160
    .line 161
    if-eqz p2, :cond_5

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getAdsContent()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    :cond_5
    :goto_2
    return-void
.end method
