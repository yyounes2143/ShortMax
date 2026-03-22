.class public final Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;
.super Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;
.source "TagFilterListAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$a;,
        Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
        "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final o:I

.field private final p:I

.field private final q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->r:Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 6
    .line 7
    .line 8
    const/high16 v0, 0x42da0000    # 109.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->o:I

    .line 15
    .line 16
    const/high16 v0, 0x43110000    # 145.0f

    .line 17
    .line 18
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->p:I

    .line 23
    .line 24
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 25
    .line 26
    invoke-virtual {v0}, Lfk/z;->r()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    iput v0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->q:F

    .line 32
    .line 33
    return-void
.end method

.method public static final synthetic E(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->q:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic F(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->p:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic G(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->o:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public H(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">.ViewHolder;)V"
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
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;->d()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v1, Lag/a;->a:Lag/a;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getShortPlayCode()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseShorts;->getUpack()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const/16 v8, 0x28

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    const-string/jumbo v2, "tag_fullscreen_page"

    .line 35
    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v7, 0x0

    .line 39
    invoke-static/range {v1 .. v9}, Lag/a;->f(Lag/a;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;->H(Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "TagFilterListAdapter"

    .line 2
    .line 3
    return-object v0
.end method

.method public x(Landroid/view/ViewGroup;II)Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$ViewHolder;
    .locals 0
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "II)",
            "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">.ViewHolder;"
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
    new-instance p2, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;

    .line 7
    .line 8
    sget p3, Lcom/startshorts/androidplayer/R$layout;->item_tag_list_shorts:I

    .line 9
    .line 10
    invoke-virtual {p0, p1, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->s(Landroid/view/ViewGroup;I)Landroidx/databinding/ViewDataBinding;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;

    .line 15
    .line 16
    invoke-direct {p2, p0, p1}, Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter$b;-><init>(Lcom/startshorts/androidplayer/adapter/tag/TagFilterListAdapter;Lcom/startshorts/androidplayer/databinding/ItemTagListShortsBinding;)V

    .line 17
    .line 18
    .line 19
    return-object p2
.end method
