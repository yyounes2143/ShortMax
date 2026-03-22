.class final Landroidx/compose/material/ButtonKt$Button$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Button.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V
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

.field final synthetic $colors:Landroidx/compose/material/ButtonColors;

.field final synthetic $content:Lat/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/n<",
            "Landroidx/compose/foundation/layout/RowScope;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

.field final synthetic $elevation:Landroidx/compose/material/ButtonElevation;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

.field final synthetic $modifier:Landroidx/compose/ui/Modifier;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lat/n;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/material/ButtonElevation;",
            "Landroidx/compose/ui/graphics/Shape;",
            "Landroidx/compose/foundation/BorderStroke;",
            "Landroidx/compose/material/ButtonColors;",
            "Landroidx/compose/foundation/layout/PaddingValues;",
            "Lat/n<",
            "-",
            "Landroidx/compose/foundation/layout/RowScope;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/compose/material/ButtonKt$Button$3;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/ButtonKt$Button$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/material/ButtonKt$Button$3;->$enabled:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/ButtonKt$Button$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/ButtonKt$Button$3;->$elevation:Landroidx/compose/material/ButtonElevation;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/ButtonKt$Button$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/ButtonKt$Button$3;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 14
    .line 15
    iput-object p8, p0, Landroidx/compose/material/ButtonKt$Button$3;->$colors:Landroidx/compose/material/ButtonColors;

    .line 16
    .line 17
    iput-object p9, p0, Landroidx/compose/material/ButtonKt$Button$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    .line 18
    .line 19
    iput-object p10, p0, Landroidx/compose/material/ButtonKt$Button$3;->$content:Lat/n;

    .line 20
    .line 21
    iput p11, p0, Landroidx/compose/material/ButtonKt$Button$3;->$$changed:I

    .line 22
    .line 23
    iput p12, p0, Landroidx/compose/material/ButtonKt$Button$3;->$$default:I

    .line 24
    .line 25
    const/4 p1, 0x2

    .line 26
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 27
    .line 28
    .line 29
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/ButtonKt$Button$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 13
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Landroidx/compose/material/ButtonKt$Button$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v1, p0, Landroidx/compose/material/ButtonKt$Button$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v2, p0, Landroidx/compose/material/ButtonKt$Button$3;->$enabled:Z

    iget-object v3, p0, Landroidx/compose/material/ButtonKt$Button$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v4, p0, Landroidx/compose/material/ButtonKt$Button$3;->$elevation:Landroidx/compose/material/ButtonElevation;

    iget-object v5, p0, Landroidx/compose/material/ButtonKt$Button$3;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-object v6, p0, Landroidx/compose/material/ButtonKt$Button$3;->$border:Landroidx/compose/foundation/BorderStroke;

    iget-object v7, p0, Landroidx/compose/material/ButtonKt$Button$3;->$colors:Landroidx/compose/material/ButtonColors;

    iget-object v8, p0, Landroidx/compose/material/ButtonKt$Button$3;->$contentPadding:Landroidx/compose/foundation/layout/PaddingValues;

    iget-object v9, p0, Landroidx/compose/material/ButtonKt$Button$3;->$content:Lat/n;

    iget p2, p0, Landroidx/compose/material/ButtonKt$Button$3;->$$changed:I

    or-int/lit8 v11, p2, 0x1

    iget v12, p0, Landroidx/compose/material/ButtonKt$Button$3;->$$default:I

    move-object v10, p1

    invoke-static/range {v0 .. v12}, Landroidx/compose/material/ButtonKt;->Button(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/material/ButtonElevation;Landroidx/compose/ui/graphics/Shape;Landroidx/compose/foundation/BorderStroke;Landroidx/compose/material/ButtonColors;Landroidx/compose/foundation/layout/PaddingValues;Lat/n;Landroidx/compose/runtime/Composer;II)V

    return-void
.end method
