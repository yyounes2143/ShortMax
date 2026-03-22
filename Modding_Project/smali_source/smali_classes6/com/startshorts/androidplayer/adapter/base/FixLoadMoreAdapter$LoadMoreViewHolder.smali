.class public Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
.source "FixLoadMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadMoreViewHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic i:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;Landroid/view/ViewGroup;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;->i:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget v1, Lcom/startshorts/androidplayer/R$layout;->view_item_load_more:I

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->h(Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$a;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->h(Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$a;

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public e(ILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 2
    .line 3
    sget p2, Lcom/startshorts/androidplayer/R$id;->load_more_next:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;->i:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->j()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    const/16 v0, 0x8

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez p2, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;->i:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->g()I

    .line 23
    .line 24
    .line 25
    move-result p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move p2, v1

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    :goto_0
    move p2, v0

    .line 32
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    sget p2, Lcom/startshorts/androidplayer/R$id;->load_more_end_tv:I

    .line 38
    .line 39
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;->i:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->j()Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    .line 51
    move v0, v1

    .line 52
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;->i:Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->h(Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$a;

    .line 58
    .line 59
    .line 60
    return-void
.end method
