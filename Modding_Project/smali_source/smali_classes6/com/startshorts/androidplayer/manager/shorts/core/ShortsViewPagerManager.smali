.class public final Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;
.super Ljava/lang/Object;
.source "ShortsViewPagerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$a;,
        Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$DraggingDirection;,
        Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->j:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "viewPager"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "listener"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->d:I

    .line 21
    .line 22
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->e:I

    .line 23
    .line 24
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->f:I

    .line 25
    .line 26
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->n()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method private final n()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v4, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 12
    .line 13
    invoke-direct {v4}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v5, Lkotlin/jvm/internal/Ref$IntRef;

    .line 17
    .line 18
    invoke-direct {v5}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 22
    .line 23
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 24
    .line 25
    .line 26
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    .line 28
    new-instance v0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    move-object v3, p0

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static synthetic s(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->r(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final k()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->i:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v1, "ShortsViewPagerManager"

    .line 11
    .line 12
    const-string v2, "finishLoadingNext"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->h:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->c:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 12
    .line 13
    return-void
.end method

.method public final q()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ShortsViewPagerManager"

    .line 4
    .line 5
    const-string v2, "resetPosition"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->d:I

    .line 12
    .line 13
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->e:I

    .line 14
    .line 15
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->f:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->g:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->h:I

    .line 21
    .line 22
    return-void
.end method

.method public final r(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->i:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string/jumbo v2, "startLoadingNext -> fromUser("

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const/16 v2, 0x29

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "ShortsViewPagerManager"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager$b;->a(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->e:I

    .line 14
    .line 15
    iget v2, p0, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->d:I

    .line 16
    .line 17
    if-lt v1, v2, :cond_0

    .line 18
    .line 19
    sub-int/2addr v1, v0

    .line 20
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x3

    .line 25
    if-gt v0, v1, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    invoke-static {p0, v2, v0, v1}, Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;->s(Lcom/startshorts/androidplayer/manager/shorts/core/ShortsViewPagerManager;ZILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
