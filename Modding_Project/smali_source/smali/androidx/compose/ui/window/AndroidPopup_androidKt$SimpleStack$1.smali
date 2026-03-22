.class public final Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;
.super Ljava/lang/Object;
.source "AndroidPopup.android.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidPopup_androidKt;->SimpleStack(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
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
    .locals 10
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
    if-eqz v0, :cond_4

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    const/4 v2, 0x0

    .line 19
    if-eq v0, v1, :cond_3

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    move v3, v2

    .line 35
    :goto_0
    if-ge v3, v1, :cond_0

    .line 36
    .line 37
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 42
    .line 43
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v3, v3, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 54
    .line 55
    .line 56
    move-result p2

    .line 57
    if-ltz p2, :cond_2

    .line 58
    .line 59
    move p3, v2

    .line 60
    move p4, p3

    .line 61
    :goto_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    invoke-static {p3, v3}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p3

    .line 75
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    .line 80
    .line 81
    .line 82
    move-result p4

    .line 83
    if-eq v2, p2, :cond_1

    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_1
    move v4, p3

    .line 89
    move v5, p4

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    move v4, v2

    .line 92
    move v5, v4

    .line 93
    :goto_2
    new-instance v7, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$measure$3;

    .line 94
    .line 95
    invoke-direct {v7, v0}, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$measure$3;-><init>(Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    const/4 v8, 0x4

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v6, 0x0

    .line 101
    move-object v3, p1

    .line 102
    invoke-static/range {v3 .. v9}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    check-cast p2, Landroidx/compose/ui/layout/Measurable;

    .line 112
    .line 113
    invoke-interface {p2, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    new-instance v4, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$measure$2;

    .line 126
    .line 127
    invoke-direct {v4, p2}, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$measure$2;-><init>(Landroidx/compose/ui/layout/Placeable;)V

    .line 128
    .line 129
    .line 130
    const/4 v5, 0x4

    .line 131
    const/4 v6, 0x0

    .line 132
    const/4 v3, 0x0

    .line 133
    move-object v0, p1

    .line 134
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    goto :goto_3

    .line 139
    :cond_4
    sget-object v4, Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$measure$1;->INSTANCE:Landroidx/compose/ui/window/AndroidPopup_androidKt$SimpleStack$1$measure$1;

    .line 140
    .line 141
    const/4 v5, 0x4

    .line 142
    const/4 v6, 0x0

    .line 143
    const/4 v1, 0x0

    .line 144
    const/4 v2, 0x0

    .line 145
    const/4 v3, 0x0

    .line 146
    move-object v0, p1

    .line 147
    invoke-static/range {v0 .. v6}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    :goto_3
    return-object p1
.end method
