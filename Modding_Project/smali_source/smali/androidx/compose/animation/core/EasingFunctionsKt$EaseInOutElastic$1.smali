.class final Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;
.super Ljava/lang/Object;
.source "EasingFunctions.kt"

# interfaces
.implements Landroidx/compose/animation/core/Easing;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/animation/core/EasingFunctionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;->INSTANCE:Landroidx/compose/animation/core/EasingFunctionsKt$EaseInOutElastic$1;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final transform(F)F
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 8
    .line 9
    cmpg-float v2, p1, v1

    .line 10
    .line 11
    if-nez v2, :cond_1

    .line 12
    .line 13
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    cmpg-float v0, v0, p1

    .line 16
    .line 17
    const/high16 v2, 0x41320000    # 11.125f

    .line 18
    .line 19
    const/high16 v3, 0x41200000    # 10.0f

    .line 20
    .line 21
    const/high16 v4, 0x41a00000    # 20.0f

    .line 22
    .line 23
    const/high16 v5, 0x40000000    # 2.0f

    .line 24
    .line 25
    const-wide v6, 0x3ff657184ae74487L    # 1.3962634015954636

    .line 26
    .line 27
    .line 28
    .line 29
    .line 30
    if-gtz v0, :cond_2

    .line 31
    .line 32
    const/high16 v0, 0x3f000000    # 0.5f

    .line 33
    .line 34
    cmpg-float v0, p1, v0

    .line 35
    .line 36
    if-gtz v0, :cond_2

    .line 37
    .line 38
    float-to-double v0, v5

    .line 39
    mul-float/2addr p1, v4

    .line 40
    sub-float v3, p1, v3

    .line 41
    .line 42
    float-to-double v3, v3

    .line 43
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->pow(DD)D

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    double-to-float v3, v3

    .line 48
    float-to-double v3, v3

    .line 49
    sub-float/2addr p1, v2

    .line 50
    float-to-double v8, p1

    .line 51
    mul-double/2addr v8, v6

    .line 52
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    .line 53
    .line 54
    .line 55
    move-result-wide v5

    .line 56
    mul-double/2addr v3, v5

    .line 57
    neg-double v2, v3

    .line 58
    div-double/2addr v2, v0

    .line 59
    double-to-float v0, v2

    .line 60
    goto :goto_0

    .line 61
    :cond_2
    float-to-double v8, v5

    .line 62
    const/high16 v0, -0x3e600000    # -20.0f

    .line 63
    .line 64
    mul-float/2addr v0, p1

    .line 65
    add-float/2addr v0, v3

    .line 66
    float-to-double v10, v0

    .line 67
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    .line 68
    .line 69
    .line 70
    move-result-wide v10

    .line 71
    double-to-float v0, v10

    .line 72
    float-to-double v10, v0

    .line 73
    mul-float/2addr p1, v4

    .line 74
    sub-float/2addr p1, v2

    .line 75
    float-to-double v2, p1

    .line 76
    mul-double/2addr v2, v6

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    .line 78
    .line 79
    .line 80
    move-result-wide v2

    .line 81
    mul-double/2addr v10, v2

    .line 82
    div-double/2addr v10, v8

    .line 83
    double-to-float p1, v10

    .line 84
    add-float v0, p1, v1

    .line 85
    .line 86
    :goto_0
    return v0
.end method
