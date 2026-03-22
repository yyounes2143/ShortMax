.class final Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
.source "DiscoverModuleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "x"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
        ">.ViewHolder;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;",
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;-><init>(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Landroidx/databinding/ViewDataBinding;)V

    .line 9
    .line 10
    .line 11
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public bridge synthetic c()Landroidx/databinding/ViewDataBinding;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->g:Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public k(ILcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 7
    .param p2    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->h:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 18
    .line 19
    const-string/jumbo v0, "titleTv"

    .line 20
    .line 21
    .line 22
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v4, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 30
    .line 31
    const-string/jumbo v0, "titleMoreContainer"

    .line 32
    .line 33
    .line 34
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$x;->j()Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v5, v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverModuleTitleMoreBinding;->a:Landroid/widget/ImageView;

    .line 42
    .line 43
    const-string v0, "moreIv"

    .line 44
    .line 45
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object v6, p2

    .line 49
    check-cast v6, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 50
    .line 51
    move v2, p1

    .line 52
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;->d0(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;ILandroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
