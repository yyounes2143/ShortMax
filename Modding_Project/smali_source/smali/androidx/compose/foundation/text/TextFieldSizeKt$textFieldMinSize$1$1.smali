.class final Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldSize.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1;->invoke(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/Composer;I)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lat/n<",
        "Landroidx/compose/ui/layout/MeasureScope;",
        "Landroidx/compose/ui/layout/Measurable;",
        "Landroidx/compose/ui/unit/Constraints;",
        "Landroidx/compose/ui/layout/MeasureResult;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $minSizeState:Landroidx/compose/foundation/text/TextFieldSize;


# direct methods
.method constructor <init>(Landroidx/compose/foundation/text/TextFieldSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->$minSizeState:Landroidx/compose/foundation/text/TextFieldSize;

    .line 2
    .line 3
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Landroidx/compose/ui/layout/MeasureScope;

    .line 2
    .line 3
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 4
    .line 5
    check-cast p3, Landroidx/compose/ui/unit/Constraints;

    .line 6
    .line 7
    invoke-virtual {p3}, Landroidx/compose/ui/unit/Constraints;->unbox-impl()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    invoke-virtual {p0, p1, p2, v0, v1}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final invoke-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 16
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/layout/Measurable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    const-string v1, "$this$layout"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "measurable"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Landroidx/compose/ui/Modifier;->Companion:Landroidx/compose/ui/Modifier$Companion;

    .line 16
    .line 17
    const/4 v3, 0x3

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static {v1, v5, v5, v3, v4}, Landroidx/compose/foundation/layout/SizeKt;->defaultMinSize-VpY3zN4$default(Landroidx/compose/ui/Modifier;FFILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    .line 21
    .line 22
    .line 23
    move-object/from16 v1, p0

    .line 24
    .line 25
    iget-object v3, v1, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1;->$minSizeState:Landroidx/compose/foundation/text/TextFieldSize;

    .line 26
    .line 27
    invoke-virtual {v3}, Landroidx/compose/foundation/text/TextFieldSize;->getMinSize-YbymL2g()J

    .line 28
    .line 29
    .line 30
    move-result-wide v3

    .line 31
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getWidth-impl(J)I

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    invoke-static {v5, v6, v7}, Lkotlin/ranges/e;->n(III)I

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSize;->getHeight-impl(J)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-static {v3, v4, v5}, Lkotlin/ranges/e;->n(III)I

    .line 60
    .line 61
    .line 62
    move-result v12

    .line 63
    const/16 v14, 0xa

    .line 64
    .line 65
    const/4 v15, 0x0

    .line 66
    const/4 v11, 0x0

    .line 67
    const/4 v13, 0x0

    .line 68
    move-wide/from16 v8, p3

    .line 69
    .line 70
    invoke-static/range {v8 .. v15}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 71
    .line 72
    .line 73
    move-result-wide v3

    .line 74
    invoke-interface {v0, v3, v4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-virtual {v0}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    new-instance v6, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1$1;

    .line 87
    .line 88
    invoke-direct {v6, v0}, Landroidx/compose/foundation/text/TextFieldSizeKt$textFieldMinSize$1$1$1;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 89
    .line 90
    .line 91
    const/4 v7, 0x4

    .line 92
    const/4 v8, 0x0

    .line 93
    const/4 v5, 0x0

    .line 94
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    return-object v0
.end method
