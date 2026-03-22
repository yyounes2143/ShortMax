.class public final Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;
.super Ljava/lang/Object;
.source "FloatingWindow.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final closestRatio(F)F
    .locals 8

    .line 1
    const v0, 0x3e75c28f    # 0.24f

    .line 2
    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    if-gtz v1, :cond_0

    .line 7
    .line 8
    return v0

    .line 9
    :cond_0
    const v1, 0x3ee66666    # 0.45f

    .line 10
    .line 11
    .line 12
    cmpl-float v2, p1, v1

    .line 13
    .line 14
    if-ltz v2, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    const v2, 0x3e99999a    # 0.3f

    .line 18
    .line 19
    .line 20
    cmpg-float v3, p1, v2

    .line 21
    .line 22
    if-nez v3, :cond_2

    .line 23
    .line 24
    return v2

    .line 25
    :cond_2
    const v3, 0x3ebd70a4    # 0.37f

    .line 26
    .line 27
    .line 28
    cmpg-float v4, p1, v3

    .line 29
    .line 30
    if-nez v4, :cond_3

    .line 31
    .line 32
    return v3

    .line 33
    :cond_3
    sub-float v4, p1, v0

    .line 34
    .line 35
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    sub-float v5, p1, v2

    .line 40
    .line 41
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    sub-float v6, p1, v3

    .line 46
    .line 47
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    sub-float/2addr p1, v1

    .line 52
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    invoke-static {v7, p1}, Ljava/lang/Math;->min(FF)F

    .line 65
    .line 66
    .line 67
    move-result v7

    .line 68
    cmpg-float v4, v7, v4

    .line 69
    .line 70
    if-nez v4, :cond_4

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    cmpg-float v4, v7, v5

    .line 74
    .line 75
    if-nez v4, :cond_5

    .line 76
    .line 77
    move v0, v2

    .line 78
    goto :goto_0

    .line 79
    :cond_5
    cmpg-float v2, v7, v6

    .line 80
    .line 81
    if-nez v2, :cond_6

    .line 82
    .line 83
    move v0, v3

    .line 84
    goto :goto_0

    .line 85
    :cond_6
    cmpg-float p1, v7, p1

    .line 86
    .line 87
    if-nez p1, :cond_7

    .line 88
    .line 89
    move v0, v1

    .line 90
    :cond_7
    :goto_0
    return v0
.end method

.method public final fontRatio(F)F
    .locals 2

    .line 1
    const v0, 0x3e75c28f    # 0.24f

    .line 2
    .line 3
    .line 4
    cmpg-float v0, p1, v0

    .line 5
    .line 6
    const/high16 v1, 0x41100000    # 9.0f

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    .line 12
    .line 13
    .line 14
    cmpg-float v0, p1, v0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    const v0, 0x3ebd70a4    # 0.37f

    .line 20
    .line 21
    .line 22
    cmpg-float v0, p1, v0

    .line 23
    .line 24
    if-nez v0, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    const v0, 0x3ee66666    # 0.45f

    .line 28
    .line 29
    .line 30
    cmpg-float p1, p1, v0

    .line 31
    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    :goto_0
    const/high16 v1, 0x41400000    # 12.0f

    .line 35
    .line 36
    :cond_3
    :goto_1
    return v1
.end method

.method public final nextRatio(F)F
    .locals 3

    .line 1
    const v0, 0x3e75c28f    # 0.24f

    .line 2
    .line 3
    .line 4
    cmpg-float v1, p1, v0

    .line 5
    .line 6
    const v2, 0x3ee66666    # 0.45f

    .line 7
    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    cmpg-float p1, p1, v2

    .line 13
    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return v0

    .line 17
    :cond_1
    return v2
.end method
