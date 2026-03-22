.class final Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "ShortsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "f"
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
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->g:Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/shorts/ShortsEpisode;)V
    .locals 10
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;->a:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 20
    .line 21
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->h:Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;->F(Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter;)Ljava/lang/ref/WeakReference;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/shorts/ShortsAdapter$f;->j()Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v2, p1, Lcom/startshorts/androidplayer/databinding/ItemShortsProgrammaticAdBinding;->a:Landroid/widget/FrameLayout;

    .line 32
    .line 33
    const-string p1, "adContainer"

    .line 34
    .line 35
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->M()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_0

    .line 43
    .line 44
    sget p1, Lcom/startshorts/androidplayer/R$layout;->view_native_ad_admob_2:I

    .line 45
    .line 46
    :goto_0
    move v3, p1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    sget p1, Lcom/startshorts/androidplayer/R$layout;->view_native_ad_tp_2:I

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :goto_1
    const/16 v8, 0x70

    .line 52
    .line 53
    const/4 v9, 0x0

    .line 54
    const-string/jumbo v4, "shorts_native"

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v6, 0x0

    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-static/range {v0 .. v9}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->o0(Lcom/startshorts/androidplayer/manager/ad/AdManager;Ljava/lang/ref/WeakReference;Landroid/view/ViewGroup;ILjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lca/f$f;ILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method
