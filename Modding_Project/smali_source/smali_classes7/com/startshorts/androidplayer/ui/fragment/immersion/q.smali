.class public final synthetic Lcom/startshorts/androidplayer/ui/fragment/immersion/q;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lat/n;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/q;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/q;->a:Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;

    .line 2
    .line 3
    check-cast p1, Landroid/view/TextureView;

    .line 4
    .line 5
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 6
    .line 7
    check-cast p3, Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;

    .line 8
    .line 9
    invoke-static {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;->U(Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBottomBackShortsDialog;Landroid/view/TextureView;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/shortrating/ShortRatingLayout;)Lkotlin/Unit;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method
