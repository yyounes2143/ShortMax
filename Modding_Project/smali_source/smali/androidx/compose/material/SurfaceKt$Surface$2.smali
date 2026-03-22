.class final Landroidx/compose/material/SurfaceKt$Surface$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Surface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$changed:I

.field final synthetic $$default:I

.field final synthetic $border:Landroidx/compose/foundation/BorderStroke;

.field final synthetic $color:J

.field final synthetic $content:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentColor:J

.field final synthetic $elevation:F

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$modifier:Landroidx/compose/ui/Modifier;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 4
    .line 5
    iput-wide p3, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$color:J

    .line 6
    .line 7
    iput-wide p5, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$contentColor:J

    .line 8
    .line 9
    iput-object p7, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 10
    .line 11
    iput p8, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$elevation:F

    .line 12
    .line 13
    iput-object p9, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$content:Lkotlin/jvm/functions/Function2;

    .line 14
    .line 15
    iput p10, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$$changed:I

    .line 16
    .line 17
    iput p11, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$$default:I

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 12
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v2, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$color:J

    iget-wide v4, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$contentColor:J

    iget-object v6, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$border:Landroidx/compose/foundation/BorderStroke;

    iget v7, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$elevation:F

    iget-object v8, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$content:Lkotlin/jvm/functions/Function2;

    iget p2, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$$changed:I

    or-int/lit8 v10, p2, 0x1

    iget v11, p0, Landroidx/compose/material/SurfaceKt$Surface$2;->$$default:I

    move-object v9, p1

    invoke-static/range {v0 .. v11}, Landroidx/compose/material/SurfaceKt;->Surface-F-jzlyU(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
