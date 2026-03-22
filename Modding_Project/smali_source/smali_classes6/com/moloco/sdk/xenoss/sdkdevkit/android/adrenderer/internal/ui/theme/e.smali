.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroidx/compose/material/Typography;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 44

    .line 1
    new-instance v17, Landroidx/compose/material/Typography;

    .line 2
    .line 3
    move-object/from16 v0, v17

    .line 4
    .line 5
    sget-object v1, Landroidx/compose/ui/text/font/FontFamily;->Companion:Landroidx/compose/ui/text/font/FontFamily$Companion;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontFamily$Companion;->getDefault()Landroidx/compose/ui/text/font/SystemFontFamily;

    .line 8
    .line 9
    .line 10
    move-result-object v26

    .line 11
    sget-object v1, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    .line 14
    .line 15
    .line 16
    move-result-object v23

    .line 17
    const/16 v1, 0x10

    .line 18
    .line 19
    invoke-static {v1}, Landroidx/compose/ui/unit/TextUnitKt;->getSp(I)J

    .line 20
    .line 21
    .line 22
    move-result-wide v21

    .line 23
    new-instance v18, Landroidx/compose/ui/text/TextStyle;

    .line 24
    .line 25
    move-object/from16 v10, v18

    .line 26
    .line 27
    const v42, 0x3ffd9

    .line 28
    .line 29
    .line 30
    const/16 v43, 0x0

    .line 31
    .line 32
    const-wide/16 v19, 0x0

    .line 33
    .line 34
    const/16 v24, 0x0

    .line 35
    .line 36
    const/16 v25, 0x0

    .line 37
    .line 38
    const/16 v27, 0x0

    .line 39
    .line 40
    const-wide/16 v28, 0x0

    .line 41
    .line 42
    const/16 v30, 0x0

    .line 43
    .line 44
    const/16 v31, 0x0

    .line 45
    .line 46
    const/16 v32, 0x0

    .line 47
    .line 48
    const-wide/16 v33, 0x0

    .line 49
    .line 50
    const/16 v35, 0x0

    .line 51
    .line 52
    const/16 v36, 0x0

    .line 53
    .line 54
    const/16 v37, 0x0

    .line 55
    .line 56
    const/16 v38, 0x0

    .line 57
    .line 58
    const-wide/16 v39, 0x0

    .line 59
    .line 60
    const/16 v41, 0x0

    .line 61
    .line 62
    invoke-direct/range {v18 .. v43}, Landroidx/compose/ui/text/TextStyle;-><init>(JJLandroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontSynthesis;Landroidx/compose/ui/text/font/FontFamily;Ljava/lang/String;JLandroidx/compose/ui/text/style/BaselineShift;Landroidx/compose/ui/text/style/TextGeometricTransform;Landroidx/compose/ui/text/intl/LocaleList;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/graphics/Shadow;Landroidx/compose/ui/text/style/TextAlign;Landroidx/compose/ui/text/style/TextDirection;JLandroidx/compose/ui/text/style/TextIndent;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 63
    .line 64
    .line 65
    const/16 v15, 0x3dff

    .line 66
    .line 67
    const/16 v16, 0x0

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    const/4 v3, 0x0

    .line 72
    const/4 v4, 0x0

    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x0

    .line 76
    const/4 v8, 0x0

    .line 77
    const/4 v9, 0x0

    .line 78
    const/4 v11, 0x0

    .line 79
    const/4 v12, 0x0

    .line 80
    const/4 v13, 0x0

    .line 81
    const/4 v14, 0x0

    .line 82
    invoke-direct/range {v0 .. v16}, Landroidx/compose/material/Typography;-><init>(Landroidx/compose/ui/text/font/FontFamily;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/text/TextStyle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 83
    .line 84
    .line 85
    sput-object v17, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/e;->a:Landroidx/compose/material/Typography;

    .line 86
    .line 87
    return-void
.end method

.method public static final a()Landroidx/compose/material/Typography;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/e;->a:Landroidx/compose/material/Typography;

    .line 2
    .line 3
    return-object v0
.end method
