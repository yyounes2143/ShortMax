.class public final Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;
.super Ljava/lang/Object;
.source "ImmersionViewPagerManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$a;,
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$DraggingDirection;,
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;,
        Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final m:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->m:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->d:I

    .line 21
    .line 22
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 23
    .line 24
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->f:I

    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->l:Z

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->q()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic A(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->z(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic C(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->B(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic a(Ljava/lang/Boolean;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->w(Ljava/lang/Boolean;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic e(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->d:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic f(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->f:I

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->d:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->f:I

    .line 2
    .line 3
    return-void
.end method

.method private final q()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;

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
    iget-object v7, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 27
    .line 28
    new-instance v0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    move-object v3, p0

    .line 32
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$initViewPagerOnPageCallback$onPageChangeCallback$1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/viewpager2/widget/ViewPager2;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    const-string v1, "onInit"

    .line 39
    .line 40
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->s(ZLjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method private static final w(Ljava/lang/Boolean;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    invoke-static {p0, p2}, Ljk/d0;->b(Landroidx/viewpager2/widget/ViewPager2;I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {p1, p2, p0}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p0, p1, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method public static synthetic y(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ZILjava/lang/Object;)V
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
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->x(Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final B(Z)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 14
    .line 15
    iget v2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->d:I

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x6

    .line 21
    if-ge v1, v2, :cond_1

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->j:Z

    .line 27
    .line 28
    if-eqz p1, :cond_2

    .line 29
    .line 30
    if-gt v1, v6, :cond_2

    .line 31
    .line 32
    invoke-static {p0, v5, v4, v3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->A(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ZILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->l:Z

    .line 37
    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    sub-int/2addr v1, v0

    .line 41
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-gt p1, v6, :cond_2

    .line 46
    .line 47
    invoke-static {p0, v5, v4, v3}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->y(Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;ZILjava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    :goto_1
    return-void
.end method

.method public final D(II)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    iput p2, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 6
    .line 7
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->l:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->l:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v1, "ImmersionViewPagerManager"

    .line 11
    .line 12
    const-string v2, "disableLoadNext"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->k:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v1, "ImmersionViewPagerManager"

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

.method public final n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->i:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->i:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v1, "ImmersionViewPagerManager"

    .line 11
    .line 12
    const-string v2, "finishLoadingPrev"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public final p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public final r()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->h:I

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

.method public final s(ZLjava/lang/String;)V
    .locals 5
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "from"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/16 v1, 0x29

    .line 12
    .line 13
    const-string v2, "ImmersionViewPagerManager"

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;->f()Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_1

    .line 22
    .line 23
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 24
    .line 25
    new-instance v3, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v4, "registerOnPageChangeCallback -> tryRegister(true) from("

    .line 31
    .line 32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, v2, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 51
    .line 52
    .line 53
    const/4 p1, 0x1

    .line 54
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;->g(Z)V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception p1

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    if-nez p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;->f()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 69
    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "registerOnPageChangeCallback -> tryRegister(false) from("

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, v2, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 94
    .line 95
    invoke-virtual {p1, v0}, Landroidx/viewpager2/widget/ViewPager2;->unregisterOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 96
    .line 97
    .line 98
    const/4 p1, 0x0

    .line 99
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;->g(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :goto_0
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 104
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v1, "registerOnPageChangeCallback exception -> "

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-virtual {p2, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :cond_2
    :goto_1
    return-void
.end method

.method public final t()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const-string v1, "release"

    .line 7
    .line 8
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->s(ZLjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->c:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$OnPageChangeCallbackCompatRegisterAble;

    .line 13
    .line 14
    return-void
.end method

.method public final u()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ImmersionViewPagerManager"

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
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->d:I

    .line 12
    .line 13
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->e:I

    .line 14
    .line 15
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->f:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->g:Z

    .line 19
    .line 20
    iput v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->h:I

    .line 21
    .line 22
    return-void
.end method

.method public final v(ILjava/lang/Boolean;)V
    .locals 2
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getUnregisterOnPageChangeCallbackOnPause()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    const-string/jumbo v1, "setCurrentItem"

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->s(ZLjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 21
    .line 22
    new-instance v1, Lgf/b;

    .line 23
    .line 24
    invoke-direct {v1, p2, p0, p1}, Lgf/b;-><init>(Ljava/lang/Boolean;Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;I)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final x(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->l:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->k:Z

    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "startLoadingNext -> fromUser("

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v2, 0x29

    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-string v2, "ImmersionViewPagerManager"

    .line 38
    .line 39
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;

    .line 43
    .line 44
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;->a(Z)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method public final z(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->i:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->i:Z

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
    const-string/jumbo v2, "startLoadingPrev -> fromUser("

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
    const-string v2, "ImmersionViewPagerManager"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager;->b:Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Lcom/startshorts/androidplayer/manager/immersion/core/ImmersionViewPagerManager$b;->h(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
