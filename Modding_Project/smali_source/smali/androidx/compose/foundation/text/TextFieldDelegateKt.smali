.class public final Landroidx/compose/foundation/text/TextFieldDelegateKt;
.super Ljava/lang/Object;
.source "TextFieldDelegate.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final DefaultWidthCharCount:I = 0xa

.field private static final EmptyTextReplacement:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "H"

    .line 2
    .line 3
    const/16 v1, 0xa

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/text/StringsKt;->L(Ljava/lang/CharSequence;I)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static final computeSizeForDefaultText(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J
    .locals 14
    .param p0    # Landroidx/compose/ui/text/TextStyle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/ui/text/font/FontFamily$Resolver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "style"

    .line 2
    .line 3
    move-object v2, p0

    .line 4
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "density"

    .line 8
    .line 9
    move-object v5, p1

    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "fontFamilyResolver"

    .line 14
    .line 15
    move-object/from16 v6, p2

    .line 16
    .line 17
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "text"

    .line 21
    .line 22
    move-object/from16 v1, p3

    .line 23
    .line 24
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v7

    .line 31
    const/16 v12, 0xf

    .line 32
    .line 33
    const/4 v13, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    const/4 v10, 0x0

    .line 37
    const/4 v11, 0x0

    .line 38
    invoke-static/range {v8 .. v13}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints$default(IIIIILjava/lang/Object;)J

    .line 39
    .line 40
    .line 41
    move-result-wide v3

    .line 42
    const/16 v11, 0x40

    .line 43
    .line 44
    const/4 v12, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    move/from16 v9, p4

    .line 47
    .line 48
    invoke-static/range {v1 .. v12}, Landroidx/compose/ui/text/ParagraphKt;->Paragraph-UdtVg6A$default(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLandroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/util/List;Ljava/util/List;IZILjava/lang/Object;)Landroidx/compose/ui/text/Paragraph;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroidx/compose/ui/text/Paragraph;->getMinIntrinsicWidth()F

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->toIntPx(F)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-interface {v0}, Landroidx/compose/ui/text/Paragraph;->getHeight()F

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-static {v0}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->toIntPx(F)I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v1, v0}, Landroidx/compose/ui/unit/IntSizeKt;->IntSize(II)J

    .line 69
    .line 70
    .line 71
    move-result-wide v0

    .line 72
    return-wide v0
.end method

.method public static synthetic computeSizeForDefaultText$default(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;IILjava/lang/Object;)J
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x8

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    sget-object p3, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x10

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    const/4 p4, 0x1

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/TextFieldDelegateKt;->computeSizeForDefaultText(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;Ljava/lang/String;I)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    return-wide p0
.end method

.method public static final getEmptyTextReplacement()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/TextFieldDelegateKt;->EmptyTextReplacement:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private static final toIntPx(F)I
    .locals 2

    .line 1
    float-to-double v0, p0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 3
    .line 4
    .line 5
    move-result-wide v0

    .line 6
    double-to-float p0, v0

    .line 7
    invoke-static {p0}, Lbt/a;->c(F)I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method
