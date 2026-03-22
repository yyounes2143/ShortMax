.class public Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;
.super Ljava/lang/Object;
.source "DisplayUtils.java"


# static fields
.field private static final a:Landroid/util/DisplayMetrics;

.field private static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->a:Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 12
    .line 13
    div-int/lit16 v0, v0, 0xa0

    .line 14
    .line 15
    sput v0, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->b:I

    .line 16
    .line 17
    return-void
.end method

.method public static a(I)I
    .locals 1

    .line 1
    sget v0, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->b:I

    .line 2
    .line 3
    mul-int/2addr p0, v0

    .line 4
    return p0
.end method

.method public static b(II)Landroid/graphics/drawable/ShapeDrawable;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/amazonaws/mobile/auth/core/signin/ui/DisplayUtils;->c(I)Landroid/graphics/drawable/shapes/Shape;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-direct {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public static c(I)Landroid/graphics/drawable/shapes/Shape;
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    .line 2
    .line 3
    int-to-float p0, p0

    .line 4
    const/16 v1, 0x8

    .line 5
    .line 6
    new-array v1, v1, [F

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aput p0, v1, v2

    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    aput p0, v1, v2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    aput p0, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x3

    .line 18
    aput p0, v1, v2

    .line 19
    .line 20
    const/4 v2, 0x4

    .line 21
    aput p0, v1, v2

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    aput p0, v1, v2

    .line 25
    .line 26
    const/4 v2, 0x6

    .line 27
    aput p0, v1, v2

    .line 28
    .line 29
    const/4 v2, 0x7

    .line 30
    aput p0, v1, v2

    .line 31
    .line 32
    const/4 p0, 0x0

    .line 33
    invoke-direct {v0, v1, p0, p0}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method
