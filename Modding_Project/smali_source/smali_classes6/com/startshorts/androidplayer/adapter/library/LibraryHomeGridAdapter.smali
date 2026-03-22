.class public final Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/FixLoadMoreAdapter;
.source "LibraryHomeGridAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;,
        Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;
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


# static fields
.field public static final p:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final m:I

.field private final n:I

.field private o:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->p:Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$a;

    .line 8
    .line 9
    return-void
.end method

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
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->m:I

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
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->n:I

    .line 37
    .line 38
    return-void
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->n:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->m:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public i(I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/base/SimpleAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getItemType()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public l(Landroid/view/ViewGroup;I)Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;
    .locals 3
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
    const-string v0, "parent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "inflate(...)"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    new-instance p2, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {v2, p1, v1}, Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$c;-><init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;Lcom/startshorts/androidplayer/databinding/ItemGridLibraryBinding;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance p2, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {v2, p1, v1}, Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;Lcom/startshorts/androidplayer/databinding/PullUpLoadEndBinding;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    return-object p2
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->r(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final q()Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->o:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 2
    .line 3
    return-object v0
.end method

.method public r(Lcom/startshorts/androidplayer/adapter/base/SimpleViewHolder;)V
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

.method public final s(Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/library/LibraryHomeGridAdapter;->o:Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter$n;

    .line 2
    .line 3
    return-void
.end method
