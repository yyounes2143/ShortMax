.class public final Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
.source "LibraryGridAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter<",
        "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final m:I

.field private final n:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->G()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    int-to-float v0, v0

    .line 11
    const/high16 v1, 0x42600000    # 56.0f

    .line 12
    .line 13
    invoke-static {v1}, Ljk/g;->b(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    sub-float/2addr v0, v1

    .line 18
    const/4 v1, 0x3

    .line 19
    int-to-float v1, v1

    .line 20
    div-float/2addr v0, v1

    .line 21
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->m:I

    .line 26
    .line 27
    int-to-float v0, v0

    .line 28
    const v1, 0x3fab851f    # 1.34f

    .line 29
    .line 30
    .line 31
    mul-float/2addr v0, v1

    .line 32
    invoke-static {v0}, Lbt/a;->c(F)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->n:I

    .line 37
    .line 38
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->m:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public l(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p2, "parent"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p2, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, p1, v1}, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v0, "inflate(...)"

    .line 22
    .line 23
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter$a;-><init>(Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;)V

    .line 27
    .line 28
    .line 29
    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryGridAdapter;->q(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public q(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->e:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    sget-object v1, Lag/a;->a:Lag/a;

    .line 16
    .line 17
    iget v3, p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;->d:I

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v6

    .line 27
    const/16 v8, 0x28

    .line 28
    .line 29
    const/4 v9, 0x0

    .line 30
    const-string v2, "discover_library"

    .line 31
    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    invoke-static/range {v1 .. v9}, Lag/a;->f(Lag/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method
