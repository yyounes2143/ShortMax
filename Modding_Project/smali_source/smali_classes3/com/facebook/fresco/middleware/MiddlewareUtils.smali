.class public final Lcom/facebook/fresco/middleware/MiddlewareUtils;
.super Ljava/lang/Object;
.source "MiddlewareUtils.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lcom/facebook/fresco/middleware/MiddlewareUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/facebook/fresco/middleware/MiddlewareUtils;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/facebook/fresco/middleware/MiddlewareUtils;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/facebook/fresco/middleware/MiddlewareUtils;->INSTANCE:Lcom/facebook/fresco/middleware/MiddlewareUtils;

    .line 7
    .line 8
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

.method public static final obtainExtras(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;ZLandroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 2
    .param p0    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/net/Uri;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/graphics/Rect;",
            "Ljava/lang/String;",
            "Landroid/graphics/PointF;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Z",
            "Landroid/net/Uri;",
            ")",
            "Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "componentAttribution"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "shortcutAttribution"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;-><init>()V

    .line 14
    .line 15
    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    invoke-virtual {p4}, Landroid/graphics/Rect;->width()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportWidth:I

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/graphics/Rect;->height()I

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    iput p4, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->viewportHeight:I

    .line 29
    .line 30
    :cond_0
    iput-object p5, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->scaleType:Ljava/lang/Object;

    .line 31
    .line 32
    if-eqz p6, :cond_1

    .line 33
    .line 34
    iget p4, p6, Landroid/graphics/PointF;->x:F

    .line 35
    .line 36
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object p4

    .line 40
    iput-object p4, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusX:Ljava/lang/Float;

    .line 41
    .line 42
    iget p4, p6, Landroid/graphics/PointF;->y:F

    .line 43
    .line 44
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 45
    .line 46
    .line 47
    move-result-object p4

    .line 48
    iput-object p4, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->focusY:Ljava/lang/Float;

    .line 49
    .line 50
    :cond_1
    iput-object p8, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->callerContext:Ljava/lang/Object;

    .line 51
    .line 52
    iput-boolean p9, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->logWithHighSamplingRate:Z

    .line 53
    .line 54
    iput-object p10, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->mainUri:Landroid/net/Uri;

    .line 55
    .line 56
    iput-object p2, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->datasourceExtras:Ljava/util/Map;

    .line 57
    .line 58
    iput-object p7, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->imageExtras:Ljava/util/Map;

    .line 59
    .line 60
    iput-object p1, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->shortcutExtras:Ljava/util/Map;

    .line 61
    .line 62
    iput-object p0, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->componentExtras:Ljava/util/Map;

    .line 63
    .line 64
    iput-object p3, v0, Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;->imageSourceExtras:Ljava/util/Map;

    .line 65
    .line 66
    return-object v0
.end method

.method public static synthetic obtainExtras$default(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;ZLandroid/net/Uri;ILjava/lang/Object;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;
    .locals 12

    .line 1
    move/from16 v0, p11

    .line 2
    .line 3
    and-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    move v10, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v10, p9

    .line 11
    .line 12
    :goto_0
    move-object v1, p0

    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object/from16 v5, p4

    .line 17
    .line 18
    move-object/from16 v6, p5

    .line 19
    .line 20
    move-object/from16 v7, p6

    .line 21
    .line 22
    move-object/from16 v8, p7

    .line 23
    .line 24
    move-object/from16 v9, p8

    .line 25
    .line 26
    move-object/from16 v11, p10

    .line 27
    .line 28
    invoke-static/range {v1 .. v11}, Lcom/facebook/fresco/middleware/MiddlewareUtils;->obtainExtras(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/PointF;Ljava/util/Map;Ljava/lang/Object;ZLandroid/net/Uri;)Lcom/facebook/fresco/ui/common/ControllerListener2$Extras;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0
.end method
