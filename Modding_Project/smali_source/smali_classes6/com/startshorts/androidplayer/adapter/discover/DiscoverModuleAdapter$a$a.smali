.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;
.super Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$b;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;

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
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;",
            "Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;",
            "Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;

    .line 2
    .line 3
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverBannerAdapter;->u(I)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

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
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->c:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$a$a;->d:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 28
    .line 29
    invoke-static {p3, p2, p1, v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->c0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
