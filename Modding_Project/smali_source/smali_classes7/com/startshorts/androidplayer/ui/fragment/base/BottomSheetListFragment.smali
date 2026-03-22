.class public Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;
.source "BottomSheetListFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        "VDB:",
        "Landroidx/databinding/ViewDataBinding;",
        ">",
        "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment<",
        "TD;TVDB;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final z:Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private w:I

.field private x:Z

.field private final y:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$mOnScrollListener$1$1;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->z:Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->w:I

    .line 6
    .line 7
    new-instance v0, Loi/d;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Loi/d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->y:Lms/i;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a0(Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;)Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$mOnScrollListener$1$1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;)Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$mOnScrollListener$1$1;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->x:Z

    .line 2
    .line 3
    return-void
.end method

.method private static final h0(Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;)Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$mOnScrollListener$1$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$mOnScrollListener$1$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment$mOnScrollListener$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public O(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->O(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->w:I

    .line 8
    .line 9
    add-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->w:I

    .line 12
    .line 13
    :cond_0
    return p1
.end method

.method public V()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->V()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->T()Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->y:Lms/i;

    .line 11
    .line 12
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public Z(Ljava/util/List;)Z
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TD;>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->Z(Ljava/util/List;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->w:I

    .line 9
    .line 10
    :cond_0
    return p1
.end method

.method public c0()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final d0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->x:Z

    .line 2
    .line 3
    return v0
.end method

.method public e0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public f0(ZZLjava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->c0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->W()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_2

    .line 14
    .line 15
    :cond_0
    if-eqz p2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->M()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-virtual {p0, p3}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->N(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    :goto_0
    return-void
.end method

.method public g0(ZLjava/util/List;)V
    .locals 1
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "TD;>;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_6

    .line 2
    .line 3
    move-object p1, p2

    .line 4
    check-cast p1, Ljava/util/Collection;

    .line 5
    .line 6
    if-eqz p1, :cond_1

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->Z(Ljava/util/List;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->U()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->Z(Ljava/util/List;)Z

    .line 26
    .line 27
    .line 28
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->e0()Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-eqz p2, :cond_5

    .line 33
    .line 34
    if-eqz p1, :cond_4

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->C()V

    .line 44
    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->K()V

    .line 48
    .line 49
    .line 50
    :cond_5
    :goto_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->D()V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->E()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetPageStateFragment;->G()V

    .line 57
    .line 58
    .line 59
    goto :goto_4

    .line 60
    :cond_6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->O(Ljava/util/List;)Z

    .line 61
    .line 62
    .line 63
    :goto_4
    return-void
.end method

.method public i0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public j0()V
    .locals 0

    .line 1
    return-void
.end method

.method public k0()V
    .locals 0

    .line 1
    return-void
.end method

.method public m()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_list:I

    .line 2
    .line 3
    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "BottomSheetListFragment"

    .line 2
    .line 3
    return-object v0
.end method

.method public s()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->s()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->y:Lms/i;

    .line 5
    .line 6
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetRVFragment;->T()Landroidx/recyclerview/widget/RecyclerView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/base/BottomSheetListFragment;->y:Lms/i;

    .line 19
    .line 20
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
