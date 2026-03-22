.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShape.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Shape.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/ShapeKt\n+ 2 Dp.kt\nandroidx/compose/ui/unit/DpKt\n*L\n1#1,12:1\n155#2:13\n155#2:14\n155#2:15\n*S KotlinDebug\n*F\n+ 1 Shape.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/ShapeKt\n*L\n8#1:13\n9#1:14\n10#1:15\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Landroidx/compose/material/Shapes;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/compose/material/Shapes;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    int-to-float v1, v1

    .line 5
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-static {v2}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v1}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    int-to-float v3, v3

    .line 23
    invoke-static {v3}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-static {v3}, Landroidx/compose/foundation/shape/RoundedCornerShapeKt;->RoundedCornerShape-0680j_4(F)Landroidx/compose/foundation/shape/RoundedCornerShape;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v0, v2, v1, v3}, Landroidx/compose/material/Shapes;-><init>(Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;Landroidx/compose/foundation/shape/CornerBasedShape;)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/b;->a:Landroidx/compose/material/Shapes;

    .line 35
    .line 36
    return-void
.end method

.method public static final a()Landroidx/compose/material/Shapes;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/theme/b;->a:Landroidx/compose/material/Shapes;

    .line 2
    .line 3
    return-object v0
.end method
