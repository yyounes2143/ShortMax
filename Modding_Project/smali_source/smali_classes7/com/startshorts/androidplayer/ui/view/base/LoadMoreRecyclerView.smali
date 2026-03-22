.class public Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;
    }
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->b()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->b()V

    return-void
.end method

.method static synthetic a(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;)Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private b()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$a;-><init>(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public setLoadMoreListener(Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView;->a:Lcom/startshorts/androidplayer/ui/view/base/LoadMoreRecyclerView$b;

    .line 2
    .line 3
    return-void
.end method
