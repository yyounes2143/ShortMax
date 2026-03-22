.class public final synthetic Lgf/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/g;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 5
    .line 6
    iput-object p2, p0, Lgf/g;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lgf/g;->a:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 2
    .line 3
    iget-object v1, p0, Lgf/g;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;->j(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
