.class public abstract Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field protected i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private j:Z

.field private k:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->h(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic h(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->k:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-static {p1, v0}, Lfj/a;->c(II)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->k:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;

    .line 21
    .line 22
    invoke-interface {v1, p2, v0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;->a(Landroid/view/View;II)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method


# virtual methods
.method protected abstract b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "TT;>;TT;III)V"
        }
    .end annotation
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "I)",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract e(I)I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end method

.method f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected g(I)I
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public final getItemCount()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->j:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-le v0, v1, :cond_0

    .line 11
    .line 12
    const/16 v0, 0x3e8

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p1, v0}, Lfj/a;->c(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->g(I)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final i(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;I)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-static {p2, v0}, Lfj/a;->c(II)I

    .line 6
    .line 7
    .line 8
    move-result v4

    .line 9
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->f()I

    .line 16
    .line 17
    .line 18
    move-result v6

    .line 19
    move-object v1, p0

    .line 20
    move-object v2, p1

    .line 21
    move v5, p2

    .line 22
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->b(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Ljava/lang/Object;III)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public final j(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;
    .locals 3
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
            "Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->e(I)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, p1, v0, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->c(Landroid/view/ViewGroup;Landroid/view/View;I)Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance p2, Lcj/b;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1}, Lcj/b;-><init>(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    return-object p1
.end method

.method k(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method l(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method m(Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->k:Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter$a;

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->i(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;I)V

    .line 4
    .line 5
    .line 6
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/banner/BaseBannerAdapter;->j(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
