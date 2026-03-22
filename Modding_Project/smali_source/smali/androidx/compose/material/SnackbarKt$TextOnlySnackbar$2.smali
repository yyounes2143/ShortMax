.class final Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;
.super Ljava/lang/Object;
.source "Snackbar.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/SnackbarKt;->TextOnlySnackbar(Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;->INSTANCE:Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 9
    .param p1    # Landroidx/compose/ui/layout/MeasureScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/MeasureScope;",
            "Ljava/util/List<",
            "+",
            "Landroidx/compose/ui/layout/Measurable;",
            ">;J)",
            "Landroidx/compose/ui/layout/MeasureResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$Layout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "measurables"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-ne v0, v1, :cond_3

    .line 17
    .line 18
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 23
    .line 24
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p2, v0}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getLastBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-interface {p2, v1}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const-string v2, "No baselines for text"

    .line 45
    .line 46
    const/high16 v3, -0x80000000

    .line 47
    .line 48
    if-eq v0, v3, :cond_2

    .line 49
    .line 50
    if-eq v1, v3, :cond_1

    .line 51
    .line 52
    if-ne v0, v1, :cond_0

    .line 53
    .line 54
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getSnackbarMinHeightOneLine$p()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    invoke-static {}, Landroidx/compose/material/SnackbarKt;->access$getSnackbarMinHeightTwoLines$p()F

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    :goto_0
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    new-instance v6, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2$measure$4;

    .line 80
    .line 81
    invoke-direct {v6, v4, p2}, Landroidx/compose/material/SnackbarKt$TextOnlySnackbar$2$measure$4;-><init>(ILandroidx/compose/ui/layout/Placeable;)V

    .line 82
    .line 83
    .line 84
    const/4 v7, 0x4

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v5, 0x0

    .line 87
    move-object v2, p1

    .line 88
    invoke-static/range {v2 .. v8}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 94
    .line 95
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p1

    .line 99
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string p2, "text for Snackbar expected to have exactly only one child"

    .line 108
    .line 109
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    throw p1
.end method
