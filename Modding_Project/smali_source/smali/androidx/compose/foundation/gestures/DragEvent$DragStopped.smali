.class public final Landroidx/compose/foundation/gestures/DragEvent$DragStopped;
.super Landroidx/compose/foundation/gestures/DragEvent;
.source "Draggable.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/gestures/DragEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DragStopped"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final velocity:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroidx/compose/foundation/gestures/DragEvent;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->velocity:F

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getVelocity()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/gestures/DragEvent$DragStopped;->velocity:F

    .line 2
    .line 3
    return v0
.end method
