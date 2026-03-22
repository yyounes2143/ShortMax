.class public final Landroidx/compose/ui/node/DrawEntity;
.super Landroidx/compose/ui/node/LayoutNodeEntity;
.source "DrawEntity.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/DrawEntity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/LayoutNodeEntity<",
        "Landroidx/compose/ui/node/DrawEntity;",
        "Landroidx/compose/ui/draw/DrawModifier;",
        ">;",
        "Landroidx/compose/ui/node/OwnerScope;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/DrawEntity$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final onCommitAffectingDrawEntity:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/DrawEntity;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private invalidateCache:Z

.field private final updateCache:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
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
    new-instance v0, Landroidx/compose/ui/node/DrawEntity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/node/DrawEntity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/node/DrawEntity;->Companion:Landroidx/compose/ui/node/DrawEntity$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;->INSTANCE:Landroidx/compose/ui/node/DrawEntity$Companion$onCommitAffectingDrawEntity$1;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/node/DrawEntity;->onCommitAffectingDrawEntity:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/draw/DrawModifier;)V
    .locals 1
    .param p1    # Landroidx/compose/ui/node/LayoutNodeWrapper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/draw/DrawModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "layoutNodeWrapper"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modifier"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroidx/compose/ui/node/LayoutNodeEntity;-><init>(Landroidx/compose/ui/node/LayoutNodeWrapper;Landroidx/compose/ui/Modifier;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Landroidx/compose/ui/node/DrawEntity;->updateCacheDrawModifier()Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iput-object p2, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 19
    .line 20
    new-instance p2, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;

    .line 21
    .line 22
    invoke-direct {p2, p0, p1}, Landroidx/compose/ui/node/DrawEntity$buildCacheParams$1;-><init>(Landroidx/compose/ui/node/DrawEntity;Landroidx/compose/ui/node/LayoutNodeWrapper;)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Landroidx/compose/ui/node/DrawEntity;->buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    iput-boolean p1, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 29
    .line 30
    new-instance p1, Landroidx/compose/ui/node/DrawEntity$updateCache$1;

    .line 31
    .line 32
    invoke-direct {p1, p0}, Landroidx/compose/ui/node/DrawEntity$updateCache$1;-><init>(Landroidx/compose/ui/node/DrawEntity;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Landroidx/compose/ui/node/DrawEntity;->updateCache:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    return-void
.end method

.method public static final synthetic access$getBuildCacheParams$p(Landroidx/compose/ui/node/DrawEntity;)Landroidx/compose/ui/draw/BuildDrawCacheParams;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/DrawEntity;->buildCacheParams:Landroidx/compose/ui/draw/BuildDrawCacheParams;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getCacheDrawModifier$p(Landroidx/compose/ui/node/DrawEntity;)Landroidx/compose/ui/draw/DrawCacheModifier;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setInvalidateCache$p(Landroidx/compose/ui/node/DrawEntity;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 2
    .line 3
    return-void
.end method

.method private final updateCacheDrawModifier()Landroidx/compose/ui/draw/DrawCacheModifier;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Landroidx/compose/ui/draw/DrawModifier;

    .line 6
    .line 7
    instance-of v1, v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    check-cast v0, Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final draw(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 13
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getSize-YbymL2g()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    iget-boolean v2, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-interface {v2}, Landroidx/compose/ui/node/Owner;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    sget-object v3, Landroidx/compose/ui/node/DrawEntity;->onCommitAffectingDrawEntity:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    iget-object v4, p0, Landroidx/compose/ui/node/DrawEntity;->updateCache:Lkotlin/jvm/functions/Function0;

    .line 37
    .line 38
    invoke-virtual {v2, p0, v3, v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getMDrawScope$ui_release()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$getDrawEntity$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;)Landroidx/compose/ui/node/DrawEntity;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-static {v2, p0}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$setDrawEntity$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/node/DrawEntity;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$getCanvasDrawScope$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;)Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNodeWrapper;->getMeasureScope()Landroidx/compose/ui/layout/MeasureScope;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-interface {v3}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 77
    .line 78
    .line 79
    move-result-object v7

    .line 80
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component1()Landroidx/compose/ui/unit/Density;

    .line 81
    .line 82
    .line 83
    move-result-object v8

    .line 84
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component2()Landroidx/compose/ui/unit/LayoutDirection;

    .line 85
    .line 86
    .line 87
    move-result-object v9

    .line 88
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component3()Landroidx/compose/ui/graphics/Canvas;

    .line 89
    .line 90
    .line 91
    move-result-object v10

    .line 92
    invoke-virtual {v7}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->component4-NH-jbRc()J

    .line 93
    .line 94
    .line 95
    move-result-wide v11

    .line 96
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    invoke-virtual {v7, v6}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v7, v3}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v7, p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7, v0, v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 110
    .line 111
    .line 112
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getModifier()Landroidx/compose/ui/Modifier;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroidx/compose/ui/draw/DrawModifier;

    .line 120
    .line 121
    invoke-interface {v0, v2}, Landroidx/compose/ui/draw/DrawModifier;->draw(Landroidx/compose/ui/graphics/drawscope/ContentDrawScope;)V

    .line 122
    .line 123
    .line 124
    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->getDrawParams()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {p1, v8}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setDensity(Landroidx/compose/ui/unit/Density;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v9}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v10}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v11, v12}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope$DrawParams;->setSize-uvyYCjk(J)V

    .line 141
    .line 142
    .line 143
    invoke-static {v2, v4}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->access$setDrawEntity$p(Landroidx/compose/ui/node/LayoutNodeDrawScope;Landroidx/compose/ui/node/DrawEntity;)V

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->getLayoutNodeWrapper()Landroidx/compose/ui/node/LayoutNodeWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNodeWrapper;->isAttached()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public onAttach()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/node/DrawEntity;->updateCacheDrawModifier()Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroidx/compose/ui/node/DrawEntity;->cacheDrawModifier:Landroidx/compose/ui/draw/DrawCacheModifier;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 9
    .line 10
    invoke-super {p0}, Landroidx/compose/ui/node/LayoutNodeEntity;->onAttach()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final onMeasureResultChanged()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroidx/compose/ui/node/DrawEntity;->invalidateCache:Z

    .line 3
    .line 4
    return-void
.end method
