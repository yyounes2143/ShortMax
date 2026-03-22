.class public final Landroidx/compose/ui/graphics/colorspace/Rgb;
.super Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.source "Rgb.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final DoubleIdentity:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final eotf:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final eotfOrig:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final inverseTransform:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isSrgb:Z

.field private final isWideGamut:Z

.field private final max:F

.field private final min:F

.field private final oetf:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final oetfOrig:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final primaries:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final transform:[F
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    .line 8
    .line 9
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$DoubleIdentity$1;->INSTANCE:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion$DoubleIdentity$1;

    .line 10
    .line 11
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/colorspace/Rgb;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)V
    .locals 12
    .param p1    # Landroidx/compose/ui/graphics/colorspace/Rgb;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "colorSpace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transform"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    .line 50
    iget-object v6, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Lkotlin/jvm/functions/Function1;

    iget-object v7, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Lkotlin/jvm/functions/Function1;

    iget v8, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    iget v9, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    .line 51
    iget-object v10, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    const/4 v11, -0x1

    move-object v1, p0

    move-object v4, p3

    move-object v5, p2

    .line 52
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toXYZ"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computePrimaries$ui_graphics_release([F)[F

    move-result-object v3

    invoke-static {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    .line 41
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/TransferParameters;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/TransferParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toXYZ"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computePrimaries$ui_graphics_release([F)[F

    move-result-object v3

    invoke-static {v0, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v4

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;D)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, -0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 42
    invoke-direct/range {v1 .. v9}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;DFFI)V
    .locals 22
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-wide/from16 v1, p4

    const-string v0, "name"

    move-object/from16 v13, p1

    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaries"

    move-object/from16 v14, p2

    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    move-object/from16 v11, p3

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v1, v3

    if-nez v0, :cond_0

    .line 43
    sget-object v3, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Lkotlin/jvm/functions/Function1;

    :goto_0
    move-object/from16 v17, v3

    goto :goto_1

    .line 44
    :cond_0
    new-instance v3, Landroidx/compose/ui/graphics/colorspace/Rgb$5;

    invoke-direct {v3, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$5;-><init>(D)V

    goto :goto_0

    :goto_1
    if-nez v0, :cond_1

    .line 45
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->DoubleIdentity:Lkotlin/jvm/functions/Function1;

    :goto_2
    move-object/from16 v18, v0

    goto :goto_3

    .line 46
    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$6;

    invoke-direct {v0, v1, v2}, Landroidx/compose/ui/graphics/colorspace/Rgb$6;-><init>(D)V

    goto :goto_2

    .line 47
    :goto_3
    new-instance v19, Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    move-object/from16 v0, v19

    const/16 v15, 0x60

    const/16 v16, 0x0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v11, v20

    move-wide/from16 v13, v20

    move-wide/from16 v1, p4

    invoke-direct/range {v0 .. v16}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;-><init>(DDDDDDDILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v5, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, v17

    move-object/from16 v7, v18

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, v19

    move/from16 v11, p8

    .line 48
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/colorspace/TransferParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaries"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 34
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Landroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/graphics/colorspace/TransferParameters;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    move-object/from16 v9, p4

    const-string v0, "name"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaries"

    move-object v2, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "function"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-nez v0, :cond_0

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v4

    cmpg-double v0, v4, v6

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$1;

    invoke-direct {v0, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$1;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 36
    :cond_0
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$2;

    invoke-direct {v0, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$2;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V

    goto :goto_0

    .line 37
    :goto_1
    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getE()D

    move-result-wide v10

    cmpg-double v0, v10, v6

    if-nez v0, :cond_1

    invoke-virtual/range {p4 .. p4}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->getF()D

    move-result-wide v10

    cmpg-double v0, v10, v6

    if-nez v0, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$3;

    invoke-direct {v0, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$3;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V

    :goto_2
    move-object v6, v0

    goto :goto_3

    .line 38
    :cond_1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$4;

    invoke-direct {v0, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$4;-><init>(Landroidx/compose/ui/graphics/colorspace/TransferParameters;)V

    goto :goto_2

    :goto_3
    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    .line 39
    invoke-direct/range {v0 .. v10}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FF)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F",
            "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;FF)V"
        }
    .end annotation

    const-string v0, "name"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaries"

    move-object v3, p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    move-object v4, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oetf"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eotf"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v8, p6

    move/from16 v9, p7

    .line 32
    invoke-direct/range {v1 .. v11}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/ui/graphics/colorspace/WhitePoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Landroidx/compose/ui/graphics/colorspace/TransferParameters;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F",
            "Landroidx/compose/ui/graphics/colorspace/WhitePoint;",
            "[F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;FF",
            "Landroidx/compose/ui/graphics/colorspace/TransferParameters;",
            "I)V"
        }
    .end annotation

    move-object v6, p0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    const-string v0, "name"

    move-object/from16 v1, p1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primaries"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitePoint"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oetf"

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eotf"

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/ColorModel;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/graphics/colorspace/ColorModel$Companion;->getRgb-xdoWZVw()J

    move-result-wide v2

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v4, p10

    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 2
    iput-object v9, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 3
    iput v12, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 4
    iput v13, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    move-object/from16 v0, p9

    .line 5
    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 6
    iput-object v10, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Lkotlin/jvm/functions/Function1;

    .line 7
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$oetf$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/colorspace/Rgb$oetf$1;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;)V

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    .line 8
    iput-object v11, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Lkotlin/jvm/functions/Function1;

    .line 9
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/graphics/colorspace/Rgb$eotf$1;-><init>(Landroidx/compose/ui/graphics/colorspace/Rgb;)V

    iput-object v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    .line 10
    array-length v0, v7

    const/4 v1, 0x6

    const/16 v2, 0x9

    if-eq v0, v1, :cond_1

    array-length v0, v7

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    const-string v1, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    cmpl-float v0, v12, v13

    if-gez v0, :cond_4

    .line 14
    sget-object v0, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-static {v0, v7}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$xyPrimaries(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)[F

    move-result-object v1

    iput-object v1, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    if-nez v8, :cond_2

    .line 15
    invoke-static {v0, v1, v9}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeXYZMatrix(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;)[F

    move-result-object v2

    iput-object v2, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    goto :goto_1

    .line 16
    :cond_2
    array-length v3, v8

    if-ne v3, v2, :cond_3

    .line 17
    iput-object v8, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    .line 18
    :goto_1
    iget-object v2, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    invoke-static {v2}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->inverse3x3([F)[F

    move-result-object v2

    iput-object v2, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    .line 19
    invoke-static {v0, v1, v12, v13}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$isWideGamut(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FFF)Z

    move-result v2

    iput-boolean v2, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->isWideGamut:Z

    move-object v7, v0

    move-object v8, v1

    move-object/from16 v9, p3

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p10

    .line 20
    invoke-static/range {v7 .. v14}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$isSrgb(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFI)Z

    move-result v0

    iput-boolean v0, v6, Landroidx/compose/ui/graphics/colorspace/Rgb;->isSrgb:Z

    return-void

    .line 21
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transform must have 9 entries! Has "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    array-length v2, v8

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 26
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid range: min="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", max="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "; min must be strictly < max"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    move-object v0, p2

    const-string v1, "name"

    move-object v3, p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "toXYZ"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "oetf"

    move-object/from16 v7, p3

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "eotf"

    move-object/from16 v8, p4

    invoke-static {v8, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v1, Landroidx/compose/ui/graphics/colorspace/Rgb;->Companion:Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;

    invoke-virtual {v1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->computePrimaries$ui_graphics_release([F)[F

    move-result-object v4

    .line 30
    invoke-static {v1, p2}, Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;->access$computeWhitePoint(Landroidx/compose/ui/graphics/colorspace/Rgb$Companion;[F)Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    move-result-object v5

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move-object v2, p0

    .line 31
    invoke-direct/range {v2 .. v12}, Landroidx/compose/ui/graphics/colorspace/Rgb;-><init>(Ljava/lang/String;[FLandroidx/compose/ui/graphics/colorspace/WhitePoint;[FLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FFLandroidx/compose/ui/graphics/colorspace/TransferParameters;I)V

    return-void
.end method

.method public static final synthetic access$getMax$p(Landroidx/compose/ui/graphics/colorspace/Rgb;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic access$getMin$p(Landroidx/compose/ui/graphics/colorspace/Rgb;)F
    .locals 0

    .line 1
    iget p0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_a

    .line 7
    .line 8
    const-class v2, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 9
    .line 10
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-super {p0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    .line 35
    return v1

    .line 36
    :cond_2
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/Rgb;

    .line 37
    .line 38
    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 39
    .line 40
    iget v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 41
    .line 42
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_3

    .line 47
    .line 48
    return v1

    .line 49
    :cond_3
    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    .line 50
    .line 51
    iget v3, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    .line 52
    .line 53
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    return v1

    .line 60
    :cond_4
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 61
    .line 62
    iget-object v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 63
    .line 64
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-nez v2, :cond_5

    .line 69
    .line 70
    return v1

    .line 71
    :cond_5
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    .line 72
    .line 73
    iget-object v3, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    .line 74
    .line 75
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-nez v2, :cond_6

    .line 80
    .line 81
    return v1

    .line 82
    :cond_6
    iget-object v2, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 83
    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    iget-object p1, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 87
    .line 88
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    return p1

    .line 93
    :cond_7
    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 94
    .line 95
    if-nez v2, :cond_8

    .line 96
    .line 97
    return v0

    .line 98
    :cond_8
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Lkotlin/jvm/functions/Function1;

    .line 99
    .line 100
    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Lkotlin/jvm/functions/Function1;

    .line 101
    .line 102
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-nez v0, :cond_9

    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_9
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Lkotlin/jvm/functions/Function1;

    .line 110
    .line 111
    iget-object p1, p1, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Lkotlin/jvm/functions/Function1;

    .line 112
    .line 113
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    :cond_a
    :goto_0
    return v1
.end method

.method public final fromLinear(FFF)[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->fromLinear([F)[F

    move-result-object p1

    return-object p1
.end method

.method public final fromLinear([F)[F
    .locals 4
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 4
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public fromXyz([F)[F
    .locals 4
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
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    .line 7
    .line 8
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    aget v2, p1, v1

    .line 15
    .line 16
    float-to-double v2, v2

    .line 17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    double-to-float v0, v2

    .line 32
    aput v0, p1, v1

    .line 33
    .line 34
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    aget v2, p1, v1

    .line 38
    .line 39
    float-to-double v2, v2

    .line 40
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    check-cast v0, Ljava/lang/Number;

    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    double-to-float v0, v2

    .line 55
    aput v0, p1, v1

    .line 56
    .line 57
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    .line 58
    .line 59
    const/4 v1, 0x2

    .line 60
    aget v2, p1, v1

    .line 61
    .line 62
    float-to-double v2, v2

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    double-to-float v0, v2

    .line 78
    aput v0, p1, v1

    .line 79
    .line 80
    return-object p1
.end method

.method public final getEotf()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEotfOrig$ui_graphics_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInverseTransform()[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getInverseTransform([F)[F
    .locals 8
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "inverseTransform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->r([F[FIIIILjava/lang/Object;)[F

    move-result-object p1

    return-object p1
.end method

.method public final getInverseTransform$ui_graphics_release()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->inverseTransform:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxValue(I)F
    .locals 0

    .line 1
    iget p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    .line 2
    .line 3
    return p1
.end method

.method public getMinValue(I)F
    .locals 0

    .line 1
    iget p1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 2
    .line 3
    return p1
.end method

.method public final getOetf()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetf:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOetfOrig$ui_graphics_release()Lkotlin/jvm/functions/Function1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPrimaries()[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPrimaries([F)[F
    .locals 8
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "primaries"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->r([F[FIIIILjava/lang/Object;)[F

    move-result-object p1

    return-object p1
.end method

.method public final getPrimaries$ui_graphics_release()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransferParameters()Landroidx/compose/ui/graphics/colorspace/TransferParameters;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTransform()[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    const-string v1, "copyOf(this, size)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getTransform([F)[F
    .locals 8
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "transform"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    const/16 v6, 0xe

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lkotlin/collections/n;->r([F[FIIIILjava/lang/Object;)[F

    move-result-object p1

    return-object p1
.end method

.method public final getTransform$ui_graphics_release()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWhitePoint()Landroidx/compose/ui/graphics/colorspace/WhitePoint;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x1f

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->whitePoint:Landroidx/compose/ui/graphics/colorspace/WhitePoint;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/WhitePoint;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->primaries:[F

    .line 17
    .line 18
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->min:F

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    cmpg-float v3, v1, v2

    .line 29
    .line 30
    const/4 v4, 0x0

    .line 31
    if-nez v3, :cond_0

    .line 32
    .line 33
    move v1, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    :goto_0
    add-int/2addr v0, v1

    .line 40
    mul-int/lit8 v0, v0, 0x1f

    .line 41
    .line 42
    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->max:F

    .line 43
    .line 44
    cmpg-float v2, v1, v2

    .line 45
    .line 46
    if-nez v2, :cond_1

    .line 47
    .line 48
    move v1, v4

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    :goto_1
    add-int/2addr v0, v1

    .line 55
    mul-int/lit8 v0, v0, 0x1f

    .line 56
    .line 57
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 58
    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-virtual {v1}, Landroidx/compose/ui/graphics/colorspace/TransferParameters;->hashCode()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    :cond_2
    add-int/2addr v0, v4

    .line 66
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transferParameters:Landroidx/compose/ui/graphics/colorspace/TransferParameters;

    .line 67
    .line 68
    if-nez v1, :cond_3

    .line 69
    .line 70
    mul-int/lit8 v0, v0, 0x1f

    .line 71
    .line 72
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->oetfOrig:Lkotlin/jvm/functions/Function1;

    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    add-int/2addr v0, v1

    .line 79
    mul-int/lit8 v0, v0, 0x1f

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotfOrig:Lkotlin/jvm/functions/Function1;

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    add-int/2addr v0, v1

    .line 88
    :cond_3
    return v0
.end method

.method public isSrgb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->isSrgb:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->isWideGamut:Z

    .line 2
    .line 3
    return v0
.end method

.method public final toLinear(FFF)[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/colorspace/Rgb;->toLinear([F)[F

    move-result-object p1

    return-object p1
.end method

.method public final toLinear([F)[F
    .locals 4
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x0

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 3
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x1

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    .line 4
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    const/4 v1, 0x2

    aget v2, p1, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    double-to-float v0, v2

    aput v0, p1, v1

    return-object p1
.end method

.method public toXyz([F)[F
    .locals 4
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
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    aget v2, p1, v1

    .line 10
    .line 11
    float-to-double v2, v2

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Number;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    double-to-float v0, v2

    .line 27
    aput v0, p1, v1

    .line 28
    .line 29
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    .line 30
    .line 31
    const/4 v1, 0x1

    .line 32
    aget v2, p1, v1

    .line 33
    .line 34
    float-to-double v2, v2

    .line 35
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/Number;

    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 46
    .line 47
    .line 48
    move-result-wide v2

    .line 49
    double-to-float v0, v2

    .line 50
    aput v0, p1, v1

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->eotf:Lkotlin/jvm/functions/Function1;

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    aget v2, p1, v1

    .line 56
    .line 57
    float-to-double v2, v2

    .line 58
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Number;

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 69
    .line 70
    .line 71
    move-result-wide v2

    .line 72
    double-to-float v0, v2

    .line 73
    aput v0, p1, v1

    .line 74
    .line 75
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/Rgb;->transform:[F

    .line 76
    .line 77
    invoke-static {v0, p1}, Landroidx/compose/ui/graphics/colorspace/ColorSpaceKt;->mul3x3Float3([F[F)[F

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1
.end method
