.class public final Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;
.super Landroidx/compose/ui/graphics/colorspace/Connector;
.source "Connector.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/graphics/colorspace/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RgbConnector"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mTransform:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Landroidx/compose/ui/graphics/colorspace/Connector;-><init>(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;I[FLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 4
    iput-object p2, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mTransform:[F

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)V

    return-void
.end method

.method private final computeTransform-YBCOT_4(Landroidx/compose/ui/graphics/colorspace/Rgb;Landroidx/compose/ui/graphics/colorspace/Rgb;I)[F
    .locals 11

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x1

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 5
    .line 6
    .line 7
    move-result-object v3

    .line 8
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 9
    .line 10
    .line 11
    move-result-object v4

    .line 12
    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getInverseTransform$ui_graphics_release()[F

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getInverseTransform$ui_graphics_release()[F

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    invoke-virtual {v6}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->toXyz$ui_graphics_release()[F

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    sget-object v8, Landroidx/compose/ui/graphics/colorspace/Illuminant;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Illuminant;

    .line 60
    .line 61
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    invoke-static {v7, v9}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const-string v9, "copyOf(this, size)"

    .line 70
    .line 71
    if-nez v7, :cond_1

    .line 72
    .line 73
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-virtual {v3}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 84
    .line 85
    .line 86
    move-result-object v7

    .line 87
    array-length v10, v7

    .line 88
    invoke-static {v7, v10}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-static {v3, v5, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v3, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    :cond_1
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50()Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {p1, v7}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->compare(Landroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/WhitePoint;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_2

    .line 120
    .line 121
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/Adaptation;->Companion:Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;

    .line 122
    .line 123
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Adaptation$Companion;->getBradford()Landroidx/compose/ui/graphics/colorspace/Adaptation;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/Adaptation;->getTransform$ui_graphics_release()[F

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-virtual {v8}, Landroidx/compose/ui/graphics/colorspace/Illuminant;->getD50Xyz$ui_graphics_release()[F

    .line 132
    .line 133
    .line 134
    move-result-object v4

    .line 135
    array-length v7, v4

    .line 136
    invoke-static {v4, v7}, Ljava/util/Arrays;->copyOf([FI)[F

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-static {v4, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p1, v6, v4}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->chromaticAdaptation([F[F[F)[F

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getTransform$ui_graphics_release()[F

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    invoke-static {p1, p2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    :cond_2
    sget-object p1, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->Companion:Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent$Companion;->getAbsolute-uksYyKA()I

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    invoke-static {p3, p1}, Landroidx/compose/ui/graphics/colorspace/RenderIntent;->equals-impl0(II)Z

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    if-eqz p1, :cond_3

    .line 170
    .line 171
    aget p1, v5, v2

    .line 172
    .line 173
    aget p2, v6, v2

    .line 174
    .line 175
    div-float/2addr p1, p2

    .line 176
    aget p2, v5, v1

    .line 177
    .line 178
    aget p3, v6, v1

    .line 179
    .line 180
    div-float/2addr p2, p3

    .line 181
    aget p3, v5, v0

    .line 182
    .line 183
    aget v5, v6, v0

    .line 184
    .line 185
    div-float/2addr p3, v5

    .line 186
    const/4 v5, 0x3

    .line 187
    new-array v5, v5, [F

    .line 188
    .line 189
    aput p1, v5, v2

    .line 190
    .line 191
    aput p2, v5, v1

    .line 192
    .line 193
    aput p3, v5, v0

    .line 194
    .line 195
    invoke-static {v5, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Diag([F[F)[F

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    :cond_3
    invoke-static {v4, v3}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3([F[F)[F

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    return-object p1
.end method


# virtual methods
.method public transform([F)[F
    .locals 6
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotf()Lkotlin/jvm/functions/Function1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    aget v2, p1, v1

    .line 14
    .line 15
    float-to-double v2, v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 27
    .line 28
    .line 29
    move-result-wide v2

    .line 30
    double-to-float v0, v2

    .line 31
    aput v0, p1, v1

    .line 32
    .line 33
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotf()Lkotlin/jvm/functions/Function1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v2, 0x1

    .line 40
    aget v3, p1, v2

    .line 41
    .line 42
    float-to-double v3, v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-interface {v0, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Number;

    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 54
    .line 55
    .line 56
    move-result-wide v3

    .line 57
    double-to-float v0, v3

    .line 58
    aput v0, p1, v2

    .line 59
    .line 60
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mSource:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getEotf()Lkotlin/jvm/functions/Function1;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    const/4 v3, 0x2

    .line 67
    aget v4, p1, v3

    .line 68
    .line 69
    float-to-double v4, v4

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Number;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 81
    .line 82
    .line 83
    move-result-wide v4

    .line 84
    double-to-float v0, v4

    .line 85
    aput v0, p1, v3

    .line 86
    .line 87
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mTransform:[F

    .line 88
    .line 89
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 93
    .line 94
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetf()Lkotlin/jvm/functions/Function1;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    aget v4, p1, v1

    .line 99
    .line 100
    float-to-double v4, v4

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-interface {v0, v4}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/Number;

    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 112
    .line 113
    .line 114
    move-result-wide v4

    .line 115
    double-to-float v0, v4

    .line 116
    aput v0, p1, v1

    .line 117
    .line 118
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetf()Lkotlin/jvm/functions/Function1;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    aget v1, p1, v2

    .line 125
    .line 126
    float-to-double v4, v1

    .line 127
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    check-cast v0, Ljava/lang/Number;

    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 138
    .line 139
    .line 140
    move-result-wide v0

    .line 141
    double-to-float v0, v0

    .line 142
    aput v0, p1, v2

    .line 143
    .line 144
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Connector$RgbConnector;->mDestination:Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->getOetf()Lkotlin/jvm/functions/Function1;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    aget v1, p1, v3

    .line 151
    .line 152
    float-to-double v1, v1

    .line 153
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    check-cast v0, Ljava/lang/Number;

    .line 162
    .line 163
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 164
    .line 165
    .line 166
    move-result-wide v0

    .line 167
    double-to-float v0, v0

    .line 168
    aput v0, p1, v3

    .line 169
    .line 170
    return-object p1
.end method
