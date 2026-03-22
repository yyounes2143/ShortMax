.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DiscoverFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->e:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 4
    .line 5
    .line 6
    const/high16 p1, 0x41800000    # 16.0f

    .line 7
    .line 8
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->a:I

    .line 13
    .line 14
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->b:I

    .line 19
    .line 20
    const/high16 p1, 0x40c00000    # 6.0f

    .line 21
    .line 22
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->c:I

    .line 27
    .line 28
    const/high16 p1, 0x41000000    # 8.0f

    .line 29
    .line 30
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->d:I

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

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
    iget-object p4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->e:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 22
    .line 23
    invoke-virtual {p4}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    instance-of v0, p4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    check-cast p4, Lcom/startshorts/androidplayer/adapter/discover/DiscoverModuleAdapter;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move-object p4, v1

    .line 36
    :goto_0
    if-nez p4, :cond_1

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 40
    .line 41
    .line 42
    move-result p3

    .line 43
    invoke-virtual {p4, p3}, Lcom/startshorts/androidplayer/adapter/base/BaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    check-cast p3, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 48
    .line 49
    if-nez p3, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 53
    .line 54
    .line 55
    move-result p4

    .line 56
    const/16 v0, -0xa

    .line 57
    .line 58
    if-eq p4, v0, :cond_3

    .line 59
    .line 60
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 61
    .line 62
    .line 63
    move-result p4

    .line 64
    const/4 v0, -0x8

    .line 65
    if-eq p4, v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    const/16 v0, -0x9

    .line 72
    .line 73
    if-eq p4, v0, :cond_3

    .line 74
    .line 75
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 76
    .line 77
    .line 78
    move-result p4

    .line 79
    const/16 v0, 0x8

    .line 80
    .line 81
    if-ne p4, v0, :cond_4

    .line 82
    .line 83
    :cond_3
    instance-of p3, p3, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;

    .line 84
    .line 85
    if-eqz p3, :cond_5

    .line 86
    .line 87
    :cond_4
    return-void

    .line 88
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    instance-of p3, p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 93
    .line 94
    if-eqz p3, :cond_6

    .line 95
    .line 96
    move-object v1, p2

    .line 97
    check-cast v1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 98
    .line 99
    :cond_6
    if-nez v1, :cond_7

    .line 100
    .line 101
    return-void

    .line 102
    :cond_7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    rem-int/lit8 p2, p2, 0x2

    .line 107
    .line 108
    if-nez p2, :cond_8

    .line 109
    .line 110
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->a:I

    .line 111
    .line 112
    iget p3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->b:I

    .line 113
    .line 114
    iget p4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->c:I

    .line 115
    .line 116
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->d:I

    .line 117
    .line 118
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_8
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->c:I

    .line 123
    .line 124
    iget p3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->b:I

    .line 125
    .line 126
    iget p4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->a:I

    .line 127
    .line 128
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$initRecyclerView$1;->d:I

    .line 129
    .line 130
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 131
    .line 132
    .line 133
    :goto_1
    return-void
.end method
