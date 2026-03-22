.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;
.super Lyd/d;
.source "NewUserRecommendShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    const/4 v0, 0x0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-direct {p0, v1, v2, p1, v0}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->e0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;Z)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->g0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->b0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$d;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->Y(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const-string v1, "more"

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/viewmodel/recommend/NewUserRecommendShortViewModel;->G(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
