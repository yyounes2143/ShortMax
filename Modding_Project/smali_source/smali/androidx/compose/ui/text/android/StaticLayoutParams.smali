.class final Landroidx/compose/ui/text/android/StaticLayoutParams;
.super Ljava/lang/Object;
.source "StaticLayoutFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final alignment:Landroid/text/Layout$Alignment;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final breakStrategy:I

.field private final ellipsize:Landroid/text/TextUtils$TruncateAt;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final ellipsizedWidth:I

.field private final end:I

.field private final hyphenationFrequency:I

.field private final includePadding:Z

.field private final justificationMode:I

.field private final leftIndents:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final lineSpacingExtra:F

.field private final lineSpacingMultiplier:F

.field private final maxLines:I

.field private final paint:Landroid/text/TextPaint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final rightIndents:[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final start:I

.field private final text:Ljava/lang/CharSequence;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final textDir:Landroid/text/TextDirectionHeuristic;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final useFallbackLineSpacing:Z

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)V
    .locals 12
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/text/TextPaint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Landroid/text/TextDirectionHeuristic;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/text/Layout$Alignment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroid/text/TextUtils$TruncateAt;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # [I
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p10

    move/from16 v10, p11

    const-string v11, "text"

    invoke-static {p1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "paint"

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "textDir"

    invoke-static {v6, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "alignment"

    invoke-static {v7, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object v1, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    .line 3
    iput v2, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    .line 4
    iput v3, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    .line 5
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    .line 6
    iput v5, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    .line 7
    iput-object v6, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    .line 8
    iput-object v7, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    .line 9
    iput v8, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    move-object/from16 v4, p9

    .line 10
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 11
    iput v9, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    .line 12
    iput v10, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    move/from16 v4, p12

    .line 13
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    move/from16 v4, p13

    .line 14
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    move/from16 v4, p14

    .line 15
    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    move/from16 v4, p15

    .line 16
    iput-boolean v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    move/from16 v4, p16

    .line 17
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    move/from16 v4, p17

    .line 18
    iput v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    move-object/from16 v4, p18

    .line 19
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    move-object/from16 v4, p19

    .line 20
    iput-object v4, v0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    .line 21
    const-string v4, "Failed requirement."

    if-ltz v2, :cond_5

    if-gt v2, v3, :cond_5

    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ltz v3, :cond_4

    if-gt v3, v1, :cond_4

    if-ltz v8, :cond_3

    if-ltz v5, :cond_2

    if-ltz v9, :cond_1

    const/4 v1, 0x0

    cmpl-float v1, v10, v1

    if-ltz v1, :cond_0

    return-void

    .line 23
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 24
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 26
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 27
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 28
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public synthetic constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 21

    and-int/lit8 v0, p20, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v3, v0

    goto :goto_0

    :cond_0
    move/from16 v3, p2

    :goto_0
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move-object/from16 v19, p18

    move-object/from16 v20, p19

    .line 29
    invoke-direct/range {v1 .. v20}, Landroidx/compose/ui/text/android/StaticLayoutParams;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/TextDirectionHeuristic;Landroid/text/Layout$Alignment;ILandroid/text/TextUtils$TruncateAt;IFFIZZII[I[I)V

    return-void
.end method


# virtual methods
.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->alignment:Landroid/text/Layout$Alignment;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBreakStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->breakStrategy:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsize:Landroid/text/TextUtils$TruncateAt;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEllipsizedWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->ellipsizedWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEnd()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->end:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHyphenationFrequency()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->hyphenationFrequency:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIncludePadding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->includePadding:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getJustificationMode()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->justificationMode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLeftIndents()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->leftIndents:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLineSpacingExtra()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingExtra:F

    .line 2
    .line 3
    return v0
.end method

.method public final getLineSpacingMultiplier()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->lineSpacingMultiplier:F

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxLines()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->maxLines:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->paint:Landroid/text/TextPaint;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRightIndents()[I
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->rightIndents:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStart()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->start:I

    .line 2
    .line 3
    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->text:Ljava/lang/CharSequence;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTextDir()Landroid/text/TextDirectionHeuristic;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->textDir:Landroid/text/TextDirectionHeuristic;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUseFallbackLineSpacing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->useFallbackLineSpacing:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/android/StaticLayoutParams;->width:I

    .line 2
    .line 3
    return v0
.end method
