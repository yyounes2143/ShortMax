.class public final Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "GuidePointView.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGuidePointView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GuidePointView.kt\ncom/startshorts/androidplayer/ui/view/base/GuidePointView\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,71:1\n360#2,7:72\n*S KotlinDebug\n*F\n+ 1 GuidePointView.kt\ncom/startshorts/androidplayer/ui/view/base/GuidePointView\n*L\n27#1:72,7\n*E\n"
    }
.end annotation


# instance fields
.field private a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-direct {v0, v1, v2, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->b(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final b(Ljava/util/List;Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter<",
            "TT;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layoutManager"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 21
    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 25
    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-static {p2, p1, v1, v0, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->D(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;Ljava/util/List;ZILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 32
    .line 33
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final getItemCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final setSelectedIndex(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/base/GuidePointView;->a:Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-ltz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ge p1, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter;->L(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
