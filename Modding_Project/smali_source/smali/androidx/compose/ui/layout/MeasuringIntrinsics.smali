.class final Landroidx/compose/ui/layout/MeasuringIntrinsics;
.super Ljava/lang/Object;
.source "LayoutModifier.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;,
        Landroidx/compose/ui/layout/MeasuringIntrinsics$EmptyPlaceable;,
        Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;,
        Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/layout/MeasuringIntrinsics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/layout/MeasuringIntrinsics;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/layout/MeasuringIntrinsics;->INSTANCE:Landroidx/compose/ui/layout/MeasuringIntrinsics;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final maxHeight$ui_release(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "instrinsicMeasureScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "intrinsicMeasurable"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Height:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 21
    .line 22
    invoke-direct {v0, p3, v1, v2}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    .line 23
    .line 24
    .line 25
    const/16 v7, 0xd

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move v4, p4

    .line 32
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p3

    .line 36
    new-instance v1, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    .line 37
    .line 38
    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, p2, v2}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1, v0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public final maxWidth$ui_release(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "instrinsicMeasureScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "intrinsicMeasurable"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Max:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 21
    .line 22
    invoke-direct {v0, p3, v1, v2}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    .line 23
    .line 24
    .line 25
    const/4 v7, 0x7

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move v6, p4

    .line 31
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide p3

    .line 35
    new-instance v1, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, p2, v2}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1, v0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method

.method public final minHeight$ui_release(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "instrinsicMeasureScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "intrinsicMeasurable"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Min:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Height:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 21
    .line 22
    invoke-direct {v0, p3, v1, v2}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    .line 23
    .line 24
    .line 25
    const/16 v7, 0xd

    .line 26
    .line 27
    const/4 v8, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x0

    .line 31
    move v4, p4

    .line 32
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 33
    .line 34
    .line 35
    move-result-wide p3

    .line 36
    new-instance v1, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    .line 37
    .line 38
    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-direct {v1, p2, v2}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1, v1, v0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public final minWidth$ui_release(Landroidx/compose/ui/layout/LayoutModifier;Landroidx/compose/ui/layout/IntrinsicMeasureScope;Landroidx/compose/ui/layout/IntrinsicMeasurable;I)I
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/LayoutModifier;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/IntrinsicMeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/layout/IntrinsicMeasurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "modifier"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "instrinsicMeasureScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "intrinsicMeasurable"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;->Min:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;

    .line 19
    .line 20
    sget-object v2, Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;->Width:Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;

    .line 21
    .line 22
    invoke-direct {v0, p3, v1, v2}, Landroidx/compose/ui/layout/MeasuringIntrinsics$DefaultIntrinsicMeasurable;-><init>(Landroidx/compose/ui/layout/IntrinsicMeasurable;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicMinMax;Landroidx/compose/ui/layout/MeasuringIntrinsics$IntrinsicWidthHeight;)V

    .line 23
    .line 24
    .line 25
    const/4 v7, 0x7

    .line 26
    const/4 v8, 0x0

    .line 27
    const/4 v3, 0x0

    .line 28
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    move v6, p4

    .line 31
    invoke-static/range {v3 .. v8}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 32
    .line 33
    .line 34
    move-result-wide p3

    .line 35
    new-instance v1, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;

    .line 36
    .line 37
    invoke-interface {p2}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-direct {v1, p2, v2}, Landroidx/compose/ui/layout/IntrinsicsMeasureScope;-><init>(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v1, v0, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    return p1
.end method
