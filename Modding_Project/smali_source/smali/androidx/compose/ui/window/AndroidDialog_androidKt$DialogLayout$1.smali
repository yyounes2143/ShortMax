.class final Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;
.super Ljava/lang/Object;
.source "AndroidDialog.android.kt"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/window/AndroidDialog_androidKt;->DialogLayout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;->INSTANCE:Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1;

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
    .locals 11
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
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    const/4 v2, 0x0

    .line 25
    move v3, v2

    .line 26
    :goto_0
    if-ge v3, v1, :cond_0

    .line 27
    .line 28
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    check-cast v4, Landroidx/compose/ui/layout/Measurable;

    .line 33
    .line 34
    invoke-interface {v4, p3, p4}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    const/4 v1, 0x0

    .line 49
    const/4 v3, 0x1

    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    move-object p2, v1

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    move-object v4, p2

    .line 59
    check-cast v4, Landroidx/compose/ui/layout/Placeable;

    .line 60
    .line 61
    invoke-virtual {v4}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-gt v3, v5, :cond_3

    .line 70
    .line 71
    move v6, v3

    .line 72
    :goto_1
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    move-object v8, v7

    .line 77
    check-cast v8, Landroidx/compose/ui/layout/Placeable;

    .line 78
    .line 79
    invoke-virtual {v8}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    if-ge v4, v8, :cond_2

    .line 84
    .line 85
    move-object p2, v7

    .line 86
    move v4, v8

    .line 87
    :cond_2
    if-eq v6, v5, :cond_3

    .line 88
    .line 89
    add-int/lit8 v6, v6, 0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_3
    :goto_2
    check-cast p2, Landroidx/compose/ui/layout/Placeable;

    .line 93
    .line 94
    if-eqz p2, :cond_4

    .line 95
    .line 96
    invoke-virtual {p2}, Landroidx/compose/ui/layout/Placeable;->getWidth()I

    .line 97
    .line 98
    .line 99
    move-result p2

    .line 100
    :goto_3
    move v5, p2

    .line 101
    goto :goto_4

    .line 102
    :cond_4
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    goto :goto_3

    .line 107
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    if-eqz p2, :cond_5

    .line 112
    .line 113
    goto :goto_6

    .line 114
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    move-object v1, p2

    .line 119
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 120
    .line 121
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-gt v3, v2, :cond_7

    .line 130
    .line 131
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    move-object v6, v4

    .line 136
    check-cast v6, Landroidx/compose/ui/layout/Placeable;

    .line 137
    .line 138
    invoke-virtual {v6}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-ge v1, v6, :cond_6

    .line 143
    .line 144
    move-object p2, v4

    .line 145
    move v1, v6

    .line 146
    :cond_6
    if-eq v3, v2, :cond_7

    .line 147
    .line 148
    add-int/lit8 v3, v3, 0x1

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    move-object v1, p2

    .line 152
    :goto_6
    check-cast v1, Landroidx/compose/ui/layout/Placeable;

    .line 153
    .line 154
    if-eqz v1, :cond_8

    .line 155
    .line 156
    invoke-virtual {v1}, Landroidx/compose/ui/layout/Placeable;->getHeight()I

    .line 157
    .line 158
    .line 159
    move-result p2

    .line 160
    :goto_7
    move v6, p2

    .line 161
    goto :goto_8

    .line 162
    :cond_8
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    goto :goto_7

    .line 167
    :goto_8
    new-instance v8, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$measure$1;

    .line 168
    .line 169
    invoke-direct {v8, v0}, Landroidx/compose/ui/window/AndroidDialog_androidKt$DialogLayout$1$measure$1;-><init>(Ljava/util/List;)V

    .line 170
    .line 171
    .line 172
    const/4 v9, 0x4

    .line 173
    const/4 v10, 0x0

    .line 174
    const/4 v7, 0x0

    .line 175
    move-object v4, p1

    .line 176
    invoke-static/range {v4 .. v10}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILjava/util/Map;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/layout/MeasureResult;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    return-object p1
.end method
