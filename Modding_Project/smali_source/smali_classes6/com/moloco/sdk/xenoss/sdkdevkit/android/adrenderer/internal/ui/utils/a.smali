.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nComposeConstants.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComposeConstants.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/ComposeConstantsKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,19:1\n155#2:20\n155#2:21\n*S KotlinDebug\n*F\n+ 1 ComposeConstants.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/ComposeConstantsKt\n*L\n9#1:20\n11#1:21\n*E\n"
    }
.end annotation


# static fields
.field public static final a:F

.field public static final b:F

.field public static final c:J

.field public static final d:J

.field public static final e:J

.field public static final f:Landroidx/compose/foundation/shape/RoundedCornerShape;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    int-to-float v0, v0

    .line 4
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    sput v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->a:F

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    int-to-float v1, v1

    .line 12
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    sput v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b:F

    .line 17
    .line 18
    sget-object v1, Landroidx/compose/ui/unit/TextUnit;->Companion:Landroidx/compose/ui/unit/TextUnit$Companion;

    .line 19
    .line 20
    invoke-virtual {v1}, Landroidx/compose/ui/unit/TextUnit$Companion;->getUnspecified-XSAIIZE()J

    .line 21
    .line 22
    .line 23
    move-result-wide v1

    .line 24
    sput-wide v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->c:J

    .line 25
    .line 26
    invoke-static {v0, v0}, Landroidx/compose/ui/unit/DpKt;->DpSize-YgX7TsA(FF)J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    sput-wide v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->d:J

    .line 31
    .line 32
    sget-object v0, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    .line 33
    .line 34
    invoke-virtual {v0}, Landroidx/compose/ui/graphics/Color$Companion;->getGray-0d7_KjU()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    const/16 v7, 0xe

    .line 39
    .line 40
    const/4 v8, 0x0

    .line 41
    const v3, 0x3e4ccccd    # 0.2f

    .line 42
    .line 43
    .line 44
    const/4 v4, 0x0

    .line 45
    const/4 v5, 0x0

    .line 46
    const/4 v6, 0x0

    .line 47
    invoke-static/range {v1 .. v8}, Landroidx/compose/ui/graphics/Color;->copy-wmQWz5c$default(JFFFFILjava/lang/Object;)J

    .line 48
    .line 49
    .line 50
    move-result-wide v0

    .line 51
    sput-wide v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->e:J

    .line 52
    .line 53
    invoke-static {}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->getCircleShape()Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->f:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 58
    .line 59
    return-void
.end method

.method public static final a()F
    .locals 1

    .line 1
    sget v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->b:F

    .line 2
    .line 3
    return v0
.end method

.method public static final b()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final c()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final d()J
    .locals 2

    .line 1
    sget-wide v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static final e()Landroidx/compose/foundation/shape/RoundedCornerShape;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/a;->f:Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 2
    .line 3
    return-object v0
.end method
