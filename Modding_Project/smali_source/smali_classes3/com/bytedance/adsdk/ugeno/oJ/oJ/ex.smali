.class public Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;
.super Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;
.source "SourceFile"


# static fields
.field private static final WcQ:F

.field private static final awB:F

.field private static final eZI:F

.field private static final si:F


# instance fields
.field private BTZ:Z

.field private Pfn:Landroid/graphics/Path;

.field private PiB:Landroid/graphics/Path;

.field private Ry:F

.field private ba:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

.field private cFZ:I

.field private dLZ:I

.field private ex:Landroid/graphics/Paint;

.field private jFA:F

.field private kkU:I

.field private so:I

.field private tB:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    sput v0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->WcQ:F

    .line 9
    .line 10
    float-to-double v1, v0

    .line 11
    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    double-to-float v1, v1

    .line 16
    sput v1, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->awB:F

    .line 17
    .line 18
    float-to-double v1, v0

    .line 19
    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    double-to-float v1, v1

    .line 24
    sput v1, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->eZI:F

    .line 25
    .line 26
    float-to-double v0, v0

    .line 27
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    double-to-float v0, v0

    .line 32
    sput v0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->si:F

    .line 33
    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;-><init>(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->BTZ:Z

    .line 6
    .line 7
    new-instance p2, Landroid/graphics/Paint;

    .line 8
    .line 9
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->ex:Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    .line 16
    .line 17
    new-instance p1, Landroid/graphics/Path;

    .line 18
    .line 19
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->Pfn:Landroid/graphics/Path;

    .line 23
    .line 24
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->cY()F

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->jFA:F

    .line 31
    .line 32
    new-instance p1, Landroid/graphics/Path;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    .line 38
    .line 39
    return-void
.end method

.method private tB(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->bgF()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->kkU:I

    int-to-float v2, v0

    sget v3, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->awB:F

    int-to-float v0, v0

    mul-float/2addr v0, v3

    add-float/2addr v2, v0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->bgF()F

    move-result v0

    mul-float v5, v2, v0

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->dLZ:I

    int-to-float v2, v0

    mul-float/2addr v2, v3

    sub-float v2, v5, v2

    .line 6
    iget-object v3, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    int-to-float v0, v0

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->tB:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->dLZ:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 8
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->tB:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 10
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->Ry:F

    sget v1, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->eZI:F

    mul-float/2addr v1, v0

    .line 11
    sget v2, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->si:F

    mul-float v8, v0, v2

    .line 12
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->BTZ:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->ba:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Landroid/graphics/LinearGradient;

    add-float v7, v5, v1

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->ba:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    iget-object v9, v1, Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;->ZYk:[I

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    add-float v7, v5, v1

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->so:I

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->cFZ:I

    filled-new-array {v1, v2, v1}, [I

    move-result-object v9

    sget-object v11, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v6, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v11}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 15
    :goto_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->ex:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->Pfn:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 17
    sget-object v1, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->PiB:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->ex:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v0}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->dLZ()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->oJ:Lorg/json/JSONObject;

    const-string v2, "shineWidth"

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->oJ(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->tB:I

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->oJ:Lorg/json/JSONObject;

    const-string v1, "backgroundColor"

    const-string v2, "linear-gradient(90deg, rgba(255, 255, 255, 0), rgba(255, 255, 255, 0.25) 30%, rgba(255, 255, 255, 0.3) 50%, rgba(255, 255, 255, 0.25) 70%, rgba(255, 255, 255, 0))"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v0

    .line 4
    :goto_0
    const-string v0, "linear"

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->ZYk(Ljava/lang/String;)Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->ba:Lcom/bytedance/adsdk/ugeno/cFZ/oJ$oJ;

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {v2}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->oJ(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->cFZ:I

    const/16 v1, 0x20

    .line 7
    invoke-static {v0, v1}, Lcom/bytedance/adsdk/ugeno/cFZ/oJ;->oJ(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->so:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->BTZ:Z

    .line 9
    :goto_1
    sget v0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->eZI:F

    iget v1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->tB:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->Ry:F

    return-void
.end method

.method public ZYk(Landroid/graphics/Canvas;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->tB(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public oJ(II)V
    .locals 2

    .line 2
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->kkU:I

    .line 3
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->dLZ:I

    .line 4
    :try_start_0
    new-instance v0, Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->Pfn:Landroid/graphics/Path;

    iget p2, p0, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->jFA:F

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {p1, v0, p2, p2, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public oJ(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/oJ/oJ/ex;->tB(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public tB()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/bytedance/adsdk/ugeno/oJ/oJ/oJ;->ex()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
