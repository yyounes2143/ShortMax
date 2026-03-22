.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;
.super Landroidx/viewpager2/adapter/FragmentStateAdapter;
.source "DiscoverRankingTabFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PagerAdapter"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:I

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic l:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->l:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter;-><init>(Landroidx/fragment/app/Fragment;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 12
    .line 13
    const-string p2, ""

    .line 14
    .line 15
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->k:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const-string v1, "parent_tab_id"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->j:I

    .line 32
    .line 33
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz p1, :cond_2

    .line 38
    .line 39
    const-string v0, "parent_tab_name"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    move-object p2, p1

    .line 49
    :cond_2
    :goto_1
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->k:Ljava/lang/String;

    .line 50
    .line 51
    return-void
.end method


# virtual methods
.method public createFragment(I)Landroidx/fragment/app/Fragment;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0, p1}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;->D:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getId()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    const/4 v1, 0x0

    .line 33
    :goto_1
    if-eqz p1, :cond_3

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;->getName()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-nez p1, :cond_2

    .line 40
    .line 41
    goto :goto_3

    .line 42
    :cond_2
    :goto_2
    move-object v2, p1

    .line 43
    goto :goto_4

    .line 44
    :cond_3
    :goto_3
    const-string p1, ""

    .line 45
    .line 46
    goto :goto_2

    .line 47
    :goto_4
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->j:I

    .line 48
    .line 49
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->k:Ljava/lang/String;

    .line 50
    .line 51
    sget-object p1, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->C:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;

    .line 52
    .line 53
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 54
    .line 55
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {p1, v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$f;->a(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 64
    .line 65
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v7

    .line 75
    invoke-virtual/range {v0 .. v7}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment$a;->a(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingFragment;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverRankingTabFragment$PagerAdapter;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getRankingNameList()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return v0
.end method
