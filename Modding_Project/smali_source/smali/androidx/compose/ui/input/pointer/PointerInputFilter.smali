.class public abstract Landroidx/compose/ui/input/pointer/PointerInputFilter;
.super Ljava/lang/Object;
.source "PointerEvent.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private isAttached:Z

.field private layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic getShareWithSiblings$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public getInterceptOutOfBoundsChildEvents()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getLayoutCoordinates$ui_release()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    return-object v0
.end method

.method public getShareWithSiblings()Z
    .locals 1
    .annotation runtime Landroidx/compose/ui/ExperimentalComposeUiApi;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    :goto_0
    return-wide v0
.end method

.method public final isAttached$ui_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached:Z

    .line 2
    .line 3
    return v0
.end method

.method public abstract onCancel()V
.end method

.method public abstract onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .param p1    # Landroidx/compose/ui/input/pointer/PointerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/input/pointer/PointerEventPass;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public final setAttached$ui_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->isAttached:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setLayoutCoordinates$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/input/pointer/PointerInputFilter;->layoutCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    .line 2
    .line 3
    return-void
.end method
