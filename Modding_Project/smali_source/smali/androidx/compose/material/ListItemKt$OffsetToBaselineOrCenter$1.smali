.class final Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;
.super Ljava/lang/Object;
.source "ListItem.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/material/ListItemKt;->OffsetToBaselineOrCenter-Kz89ssw(FLandroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $offset:F


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;->$offset:F

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    const/4 v0, 0x0

    .line 12
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 17
    .line 18
    const/16 v7, 0xb

    .line 19
    .line 20
    const/4 v8, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    const/4 v4, 0x0

    .line 23
    const/4 v5, 0x0

    .line 24
    const/4 v6, 0x0

    .line 25
    move-wide v1, p3

    .line 26
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/unit/Constraints;->copy-Zbe2FdA$default(JIIIIILjava/lang/Object;)J

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    invoke-interface {p2, v1, v2}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {}, Landroidx/compose/ui/layout/AlignmentLineKt;->getFirstBaseline()Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {p2, v1}, Landroidx/compose/ui/layout/Measured;->get(Landroidx/compose/ui/layout/AlignmentLine;)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/high16 v2, -0x80000000

    .line 43
    .line 44
    if-eq v1, v2, :cond_0

    .line 45
    .line 46
    iget v0, p0, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1;->$offset:F

    .line 47
    .line 48
    invoke-interface {p1, v0}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    sub-int/2addr v0, v1

    .line 53
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 54
    .line 55
    .line 56
    move-result p3

    .line 57
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 58
    .line 59
    .line 60
    move-result p4

    .line 61
    add-int/2addr p4, v0

    .line 62
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 63
    .line 64
    .line 65
    move-result p3

    .line 66
    :goto_0
    move v3, p3

    .line 67
    goto :goto_1

    .line 68
    :cond_0
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 69
    .line 70
    .line 71
    move-result p3

    .line 72
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result p4

    .line 76
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    .line 77
    .line 78
    .line 79
    move-result p3

    .line 80
    sget-object p4, Landroidx/compose/ui/Alignment;->Companion:Landroidx/compose/ui/Alignment$Companion;

    .line 81
    .line 82
    invoke-virtual {p4}, Landroidx/compose/ui/Alignment$Companion;->getCenter()Landroidx/compose/ui/Alignment;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object p4, Landroidx/compose/ui/unit/IntSize;->Companion:Landroidx/compose/ui/unit/IntSize$Companion;

    .line 87
    .line 88
    invoke-virtual {p4}, Landroidx/compose/ui/unit/IntSize$Companion;->getZero-YbymL2g()J

    .line 89
    .line 90
    .line 91
    move-result-wide v2

    .line 92
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 93
    .line 94
    .line 95
    move-result p4

    .line 96
    sub-int p4, p3, p4

    .line 97
    .line 98
    invoke-static {v0, p4}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 99
    .line 100
    .line 101
    move-result-wide v4

    .line 102
    invoke-interface {p1}, Landroidx/compose/ui/layout/IntrinsicMeasureScope;->getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    invoke-interface/range {v1 .. v6}, Landroidx/compose/ui/Alignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    .line 107
    .line 108
    .line 109
    move-result-wide v0

    .line 110
    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffset;->getY-impl(J)I

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    goto :goto_0

    .line 115
    :goto_1
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    new-instance v5, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1$measure$1;

    .line 120
    .line 121
    invoke-direct {v5, p2, v0}, Landroidx/compose/material/ListItemKt$OffsetToBaselineOrCenter$1$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;I)V

    .line 122
    .line 123
    .line 124
    const/4 v6, 0x4

    .line 125
    const/4 v7, 0x0

    .line 126
    const/4 v4, 0x0

    .line 127
    move-object v1, p1

    .line 128
    invoke-static/range {v1 .. v7}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    return-object p1
.end method
