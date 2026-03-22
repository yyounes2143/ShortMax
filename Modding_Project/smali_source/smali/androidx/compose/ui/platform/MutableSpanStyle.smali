.class final Landroidx/compose/ui/platform/MutableSpanStyle;
.super Ljava/lang/Object;
.source "AndroidClipboardManager.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private background:J

.field private baselineShift:Landroidx/compose/ui/text/style/BaselineShift;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private color:J

.field private fontFamily:Landroidx/compose/ui/text/font/FontFamily;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontFeatureSettings:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontSize:J

.field private fontStyle:Landroidx/compose/ui/text/font/FontStyle;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fontWeight:Landroidx/compose/ui/text/font/FontWeight;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private letterSpacing:J

.field private localeList:Landroidx/compose/ui/text/intl/LocaleList;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shadow:Landroidx/compose/ui/graphics/Shadow;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textDecoration:Landroidx/compose/ui/text/style/TextDecoration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;)V
    .locals 3

    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-wide v1, p1

    .line 3
    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    move-wide v1, p3

    .line 4
    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    move-object v1, p5

    .line 5
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    move-object v1, p6

    .line 6
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    move-object v1, p7

    .line 7
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    move-object v1, p8

    .line 8
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    move-object v1, p9

    .line 9
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    move-wide v1, p10

    .line 10
    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    move-object v1, p12

    .line 11
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    move-object/from16 v1, p13

    .line 12
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    move-object/from16 v1, p14

    .line 13
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    move-wide/from16 v1, p15

    .line 14
    iput-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    move-object/from16 v1, p17

    .line 15
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    move-object/from16 v1, p18

    .line 16
    iput-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    move/from16 v0, p19

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 17
    sget-object v1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    move-wide/from16 v1, p1

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    .line 18
    sget-object v3, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v3

    goto :goto_1

    :cond_1
    move-wide/from16 v3, p3

    :goto_1
    and-int/lit8 v5, v0, 0x4

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    goto :goto_2

    :cond_2
    move-object/from16 v5, p5

    :goto_2
    and-int/lit8 v7, v0, 0x8

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    move-object/from16 v7, p6

    :goto_3
    and-int/lit8 v8, v0, 0x10

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v8, p7

    :goto_4
    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    goto :goto_5

    :cond_5
    move-object/from16 v9, p8

    :goto_5
    and-int/lit8 v10, v0, 0x40

    if-eqz v10, :cond_6

    const/4 v10, 0x0

    goto :goto_6

    :cond_6
    move-object/from16 v10, p9

    :goto_6
    and-int/lit16 v11, v0, 0x80

    if-eqz v11, :cond_7

    .line 19
    sget-object v11, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    invoke-virtual {v11}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    move-result-wide v11

    goto :goto_7

    :cond_7
    move-wide/from16 v11, p10

    :goto_7
    and-int/lit16 v13, v0, 0x100

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    goto :goto_8

    :cond_8
    move-object/from16 v13, p12

    :goto_8
    and-int/lit16 v14, v0, 0x200

    if-eqz v14, :cond_9

    const/4 v14, 0x0

    goto :goto_9

    :cond_9
    move-object/from16 v14, p13

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_a

    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object/from16 v15, p14

    :goto_a
    and-int/lit16 v6, v0, 0x800

    if-eqz v6, :cond_b

    .line 20
    sget-object v6, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {v6}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide v16

    goto :goto_b

    :cond_b
    move-wide/from16 v16, p15

    :goto_b
    and-int/lit16 v6, v0, 0x1000

    if-eqz v6, :cond_c

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move-object/from16 v6, p17

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    goto :goto_d

    :cond_d
    move-object/from16 v0, p18

    :goto_d
    const/16 v18, 0x0

    move-object/from16 p20, v18

    move-object/from16 p1, p0

    move-wide/from16 p2, v1

    move-wide/from16 p4, v3

    move-object/from16 p6, v5

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-wide/from16 p11, v11

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    move-object/from16 p15, v15

    move-wide/from16 p16, v16

    move-object/from16 p18, v6

    move-object/from16 p19, v0

    .line 21
    invoke-direct/range {p1 .. p20}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p18}, Landroidx/compose/ui/platform/MutableSpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;)V

    return-void
.end method


# virtual methods
.method public final getBackground-0d7_KjU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getBaselineShift-5SSeXJ0()Landroidx/compose/ui/text/style/BaselineShift;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColor-0d7_KjU()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFontFamily()Landroidx/compose/ui/text/font/FontFamily;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFontFeatureSettings()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFontSize-XSAIIZE()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getFontStyle-4Lr2A7w()Landroidx/compose/ui/text/font/FontStyle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFontSynthesis-ZQGJjVo()Landroidx/compose/ui/text/font/FontSynthesis;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFontWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLetterSpacing-XSAIIZE()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getLocaleList()Landroidx/compose/ui/text/intl/LocaleList;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShadow()Landroidx/compose/ui/graphics/Shadow;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextDecoration()Landroidx/compose/ui/text/style/TextDecoration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextGeometricTransform()Landroidx/compose/ui/text/style/TextGeometricTransform;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBackground-8_81llA(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    .line 2
    .line 3
    return-void
.end method

.method public final setBaselineShift-_isdbwI(Landroidx/compose/ui/text/style/BaselineShift;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/style/BaselineShift;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 2
    .line 3
    return-void
.end method

.method public final setColor-8_81llA(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFontFamily(Landroidx/compose/ui/text/font/FontFamily;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/font/FontFamily;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 2
    .line 3
    return-void
.end method

.method public final setFontFeatureSettings(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setFontSize--R2X_6o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    .line 2
    .line 3
    return-void
.end method

.method public final setFontStyle-mLjRB2g(Landroidx/compose/ui/text/font/FontStyle;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/font/FontStyle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 2
    .line 3
    return-void
.end method

.method public final setFontSynthesis-tDdu0R4(Landroidx/compose/ui/text/font/FontSynthesis;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/font/FontSynthesis;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 2
    .line 3
    return-void
.end method

.method public final setFontWeight(Landroidx/compose/ui/text/font/FontWeight;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 2
    .line 3
    return-void
.end method

.method public final setLetterSpacing--R2X_6o(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    .line 2
    .line 3
    return-void
.end method

.method public final setLocaleList(Landroidx/compose/ui/text/intl/LocaleList;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/intl/LocaleList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 2
    .line 3
    return-void
.end method

.method public final setShadow(Landroidx/compose/ui/graphics/Shadow;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/graphics/Shadow;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextDecoration(Landroidx/compose/ui/text/style/TextDecoration;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/style/TextDecoration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 2
    .line 3
    return-void
.end method

.method public final setTextGeometricTransform(Landroidx/compose/ui/text/style/TextGeometricTransform;)V
    .locals 0
    .param p1    # Landroidx/compose/ui/text/style/TextGeometricTransform;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 2
    .line 3
    return-void
.end method

.method public final toSpanStyle()Landroidx/compose/ui/text/SpanStyle;
    .locals 25
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    new-instance v21, Landroidx/compose/ui/text/SpanStyle;

    .line 4
    .line 5
    move-object/from16 v1, v21

    .line 6
    .line 7
    iget-wide v2, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->color:J

    .line 8
    .line 9
    iget-wide v4, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSize:J

    .line 10
    .line 11
    iget-object v6, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontWeight:Landroidx/compose/ui/text/font/FontWeight;

    .line 12
    .line 13
    iget-object v7, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontStyle:Landroidx/compose/ui/text/font/FontStyle;

    .line 14
    .line 15
    iget-object v8, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontSynthesis:Landroidx/compose/ui/text/font/FontSynthesis;

    .line 16
    .line 17
    iget-object v9, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFamily:Landroidx/compose/ui/text/font/FontFamily;

    .line 18
    .line 19
    iget-object v10, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->fontFeatureSettings:Ljava/lang/String;

    .line 20
    .line 21
    iget-wide v11, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->letterSpacing:J

    .line 22
    .line 23
    iget-object v13, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->baselineShift:Landroidx/compose/ui/text/style/BaselineShift;

    .line 24
    .line 25
    iget-object v14, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textGeometricTransform:Landroidx/compose/ui/text/style/TextGeometricTransform;

    .line 26
    .line 27
    iget-object v15, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->localeList:Landroidx/compose/ui/text/intl/LocaleList;

    .line 28
    .line 29
    move-object/from16 v22, v1

    .line 30
    .line 31
    move-wide/from16 v23, v2

    .line 32
    .line 33
    iget-wide v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->background:J

    .line 34
    .line 35
    move-wide/from16 v16, v1

    .line 36
    .line 37
    iget-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->textDecoration:Landroidx/compose/ui/text/style/TextDecoration;

    .line 38
    .line 39
    move-object/from16 v18, v1

    .line 40
    .line 41
    iget-object v1, v0, Landroidx/compose/ui/platform/MutableSpanStyle;->shadow:Landroidx/compose/ui/graphics/Shadow;

    .line 42
    .line 43
    move-object/from16 v19, v1

    .line 44
    .line 45
    const/16 v20, 0x0

    .line 46
    .line 47
    move-object/from16 v1, v22

    .line 48
    .line 49
    move-wide/from16 v2, v23

    .line 50
    .line 51
    invoke-direct/range {v1 .. v20}, Landroidx/compose/ui/text/SpanStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 52
    .line 53
    .line 54
    return-object v21
.end method
