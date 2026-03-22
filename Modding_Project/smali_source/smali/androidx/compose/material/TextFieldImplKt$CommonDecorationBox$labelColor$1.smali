.class final Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldImpl.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/TextFieldImplKt;->CommonDecorationBox(Landroidx/compose/material/TextFieldType;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/text/input/VisualTransformation;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;ZZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/foundation/layout/PaddingValues;Landroidx/compose/material/TextFieldColors;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Landroidx/compose/material/InputPhase;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Landroidx/compose/ui/graphics/Color;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $$dirty1:I

.field final synthetic $colors:Landroidx/compose/material/TextFieldColors;

.field final synthetic $enabled:Z

.field final synthetic $interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

.field final synthetic $isError:Z


# direct methods
.method constructor <init>(Landroidx/compose/material/TextFieldColors;ZZLandroidx/compose/foundation/interaction/InteractionSource;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 2
    .line 3
    iput-boolean p2, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$enabled:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$isError:Z

    .line 6
    .line 7
    iput-object p4, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 8
    .line 9
    iput p5, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$$dirty:I

    .line 10
    .line 11
    iput p6, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$$dirty1:I

    .line 12
    .line 13
    const/4 p1, 0x3

    .line 14
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroidx/compose/material/InputPhase;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/runtime/Composer;

    .line 4
    .line 5
    check-cast p3, Ljava/lang/Number;

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->invoke-XeAY9LY(Landroidx/compose/material/InputPhase;Landroidx/compose/runtime/Composer;I)J

    .line 12
    .line 13
    .line 14
    move-result-wide p1

    .line 15
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public final invoke-XeAY9LY(Landroidx/compose/material/InputPhase;Landroidx/compose/runtime/Composer;I)J
    .locals 6
    .param p1    # Landroidx/compose/material/InputPhase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Composer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/compose/runtime/Composable;
    .end annotation

    .line 1
    const-string p3, "it"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const p3, 0x298f18c6

    .line 7
    .line 8
    .line 9
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$colors:Landroidx/compose/material/TextFieldColors;

    .line 13
    .line 14
    iget-boolean v1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$enabled:Z

    .line 15
    .line 16
    sget-object p3, Landroidx/compose/material/InputPhase;->UnfocusedEmpty:Landroidx/compose/material/InputPhase;

    .line 17
    .line 18
    if-ne p1, p3, :cond_0

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :goto_0
    move v2, p1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$isError:Z

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    iget-object v3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$interactionSource:Landroidx/compose/foundation/interaction/InteractionSource;

    .line 27
    .line 28
    iget p1, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$$dirty:I

    .line 29
    .line 30
    shr-int/lit8 p1, p1, 0x1b

    .line 31
    .line 32
    and-int/lit8 p1, p1, 0xe

    .line 33
    .line 34
    iget p3, p0, Landroidx/compose/material/TextFieldImplKt$CommonDecorationBox$labelColor$1;->$$dirty1:I

    .line 35
    .line 36
    shl-int/lit8 v4, p3, 0x3

    .line 37
    .line 38
    and-int/lit16 v4, v4, 0x380

    .line 39
    .line 40
    or-int/2addr p1, v4

    .line 41
    and-int/lit16 p3, p3, 0x1c00

    .line 42
    .line 43
    or-int v5, p1, p3

    .line 44
    .line 45
    move-object v4, p2

    .line 46
    invoke-interface/range {v0 .. v5}, Landroidx/compose/material/TextFieldColors;->labelColor(ZZLandroidx/compose/foundation/interaction/InteractionSource;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/State;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Landroidx/compose/ui/graphics/Color;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 57
    .line 58
    .line 59
    move-result-wide v0

    .line 60
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 61
    .line 62
    .line 63
    return-wide v0
.end method
