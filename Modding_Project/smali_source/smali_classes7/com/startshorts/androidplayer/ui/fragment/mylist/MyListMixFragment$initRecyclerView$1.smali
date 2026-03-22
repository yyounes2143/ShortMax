.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MyListMixFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$1;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    .line 5
    .line 6
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
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$1;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 28
    .line 29
    .line 30
    move-result-object p3

    .line 31
    instance-of p4, p3, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 32
    .line 33
    if-eqz p4, :cond_0

    .line 34
    .line 35
    check-cast p3, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    const/4 p3, 0x0

    .line 39
    :goto_0
    const/4 p4, 0x0

    .line 40
    if-eqz p3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    const/4 v0, 0x1

    .line 47
    if-ne p3, v0, :cond_2

    .line 48
    .line 49
    if-nez p2, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1, p4, p4, p4, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 56
    .line 57
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 58
    .line 59
    .line 60
    move-result p3

    .line 61
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 66
    .line 67
    .line 68
    move-result p2

    .line 69
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 74
    .line 75
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 76
    .line 77
    .line 78
    move-result p3

    .line 79
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p2}, Lfk/z;->b()I

    .line 84
    .line 85
    .line 86
    move-result p2

    .line 87
    invoke-virtual {p1, p3, p4, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 88
    .line 89
    .line 90
    :goto_1
    return-void
.end method
