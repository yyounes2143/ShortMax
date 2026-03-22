.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment$initRecyclerView$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ImmersionEpisodeListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListFragment;->i0()V
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
    const-string p2, "parent"

    .line 12
    .line 13
    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string p2, "state"

    .line 17
    .line 18
    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 22
    .line 23
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    invoke-virtual {p2}, Lfk/z;->m()I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-virtual {p2}, Lfk/z;->s()I

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p3, v0, p4, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
