.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;
.super Ljava/lang/Object;
.source "DiscoverCategoryViewPagerItemAdapter.kt"

# interfaces
.implements Lik/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->F(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

.field final synthetic c:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public show()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->B(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;)Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v0, v2

    .line 24
    :goto_0
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->f0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->H0()Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    :cond_1
    move-object v7, v2

    .line 37
    sget-object v3, Lag/a;->a:Lag/a;

    .line 38
    .line 39
    iget-object v4, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 40
    .line 41
    iget v5, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter$d;->c:I

    .line 42
    .line 43
    const/16 v12, 0xf4

    .line 44
    .line 45
    const/4 v13, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v8, 0x0

    .line 48
    const/4 v9, 0x0

    .line 49
    const/4 v10, 0x0

    .line 50
    const/4 v11, 0x0

    .line 51
    invoke-static/range {v3 .. v13}, Lag/a;->c(Lag/a;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;IILcom/startshorts/androidplayer/bean/discover/DiscoverTab;Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
