.class final Landroidx/compose/material/SurfaceKt$Surface$14;
.super Lkotlin/jvm/internal/Lambda;
.source "Surface.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SurfaceKt;->Surface-9VG74zQ(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
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

.field final synthetic $$changed1:I

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

.field final synthetic $enabled:Z

.field final synthetic $indication:Landroidx/compose/foundation/Indication;

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

.field final synthetic $onClickLabel:Ljava/lang/String;

.field final synthetic $role:Landroidx/compose/ui/semantics/Role;

.field final synthetic $shape:Landroidx/compose/ui/graphics/Shape;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;III)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Landroidx/compose/ui/graphics/Shape;",
            "JJ",
            "Landroidx/compose/foundation/BorderStroke;",
            "F",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "Landroidx/compose/foundation/Indication;",
            "Z",
            "Ljava/lang/String;",
            "Landroidx/compose/ui/semantics/Role;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;III)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    move-object v1, p2

    .line 6
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$modifier:Landroidx/compose/ui/Modifier;

    .line 7
    .line 8
    move-object v1, p3

    .line 9
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$shape:Landroidx/compose/ui/graphics/Shape;

    .line 10
    .line 11
    move-wide v1, p4

    .line 12
    iput-wide v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$color:J

    .line 13
    .line 14
    move-wide v1, p6

    .line 15
    iput-wide v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$contentColor:J

    .line 16
    .line 17
    move-object v1, p8

    .line 18
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$border:Landroidx/compose/foundation/BorderStroke;

    .line 19
    .line 20
    move v1, p9

    .line 21
    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$elevation:F

    .line 22
    .line 23
    move-object v1, p10

    .line 24
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 25
    .line 26
    move-object v1, p11

    .line 27
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$indication:Landroidx/compose/foundation/Indication;

    .line 28
    .line 29
    move v1, p12

    .line 30
    iput-boolean v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$enabled:Z

    .line 31
    .line 32
    move-object/from16 v1, p13

    .line 33
    .line 34
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$onClickLabel:Ljava/lang/String;

    .line 35
    .line 36
    move-object/from16 v1, p14

    .line 37
    .line 38
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$role:Landroidx/compose/ui/semantics/Role;

    .line 39
    .line 40
    move-object/from16 v1, p15

    .line 41
    .line 42
    iput-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$content:Lkotlin/jvm/functions/Function2;

    .line 43
    .line 44
    move/from16 v1, p16

    .line 45
    .line 46
    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$$changed:I

    .line 47
    .line 48
    move/from16 v1, p17

    .line 49
    .line 50
    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$$changed1:I

    .line 51
    .line 52
    move/from16 v1, p18

    .line 53
    .line 54
    iput v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$$default:I

    .line 55
    .line 56
    const/4 v1, 0x2

    .line 57
    invoke-direct {p0, v1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 58
    .line 59
    .line 60
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/SurfaceKt$Surface$14;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 20
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    move-object/from16 v0, p0

    move-object/from16 v16, p1

    iget-object v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v2, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$modifier:Landroidx/compose/ui/Modifier;

    iget-object v3, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$shape:Landroidx/compose/ui/graphics/Shape;

    iget-wide v4, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$color:J

    iget-wide v6, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$contentColor:J

    iget-object v8, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$border:Landroidx/compose/foundation/BorderStroke;

    iget v9, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$elevation:F

    iget-object v10, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-object v11, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$indication:Landroidx/compose/foundation/Indication;

    iget-boolean v12, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$enabled:Z

    iget-object v13, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$onClickLabel:Ljava/lang/String;

    iget-object v14, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$role:Landroidx/compose/ui/semantics/Role;

    iget-object v15, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$content:Lkotlin/jvm/functions/Function2;

    move-object/from16 p1, v1

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$$changed:I

    or-int/lit8 v17, v1, 0x1

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$$changed1:I

    move/from16 v18, v1

    iget v1, v0, Landroidx/compose/material/SurfaceKt$Surface$14;->$$default:I

    move/from16 v19, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v19}, Landroidx/compose/material/SurfaceKt;->Surface-9VG74zQ(Lkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;Landroidx/compose/ui/graphics/Shape;JJLandroidx/compose/foundation/BorderStroke;FLandroidx/compose/foundation/interaction/MutableInteractionSource;Landroidx/compose/foundation/Indication;ZLjava/lang/String;Landroidx/compose/ui/semantics/Role;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V

    return-void
.end method
