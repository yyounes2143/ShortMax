.class public final synthetic Lwf/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwf/h;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lwf/h;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;->j(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
