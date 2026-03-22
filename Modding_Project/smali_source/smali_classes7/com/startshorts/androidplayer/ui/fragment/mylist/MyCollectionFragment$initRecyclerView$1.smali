.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment$initRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MyCollectionFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyCollectionFragment;->i0()V
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
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "parent"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "state"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 28
    .line 29
    invoke-virtual {p2}, Lfk/z;->d()I

    .line 30
    .line 31
    .line 32
    move-result p3

    .line 33
    invoke-virtual {p2}, Lfk/z;->g()I

    .line 34
    .line 35
    .line 36
    move-result p4

    .line 37
    invoke-virtual {p2}, Lfk/z;->d()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 50
    .line 51
    invoke-virtual {p2}, Lfk/z;->d()I

    .line 52
    .line 53
    .line 54
    move-result p3

    .line 55
    invoke-virtual {p2}, Lfk/z;->d()I

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    const/4 v0, 0x0

    .line 64
    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 65
    .line 66
    .line 67
    :goto_0
    return-void
.end method
