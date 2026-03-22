.class final Landroidx/compose/material/TabKt$Tab$3;
.super Lkotlin/jvm/internal/Lambda;
.source "Tab.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TabKt;->Tab-0nD-MI0(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V
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

.field final synthetic $enabled:Z

.field final synthetic $icon:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $selected:Z

.field final synthetic $selectedContentColor:J

.field final synthetic $text:Lkotlin/jvm/functions/Function2;
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

.field final synthetic $unselectedContentColor:J


# direct methods
.method constructor <init>(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;JJII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/ui/Modifier;",
            "Z",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Landroidx/compose/foundation/interaction/MutableInteractionSource;",
            "JJII)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Landroidx/compose/material/TabKt$Tab$3;->$selected:Z

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/compose/material/TabKt$Tab$3;->$onClick:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/compose/material/TabKt$Tab$3;->$modifier:Landroidx/compose/ui/Modifier;

    .line 6
    .line 7
    iput-boolean p4, p0, Landroidx/compose/material/TabKt$Tab$3;->$enabled:Z

    .line 8
    .line 9
    iput-object p5, p0, Landroidx/compose/material/TabKt$Tab$3;->$text:Lkotlin/jvm/functions/Function2;

    .line 10
    .line 11
    iput-object p6, p0, Landroidx/compose/material/TabKt$Tab$3;->$icon:Lkotlin/jvm/functions/Function2;

    .line 12
    .line 13
    iput-object p7, p0, Landroidx/compose/material/TabKt$Tab$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    .line 14
    .line 15
    iput-wide p8, p0, Landroidx/compose/material/TabKt$Tab$3;->$selectedContentColor:J

    .line 16
    .line 17
    iput-wide p10, p0, Landroidx/compose/material/TabKt$Tab$3;->$unselectedContentColor:J

    .line 18
    .line 19
    iput p12, p0, Landroidx/compose/material/TabKt$Tab$3;->$$changed:I

    .line 20
    .line 21
    iput p13, p0, Landroidx/compose/material/TabKt$Tab$3;->$$default:I

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 25
    .line 26
    .line 27
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

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material/TabKt$Tab$3;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 15
    .param p1    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    move-object v0, p0

    iget-boolean v1, v0, Landroidx/compose/material/TabKt$Tab$3;->$selected:Z

    iget-object v2, v0, Landroidx/compose/material/TabKt$Tab$3;->$onClick:Lkotlin/jvm/functions/Function0;

    iget-object v3, v0, Landroidx/compose/material/TabKt$Tab$3;->$modifier:Landroidx/compose/ui/Modifier;

    iget-boolean v4, v0, Landroidx/compose/material/TabKt$Tab$3;->$enabled:Z

    iget-object v5, v0, Landroidx/compose/material/TabKt$Tab$3;->$text:Lkotlin/jvm/functions/Function2;

    iget-object v6, v0, Landroidx/compose/material/TabKt$Tab$3;->$icon:Lkotlin/jvm/functions/Function2;

    iget-object v7, v0, Landroidx/compose/material/TabKt$Tab$3;->$interactionSource:Landroidx/compose/foundation/interaction/MutableInteractionSource;

    iget-wide v8, v0, Landroidx/compose/material/TabKt$Tab$3;->$selectedContentColor:J

    iget-wide v10, v0, Landroidx/compose/material/TabKt$Tab$3;->$unselectedContentColor:J

    iget v12, v0, Landroidx/compose/material/TabKt$Tab$3;->$$changed:I

    or-int/lit8 v13, v12, 0x1

    iget v14, v0, Landroidx/compose/material/TabKt$Tab$3;->$$default:I

    move-object/from16 v12, p1

    invoke-static/range {v1 .. v14}, Landroidx/compose/material/TabKt;->Tab-0nD-MI0(ZLkotlin/jvm/functions/Function0;Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Landroidx/compose/foundation/interaction/MutableInteractionSource;JJLandroidx/compose/runtime/Composer;II)V

    return-void
.end method
