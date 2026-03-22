.class final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public bridge synthetic g(ILjava/lang/Object;Ljava/util/List;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->l(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 2
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsNormalAdapterView;

    .line 14
    .line 15
    const-string v1, "adapterView"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 21
    .line 22
    invoke-static {v1, p2, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->H(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 26
    .line 27
    invoke-static {v1, p1, p2, v0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->I(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public l(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;Ljava/util/List;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "payloads"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->i(I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->h(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_2

    .line 13
    .line 14
    const-string v0, "ignore_refresh"

    .line 15
    .line 16
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const-string/jumbo v0, "update_collect_info"

    .line 24
    .line 25
    .line 26
    invoke-interface {p3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    if-eqz p3, :cond_1

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemShortsNormalBinding;->a:Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/ShortsNormalAdapterView;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/view/shortsV2/adapter/BaseShortsAdapterView;->u(I)Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsIconTextView;->e(Lcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$e;->k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method
