.class public final synthetic Lcom/startshorts/androidplayer/ui/view/banner/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/banner/a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/startshorts/androidplayer/ui/view/banner/a;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;II)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/a;->b:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/banner/a;->c:Z

    .line 6
    .line 7
    move-object v3, p1

    .line 8
    move v4, p2

    .line 9
    move v5, p3

    .line 10
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;->b(Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;ZLandroid/view/View;II)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
