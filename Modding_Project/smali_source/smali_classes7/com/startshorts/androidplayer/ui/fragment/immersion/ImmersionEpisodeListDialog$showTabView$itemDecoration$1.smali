.class public final Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog$showTabView$itemDecoration$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ImmersionEpisodeListDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionEpisodeListDialog;->g0(III)V
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
    const/4 p3, 0x0

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 29
    .line 30
    invoke-virtual {p2}, Lfk/z;->d()I

    .line 31
    .line 32
    .line 33
    move-result p4

    .line 34
    invoke-virtual {p2}, Lfk/z;->s()I

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    invoke-static {p1, p4, p3, p2, p3}, Ljk/r;->a(Landroid/graphics/Rect;IIII)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    sget-object p2, Lfk/z;->a:Lfk/z;

    .line 43
    .line 44
    invoke-virtual {p2}, Lfk/z;->s()I

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    invoke-static {p1, p3, p3, p2, p3}, Ljk/r;->a(Landroid/graphics/Rect;IIII)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
