.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation


# static fields
.field public static final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;

    .line 7
    .line 8
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


# virtual methods
.method public final a(I)F
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    int-to-float p1, p1

    .line 10
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 11
    .line 12
    div-float/2addr p1, v0

    .line 13
    return p1
.end method

.method public final b(Landroidx/compose/ui/layout/LayoutCoordinates;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;
    .locals 2
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "buttonType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->d(Landroidx/compose/ui/layout/LayoutCoordinates;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->f(Landroidx/compose/ui/layout/LayoutCoordinates;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p2, v1, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final c(J)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    float-to-int v0, v0

    .line 6
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    float-to-int p1, p1

    .line 15
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    new-instance p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 20
    .line 21
    invoke-direct {p2, v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;-><init>(FF)V

    .line 22
    .line 23
    .line 24
    return-object p2
.end method

.method public final d(Landroidx/compose/ui/layout/LayoutCoordinates;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;
    .locals 3
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    float-to-int v0, v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-static {p1}, Landroidx/compose/ui/layout/LayoutCoordinatesKt;->positionInRoot(Landroidx/compose/ui/layout/LayoutCoordinates;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    float-to-int p1, p1

    .line 28
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 33
    .line 34
    invoke-direct {v1, v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;-><init>(FF)V

    .line 35
    .line 36
    .line 37
    return-object v1
.end method

.method public final e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;)Z
    .locals 2
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;->e()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;->a()F

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    cmpl-float v0, v0, v1

    .line 16
    .line 17
    if-lez v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;->e()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;->b()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    cmpl-float p1, p1, v1

    .line 28
    .line 29
    if-lez p1, :cond_0

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    :goto_0
    return p1
.end method

.method public final f(Landroidx/compose/ui/layout/LayoutCoordinates;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;
    .locals 3
    .param p1    # Landroidx/compose/ui/layout/LayoutCoordinates;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 31
    .line 32
    invoke-direct {v1, p1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;-><init>(FF)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method
