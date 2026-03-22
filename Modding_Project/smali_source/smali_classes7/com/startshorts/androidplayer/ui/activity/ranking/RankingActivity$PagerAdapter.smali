.class public final Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "RankingActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PagerAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/appcompat/app/AppCompatActivity;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "act"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 7
    .line 8
    invoke-direct {p0, p2}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->O(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "rankTabs"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    const-string v0, "get(...)"

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 25
    .line 26
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;->y:Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    const-string p1, ""

    .line 47
    .line 48
    :cond_2
    move-object v2, p1

    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->J(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->K(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->N(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->L(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->M(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v7

    .line 79
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment$a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/ranking/RankingFragment;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$PagerAdapter;->i:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->O(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "rankTabs"

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method
