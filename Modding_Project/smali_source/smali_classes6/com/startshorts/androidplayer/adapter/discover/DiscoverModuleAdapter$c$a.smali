.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;

.field final synthetic c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

.field final synthetic d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

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
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    const/4 v0, 0x0

    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    move-object p3, v0

    .line 29
    :goto_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    if-nez p3, :cond_4

    .line 34
    .line 35
    new-instance p3, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 36
    .line 37
    invoke-direct {p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x12c

    .line 41
    .line 42
    invoke-virtual {p3, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setFadeDuration(I)V

    .line 43
    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    invoke-virtual {p3, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setAutoPlayAnim(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;->getBannerContent()Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;->getCoverId()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    :cond_2
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Ld4/a;

    .line 63
    .line 64
    const/4 v0, 0x5

    .line 65
    invoke-direct {p1, v1, v0}, Ld4/a;-><init>(II)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 69
    .line 70
    .line 71
    new-instance p1, Lz2/a;

    .line 72
    .line 73
    invoke-direct {p1}, Lz2/a;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p3, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4;->m:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->b()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    div-int/lit8 v0, v0, 0x8

    .line 86
    .line 87
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->a()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    div-int/lit8 v0, v0, 0x8

    .line 95
    .line 96
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->d()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    div-int/lit8 v0, v0, 0x8

    .line 104
    .line 105
    invoke-virtual {p3, v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter4$a;->c()I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    div-int/lit8 p1, p1, 0x8

    .line 113
    .line 114
    invoke-virtual {p3, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 115
    .line 116
    .line 117
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 118
    .line 119
    invoke-virtual {p1, p3}, Lkk/f;->m(Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    invoke-static {v0}, Ljk/j;->a(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 126
    .line 127
    .line 128
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 135
    .line 136
    invoke-virtual {p1, v0, p3}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 137
    .line 138
    .line 139
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 140
    .line 141
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    const-string p3, "getData(...)"

    .line 146
    .line 147
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 155
    .line 156
    if-eqz p1, :cond_5

    .line 157
    .line 158
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;

    .line 159
    .line 160
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 161
    .line 162
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 163
    .line 164
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$c;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;

    .line 165
    .line 166
    .line 167
    move-result-object p3

    .line 168
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner3Binding;->b:Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorCircleView;

    .line 169
    .line 170
    invoke-virtual {p3, p2}, Lcom/startshorts/androidplayer/ui/view/discover/BannerIndicatorCircleView;->setIndex(I)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0, p2, p1, v1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 174
    .line 175
    .line 176
    :cond_5
    return-void
.end method
