.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverCategoryViewPagerAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "binding"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->l(ILcom/startshorts/androidplayer/bean/discover/DiscoverCategory;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    return-object v0
.end method

.method public l(ILcom/startshorts/androidplayer/bean/discover/DiscoverCategory;)V
    .locals 6
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->f(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->G(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Landroidx/lifecycle/Lifecycle;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->H(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;)Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter;->K()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    move-object v0, p2

    .line 36
    move v1, p1

    .line 37
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;-><init>(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;Landroidx/lifecycle/Lifecycle;Lcom/startshorts/androidplayer/databinding/ItemDiscoverCategoryPageItemBinding;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->U()V

    .line 41
    .line 42
    .line 43
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 44
    .line 45
    :cond_0
    return-void
.end method
