.class public final Lbm/u;
.super Lxq/o;
.source "AdaptiveRenderingParams.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbm/u$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final b:Lrq/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lxq/k;)V
    .locals 3
    .param p1    # Lxq/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "unifiedMediationParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lxq/o;-><init>(Lxq/k;)V

    .line 7
    .line 8
    .line 9
    const-string v0, "rendering_configuration"

    .line 10
    .line 11
    invoke-interface {p1, v0}, Lgr/c;->n(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    instance-of v1, v0, Lio/bidmachine/protobuf/rendering/Rendering;

    .line 16
    .line 17
    if-eqz v1, :cond_3

    .line 18
    .line 19
    new-instance v1, Lrq/q0$a;

    .line 20
    .line 21
    invoke-direct {v1}, Lrq/q0$a;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "viewability_pixel_threshold"

    .line 25
    .line 26
    invoke-interface {p1, v2}, Lgr/c;->c(Ljava/lang/Object;)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {v1, v2}, Lrq/q0$a;->d(F)Lrq/q0$a;

    .line 37
    .line 38
    .line 39
    :cond_0
    const-string v2, "viewability_ignore_window_focus"

    .line 40
    .line 41
    invoke-interface {p1, v2}, Lgr/c;->p(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    invoke-virtual {v1, v2}, Lrq/q0$a;->c(Z)Lrq/q0$a;

    .line 52
    .line 53
    .line 54
    :cond_1
    const-string v2, "viewability_ignore_overlap"

    .line 55
    .line 56
    invoke-interface {p1, v2}, Lgr/c;->p(Ljava/lang/Object;)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-eqz p1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {v1, p1}, Lrq/q0$a;->b(Z)Lrq/q0$a;

    .line 67
    .line 68
    .line 69
    :cond_2
    check-cast v0, Lio/bidmachine/protobuf/rendering/Rendering;

    .line 70
    .line 71
    invoke-virtual {v1}, Lrq/q0$a;->a()Lrq/q0;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, v0, p1}, Lbm/u;->r(Lio/bidmachine/protobuf/rendering/Rendering;Lrq/q0;)Lrq/b;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    iput-object p1, p0, Lbm/u;->b:Lrq/b;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_3
    const/4 p1, 0x0

    .line 83
    iput-object p1, p0, Lbm/u;->b:Lrq/b;

    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method private static final A()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BrokenCreativeDetector algorithms is empty"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final B()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not all BrokenCreativeDetector algorithms were applied, check if the algorithms are specified correctly"

    .line 2
    .line 3
    return-object v0
.end method

.method private final C(Lio/bidmachine/protobuf/rendering/Rendering$Color;)Lrq/o;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Color;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Color;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color;->hasColor()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color;->getColor()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    new-instance p1, Lbm/t;

    .line 28
    .line 29
    invoke-direct {p1}, Lbm/t;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :cond_1
    new-instance v1, Lrq/f0;

    .line 37
    .line 38
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-direct {v1, p1}, Lrq/f0;-><init>(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color;->hasGradient()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_4

    .line 51
    .line 52
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color;->getGradient()Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Lbm/u;->K(Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;)Lrq/w;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    new-instance p1, Lbm/f;

    .line 63
    .line 64
    invoke-direct {p1}, Lbm/f;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 68
    .line 69
    .line 70
    return-object v0

    .line 71
    :cond_3
    new-instance v1, Lrq/x;

    .line 72
    .line 73
    invoke-direct {v1, p1}, Lrq/x;-><init>(Lrq/w;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    new-instance p1, Lbm/g;

    .line 78
    .line 79
    invoke-direct {p1}, Lbm/g;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 83
    .line 84
    .line 85
    move-object v1, v0

    .line 86
    :goto_0
    if-nez v1, :cond_5

    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_5
    new-instance p1, Lrq/o;

    .line 90
    .line 91
    invoke-direct {p1, v1}, Lrq/o;-><init>(Lrq/r;)V

    .line 92
    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_6
    :goto_1
    return-object v0
.end method

.method private static final D()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ColorSource don\'t found. Can\'t parse color"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final E()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ColorSource don\'t found. Can\'t create Gradient"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final F()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ColorSource don\'t found. Set one of: color, gradient"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final H(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Unsupported SourceAnchor - "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0
.end method

.method private final K(Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;)Lrq/w;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;->getType()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "gradient.type"

    .line 17
    .line 18
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lio/bidmachine/rendering/model/GradientType;->Companion:Lio/bidmachine/rendering/model/GradientType$a;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lio/bidmachine/rendering/model/GradientType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientType;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    new-instance p1, Lbm/h;

    .line 30
    .line 31
    invoke-direct {p1, v1}, Lbm/h;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 35
    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;->getDirection()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const-string v3, "gradient.direction"

    .line 43
    .line 44
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v3, Lio/bidmachine/rendering/model/GradientDirection;->Companion:Lio/bidmachine/rendering/model/GradientDirection$a;

    .line 48
    .line 49
    invoke-virtual {v3, v1}, Lio/bidmachine/rendering/model/GradientDirection$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/GradientDirection;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-nez v3, :cond_2

    .line 54
    .line 55
    new-instance p1, Lbm/i;

    .line 56
    .line 57
    invoke-direct {p1, v1}, Lbm/i;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 61
    .line 62
    .line 63
    return-object v0

    .line 64
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Color$Gradient;->getColorsList()Lcom/explorestack/protobuf/m1;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const-string v1, "gradient.colorsList"

    .line 69
    .line 70
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_4

    .line 87
    .line 88
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    check-cast v5, Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v5}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    if-eqz v5, :cond_3

    .line 99
    .line 100
    invoke-interface {v1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 105
    .line 106
    .line 107
    move-result v4

    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    new-instance p1, Lbm/j;

    .line 111
    .line 112
    invoke-direct {p1}, Lbm/j;-><init>()V

    .line 113
    .line 114
    .line 115
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 116
    .line 117
    .line 118
    return-object v0

    .line 119
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-eq v0, p1, :cond_6

    .line 128
    .line 129
    new-instance p1, Lbm/k;

    .line 130
    .line 131
    invoke-direct {p1}, Lbm/k;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    new-instance p1, Lrq/w;

    .line 138
    .line 139
    invoke-direct {p1, v2, v3, v1}, Lrq/w;-><init>(Lio/bidmachine/rendering/model/GradientType;Lio/bidmachine/rendering/model/GradientDirection;Ljava/util/List;)V

    .line 140
    .line 141
    .line 142
    return-object p1

    .line 143
    :cond_7
    :goto_1
    return-object v0
.end method

.method private static final L(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "$type"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Incorrect gradient type parameter - "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static final M(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "$direction"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Incorrect gradient direction parameter - "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method private static final N()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Failed to parse all colors. Check if colors are specified correctly."

    .line 2
    .line 3
    return-object v0
.end method

.method private static final O()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Not all colors were parsed, check if the colors are specified correctly"

    .line 2
    .line 3
    return-object v0
.end method

.method private final P(Lio/bidmachine/protobuf/rendering/Rendering$Image;)Lrq/z;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Image;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Image;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Image;->getResource()Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {p0, v1}, Lbm/u;->T(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lrq/k0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Image;->getScale()Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lbm/e0;->w(Lio/bidmachine/protobuf/rendering/Rendering$Image$ScaleType;)Lio/bidmachine/rendering/model/ScaleType;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    sget-object p1, Lio/bidmachine/rendering/model/ScaleType;->None:Lio/bidmachine/rendering/model/ScaleType;

    .line 33
    .line 34
    :cond_2
    new-instance v0, Lrq/z;

    .line 35
    .line 36
    invoke-direct {v0, p1, v1}, Lrq/z;-><init>(Lio/bidmachine/rendering/model/ScaleType;Lrq/k0;)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_0
    return-object v0
.end method

.method private final R(Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;)Lrq/i0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->hasName()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    new-instance v1, Lrq/e0;

    .line 18
    .line 19
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    const-string v2, "placeholder.name"

    .line 24
    .line 25
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p1}, Lrq/e0;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->hasColor()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_3

    .line 37
    .line 38
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->getColor()Lio/bidmachine/protobuf/rendering/Rendering$Color;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-direct {p0, p1}, Lbm/u;->C(Lio/bidmachine/protobuf/rendering/Rendering$Color;)Lrq/o;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-nez p1, :cond_2

    .line 47
    .line 48
    return-object v0

    .line 49
    :cond_2
    new-instance v1, Lrq/q;

    .line 50
    .line 51
    invoke-direct {v1, p1}, Lrq/q;-><init>(Lrq/o;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->hasImage()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_5

    .line 60
    .line 61
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;->getImage()Lio/bidmachine/protobuf/rendering/Rendering$Image;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-direct {p0, p1}, Lbm/u;->P(Lio/bidmachine/protobuf/rendering/Rendering$Image;)Lrq/z;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-nez p1, :cond_4

    .line 70
    .line 71
    return-object v0

    .line 72
    :cond_4
    new-instance v1, Lrq/b0;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Lrq/b0;-><init>(Lrq/z;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    new-instance p1, Lbm/s;

    .line 79
    .line 80
    invoke-direct {p1}, Lbm/s;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 84
    .line 85
    .line 86
    move-object v1, v0

    .line 87
    :goto_0
    if-nez v1, :cond_6

    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_6
    new-instance p1, Lrq/i0;

    .line 91
    .line 92
    invoke-direct {p1, v1}, Lrq/i0;-><init>(Lrq/j0;)V

    .line 93
    .line 94
    .line 95
    return-object p1

    .line 96
    :cond_7
    :goto_1
    return-object v0
.end method

.method private static final S()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "PlaceholderSource don\'t found. Set one of: name, color, gradient"

    .line 2
    .line 3
    return-object v0
.end method

.method private final T(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lrq/k0;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->hasBase64()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    new-instance v1, Lrq/i;

    .line 19
    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getBase64()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v2, "resource.base64"

    .line 25
    .line 26
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v1, p1}, Lrq/i;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->hasUrl()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    new-instance v1, Lrq/p0;

    .line 40
    .line 41
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getUrl()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    const-string v2, "resource.url"

    .line 46
    .line 47
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-direct {v1, p1}, Lrq/p0;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->hasPayload()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-eqz v1, :cond_5

    .line 59
    .line 60
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource;->getPayload()Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "resource.payload"

    .line 65
    .line 66
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->hasHtml()Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_3

    .line 74
    .line 75
    new-instance v1, Lrq/y;

    .line 76
    .line 77
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->getHtml()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string v2, "payload.html"

    .line 82
    .line 83
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {v1, p1}, Lrq/y;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->hasXml()Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_4

    .line 95
    .line 96
    new-instance v1, Lrq/r0;

    .line 97
    .line 98
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Resource$Payload;->getXml()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string v2, "payload.xml"

    .line 103
    .line 104
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    invoke-direct {v1, p1}, Lrq/r0;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_4
    new-instance p1, Lbm/o;

    .line 112
    .line 113
    invoke-direct {p1}, Lbm/o;-><init>()V

    .line 114
    .line 115
    .line 116
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    move-object v1, v0

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    new-instance p1, Lbm/p;

    .line 122
    .line 123
    invoke-direct {p1}, Lbm/p;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :goto_1
    if-nez v1, :cond_6

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_6
    new-instance p1, Lrq/k0;

    .line 134
    .line 135
    invoke-direct {p1, v1}, Lrq/k0;-><init>(Lrq/l0;)V

    .line 136
    .line 137
    .line 138
    return-object p1

    .line 139
    :cond_7
    :goto_2
    return-object v0
.end method

.method private static final U()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ResourceSource don\'t found. Set one of: html, xml"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final V()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "ResourceSource don\'t found. Set one of: base64, url, payload"

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->w()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->y()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->O()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->U()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic e()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->D()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->E()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->F()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic h()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->V()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->x()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic j(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/u;->L(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic k(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/u;->M(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lbm/u;->H(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic m()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->N()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic n()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->B()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic o()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->A()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic p()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lbm/u;->S()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final t(Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;",
            ">;)",
            "Ljava/util/Map<",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "Lrq/d;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;

    .line 23
    .line 24
    sget-object v2, Lio/bidmachine/rendering/model/AnimationEventType;->Companion:Lio/bidmachine/rendering/model/AnimationEventType$a;

    .line 25
    .line 26
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;->getEvent()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-virtual {v2, v3}, Lio/bidmachine/rendering/model/AnimationEventType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationEventType;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation;->getStyle()Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "it.style"

    .line 42
    .line 43
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style;->hasFade()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style;->getFade()Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$FadeAnimationOption;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-string v3, "style.fade"

    .line 57
    .line 58
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$FadeAnimationOption;->getTiming()Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const-string v3, "fadeAnimationOption.timing"

    .line 66
    .line 67
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    new-instance v3, Lrq/d;

    .line 71
    .line 72
    sget-object v6, Lio/bidmachine/rendering/model/AnimationStyleType;->Fade:Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 73
    .line 74
    sget-object v4, Lio/bidmachine/rendering/model/AnimationFunctionType;->Companion:Lio/bidmachine/rendering/model/AnimationFunctionType$a;

    .line 75
    .line 76
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;->getFunction()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v4, v5}, Lio/bidmachine/rendering/model/AnimationFunctionType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 81
    .line 82
    .line 83
    move-result-object v7

    .line 84
    invoke-static {v1}, Lbm/e0;->j(Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;)J

    .line 85
    .line 86
    .line 87
    move-result-wide v8

    .line 88
    const/4 v10, 0x0

    .line 89
    move-object v4, v3

    .line 90
    move-object v5, v2

    .line 91
    invoke-direct/range {v4 .. v10}, Lrq/d;-><init>(Lio/bidmachine/rendering/model/AnimationEventType;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationFunctionType;JLio/bidmachine/rendering/model/AnimationDirectionType;)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style;->hasSlide()Z

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    if-eqz v3, :cond_0

    .line 100
    .line 101
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Style;->getSlide()Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$SlideAnimationOption;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    const-string v3, "style.slide"

    .line 106
    .line 107
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$SlideAnimationOption;->getTiming()Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    const-string v4, "slideAnimationOption.timing"

    .line 115
    .line 116
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    new-instance v11, Lrq/d;

    .line 120
    .line 121
    sget-object v6, Lio/bidmachine/rendering/model/AnimationStyleType;->Slide:Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 122
    .line 123
    sget-object v4, Lio/bidmachine/rendering/model/AnimationFunctionType;->Companion:Lio/bidmachine/rendering/model/AnimationFunctionType$a;

    .line 124
    .line 125
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;->getFunction()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v4, v5}, Lio/bidmachine/rendering/model/AnimationFunctionType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    invoke-static {v3}, Lbm/e0;->j(Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$Timing;)J

    .line 134
    .line 135
    .line 136
    move-result-wide v8

    .line 137
    sget-object v3, Lio/bidmachine/rendering/model/AnimationDirectionType;->Companion:Lio/bidmachine/rendering/model/AnimationDirectionType$a;

    .line 138
    .line 139
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$AdaptiveAnimation$SlideAnimationOption;->getDirection()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v3, v1}, Lio/bidmachine/rendering/model/AnimationDirectionType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    move-object v4, v11

    .line 148
    move-object v5, v2

    .line 149
    invoke-direct/range {v4 .. v10}, Lrq/d;-><init>(Lio/bidmachine/rendering/model/AnimationEventType;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationFunctionType;JLio/bidmachine/rendering/model/AnimationDirectionType;)V

    .line 150
    .line 151
    .line 152
    move-object v3, v11

    .line 153
    :goto_1
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_3
    return-object v0
.end method

.method private final v(Lio/bidmachine/protobuf/rendering/Rendering$Background;)Lrq/f;
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_5

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->hasColor()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->getColor()Lio/bidmachine/protobuf/rendering/Rendering$Color;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {p0, v1}, Lbm/u;->C(Lio/bidmachine/protobuf/rendering/Rendering$Color;)Lrq/o;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    new-instance v0, Lrq/p;

    .line 28
    .line 29
    invoke-direct {v0, v1}, Lrq/p;-><init>(Lrq/o;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    new-instance v1, Lbm/e;

    .line 34
    .line 35
    invoke-direct {v1}, Lbm/e;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->hasImage()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->getImage()Lio/bidmachine/protobuf/rendering/Rendering$Image;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {p0, v1}, Lbm/u;->P(Lio/bidmachine/protobuf/rendering/Rendering$Image;)Lrq/z;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    new-instance v0, Lrq/a0;

    .line 59
    .line 60
    invoke-direct {v0, v1}, Lrq/a0;-><init>(Lrq/z;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    new-instance v1, Lbm/l;

    .line 65
    .line 66
    invoke-direct {v1}, Lbm/l;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_4
    new-instance v1, Lbm/m;

    .line 74
    .line 75
    invoke-direct {v1}, Lbm/m;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    new-instance v1, Lrq/f;

    .line 82
    .line 83
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->getOpacity()D

    .line 84
    .line 85
    .line 86
    move-result-wide v2

    .line 87
    double-to-float v2, v2

    .line 88
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Background;->getPlaceholder()Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-direct {p0, p1}, Lbm/u;->R(Lio/bidmachine/protobuf/rendering/Rendering$Placeholder;)Lrq/i0;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {v1, v2, v0, p1}, Lrq/f;-><init>(FLrq/g;Lrq/i0;)V

    .line 97
    .line 98
    .line 99
    return-object v1

    .line 100
    :cond_5
    :goto_1
    return-object v0
.end method

.method private static final w()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BackgroundSource don\'t found. Can\'t create Color"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final x()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BackgroundSource don\'t found. Can\'t create Image"

    .line 2
    .line 3
    return-object v0
.end method

.method private static final y()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "BackgroundSource don\'t found. Set one of: color, gradient"

    .line 2
    .line 3
    return-object v0
.end method

.method private final z(Ljava/util/List;)Lrq/m;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/RenderingFeature;",
            ">;)",
            "Lrq/m;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    move-object v2, v0

    .line 26
    check-cast v2, Lio/bidmachine/protobuf/rendering/RenderingFeature;

    .line 27
    .line 28
    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/RenderingFeature;->hasBrokenCreativeDetector()Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-eqz v3, :cond_1

    .line 33
    .line 34
    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/RenderingFeature;->getBrokenCreativeDetector()Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector;->hasConfiguration()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    move-object v0, v1

    .line 46
    :goto_0
    check-cast v0, Lio/bidmachine/protobuf/rendering/RenderingFeature;

    .line 47
    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {v0}, Lio/bidmachine/protobuf/rendering/RenderingFeature;->getBrokenCreativeDetector()Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-eqz p1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector;->getConfiguration()Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    goto :goto_1

    .line 61
    :cond_3
    move-object p1, v1

    .line 62
    :goto_1
    if-nez p1, :cond_4

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getAlgorithmsList()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v2, "brokenCreativeDetectorConfiguration.algorithmsList"

    .line 70
    .line 71
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    move-object v2, v0

    .line 75
    check-cast v2, Ljava/lang/Iterable;

    .line 76
    .line 77
    new-instance v13, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_7

    .line 91
    .line 92
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    check-cast v3, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Algorithm;

    .line 97
    .line 98
    sget-object v4, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;->Companion:Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$a;

    .line 99
    .line 100
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Algorithm;->getName()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v4, v5}, Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    if-nez v4, :cond_6

    .line 109
    .line 110
    move-object v5, v1

    .line 111
    goto :goto_3

    .line 112
    :cond_6
    new-instance v5, Lrq/k;

    .line 113
    .line 114
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Algorithm;->getThreshold()D

    .line 115
    .line 116
    .line 117
    move-result-wide v6

    .line 118
    double-to-float v6, v6

    .line 119
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Algorithm;->getWeight()D

    .line 120
    .line 121
    .line 122
    move-result-wide v7

    .line 123
    double-to-float v3, v7

    .line 124
    invoke-direct {v5, v4, v6, v3}, Lrq/k;-><init>(Lio/bidmachine/rendering/model/BrokenCreativeAlgorithmType;FF)V

    .line 125
    .line 126
    .line 127
    :goto_3
    if-eqz v5, :cond_5

    .line 128
    .line 129
    invoke-interface {v13, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_7
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_8

    .line 138
    .line 139
    new-instance p1, Lbm/q;

    .line 140
    .line 141
    invoke-direct {p1}, Lbm/q;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-static {p1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 145
    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_8
    invoke-interface {v13}, Ljava/util/List;->size()I

    .line 149
    .line 150
    .line 151
    move-result v1

    .line 152
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    if-eq v1, v0, :cond_9

    .line 157
    .line 158
    new-instance v0, Lbm/r;

    .line 159
    .line 160
    invoke-direct {v0}, Lbm/r;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-static {v0}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 164
    .line 165
    .line 166
    :cond_9
    new-instance v0, Lrq/m;

    .line 167
    .line 168
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getTimeout()D

    .line 169
    .line 170
    .line 171
    move-result-wide v1

    .line 172
    double-to-long v4, v1

    .line 173
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getDownscaleFactor()D

    .line 174
    .line 175
    .line 176
    move-result-wide v6

    .line 177
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getErrorOnly()Z

    .line 178
    .line 179
    .line 180
    move-result v8

    .line 181
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getAllowDuplicate()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    sget-object v1, Lio/bidmachine/rendering/model/StopDetectorAfter;->Companion:Lio/bidmachine/rendering/model/StopDetectorAfter$a;

    .line 186
    .line 187
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getStopAfter()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Lio/bidmachine/rendering/model/StopDetectorAfter$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-nez v1, :cond_a

    .line 196
    .line 197
    sget-object v1, Lio/bidmachine/rendering/model/StopDetectorAfter;->AnyCreative:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 198
    .line 199
    :cond_a
    move-object v10, v1

    .line 200
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/RenderingFeature$BrokenCreativeDetector$Configuration;->getWeightThreshold()D

    .line 201
    .line 202
    .line 203
    move-result-wide v11

    .line 204
    move-object v3, v0

    .line 205
    invoke-direct/range {v3 .. v13}, Lrq/m;-><init>(JDZZLio/bidmachine/rendering/model/StopDetectorAfter;DLjava/util/List;)V

    .line 206
    .line 207
    .line 208
    return-object v0
.end method


# virtual methods
.method public final G(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout;)Lrq/s;
    .locals 8
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lrq/s$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lrq/s$a;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lrq/s$a;->a()Lrq/s;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout;->getConstraintsList()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v1, "layout.constraintsList"

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast p1, Ljava/lang/Iterable;

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_6

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;

    .line 39
    .line 40
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;->getSourceAnchor()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;->getTargetAnchor()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;->getTarget()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const-string v5, "constraint.target"

    .line 53
    .line 54
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;->getValue()D

    .line 58
    .line 59
    .line 60
    move-result-wide v5

    .line 61
    double-to-float v5, v5

    .line 62
    if-nez v2, :cond_1

    .line 63
    .line 64
    const/4 v6, -0x1

    .line 65
    goto :goto_1

    .line 66
    :cond_1
    sget-object v6, Lbm/u$a;->$EnumSwitchMapping$0:[I

    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 69
    .line 70
    .line 71
    move-result v7

    .line 72
    aget v6, v6, v7

    .line 73
    .line 74
    :goto_1
    packed-switch v6, :pswitch_data_0

    .line 75
    .line 76
    .line 77
    new-instance v1, Lbm/n;

    .line 78
    .line 79
    invoke-direct {v1, v2}, Lbm/n;-><init>(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)V

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Lio/bidmachine/core/a;->e(Lhr/b;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :pswitch_0
    invoke-virtual {v0, v5}, Lrq/s$a;->m(F)Lrq/s$a;

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :pswitch_1
    invoke-virtual {v0, v5}, Lrq/s$a;->l(F)Lrq/s$a;

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :pswitch_2
    invoke-static {v3}, Lbm/e0;->y(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Lio/bidmachine/rendering/model/SideType;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    new-instance v2, Lrq/n0;

    .line 101
    .line 102
    invoke-direct {v2, v1, v4}, Lrq/n0;-><init>(Lio/bidmachine/rendering/model/SideType;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v2}, Lrq/s$a;->b(Lrq/n0;)Lrq/s$a;

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {v0, v5}, Lrq/s$a;->f(F)Lrq/s$a;

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_3
    invoke-static {v3}, Lbm/e0;->y(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Lio/bidmachine/rendering/model/SideType;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    if-eqz v1, :cond_3

    .line 117
    .line 118
    new-instance v2, Lrq/n0;

    .line 119
    .line 120
    invoke-direct {v2, v1, v4}, Lrq/n0;-><init>(Lio/bidmachine/rendering/model/SideType;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v0, v2}, Lrq/s$a;->j(Lrq/n0;)Lrq/s$a;

    .line 124
    .line 125
    .line 126
    :cond_3
    invoke-virtual {v0, v5}, Lrq/s$a;->h(F)Lrq/s$a;

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :pswitch_4
    invoke-static {v3}, Lbm/e0;->y(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Lio/bidmachine/rendering/model/SideType;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    .line 136
    new-instance v2, Lrq/n0;

    .line 137
    .line 138
    invoke-direct {v2, v1, v4}, Lrq/n0;-><init>(Lio/bidmachine/rendering/model/SideType;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v2}, Lrq/s$a;->k(Lrq/n0;)Lrq/s$a;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v0, v5}, Lrq/s$a;->i(F)Lrq/s$a;

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :pswitch_5
    invoke-static {v3}, Lbm/e0;->y(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint$Anchor;)Lio/bidmachine/rendering/model/SideType;

    .line 149
    .line 150
    .line 151
    move-result-object v1

    .line 152
    if-eqz v1, :cond_5

    .line 153
    .line 154
    new-instance v2, Lrq/n0;

    .line 155
    .line 156
    invoke-direct {v2, v1, v4}, Lrq/n0;-><init>(Lio/bidmachine/rendering/model/SideType;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v2}, Lrq/s$a;->e(Lrq/n0;)Lrq/s$a;

    .line 160
    .line 161
    .line 162
    :cond_5
    invoke-virtual {v0, v5}, Lrq/s$a;->g(F)Lrq/s$a;

    .line 163
    .line 164
    .line 165
    goto/16 :goto_0

    .line 166
    .line 167
    :pswitch_6
    invoke-virtual {v0, v5}, Lrq/s$a;->c(F)Lrq/s$a;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;->getMultiplier()D

    .line 171
    .line 172
    .line 173
    move-result-wide v1

    .line 174
    double-to-float v1, v1

    .line 175
    invoke-virtual {v0, v1}, Lrq/s$a;->d(F)Lrq/s$a;

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :pswitch_7
    invoke-virtual {v0, v5}, Lrq/s$a;->n(F)Lrq/s$a;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout$Constraint;->getMultiplier()D

    .line 184
    .line 185
    .line 186
    move-result-wide v1

    .line 187
    double-to-float v1, v1

    .line 188
    invoke-virtual {v0, v1}, Lrq/s$a;->o(F)Lrq/s$a;

    .line 189
    .line 190
    .line 191
    goto/16 :goto_0

    .line 192
    .line 193
    :cond_6
    invoke-virtual {v0}, Lrq/s$a;->a()Lrq/s;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    return-object p1

    .line 198
    nop

    .line 199
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final I(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;)Lrq/u;
    .locals 4
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;->getName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lbm/e0;->r(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$EventName;)Lio/bidmachine/rendering/model/EventType;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;->getTasksList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "event.tasksList"

    .line 27
    .line 28
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast v0, Ljava/lang/Iterable;

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_3

    .line 47
    .line 48
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    .line 53
    .line 54
    invoke-virtual {p0, v3}, Lbm/u;->J(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lrq/v;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    if-eqz v3, :cond_2

    .line 59
    .line 60
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    new-instance v0, Lrq/u;

    .line 65
    .line 66
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;->getSource()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v3, "event.source"

    .line 71
    .line 72
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-direct {v0, v1, p1, v2}, Lrq/u;-><init>(Lio/bidmachine/rendering/model/EventType;Ljava/lang/String;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    :cond_4
    :goto_1
    return-object v0
.end method

.method public final J(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;)Lrq/v;
    .locals 5
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getName()Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lbm/e0;->p(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task$TaskName;)Lio/bidmachine/rendering/model/EventTaskType;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_1
    new-instance v0, Lrq/v;

    .line 23
    .line 24
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getTarget()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "task.target"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getValue()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event$Task;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v4, "task.stateGroupsList"

    .line 42
    .line 43
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {v0, v1, v2, v3, p1}, Lrq/v;-><init>(Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final Q(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Measurer;",
            ">;)",
            "Ljava/util/List<",
            "Lrq/c0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    const/16 v1, 0xa

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_1

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Measurer;

    .line 41
    .line 42
    new-instance v2, Lrq/c0;

    .line 43
    .line 44
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Measurer;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    const-string v4, "it.name"

    .line 49
    .line 50
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Measurer;->getParametersMap()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-direct {v2, v3, v1}, Lrq/c0;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    return-object v0

    .line 65
    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 66
    return-object p1
.end method

.method public final W()Lrq/b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lbm/u;->b:Lrq/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public X(Lxq/c;)Z
    .locals 1
    .param p1    # Lxq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lbm/u;->b:Lrq/b;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string v0, "rendering_configuration"

    .line 11
    .line 12
    invoke-static {v0}, Lfr/a;->k(Ljava/lang/String;)Lfr/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {p1, v0}, Lxq/c;->onAdLoadFailed(Lfr/a;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public final q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;Lqq/b;)Lrq/a;
    .locals 18
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lqq/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_3

    .line 7
    .line 8
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    if-ne v1, v3, :cond_0

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getType()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-static {v3}, Lbm/e0;->k(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$ViewComponentType;)Lio/bidmachine/rendering/model/AdElementType;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    if-nez v5, :cond_1

    .line 25
    .line 26
    return-object v2

    .line 27
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getText()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    const-string v4, "it"

    .line 32
    .line 33
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-lez v4, :cond_2

    .line 41
    .line 42
    move-object v10, v3

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    move-object v10, v2

    .line 45
    :goto_0
    new-instance v2, Lrq/a;

    .line 46
    .line 47
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v6

    .line 51
    const-string v3, "viewComponent.name"

    .line 52
    .line 53
    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getResource()Lio/bidmachine/protobuf/rendering/Rendering$Resource;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-direct {v0, v3}, Lbm/u;->T(Lio/bidmachine/protobuf/rendering/Rendering$Resource;)Lrq/k0;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getSource()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v8

    .line 68
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getPlaceholder()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v9

    .line 72
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getLayout()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Lbm/u;->G(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Layout;)Lrq/s;

    .line 77
    .line 78
    .line 79
    move-result-object v11

    .line 80
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getAppearance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Lbm/u;->u(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;)Lrq/e;

    .line 85
    .line 86
    .line 87
    move-result-object v12

    .line 88
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getCustomParamsMap()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v13

    .line 92
    const-string v3, "viewComponent.customParamsMap"

    .line 93
    .line 94
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getAppearance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getAnimationsList()Ljava/util/List;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    const-string v4, "viewComponent.appearance.animationsList"

    .line 106
    .line 107
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {v0, v3}, Lbm/u;->t(Ljava/util/List;)Ljava/util/Map;

    .line 111
    .line 112
    .line 113
    move-result-object v14

    .line 114
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getMeasurersList()Ljava/util/List;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-virtual {v0, v3}, Lbm/u;->Q(Ljava/util/List;)Ljava/util/List;

    .line 119
    .line 120
    .line 121
    move-result-object v16

    .line 122
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;->getFeaturesList()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v3, "viewComponent.featuresList"

    .line 127
    .line 128
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-direct {v0, v1}, Lbm/u;->z(Ljava/util/List;)Lrq/m;

    .line 132
    .line 133
    .line 134
    move-result-object v17

    .line 135
    move-object v4, v2

    .line 136
    move-object/from16 v15, p2

    .line 137
    .line 138
    invoke-direct/range {v4 .. v17}, Lrq/a;-><init>(Lio/bidmachine/rendering/model/AdElementType;Ljava/lang/String;Lrq/k0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrq/s;Lrq/e;Ljava/util/Map;Ljava/util/Map;Lqq/b;Ljava/util/List;Lrq/m;)V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    return-object v2
.end method

.method public final r(Lio/bidmachine/protobuf/rendering/Rendering;Lrq/q0;)Lrq/b;
    .locals 4
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/q0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "rendering"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "visibilityParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcm/a;

    .line 12
    .line 13
    invoke-direct {v0}, Lcm/a;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Lrq/b$a;

    .line 17
    .line 18
    invoke-direct {v1}, Lrq/b$a;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering;->getOrientation()Lio/bidmachine/protobuf/rendering/Rendering$Orientation;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Lbm/e0;->t(Lio/bidmachine/protobuf/rendering/Rendering$Orientation;)Lio/bidmachine/rendering/model/Orientation;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v1, v2}, Lrq/b$a;->f(Lio/bidmachine/rendering/model/Orientation;)Lrq/b$a;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {p0, v2}, Lbm/u;->v(Lio/bidmachine/protobuf/rendering/Rendering$Background;)Lrq/f;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Lrq/b$a;->c(Lrq/f;)Lrq/b$a;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1, p2}, Lrq/b$a;->h(Lrq/q0;)Lrq/b$a;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering;->getCustomParamsMap()Ljava/util/Map;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {p2, v1}, Lrq/b$a;->e(Ljava/util/Map;)Lrq/b$a;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering;->getCacheType()Lio/bidmachine/protobuf/rendering/Rendering$CacheType;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lbm/e0;->m(Lio/bidmachine/protobuf/rendering/Rendering$CacheType;)Lio/bidmachine/rendering/model/CacheType;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    .line 67
    invoke-virtual {p2, v1}, Lrq/b$a;->d(Lio/bidmachine/rendering/model/CacheType;)Lrq/b$a;

    .line 68
    .line 69
    .line 70
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering;->getPhasesList()Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    const-string v1, "rendering.phasesList"

    .line 75
    .line 76
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    check-cast p1, Ljava/util/Collection;

    .line 80
    .line 81
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    const/4 v2, 0x1

    .line 90
    if-le v1, v2, :cond_1

    .line 91
    .line 92
    new-instance v1, Lbm/u$b;

    .line 93
    .line 94
    invoke-direct {v1}, Lbm/u$b;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    .line 99
    .line 100
    :cond_1
    check-cast p1, Ljava/lang/Iterable;

    .line 101
    .line 102
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    if-eqz v1, :cond_4

    .line 111
    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 117
    .line 118
    invoke-virtual {p0, v1, v0}, Lbm/u;->s(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Lqq/b;)Lrq/c;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    if-nez v2, :cond_2

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getSequence()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    const/4 v3, -0x1

    .line 130
    if-ne v1, v3, :cond_3

    .line 131
    .line 132
    invoke-virtual {p2, v2}, Lrq/b$a;->g(Lrq/c;)Lrq/b$a;

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    invoke-virtual {p2, v2}, Lrq/b$a;->a(Lrq/c;)Lrq/b$a;

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_4
    invoke-virtual {p2}, Lrq/b$a;->b()Lrq/b;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    return-object p1
.end method

.method public final s(Lio/bidmachine/protobuf/rendering/Rendering$Phase;Lqq/b;)Lrq/c;
    .locals 3
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering$Phase;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lqq/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_9

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_4

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lrq/c$a;

    .line 12
    .line 13
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getSequence()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-direct {v0, v1}, Lrq/c$a;-><init>(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {p0, v1}, Lbm/u;->v(Lio/bidmachine/protobuf/rendering/Rendering$Background;)Lrq/f;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lrq/c$a;->g(Lrq/f;)Lrq/c$a;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAnimationsList()Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "phase.animationsList"

    .line 37
    .line 38
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v1}, Lbm/u;->t(Ljava/util/List;)Ljava/util/Map;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {v1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1}, Lrq/c$a;->f(Ljava/util/Map;)Lrq/c$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getStateGroupsList()Lcom/explorestack/protobuf/m1;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v2, "phase.stateGroupsList"

    .line 58
    .line 59
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lrq/c$a;->j(Ljava/util/List;)Lrq/c$a;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getCustomParamsMap()Ljava/util/Map;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v0, v1}, Lrq/c$a;->i(Ljava/util/Map;)Lrq/c$a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getBackgroundColor()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-static {v1}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    if-eqz v1, :cond_1

    .line 87
    .line 88
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    invoke-virtual {v0, v1}, Lrq/c$a;->h(I)Lrq/c$a;

    .line 93
    .line 94
    .line 95
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getAdsList()Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "phase.adsList"

    .line 100
    .line 101
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    check-cast v1, Ljava/lang/Iterable;

    .line 105
    .line 106
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_3

    .line 115
    .line 116
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;

    .line 121
    .line 122
    invoke-virtual {p0, v2, p2}, Lbm/u;->q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;Lqq/b;)Lrq/a;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    if-nez v2, :cond_2

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_2
    invoke-virtual {v0, v2}, Lrq/c$a;->a(Lrq/a;)Lrq/c$a;

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getControlsList()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    const-string v2, "phase.controlsList"

    .line 138
    .line 139
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    check-cast v1, Ljava/lang/Iterable;

    .line 143
    .line 144
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_5

    .line 153
    .line 154
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;

    .line 159
    .line 160
    invoke-virtual {p0, v2, p2}, Lbm/u;->q(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent;Lqq/b;)Lrq/a;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    if-nez v2, :cond_4

    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {v0, v2}, Lrq/c$a;->b(Lrq/a;)Lrq/c$a;

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getEventsList()Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p2

    .line 175
    const-string v1, "phase.eventsList"

    .line 176
    .line 177
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    check-cast p2, Ljava/lang/Iterable;

    .line 181
    .line 182
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    if-eqz v1, :cond_7

    .line 191
    .line 192
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    check-cast v1, Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;

    .line 197
    .line 198
    invoke-virtual {p0, v1}, Lbm/u;->I(Lio/bidmachine/protobuf/rendering/Rendering$Phase$Event;)Lrq/u;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-nez v1, :cond_6

    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_6
    invoke-virtual {v0, v1}, Lrq/c$a;->c(Lrq/u;)Lrq/c$a;

    .line 206
    .line 207
    .line 208
    goto :goto_2

    .line 209
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase;->getMethodsList()Ljava/util/List;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    const-string p2, "phase.methodsList"

    .line 214
    .line 215
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    check-cast p1, Ljava/lang/Iterable;

    .line 219
    .line 220
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 225
    .line 226
    .line 227
    move-result p2

    .line 228
    if-eqz p2, :cond_8

    .line 229
    .line 230
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    check-cast p2, Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;

    .line 235
    .line 236
    new-instance v1, Lrq/d0;

    .line 237
    .line 238
    invoke-virtual {p2}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$MethodComponent;->getName()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    const-string v2, "methodComponent.name"

    .line 243
    .line 244
    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    invoke-direct {v1, p2}, Lrq/d0;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Lrq/c$a;->d(Lrq/d0;)Lrq/c$a;

    .line 251
    .line 252
    .line 253
    goto :goto_3

    .line 254
    :cond_8
    invoke-virtual {v0}, Lrq/c$a;->e()Lrq/c;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    return-object p1

    .line 259
    :cond_9
    :goto_4
    const/4 p1, 0x0

    .line 260
    return-object p1
.end method

.method public final u(Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;)Lrq/e;
    .locals 41
    .param p1    # Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getDefaultInstance()Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lrq/e;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getBackground()Lio/bidmachine/protobuf/rendering/Rendering$Background;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object/from16 v15, p0

    .line 20
    .line 21
    invoke-direct {v15, v2}, Lbm/u;->v(Lio/bidmachine/protobuf/rendering/Rendering$Background;)Lrq/f;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getBackgroundColor()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getVisible()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getClickable()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getOpacity()D

    .line 50
    .line 51
    .line 52
    move-result-wide v7

    .line 53
    double-to-float v2, v7

    .line 54
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v7

    .line 58
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getFontSize()D

    .line 59
    .line 60
    .line 61
    move-result-wide v8

    .line 62
    double-to-float v2, v8

    .line 63
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    sget-object v2, Lio/bidmachine/rendering/model/FontStyleType;->Companion:Lio/bidmachine/rendering/model/FontStyleType$a;

    .line 68
    .line 69
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getFontStyle()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v9

    .line 73
    invoke-virtual {v2, v9}, Lio/bidmachine/rendering/model/FontStyleType$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/FontStyleType;

    .line 74
    .line 75
    .line 76
    move-result-object v9

    .line 77
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getOutlined()Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 82
    .line 83
    .line 84
    move-result-object v10

    .line 85
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getStrokeWidth()D

    .line 86
    .line 87
    .line 88
    move-result-wide v11

    .line 89
    double-to-float v2, v11

    .line 90
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getStrokeColor()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    invoke-static {v2}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v12

    .line 102
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getFillColor()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    invoke-static {v2}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object v13

    .line 110
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getShadowColor()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-static {v2}, Lyq/r;->r(Ljava/lang/String;)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    sget-object v2, Lrq/g0;->e:Lrq/g0$a;

    .line 119
    .line 120
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getPadding()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v2, v0}, Lrq/g0$a;->a(Ljava/lang/String;)Lrq/g0;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    move-object/from16 v16, v14

    .line 129
    .line 130
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getCornerRadius()D

    .line 131
    .line 132
    .line 133
    move-result-wide v14

    .line 134
    double-to-float v2, v14

    .line 135
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 136
    .line 137
    .line 138
    move-result-object v17

    .line 139
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getTextNumberOfLines()I

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v18

    .line 147
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getTextLineSpacing()D

    .line 148
    .line 149
    .line 150
    move-result-wide v14

    .line 151
    double-to-float v2, v14

    .line 152
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 153
    .line 154
    .line 155
    move-result-object v19

    .line 156
    sget-object v2, Lio/bidmachine/rendering/model/HorizontalGravity;->Companion:Lio/bidmachine/rendering/model/HorizontalGravity$a;

    .line 157
    .line 158
    invoke-virtual/range {p1 .. p1}, Lio/bidmachine/protobuf/rendering/Rendering$Phase$ViewComponent$Appearance;->getTextAlignment()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v14

    .line 162
    invoke-virtual {v2, v14}, Lio/bidmachine/rendering/model/HorizontalGravity$a;->a(Ljava/lang/String;)Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    if-nez v2, :cond_1

    .line 167
    .line 168
    sget-object v2, Lio/bidmachine/rendering/model/HorizontalGravity;->Center:Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 169
    .line 170
    :cond_1
    move-object/from16 v20, v2

    .line 171
    .line 172
    move-object v2, v1

    .line 173
    move-object/from16 v14, v16

    .line 174
    .line 175
    move-object v15, v0

    .line 176
    move-object/from16 v16, v17

    .line 177
    .line 178
    move-object/from16 v17, v18

    .line 179
    .line 180
    move-object/from16 v18, v19

    .line 181
    .line 182
    move-object/from16 v19, v20

    .line 183
    .line 184
    invoke-direct/range {v2 .. v19}, Lrq/e;-><init>(Lrq/f;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Lio/bidmachine/rendering/model/FontStyleType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lrq/g0;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Lio/bidmachine/rendering/model/HorizontalGravity;)V

    .line 185
    .line 186
    .line 187
    return-object v1

    .line 188
    :cond_2
    :goto_0
    new-instance v0, Lrq/e;

    .line 189
    .line 190
    move-object/from16 v21, v0

    .line 191
    .line 192
    const v39, 0x1ffff

    .line 193
    .line 194
    .line 195
    const/16 v40, 0x0

    .line 196
    .line 197
    const/16 v22, 0x0

    .line 198
    .line 199
    const/16 v23, 0x0

    .line 200
    .line 201
    const/16 v24, 0x0

    .line 202
    .line 203
    const/16 v25, 0x0

    .line 204
    .line 205
    const/16 v26, 0x0

    .line 206
    .line 207
    const/16 v27, 0x0

    .line 208
    .line 209
    const/16 v28, 0x0

    .line 210
    .line 211
    const/16 v29, 0x0

    .line 212
    .line 213
    const/16 v30, 0x0

    .line 214
    .line 215
    const/16 v31, 0x0

    .line 216
    .line 217
    const/16 v32, 0x0

    .line 218
    .line 219
    const/16 v33, 0x0

    .line 220
    .line 221
    const/16 v34, 0x0

    .line 222
    .line 223
    const/16 v35, 0x0

    .line 224
    .line 225
    const/16 v36, 0x0

    .line 226
    .line 227
    const/16 v37, 0x0

    .line 228
    .line 229
    const/16 v38, 0x0

    .line 230
    .line 231
    invoke-direct/range {v21 .. v40}, Lrq/e;-><init>(Lrq/f;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Float;Lio/bidmachine/rendering/model/FontStyleType;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lrq/g0;Ljava/lang/Float;Ljava/lang/Integer;Ljava/lang/Float;Lio/bidmachine/rendering/model/HorizontalGravity;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 232
    .line 233
    .line 234
    return-object v0
.end method
