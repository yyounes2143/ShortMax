.class public final Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;
.super Ljava/lang/Object;
.source "CanvasDrawScope.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DefaultDensity:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DensityKt;->Density(FF)Landroidx/compose/ui/unit/Density;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->DefaultDensity:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    return-void
.end method

.method public static final synthetic access$asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getDefaultDensity$p()Landroidx/compose/ui/unit/Density;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt;->DefaultDensity:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final asDrawTransform(Landroidx/compose/ui/graphics/drawscope/DrawContext;)Landroidx/compose/ui/graphics/drawscope/DrawTransform;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScopeKt$asDrawTransform$1;-><init>(Landroidx/compose/ui/graphics/drawscope/DrawContext;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
