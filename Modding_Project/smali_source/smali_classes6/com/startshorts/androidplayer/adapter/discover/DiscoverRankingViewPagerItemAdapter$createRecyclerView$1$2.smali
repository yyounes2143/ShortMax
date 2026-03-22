.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$createRecyclerView$1$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DiscoverRankingViewPagerItemAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->N(Lcom/startshorts/androidplayer/databinding/ItemDiscoverRankingPageItemBinding;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1
    const-string v0, "outRect"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "view"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string p2, "parent"

    .line 13
    .line 14
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string/jumbo p2, "state"

    .line 18
    .line 19
    .line 20
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p2, Lfk/v;->a:Lfk/v;

    .line 24
    .line 25
    invoke-virtual {p2}, Lfk/v;->b()Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    const/high16 p3, 0x41900000    # 18.0f

    .line 30
    .line 31
    const/high16 p4, 0x41a00000    # 20.0f

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    if-eqz p2, :cond_0

    .line 35
    .line 36
    invoke-static {p4}, Ljk/g;->a(F)I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p3}, Ljk/g;->a(F)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    invoke-virtual {p1, p2, v0, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p4}, Ljk/g;->a(F)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-static {p3}, Ljk/g;->a(F)I

    .line 53
    .line 54
    .line 55
    move-result p3

    .line 56
    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
