.class public final Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;
.super Ljava/lang/Object;
.source "RankingActivity.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/adapter/SelectableItem;)V
    .locals 7

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->I(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->I(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRankingBinding;->e:Landroidx/viewpager2/widget/ViewPager2;

    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;

    .line 34
    .line 35
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;->H(Lcom/startshorts/androidplayer/ui/activity/ranking/RankingActivity;I)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 42
    .line 43
    const/4 v5, 0x4

    .line 44
    const/4 v6, 0x0

    .line 45
    const-string v1, "ranking_list_tag_click"

    .line 46
    .line 47
    const-wide/16 v3, 0x0

    .line 48
    .line 49
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :cond_0
    return-void
.end method
