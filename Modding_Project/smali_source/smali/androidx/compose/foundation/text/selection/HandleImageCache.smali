.class final Landroidx/compose/foundation/text/selection/HandleImageCache;
.super Ljava/lang/Object;
.source "AndroidSelectionHandles.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static canvas:Landroidx/compose/ui/graphics/Canvas;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/HandleImageCache;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/HandleImageCache;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->INSTANCE:Landroidx/compose/foundation/text/selection/HandleImageCache;

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
.method public final getCanvas()Landroidx/compose/ui/graphics/Canvas;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCanvasDrawScope()Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getImageBitmap()Landroidx/compose/ui/graphics/ImageBitmap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/HandleImageCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCanvas(Landroidx/compose/ui/graphics/Canvas;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvas:Landroidx/compose/ui/graphics/Canvas;

    .line 2
    .line 3
    return-void
.end method

.method public final setCanvasDrawScope(Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    .line 2
    .line 3
    return-void
.end method

.method public final setImageBitmap(Landroidx/compose/ui/graphics/ImageBitmap;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/ImageBitmap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    sput-object p1, Landroidx/compose/foundation/text/selection/HandleImageCache;->imageBitmap:Landroidx/compose/ui/graphics/ImageBitmap;

    .line 2
    .line 3
    return-void
.end method
