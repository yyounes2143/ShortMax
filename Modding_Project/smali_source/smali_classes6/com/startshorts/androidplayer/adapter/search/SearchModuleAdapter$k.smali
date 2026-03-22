.class final Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "SearchModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "k"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/search/SearchModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/search/SearchModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->k(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->g:Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/search/SearchModule;)V
    .locals 8
    .param p2    # Lcom/startshorts/androidplayer/bean/search/SearchModule;
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
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;->a:Landroid/widget/ImageView;

    .line 11
    .line 12
    const-string v0, "errorIv"

    .line 13
    .line 14
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/search/SearchModule;->getTopMargin()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/16 v6, 0xd

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v4, 0x0

    .line 26
    const/4 v5, 0x0

    .line 27
    invoke-static/range {v1 .. v7}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->j()Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ItemSearchNoNetworkBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 35
    .line 36
    new-instance v1, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k$a;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k;->h:Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;

    .line 39
    .line 40
    invoke-direct {v1, v2, p2, p1}, Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter$k$a;-><init>(Lcom/startshorts/androidplayer/adapter/search/SearchModuleAdapter;Lcom/startshorts/androidplayer/bean/search/SearchModule;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
