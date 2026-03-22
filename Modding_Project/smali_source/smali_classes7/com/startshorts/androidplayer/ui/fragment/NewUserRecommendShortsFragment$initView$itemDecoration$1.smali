.class public final Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "NewUserRecommendShortsFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->A0()V
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

.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

.field final synthetic f:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->f:I

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 6
    .line 7
    .line 8
    const/high16 p1, 0x40c00000    # 6.0f

    .line 9
    .line 10
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->a:I

    .line 15
    .line 16
    const/high16 p1, 0x41800000    # 16.0f

    .line 17
    .line 18
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->b:I

    .line 23
    .line 24
    const/high16 p1, 0x41980000    # 19.0f

    .line 25
    .line 26
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->c:I

    .line 31
    .line 32
    const/high16 p1, 0x42080000    # 34.0f

    .line 33
    .line 34
    invoke-static {p1}, Ljk/g;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->d:I

    .line 39
    .line 40
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
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    iget-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->e:Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;

    .line 29
    .line 30
    invoke-static {p3}, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;->d0(Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment;)Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const/4 p4, 0x0

    .line 35
    if-eqz p3, :cond_1

    .line 36
    .line 37
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/adapter/shorts/RecommendShortNewAdapter;->getItemCount()I

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move p3, p4

    .line 43
    :goto_0
    const/4 v0, 0x1

    .line 44
    sub-int/2addr p3, v0

    .line 45
    if-ne p2, p3, :cond_2

    .line 46
    .line 47
    move p3, v0

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move p3, p4

    .line 50
    :goto_1
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->f:I

    .line 51
    .line 52
    rem-int/2addr p2, v1

    .line 53
    if-nez p2, :cond_3

    .line 54
    .line 55
    move p4, v0

    .line 56
    :cond_3
    if-eqz p4, :cond_4

    .line 57
    .line 58
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->b:I

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_4
    iget p2, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->c:I

    .line 62
    .line 63
    :goto_2
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->a:I

    .line 64
    .line 65
    if-eqz p4, :cond_5

    .line 66
    .line 67
    iget p4, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->c:I

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    iget p4, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->b:I

    .line 71
    .line 72
    :goto_3
    if-eqz p3, :cond_6

    .line 73
    .line 74
    iget p3, p0, Lcom/startshorts/androidplayer/ui/fragment/NewUserRecommendShortsFragment$initView$itemDecoration$1;->d:I

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_6
    move p3, v0

    .line 78
    :goto_4
    invoke-static {p1, p2, v0, p4, p3}, Ljk/r;->a(Landroid/graphics/Rect;IIII)V

    .line 79
    .line 80
    .line 81
    return-void
.end method
