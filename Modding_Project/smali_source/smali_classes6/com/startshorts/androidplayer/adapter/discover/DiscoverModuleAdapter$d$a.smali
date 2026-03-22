.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;->c:Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorView;->setIndex(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 23
    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    const/4 v0, 0x0

    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object p3, v0

    .line 40
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    const/4 v1, 0x1

    .line 45
    const/16 v2, 0x8

    .line 46
    .line 47
    if-nez p3, :cond_3

    .line 48
    .line 49
    sget-object p3, Lkk/f;->a:Lkk/f;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;->f:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 58
    .line 59
    new-instance v4, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 60
    .line 61
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-eqz v5, :cond_2

    .line 69
    .line 70
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    :cond_2
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    new-instance v0, Ld4/a;

    .line 78
    .line 79
    const/4 v5, 0x4

    .line 80
    invoke-direct {v0, v1, v5}, Ld4/a;-><init>(II)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lz2/a;

    .line 87
    .line 88
    invoke-direct {v0}, Lz2/a;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2;->l:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->b()I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    div-int/2addr v5, v2

    .line 101
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->a()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    div-int/2addr v5, v2

    .line 109
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->d()I

    .line 113
    .line 114
    .line 115
    move-result v5

    .line 116
    div-int/2addr v5, v2

    .line 117
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter2$a;->c()I

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    div-int/2addr v0, v2

    .line 125
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 126
    .line 127
    .line 128
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 129
    .line 130
    invoke-virtual {p3, v3, v4}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 131
    .line 132
    .line 133
    :cond_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 134
    .line 135
    .line 136
    move-result-object p3

    .line 137
    if-eqz p3, :cond_4

    .line 138
    .line 139
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->isShortsBanner()Z

    .line 140
    .line 141
    .line 142
    move-result p3

    .line 143
    if-ne p3, v1, :cond_4

    .line 144
    .line 145
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;

    .line 146
    .line 147
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;

    .line 148
    .line 149
    .line 150
    move-result-object p3

    .line 151
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;->d:Landroid/widget/ImageView;

    .line 152
    .line 153
    const/4 v0, 0x0

    .line 154
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_4
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;

    .line 159
    .line 160
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;

    .line 161
    .line 162
    .line 163
    move-result-object p3

    .line 164
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleCarouselBinding;->d:Landroid/widget/ImageView;

    .line 165
    .line 166
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :goto_1
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 170
    .line 171
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 172
    .line 173
    invoke-static {p3, p2, p1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method
