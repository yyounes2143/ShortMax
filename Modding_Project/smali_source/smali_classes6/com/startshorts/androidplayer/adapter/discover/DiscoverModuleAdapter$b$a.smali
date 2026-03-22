.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;

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

.field final synthetic e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a(ZII)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->v(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->getData()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string p3, "getData(...)"

    .line 13
    .line 14
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 22
    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 29
    .line 30
    invoke-static {p3, p2, p1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    sget-object p2, Lkk/f;->a:Lkk/f;

    .line 44
    .line 45
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b$a;->e:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;

    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$b;->k()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    iget-object p3, p3, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleBanner2Binding;->c:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 52
    .line 53
    new-instance v0, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 54
    .line 55
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getPicUrl()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ld4/a;

    .line 66
    .line 67
    const/4 v1, 0x1

    .line 68
    const/4 v2, 0x5

    .line 69
    invoke-direct {p1, v1, v2}, Ld4/a;-><init>(II)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setIterativeBoxBlurPostProcessor(Ld4/a;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lz2/a;

    .line 76
    .line 77
    invoke-direct {p1}, Lz2/a;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setControllerListener(Lz2/a;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3;->p:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->b()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    div-int/lit8 v1, v1, 0x8

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssWidth(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->a()I

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    div-int/lit8 v1, v1, 0x8

    .line 99
    .line 100
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setOssHeight(I)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->d()I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    div-int/lit8 v1, v1, 0x8

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeWidth(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter3$a;->c()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    div-int/lit8 p1, p1, 0x8

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setResizeHeight(I)V

    .line 119
    .line 120
    .line 121
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 122
    .line 123
    invoke-virtual {p2, p3, v0}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 124
    .line 125
    .line 126
    :cond_1
    return-void
.end method
