.class public final synthetic Lwf/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lwf/c;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 5
    .line 6
    iput-object p2, p0, Lwf/c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lwf/c;->a:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;

    .line 2
    .line 3
    iget-object v1, p0, Lwf/c;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;->h(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
