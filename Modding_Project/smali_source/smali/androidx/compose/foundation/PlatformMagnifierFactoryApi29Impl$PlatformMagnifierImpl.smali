.class public final Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl$PlatformMagnifierImpl;
.super Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;
.source "PlatformMagnifier.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1d
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/PlatformMagnifierFactoryApi29Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PlatformMagnifierImpl"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/widget/Magnifier;)V
    .locals 1
    .param p1    # Landroid/widget/Magnifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "magnifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;-><init>(Landroid/widget/Magnifier;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public update-Wko1d7g(JJF)V
    .locals 1

    .line 1
    invoke-static {p5}, Ljava/lang/Float;->isNaN(F)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;->getMagnifier()Landroid/widget/Magnifier;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p5}, Landroid/widget/Magnifier;->setZoom(F)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/OffsetKt;->isSpecified-k-4lQ0M(J)Z

    .line 15
    .line 16
    .line 17
    move-result p5

    .line 18
    if-eqz p5, :cond_1

    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;->getMagnifier()Landroid/widget/Magnifier;

    .line 21
    .line 22
    .line 23
    move-result-object p5

    .line 24
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 37
    .line 38
    .line 39
    move-result p3

    .line 40
    invoke-virtual {p5, v0, p1, p2, p3}, Landroid/widget/Magnifier;->show(FFFF)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/PlatformMagnifierFactoryApi28Impl$PlatformMagnifierImpl;->getMagnifier()Landroid/widget/Magnifier;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 49
    .line 50
    .line 51
    move-result p4

    .line 52
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-virtual {p3, p4, p1}, Landroid/widget/Magnifier;->show(FF)V

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
