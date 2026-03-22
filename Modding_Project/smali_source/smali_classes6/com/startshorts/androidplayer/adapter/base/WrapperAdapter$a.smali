.class Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "WrapperAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NotifyDataSetChanged"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeChanged(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr p1, v1

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeInserted(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr p1, v1

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeMoved(III)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr p1, v1

    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    add-int/2addr p2, v1

    .line 18
    add-int/2addr p2, p3

    .line 19
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter$a;->b:Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    add-int/2addr p1, v1

    .line 11
    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
