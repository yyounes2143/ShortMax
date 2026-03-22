.class public final synthetic Lbj/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

.field public final synthetic d:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lbj/h;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p2, p0, Lbj/h;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lbj/h;->c:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 9
    .line 10
    iput-object p4, p0, Lbj/h;->d:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lbj/h;->a:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Lbj/h;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Lbj/h;->c:Lcom/startshorts/androidplayer/ui/view/act/ActBanner;

    .line 6
    .line 7
    iget-object v3, p0, Lbj/h;->d:Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    move v5, p2

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/act/ActBanner;->v(Ljava/util/List;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/view/act/ActBanner;Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager;Landroid/view/View;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
