.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field public final synthetic b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/z;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/z;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/z;->a:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/z;->b:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$d;->j(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
