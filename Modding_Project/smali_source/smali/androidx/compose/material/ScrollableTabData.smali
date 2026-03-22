.class final Landroidx/compose/material/ScrollableTabData;
.super Ljava/lang/Object;
.source "TabRow.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final coroutineScope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scrollState:Landroidx/compose/foundation/ScrollState;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selectedTab:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/ScrollState;Lgt/g0;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/ScrollState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scrollState"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coroutineScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 15
    .line 16
    iput-object p2, p0, Landroidx/compose/material/ScrollableTabData;->coroutineScope:Lgt/g0;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic access$getScrollState$p(Landroidx/compose/material/ScrollableTabData;)Landroidx/compose/foundation/ScrollState;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 2
    .line 3
    return-object p0
.end method

.method private final calculateTabOffset(Landroidx/compose/material/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material/TabPosition;",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-static {p4}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    check-cast p4, Landroidx/compose/material/TabPosition;

    .line 6
    .line 7
    invoke-virtual {p4}, Landroidx/compose/material/TabPosition;->getRight-D9Ej5fM()F

    .line 8
    .line 9
    .line 10
    move-result p4

    .line 11
    invoke-interface {p2, p4}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    add-int/2addr p4, p3

    .line 16
    iget-object p3, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 17
    .line 18
    invoke-virtual {p3}, Landroidx/compose/foundation/ScrollState;->getMaxValue()I

    .line 19
    .line 20
    .line 21
    move-result p3

    .line 22
    sub-int p3, p4, p3

    .line 23
    .line 24
    invoke-virtual {p1}, Landroidx/compose/material/TabPosition;->getLeft-D9Ej5fM()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p2, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    div-int/lit8 v1, p3, 0x2

    .line 33
    .line 34
    invoke-virtual {p1}, Landroidx/compose/material/TabPosition;->getWidth-D9Ej5fM()F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-interface {p2, p1}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    div-int/lit8 p1, p1, 0x2

    .line 43
    .line 44
    sub-int/2addr v1, p1

    .line 45
    sub-int/2addr v0, v1

    .line 46
    sub-int/2addr p4, p3

    .line 47
    const/4 p1, 0x0

    .line 48
    invoke-static {p4, p1}, Lkotlin/ranges/e;->e(II)I

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-static {v0, p1, p2}, Lkotlin/ranges/e;->n(III)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    return p1
.end method


# virtual methods
.method public final onLaidOut(Landroidx/compose/ui/unit/Density;ILjava/util/List;I)V
    .locals 6
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/unit/Density;",
            "I",
            "Ljava/util/List<",
            "Landroidx/compose/material/TabPosition;",
            ">;I)V"
        }
    .end annotation

    .line 1
    const-string v0, "density"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "tabPositions"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/material/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eq v0, p4, :cond_1

    .line 21
    .line 22
    :goto_0
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Landroidx/compose/material/ScrollableTabData;->selectedTab:Ljava/lang/Integer;

    .line 27
    .line 28
    invoke-static {p3, p4}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    check-cast p4, Landroidx/compose/material/TabPosition;

    .line 33
    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    invoke-direct {p0, p4, p1, p2, p3}, Landroidx/compose/material/ScrollableTabData;->calculateTabOffset(Landroidx/compose/material/TabPosition;Landroidx/compose/ui/unit/Density;ILjava/util/List;)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    iget-object p2, p0, Landroidx/compose/material/ScrollableTabData;->scrollState:Landroidx/compose/foundation/ScrollState;

    .line 41
    .line 42
    invoke-virtual {p2}, Landroidx/compose/foundation/ScrollState;->getValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eq p2, p1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Landroidx/compose/material/ScrollableTabData;->coroutineScope:Lgt/g0;

    .line 49
    .line 50
    new-instance v3, Landroidx/compose/material/ScrollableTabData$onLaidOut$1$1;

    .line 51
    .line 52
    const/4 p2, 0x0

    .line 53
    invoke-direct {v3, p0, p1, p2}, Landroidx/compose/material/ScrollableTabData$onLaidOut$1$1;-><init>(Landroidx/compose/material/ScrollableTabData;ILrs/c;)V

    .line 54
    .line 55
    .line 56
    const/4 v4, 0x3

    .line 57
    const/4 v5, 0x0

    .line 58
    const/4 v1, 0x0

    .line 59
    const/4 v2, 0x0

    .line 60
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 61
    .line 62
    .line 63
    :cond_1
    return-void
.end method
