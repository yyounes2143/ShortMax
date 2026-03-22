.class final Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;
.source "EpisodeTabAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
        "Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;",
        ">.SelectableViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final h:Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic i:Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->i:Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$SelectableViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->h:Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->k(ILcom/startshorts/androidplayer/bean/tab/EpisodeTab;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->h:Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/tab/EpisodeTab;)V
    .locals 2
    .param p2    # Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 14
    .line 15
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/tab/EpisodeTab;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_episode_list_dialog_fragment_episode_tab_selected:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_episode_list_dialog_fragment_episode_tab_unselected:I

    .line 34
    .line 35
    :goto_0
    invoke-virtual {v0, v1}, Lfk/u;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    const-string p2, "dividerLineViewstub"

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 55
    .line 56
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p1}, Ljk/e0;->g(Landroidx/databinding/ViewStubProxy;)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/tab/EpisodeTabAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeTabBinding;->a:Landroidx/databinding/ViewStubProxy;

    .line 68
    .line 69
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const/4 p2, 0x4

    .line 73
    invoke-static {p1, p2}, Ljk/e0;->a(Landroidx/databinding/ViewStubProxy;I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method
