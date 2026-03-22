.class Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$a;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$a;->a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    if-lez p3, :cond_1

    .line 5
    .line 6
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$a;->a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 7
    .line 8
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->a(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;)Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    .line 34
    .line 35
    .line 36
    move-result p3

    .line 37
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    add-int/lit8 v0, p3, -0x1

    .line 48
    .line 49
    if-ne v0, p1, :cond_1

    .line 50
    .line 51
    if-lt p3, p2, :cond_1

    .line 52
    .line 53
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$a;->a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->a(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;)Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;->a()V

    .line 60
    .line 61
    .line 62
    :cond_1
    :goto_0
    return-void
.end method
