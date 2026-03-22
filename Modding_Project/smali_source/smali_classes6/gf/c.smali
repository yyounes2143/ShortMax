.class public final synthetic Lgf/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

.field public final synthetic b:I

.field public final synthetic c:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lgf/c;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 5
    .line 6
    iput p2, p0, Lgf/c;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lgf/c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 9
    .line 10
    iput-object p4, p0, Lgf/c;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lgf/c;->a:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;

    .line 2
    .line 3
    iget v1, p0, Lgf/c;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lgf/c;->c:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iget-object v3, p0, Lgf/c;->d:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;->h(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ILkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
