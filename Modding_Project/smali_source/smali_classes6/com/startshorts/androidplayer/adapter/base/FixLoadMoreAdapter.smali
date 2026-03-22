.class public abstract Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;
.source "FixLoadMoreAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected k:Z

.field private l:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->l:Z

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static synthetic h(Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;)Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-super {p0}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->i(I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->getItemCount()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    if-ne p1, v0, :cond_1

    .line 17
    .line 18
    const p1, 0xf423f

    .line 19
    .line 20
    .line 21
    return p1

    .line 22
    :cond_1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->i(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1
.end method

.method public i(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public k(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->l:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->l:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public abstract l(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public final m(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const v0, 0xf423f

    .line 2
    .line 3
    .line 4
    if-ne p2, v0, :cond_0

    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;

    .line 7
    .line 8
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter$LoadMoreViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;Landroid/view/ViewGroup;)V

    .line 9
    .line 10
    .line 11
    return-object p2

    .line 12
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->l(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public n(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->k:Z

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;->m(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
