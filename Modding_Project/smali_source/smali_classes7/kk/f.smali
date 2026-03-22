.class public final Lkk/f;
.super Ljava/lang/Object;
.source "FrescoUtil.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkk/f$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFrescoUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FrescoUtil.kt\ncom/startshorts/androidplayer/utils/fresco/FrescoUtil\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,408:1\n1863#2,2:409\n*S KotlinDebug\n*F\n+ 1 FrescoUtil.kt\ncom/startshorts/androidplayer/utils/fresco/FrescoUtil\n*L\n305#1:409,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lkk/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkk/f$a;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final e:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lkk/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lkk/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lkk/f;->a:Lkk/f;

    .line 7
    .line 8
    new-instance v0, Lkk/c;

    .line 9
    .line 10
    invoke-direct {v0}, Lkk/c;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lkk/f;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lkk/d;

    .line 20
    .line 21
    invoke-direct {v0}, Lkk/d;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lkk/f;->c:Lms/i;

    .line 29
    .line 30
    new-instance v0, Ljava/lang/Object;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lkk/f;->e:Ljava/lang/Object;

    .line 36
    .line 37
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

.method public static synthetic a()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lkk/f;->q()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lf2/a;Lf2/a;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkk/f;->t(Lf2/a;Lf2/a;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lkk/f;->p()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lkk/f;->b:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic e()Lms/i;
    .locals 1

    .line 1
    sget-object v0, Lkk/f;->c:Lms/i;

    .line 2
    .line 3
    return-object v0
.end method

.method private final k(Lcom/facebook/imagepipeline/request/ImageRequest;Lf3/a;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lf3/a;
    .locals 2

    .line 1
    invoke-static {}, Lkk/a;->g()Lv2/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->C(Ljava/lang/Object;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->E(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getAutoPlayAnim()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->z(Z)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->D(Lf3/a;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getControllerListener()Lz2/a;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-eqz p2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getControllerListener()Lz2/a;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->B(Lz2/b;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p2, Lkk/f$b;

    .line 37
    .line 38
    invoke-direct {p2, p1}, Lkk/f$b;-><init>(Lcom/facebook/imagepipeline/request/ImageRequest;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->B(Lz2/b;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 42
    .line 43
    .line 44
    :goto_0
    const-string p1, "apply(...)"

    .line 45
    .line 46
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->c()Lcom/facebook/drawee/controller/a;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "build(...)"

    .line 54
    .line 55
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    return-object p1
.end method

.method private static final p()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private static final q()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final s(Lf2/a;)Lk2/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf2/a;",
            ")",
            "Lk2/i<",
            "Lf2/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkk/e;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lkk/e;-><init>(Lf2/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final t(Lf2/a;Lf2/a;)Z
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0
.end method

.method public static synthetic v(Lkk/f;Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x2

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    invoke-static {}, Li2/i;->g()Li2/i;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    :cond_0
    and-int/lit8 p4, p4, 0x4

    .line 10
    .line 11
    if-eqz p4, :cond_1

    .line 12
    .line 13
    const/4 p3, 0x0

    .line 14
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lkk/f;->u(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static synthetic x(Lkk/f;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2}, Lkk/f;->w(Ljava/util/List;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final z(Lcom/facebook/drawee/generic/a;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getScaleType()Lc3/q;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getScaleType()Lc3/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->s(Lc3/q;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    if-eqz p1, :cond_1

    .line 18
    .line 19
    sget-object v0, Lc3/q;->i:Lc3/q;

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->s(Lc3/q;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderResId()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderResId()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderScaleType()Lc3/q;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderScaleType()Lc3/q;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    sget-object v1, Lc3/q;->i:Lc3/q;

    .line 48
    .line 49
    :goto_1
    invoke-virtual {p1, v0, v1}, Lcom/facebook/drawee/generic/a;->y(ILc3/q;)V

    .line 50
    .line 51
    .line 52
    :cond_3
    if-eqz p1, :cond_4

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderResId()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->v(I)V

    .line 59
    .line 60
    .line 61
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getCircleCrop()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/4 v1, 0x0

    .line 66
    if-eqz v0, :cond_7

    .line 67
    .line 68
    invoke-static {}, Lcom/facebook/drawee/generic/RoundingParams;->a()Lcom/facebook/drawee/generic/RoundingParams;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v2, "asCircle(...)"

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderWidth()F

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    cmpl-float v2, v2, v1

    .line 82
    .line 83
    if-lez v2, :cond_5

    .line 84
    .line 85
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderWidth()F

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/RoundingParams;->o(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 90
    .line 91
    .line 92
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderColor()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    if-eqz v2, :cond_6

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderColor()I

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    invoke-virtual {v0, v2}, Lcom/facebook/drawee/generic/RoundingParams;->n(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 103
    .line 104
    .line 105
    :cond_6
    if-eqz p1, :cond_7

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->B(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 108
    .line 109
    .line 110
    :cond_7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getCornerTransform()Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    if-eqz v0, :cond_8

    .line 121
    .line 122
    if-eqz p1, :cond_b

    .line 123
    .line 124
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getRoundingParams()Lcom/facebook/drawee/generic/RoundingParams;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->B(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 129
    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_8
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getCornerRadius()F

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    invoke-static {v0}, Lcom/facebook/drawee/generic/RoundingParams;->b(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    const-string v2, "fromCornersRadius(...)"

    .line 141
    .line 142
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderWidth()F

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    cmpl-float v1, v2, v1

    .line 150
    .line 151
    if-lez v1, :cond_9

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderWidth()F

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/RoundingParams;->o(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 158
    .line 159
    .line 160
    :cond_9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderColor()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-eqz v1, :cond_a

    .line 165
    .line 166
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getBorderColor()I

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/RoundingParams;->n(I)Lcom/facebook/drawee/generic/RoundingParams;

    .line 171
    .line 172
    .line 173
    :cond_a
    if-eqz p1, :cond_b

    .line 174
    .line 175
    invoke-virtual {p1, v0}, Lcom/facebook/drawee/generic/a;->B(Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 176
    .line 177
    .line 178
    :cond_b
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getFadeDuration()I

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    if-ltz v0, :cond_c

    .line 183
    .line 184
    if-eqz p1, :cond_c

    .line 185
    .line 186
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getFadeDuration()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/generic/a;->u(I)V

    .line 191
    .line 192
    .line 193
    :cond_c
    return-void
.end method


# virtual methods
.method public final A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_2

    .line 7
    .line 8
    invoke-virtual {p0}, Lkk/f;->g()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Lf3/b;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 20
    .line 21
    invoke-direct {p0, v0, p2}, Lkk/f;->z(Lcom/facebook/drawee/generic/a;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, p2}, Lkk/f;->m(Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getController()Lf3/a;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-direct {p0, v0, v1, p2}, Lkk/f;->k(Lcom/facebook/imagepipeline/request/ImageRequest;Lf3/a;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lf3/a;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Lf3/a;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-object v0

    .line 42
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 43
    return-object p1
.end method

.method public final f(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "FrescoUtil"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    sget-object v0, Lkk/f;->e:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkk/f;->d:Ljava/lang/Boolean;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    sget-object v1, Lud/b;->a:Lud/b;

    .line 9
    .line 10
    invoke-virtual {v1}, Lud/b;->C0()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sput-object v1, Lkk/f;->d:Ljava/lang/Boolean;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    sget-object v1, Lkk/f;->d:Ljava/lang/Boolean;

    .line 24
    .line 25
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    monitor-exit v0

    .line 32
    return v1

    .line 33
    :goto_1
    monitor-exit v0

    .line 34
    throw v1
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Ljk/v;->g(Ljava/lang/String;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public final i(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lid/a;->a:Lid/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "evictFromBitmapCache -> "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lkk/f;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, p1, v1}, Lt3/r;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lkk/a;->b()Lt3/v;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lt3/v;->e()Lr3/t;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Lkk/f;->s(Lf2/a;)Lk2/i;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lr3/t;->b(Lk2/i;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final j(Lcom/facebook/imagepipeline/request/ImageRequest;)V
    .locals 2
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lid/a;->a:Lid/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "evictFromEncodedCache -> "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, v0}, Lkk/f;->n(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 43
    .line 44
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, p1, v1}, Lt3/r;->i(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lf2/a;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-static {}, Lkk/a;->b()Lt3/v;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lt3/v;->h()Lr3/t;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    sget-object v1, Lkk/f;->a:Lkk/f;

    .line 63
    .line 64
    invoke-direct {v1, p1}, Lkk/f;->s(Lf2/a;)Lk2/i;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lr3/t;->b(Lk2/i;)I

    .line 69
    .line 70
    .line 71
    :cond_1
    return-void
.end method

.method public final l(Lcom/facebook/datasource/b;)Ljava/lang/String;
    .locals 1
    .param p1    # Lcom/facebook/datasource/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/datasource/b<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/facebook/datasource/b;->b()Ljava/lang/Throwable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {p1}, Lcom/facebook/datasource/b;->b()Ljava/lang/Throwable;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_1

    .line 21
    :cond_1
    const/4 p1, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_2
    :goto_0
    const-string p1, ""

    .line 24
    .line 25
    :goto_1
    return-object p1
.end method

.method public final m(Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lid/a;->a:Lid/a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0x29

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v3, "ossWidth("

    .line 22
    .line 23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssWidth()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, ") ossHeight("

    .line 34
    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssHeight()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v3, ") resizeWidth("

    .line 46
    .line 47
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getResizeWidth()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v3, ") resizeHeight("

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getResizeHeight()I

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {p0, v1}, Lkk/f;->n(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v3, 0x0

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getUrl()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v4

    .line 99
    if-nez v4, :cond_2

    .line 100
    .line 101
    const-string v4, ""

    .line 102
    .line 103
    :cond_2
    invoke-virtual {v1, v4}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    goto :goto_1

    .line 108
    :cond_3
    :goto_0
    move-object v1, v3

    .line 109
    :goto_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getUri()Landroid/net/Uri;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    if-eqz v1, :cond_4

    .line 114
    .line 115
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-nez v5, :cond_6

    .line 120
    .line 121
    :cond_4
    if-nez v4, :cond_6

    .line 122
    .line 123
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderResId()I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    if-eqz v4, :cond_5

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getPlaceholderResId()I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    invoke-static {v4}, Lr2/d;->g(I)Landroid/net/Uri;

    .line 134
    .line 135
    .line 136
    move-result-object v4

    .line 137
    goto :goto_2

    .line 138
    :cond_5
    const-string p1, "getImageRequest failed -> targetUrl is empty or targetUri is null"

    .line 139
    .line 140
    invoke-virtual {p0, p1}, Lkk/f;->f(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    return-object v3

    .line 144
    :cond_6
    :goto_2
    if-eqz v1, :cond_f

    .line 145
    .line 146
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 147
    .line 148
    .line 149
    move-result v5

    .line 150
    if-nez v5, :cond_7

    .line 151
    .line 152
    goto/16 :goto_4

    .line 153
    .line 154
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssProcess()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_d

    .line 167
    .line 168
    invoke-virtual {p0, v1}, Lkk/f;->h(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v5

    .line 172
    if-eqz v5, :cond_d

    .line 173
    .line 174
    const-string v5, "?auth_key="

    .line 175
    .line 176
    const/4 v6, 0x0

    .line 177
    const/4 v7, 0x2

    .line 178
    invoke-static {v1, v5, v6, v7, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v5

    .line 182
    if-eqz v5, :cond_8

    .line 183
    .line 184
    const-string v5, "&"

    .line 185
    .line 186
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    goto :goto_3

    .line 190
    :cond_8
    const-string v5, "?"

    .line 191
    .line 192
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    :goto_3
    const-string v5, "process=mediagate"

    .line 196
    .line 197
    invoke-static {v1, v5, v6, v7, v3}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-nez v1, :cond_9

    .line 202
    .line 203
    const-string v1, "process=mediagate&"

    .line 204
    .line 205
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    :cond_9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssWidth()I

    .line 209
    .line 210
    .line 211
    move-result v1

    .line 212
    if-gtz v1, :cond_a

    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssHeight()I

    .line 215
    .line 216
    .line 217
    move-result v1

    .line 218
    if-lez v1, :cond_b

    .line 219
    .line 220
    :cond_a
    const-string v1, "x-oss-process=m_fill"

    .line 221
    .line 222
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    :cond_b
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssWidth()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-lez v1, :cond_c

    .line 230
    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v3, ",w_"

    .line 237
    .line 238
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssWidth()I

    .line 242
    .line 243
    .line 244
    move-result v3

    .line 245
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    :cond_c
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssHeight()I

    .line 256
    .line 257
    .line 258
    move-result v1

    .line 259
    if-lez v1, :cond_d

    .line 260
    .line 261
    new-instance v1, Ljava/lang/StringBuilder;

    .line 262
    .line 263
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .line 265
    .line 266
    const-string v3, ",h_"

    .line 267
    .line 268
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getOssHeight()I

    .line 272
    .line 273
    .line 274
    move-result v3

    .line 275
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    :cond_d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    const-string v3, "toString(...)"

    .line 290
    .line 291
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 295
    .line 296
    .line 297
    move-result v0

    .line 298
    if-eqz v0, :cond_e

    .line 299
    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v3, "url("

    .line 306
    .line 307
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v0

    .line 320
    invoke-virtual {p0, v0}, Lkk/f;->n(Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    :cond_e
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    invoke-static {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    goto :goto_5

    .line 332
    :cond_f
    :goto_4
    invoke-virtual {v0}, Lid/a;->c()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_10

    .line 337
    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    .line 339
    .line 340
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 341
    .line 342
    .line 343
    const-string v1, "uri("

    .line 344
    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    .line 347
    .line 348
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    .line 353
    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object v0

    .line 358
    invoke-virtual {p0, v0}, Lkk/f;->n(Ljava/lang/String;)V

    .line 359
    .line 360
    .line 361
    :cond_10
    invoke-static {v4}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->x(Landroid/net/Uri;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    :goto_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getResizeWidth()I

    .line 366
    .line 367
    .line 368
    move-result v1

    .line 369
    if-lez v1, :cond_11

    .line 370
    .line 371
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getResizeHeight()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-lez v1, :cond_11

    .line 376
    .line 377
    new-instance v1, Ls3/f;

    .line 378
    .line 379
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getResizeWidth()I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getResizeHeight()I

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    const/16 v7, 0xc

    .line 388
    .line 389
    const/4 v8, 0x0

    .line 390
    const/4 v5, 0x0

    .line 391
    const/4 v6, 0x0

    .line 392
    move-object v2, v1

    .line 393
    invoke-direct/range {v2 .. v8}, Ls3/f;-><init>(IIFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->M(Ls3/f;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 397
    .line 398
    .line 399
    :cond_11
    sget-object v1, Ls3/g;->c:Ls3/g$a;

    .line 400
    .line 401
    invoke-virtual {v1}, Ls3/g$a;->a()Ls3/g;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    invoke-virtual {v0, v1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->O(Ls3/g;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 406
    .line 407
    .line 408
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getIterativeBoxBlurPostProcessor()Ld4/a;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    if-eqz v1, :cond_12

    .line 413
    .line 414
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->getIterativeBoxBlurPostProcessor()Ld4/a;

    .line 415
    .line 416
    .line 417
    move-result-object p1

    .line 418
    invoke-virtual {v0, p1}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->I(Le4/b;)Lcom/facebook/imagepipeline/request/ImageRequestBuilder;

    .line 419
    .line 420
    .line 421
    :cond_12
    invoke-virtual {v0}, Lcom/facebook/imagepipeline/request/ImageRequestBuilder;->a()Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    return-object p1
.end method

.method public final n(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "info"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "FrescoUtil"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final o(Lcom/facebook/imagepipeline/request/ImageRequest;)Z
    .locals 1
    .param p1    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "request"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lkk/f;->g()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    return p1

    .line 14
    :cond_0
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0, p1}, Lt3/r;->l(Lcom/facebook/imagepipeline/request/ImageRequest;)Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public final r()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkk/f;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lt3/r;->n()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lt3/r;->o()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "pauseImageLoad failed -> "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "FrescoUtil"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method

.method public final u(Ljava/util/List;Ljava/util/concurrent/Executor;Lkotlin/jvm/functions/Function1;)V
    .locals 6
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "imageRequests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "executor"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lkk/f;->g()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    if-eqz p3, :cond_0

    .line 18
    .line 19
    new-instance p1, Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void

    .line 28
    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 32
    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    move-object v2, p1

    .line 40
    check-cast v2, Ljava/lang/Iterable;

    .line 41
    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-eqz v3, :cond_2

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 57
    .line 58
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    sget-object v5, Lfk/u;->a:Lfk/u;

    .line 63
    .line 64
    invoke-virtual {v5}, Lfk/u;->b()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v4, v3, v5}, Lt3/r;->d(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;)Lcom/facebook/datasource/b;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    new-instance v4, Lkk/f$c;

    .line 73
    .line 74
    invoke-direct {v4, v1, v0, p1, p3}, Lkk/f$c;-><init>(Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 75
    .line 76
    .line 77
    invoke-interface {v3, v4, p2}, Lcom/facebook/datasource/b;->c(Lcom/facebook/datasource/d;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception p1

    .line 82
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 83
    .line 84
    new-instance p3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v0, "prefetchToBitmapCache exception -> "

    .line 90
    .line 91
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    const-string p3, "FrescoUtil"

    .line 106
    .line 107
    invoke-virtual {p2, p3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :cond_2
    return-void
.end method

.method public final w(Ljava/util/List;Z)V
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/facebook/imagepipeline/request/ImageRequest;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "imageRequests"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Lkk/f;->g()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 21
    .line 22
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

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
    if-eqz v1, :cond_2

    .line 35
    .line 36
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/facebook/imagepipeline/request/ImageRequest;->w()Landroid/net/Uri;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const-string v3, "toString(...)"

    .line 51
    .line 52
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    invoke-static {v2}, Ljk/v;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget-object v4, Lkk/f;->b:Lms/i;

    .line 60
    .line 61
    invoke-interface {v4}, Lms/i;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v5

    .line 65
    check-cast v5, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_1

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    new-instance v5, Lfk/p;

    .line 75
    .line 76
    invoke-direct {v5}, Lfk/p;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5}, Lfk/p;->d()Lfk/p;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-interface {v4}, Lms/i;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    new-instance v6, Lkk/f$d;

    .line 97
    .line 98
    invoke-direct {v6, v2, v3, v5}, Lkk/f$d;-><init>(Ljava/lang/String;Ljava/lang/String;Lfk/p;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v1, v0, v6}, Lt3/r;->p(Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;La4/e;)Lcom/facebook/datasource/b;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    sget-object v2, Lkk/f;->c:Lms/i;

    .line 106
    .line 107
    invoke-interface {v2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/util/Map;

    .line 112
    .line 113
    new-instance v4, Lkk/f$a;

    .line 114
    .line 115
    invoke-direct {v4, v1, p2}, Lkk/f$a;-><init>(Lcom/facebook/datasource/b;Z)V

    .line 116
    .line 117
    .line 118
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-exception p1

    .line 123
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 124
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v1, "prefetchToDiskCache exception -> "

    .line 131
    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    const-string v0, "FrescoUtil"

    .line 147
    .line 148
    invoke-virtual {p2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    :goto_1
    return-void
.end method

.method public final y()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkk/f;->g()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lt3/r;->n()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lt3/r;->r()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "resumeImageLoad failed -> "

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v2, "FrescoUtil"

    .line 51
    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_0
    return-void
.end method
