.class public final Landroidx/compose/ui/graphics/Color;
.super Ljava/lang/Object;
.source "Color.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/Color$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final Black:J

.field private static final Blue:J

.field public static final Companion:Landroidx/compose/ui/graphics/Color$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Cyan:J

.field private static final DarkGray:J

.field private static final Gray:J

.field private static final Green:J

.field private static final LightGray:J

.field private static final Magenta:J

.field private static final Red:J

.field private static final Transparent:J

.field private static final Unspecified:J

.field private static final White:J

.field private static final Yellow:J


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Color$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Color$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 8
    .line 9
    const-wide v0, 0xff000000L

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 19
    .line 20
    const-wide v0, 0xff444444L

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 26
    .line 27
    .line 28
    move-result-wide v0

    .line 29
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->DarkGray:J

    .line 30
    .line 31
    const-wide v0, 0xff888888L

    .line 32
    .line 33
    .line 34
    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Gray:J

    .line 41
    .line 42
    const-wide v0, 0xffccccccL

    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->LightGray:J

    .line 52
    .line 53
    const-wide v0, 0xffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 59
    .line 60
    .line 61
    move-result-wide v0

    .line 62
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    .line 63
    .line 64
    const-wide v0, 0xffff0000L

    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Red:J

    .line 74
    .line 75
    const-wide v0, 0xff00ff00L

    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 81
    .line 82
    .line 83
    move-result-wide v0

    .line 84
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Green:J

    .line 85
    .line 86
    const-wide v0, 0xff0000ffL

    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Blue:J

    .line 96
    .line 97
    const-wide v0, 0xffffff00L

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 103
    .line 104
    .line 105
    move-result-wide v0

    .line 106
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Yellow:J

    .line 107
    .line 108
    const-wide v0, 0xff00ffffL

    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Cyan:J

    .line 118
    .line 119
    const-wide v0, 0xffff00ffL

    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/ColorKt;->Color(J)J

    .line 125
    .line 126
    .line 127
    move-result-wide v0

    .line 128
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Magenta:J

    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    invoke-static {v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(I)J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 136
    .line 137
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getUnspecified$ui_graphics_release()Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    const/4 v1, 0x0

    .line 144
    invoke-static {v1, v1, v1, v1, v0}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 145
    .line 146
    .line 147
    move-result-wide v0

    .line 148
    sput-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 149
    .line 150
    return-void
.end method

.method private synthetic constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$getBlack$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Black:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getBlue$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Blue:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getCyan$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Cyan:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getDarkGray$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->DarkGray:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getGray$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Gray:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getGreen$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Green:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getLightGray$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->LightGray:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getMagenta$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Magenta:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getRed$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Red:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getTransparent$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Transparent:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getUnspecified$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getWhite$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->White:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic access$getYellow$cp()J
    .locals 2

    .line 1
    sget-wide v0, Landroidx/compose/ui/graphics/Color;->Yellow:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final synthetic box-impl(J)Landroidx/compose/ui/graphics/Color;
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/compose/ui/graphics/Color;-><init>(J)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final component1-impl(J)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final component2-impl(J)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final component3-impl(J)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final component4-impl(J)F
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final component5-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static constructor-impl(J)J
    .locals 0

    .line 1
    return-wide p0
.end method

.method public static final convert-vNxB06k(JLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J
    .locals 4
    .param p2    # Landroidx/compose/ui/graphics/colorspace/ColorSpace;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "colorSpace"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    return-wide p0

    .line 17
    :cond_0
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x2

    .line 24
    invoke-static {v0, p2, v2, v3, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->connect-YBCOT_4$default(Landroidx/compose/ui/graphics/colorspace/ColorSpace;Landroidx/compose/ui/graphics/colorspace/ColorSpace;IILjava/lang/Object;)Landroidx/compose/ui/graphics/colorspace/Connector;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/ColorKt;->access$getComponents-8_81llA(J)[F

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0}, Landroidx/compose/ui/graphics/colorspace/Connector;->transform([F)[F

    .line 33
    .line 34
    .line 35
    aget p1, p0, v2

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    aget v0, p0, v0

    .line 39
    .line 40
    aget v1, p0, v3

    .line 41
    .line 42
    const/4 v2, 0x3

    .line 43
    aget p0, p0, v2

    .line 44
    .line 45
    invoke-static {p1, v0, v1, p0, p2}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 46
    .line 47
    .line 48
    move-result-wide p0

    .line 49
    return-wide p0
.end method

.method public static final copy-wmQWz5c(JFFFF)J
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p3, p4, p5, p2, p0}, Landroidx/compose/ui/graphics/ColorKt;->Color(FFFFLandroidx/compose/ui/graphics/colorspace/ColorSpace;)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method public static synthetic copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J
    .locals 6

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    :cond_0
    move v2, p2

    .line 10
    and-int/lit8 p2, p6, 0x2

    .line 11
    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 15
    .line 16
    .line 17
    move-result p3

    .line 18
    :cond_1
    move v3, p3

    .line 19
    and-int/lit8 p2, p6, 0x4

    .line 20
    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    :cond_2
    move v4, p4

    .line 28
    and-int/lit8 p2, p6, 0x8

    .line 29
    .line 30
    if-eqz p2, :cond_3

    .line 31
    .line 32
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 33
    .line 34
    .line 35
    move-result p5

    .line 36
    :cond_3
    move v5, p5

    .line 37
    move-wide v0, p0

    .line 38
    invoke-static/range {v0 .. v5}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c(JFFFF)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    return-wide p0
.end method

.method public static equals-impl(JLjava/lang/Object;)Z
    .locals 4

    .line 1
    instance-of v0, p2, Landroidx/compose/ui/graphics/Color;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p2, Landroidx/compose/ui/graphics/Color;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroidx/compose/ui/graphics/Color;->unbox-impl()J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    cmp-long p0, p0, v2

    .line 14
    .line 15
    if-eqz p0, :cond_1

    .line 16
    .line 17
    return v1

    .line 18
    :cond_1
    const/4 p0, 0x1

    .line 19
    return p0
.end method

.method public static final equals-impl0(JJ)Z
    .locals 0

    .line 1
    cmp-long p0, p0, p2

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
.end method

.method public static synthetic getAlpha$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getAlpha-impl(J)F
    .locals 4

    .line 1
    const-wide/16 v0, 0x3f

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x38

    .line 15
    .line 16
    ushr-long/2addr p0, v0

    .line 17
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    const-wide/16 v0, 0xff

    .line 22
    .line 23
    and-long/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Lms/u;->e(J)D

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    const/high16 p1, 0x437f0000    # 255.0f

    .line 34
    .line 35
    :goto_0
    div-float/2addr p0, p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 v0, 0x6

    .line 38
    ushr-long/2addr p0, v0

    .line 39
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 40
    .line 41
    .line 42
    move-result-wide p0

    .line 43
    const-wide/16 v0, 0x3ff

    .line 44
    .line 45
    and-long/2addr p0, v0

    .line 46
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    invoke-static {p0, p1}, Lms/u;->e(J)D

    .line 51
    .line 52
    .line 53
    move-result-wide p0

    .line 54
    double-to-float p0, p0

    .line 55
    const p1, 0x447fc000    # 1023.0f

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :goto_1
    return p0
.end method

.method public static synthetic getBlue$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getBlue-impl(J)F
    .locals 4

    .line 1
    const-wide/16 v0, 0x3f

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x20

    .line 15
    .line 16
    ushr-long/2addr p0, v0

    .line 17
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    const-wide/16 v0, 0xff

    .line 22
    .line 23
    and-long/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Lms/u;->e(J)D

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    const/high16 p1, 0x437f0000    # 255.0f

    .line 34
    .line 35
    div-float/2addr p0, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v0, 0x10

    .line 38
    .line 39
    ushr-long/2addr p0, v0

    .line 40
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    const-wide/32 v0, 0xffff

    .line 45
    .line 46
    .line 47
    and-long/2addr p0, v0

    .line 48
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    long-to-int p0, p0

    .line 53
    int-to-short p0, p0

    .line 54
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    :goto_0
    return p0
.end method

.method public static synthetic getColorSpace$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/ColorSpaces;

    .line 2
    .line 3
    const-wide/16 v1, 0x3f

    .line 4
    .line 5
    and-long/2addr p0, v1

    .line 6
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    long-to-int p0, p0

    .line 11
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpaces;->getColorSpacesArray$ui_graphics_release()[Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    aget-object p0, p1, p0

    .line 16
    .line 17
    return-object p0
.end method

.method public static synthetic getGreen$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getGreen-impl(J)F
    .locals 4

    .line 1
    const-wide/16 v0, 0x3f

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    const/16 v0, 0x28

    .line 15
    .line 16
    ushr-long/2addr p0, v0

    .line 17
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    const-wide/16 v0, 0xff

    .line 22
    .line 23
    and-long/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Lms/u;->e(J)D

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    const/high16 p1, 0x437f0000    # 255.0f

    .line 34
    .line 35
    div-float/2addr p0, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v0, 0x20

    .line 38
    .line 39
    ushr-long/2addr p0, v0

    .line 40
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 41
    .line 42
    .line 43
    move-result-wide p0

    .line 44
    const-wide/32 v0, 0xffff

    .line 45
    .line 46
    .line 47
    and-long/2addr p0, v0

    .line 48
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 49
    .line 50
    .line 51
    move-result-wide p0

    .line 52
    long-to-int p0, p0

    .line 53
    int-to-short p0, p0

    .line 54
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 55
    .line 56
    .line 57
    move-result p0

    .line 58
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    :goto_0
    return p0
.end method

.method public static synthetic getRed$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static final getRed-impl(J)F
    .locals 4

    .line 1
    const-wide/16 v0, 0x3f

    .line 2
    .line 3
    and-long/2addr v0, p0

    .line 4
    invoke-static {v0, v1}, Lms/p;->b(J)J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    cmp-long v0, v0, v2

    .line 11
    .line 12
    const/16 v1, 0x30

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    ushr-long/2addr p0, v1

    .line 17
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 18
    .line 19
    .line 20
    move-result-wide p0

    .line 21
    const-wide/16 v0, 0xff

    .line 22
    .line 23
    and-long/2addr p0, v0

    .line 24
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide p0

    .line 28
    invoke-static {p0, p1}, Lms/u;->e(J)D

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    double-to-float p0, p0

    .line 33
    const/high16 p1, 0x437f0000    # 255.0f

    .line 34
    .line 35
    div-float/2addr p0, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    ushr-long/2addr p0, v1

    .line 38
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 39
    .line 40
    .line 41
    move-result-wide p0

    .line 42
    const-wide/32 v0, 0xffff

    .line 43
    .line 44
    .line 45
    and-long/2addr p0, v0

    .line 46
    invoke-static {p0, p1}, Lms/p;->b(J)J

    .line 47
    .line 48
    .line 49
    move-result-wide p0

    .line 50
    long-to-int p0, p0

    .line 51
    int-to-short p0, p0

    .line 52
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->constructor-impl(S)S

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    invoke-static {p0}, Landroidx/compose/ui/graphics/Float16;->toFloat-impl(S)F

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    :goto_0
    return p0
.end method

.method public static hashCode-impl(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lms/p;->e(J)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static toString-impl(J)Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Color("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getRed-impl(J)F

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, ", "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getGreen-impl(J)F

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getBlue-impl(J)F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getAlpha-impl(J)F

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Color;->getColorSpace-impl(J)Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const/16 p0, 0x29

    .line 65
    .line 66
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1, p1}, Landroidx/compose/ui/graphics/Color;->equals-impl(JLjava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public final getValue-s-VKNKU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final synthetic unbox-impl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    .line 2
    .line 3
    return-wide v0
.end method
