.class final Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "EpisodeListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->h:Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->k(ILcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->g:Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;)V
    .locals 1
    .param p2    # Lcom/startshorts/androidplayer/bean/shorts/EpisodeDetail;
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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->isTrailer()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    sget v0, Lcom/startshorts/androidplayer/R$string;->shorts_fragment_trailer:I

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/immersion/EpisodeListAdapter$b;->j()Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemEpisodeLockedBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 48
    .line 49
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getEpisodeNum()I

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    :goto_0
    return-void
.end method
