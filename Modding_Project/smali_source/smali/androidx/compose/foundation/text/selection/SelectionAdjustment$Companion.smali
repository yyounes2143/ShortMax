.class public final Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;
.super Ljava/lang/Object;
.source "SelectionAdjustment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/foundation/text/selection/SelectionAdjustment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

.field private static final Character:Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final CharacterWithWordAccelerate:Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final None:Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Paragraph:Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Word:Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->$$INSTANCE:Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;

    .line 7
    .line 8
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$None$1;

    .line 9
    .line 10
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$None$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->None:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 14
    .line 15
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Character$1;

    .line 16
    .line 17
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Character$1;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Character:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 21
    .line 22
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1;

    .line 23
    .line 24
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Word$1;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Word:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 28
    .line 29
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1;

    .line 30
    .line 31
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$Paragraph$1;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Paragraph:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 35
    .line 36
    new-instance v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;

    .line 37
    .line 38
    invoke-direct {v0}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion$CharacterWithWordAccelerate$1;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->CharacterWithWordAccelerate:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 42
    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$adjustByBoundary--Dv-ylE(Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;Landroidx/compose/ui/text/TextLayoutResult;JLkotlin/jvm/functions/Function1;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->adjustByBoundary--Dv-ylE(Landroidx/compose/ui/text/TextLayoutResult;JLkotlin/jvm/functions/Function1;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private final adjustByBoundary--Dv-ylE(Landroidx/compose/ui/text/TextLayoutResult;JLkotlin/jvm/functions/Function1;)J
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/text/TextLayoutResult;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Integer;",
            "Landroidx/compose/ui/text/TextRange;",
            ">;)J"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    sget-object p1, Landroidx/compose/ui/text/TextRange;->Companion:Landroidx/compose/ui/text/TextRange$Companion;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange$Companion;->getZero-d9O1mEE()J

    .line 18
    .line 19
    .line 20
    move-result-wide p1

    .line 21
    return-wide p1

    .line 22
    :cond_0
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLayoutInput()Landroidx/compose/ui/text/TextLayoutInput;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextLayoutInput;->getText()Landroidx/compose/ui/text/AnnotatedString;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-static {p1}, Lkotlin/text/StringsKt;->k0(Ljava/lang/CharSequence;)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    invoke-static {v0, v1, p1}, Lkotlin/ranges/e;->n(III)I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p4, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Landroidx/compose/ui/text/TextRange;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    invoke-static {v0, v1, p1}, Lkotlin/ranges/e;->n(III)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {p4, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroidx/compose/ui/text/TextRange;

    .line 74
    .line 75
    invoke-virtual {p1}, Landroidx/compose/ui/text/TextRange;->unbox-impl()J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 80
    .line 81
    .line 82
    move-result p1

    .line 83
    if-eqz p1, :cond_1

    .line 84
    .line 85
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    invoke-static {v2, v3}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    :goto_0
    invoke-static {p2, p3}, Landroidx/compose/ui/text/TextRange;->getReversed-impl(J)Z

    .line 95
    .line 96
    .line 97
    move-result p2

    .line 98
    if-eqz p2, :cond_2

    .line 99
    .line 100
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getStart-impl(J)I

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    goto :goto_1

    .line 105
    :cond_2
    invoke-static {v0, v1}, Landroidx/compose/ui/text/TextRange;->getEnd-impl(J)I

    .line 106
    .line 107
    .line 108
    move-result p2

    .line 109
    :goto_1
    invoke-static {p1, p2}, Landroidx/compose/ui/text/TextRangeKt;->TextRange(II)J

    .line 110
    .line 111
    .line 112
    move-result-wide p1

    .line 113
    return-wide p1
.end method


# virtual methods
.method public final getCharacter()Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Character:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCharacterWithWordAccelerate()Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->CharacterWithWordAccelerate:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNone()Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->None:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getParagraph()Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Paragraph:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWord()Landroidx/compose/foundation/text/selection/SelectionAdjustment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/foundation/text/selection/SelectionAdjustment$Companion;->Word:Landroidx/compose/foundation/text/selection/SelectionAdjustment;

    .line 2
    .line 3
    return-object v0
.end method
