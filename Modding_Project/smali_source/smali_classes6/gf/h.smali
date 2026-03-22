.class public final synthetic Lgf/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/h;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 5
    .line 6
    iput-object p2, p0, Lgf/h;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/h;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 2
    .line 3
    iget-object v1, p0, Lgf/h;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;->k(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
