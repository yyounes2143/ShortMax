.class public final synthetic Lcom/startshorts/androidplayer/ui/fragment/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/f;->a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/f;->a:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 2
    .line 3
    check-cast p1, Landroid/view/TextureView;

    .line 4
    .line 5
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->X(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/RecommendShorts;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
