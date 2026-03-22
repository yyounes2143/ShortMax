.class public final Leq/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leq/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leq/g<",
        "Lrq/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lrq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Z


# direct methods
.method public constructor <init>(Lrq/a;Z)V
    .locals 1
    .param p1    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Leq/k;->a:Lrq/a;

    .line 10
    .line 11
    iput-boolean p2, p0, Leq/k;->b:Z

    .line 12
    .line 13
    return-void
.end method

.method private final c(Landroid/view/View;)Leq/f;
    .locals 3

    .line 1
    new-instance v0, Leq/f;

    .line 2
    .line 3
    iget-boolean v1, p0, Leq/k;->b:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-direct {v0, v1, v2, p1}, Leq/f;-><init>(FFF)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method private final d(Landroid/view/View;Lrq/s;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "context"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2, v0}, Lrq/s;->f(Landroid/content/Context;)I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    invoke-virtual {p2, v0}, Lrq/s;->g(Landroid/content/Context;)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    invoke-virtual {p2, v0}, Lrq/s;->h(Landroid/content/Context;)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    int-to-float v3, v3

    .line 25
    invoke-virtual {p2, v0}, Lrq/s;->e(Landroid/content/Context;)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    int-to-float v4, v4

    .line 30
    invoke-virtual {p2, v0}, Lrq/s;->n(Landroid/content/Context;)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    int-to-float v5, v5

    .line 35
    invoke-virtual {p2, v0}, Lrq/s;->c(Landroid/content/Context;)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    sget-object v6, Leq/k$a;->d:[I

    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 43
    .line 44
    .line 45
    move-result v7

    .line 46
    aget v7, v6, v7

    .line 47
    .line 48
    const/4 v8, 0x2

    .line 49
    const/4 v9, -0x1

    .line 50
    const/4 v10, 0x1

    .line 51
    if-eq v7, v10, :cond_4

    .line 52
    .line 53
    if-eq v7, v8, :cond_0

    .line 54
    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    goto :goto_2

    .line 60
    :cond_0
    invoke-static {p2}, Leq/h;->a(Lrq/s;)Lio/bidmachine/rendering/model/SideType;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    if-nez v2, :cond_1

    .line 65
    .line 66
    move v2, v9

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    sget-object v7, Leq/k$a;->c:[I

    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    aget v2, v7, v2

    .line 75
    .line 76
    :goto_0
    if-eq v2, v10, :cond_3

    .line 77
    .line 78
    if-eq v2, v8, :cond_2

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    goto :goto_2

    .line 85
    :cond_2
    sub-float v1, v5, v1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_3
    neg-float v2, v5

    .line 89
    sub-float v1, v2, v1

    .line 90
    .line 91
    goto :goto_2

    .line 92
    :cond_4
    invoke-static {p2}, Leq/h;->a(Lrq/s;)Lio/bidmachine/rendering/model/SideType;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    if-nez v1, :cond_5

    .line 97
    .line 98
    move v1, v9

    .line 99
    goto :goto_1

    .line 100
    :cond_5
    sget-object v7, Leq/k$a;->c:[I

    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    aget v1, v7, v1

    .line 107
    .line 108
    :goto_1
    if-eq v1, v10, :cond_7

    .line 109
    .line 110
    if-eq v1, v8, :cond_6

    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    goto :goto_2

    .line 117
    :cond_6
    sub-float v1, v5, v2

    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_7
    neg-float v1, v5

    .line 121
    sub-float/2addr v1, v2

    .line 122
    :goto_2
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 123
    .line 124
    .line 125
    move-result p3

    .line 126
    aget p3, v6, p3

    .line 127
    .line 128
    const/4 v2, 0x4

    .line 129
    const/4 v5, 0x3

    .line 130
    if-eq p3, v5, :cond_b

    .line 131
    .line 132
    if-eq p3, v2, :cond_8

    .line 133
    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    goto :goto_5

    .line 139
    :cond_8
    invoke-static {p2}, Leq/h;->b(Lrq/s;)Lio/bidmachine/rendering/model/SideType;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    if-nez p2, :cond_9

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_9
    sget-object p3, Leq/k$a;->c:[I

    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 149
    .line 150
    .line 151
    move-result p2

    .line 152
    aget v9, p3, p2

    .line 153
    .line 154
    :goto_3
    if-eq v9, v5, :cond_a

    .line 155
    .line 156
    if-eq v9, v2, :cond_a

    .line 157
    .line 158
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 159
    .line 160
    .line 161
    move-result p2

    .line 162
    goto :goto_5

    .line 163
    :cond_a
    neg-float p2, v0

    .line 164
    sub-float/2addr p2, v3

    .line 165
    goto :goto_5

    .line 166
    :cond_b
    invoke-static {p2}, Leq/h;->b(Lrq/s;)Lio/bidmachine/rendering/model/SideType;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    if-nez p2, :cond_c

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_c
    sget-object p3, Leq/k$a;->c:[I

    .line 174
    .line 175
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result p2

    .line 179
    aget v9, p3, p2

    .line 180
    .line 181
    :goto_4
    if-eq v9, v5, :cond_d

    .line 182
    .line 183
    if-eq v9, v2, :cond_d

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 186
    .line 187
    .line 188
    move-result p2

    .line 189
    goto :goto_5

    .line 190
    :cond_d
    sub-float p2, v0, v4

    .line 191
    .line 192
    :goto_5
    new-instance p3, Leq/f;

    .line 193
    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    invoke-direct {p3, p1, v1, p2}, Leq/f;-><init>(FFF)V

    .line 199
    .line 200
    .line 201
    return-object p3
.end method

.method private final e(Landroid/view/View;Lrq/s;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;
    .locals 1

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    const/4 p3, -0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Leq/k$a;->b:[I

    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    aget p3, v0, p3

    .line 12
    .line 13
    :goto_0
    const/4 v0, 0x1

    .line 14
    if-eq p3, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x2

    .line 17
    if-eq p3, v0, :cond_1

    .line 18
    .line 19
    invoke-direct {p0, p1}, Leq/k;->c(Landroid/view/View;)Leq/f;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    goto :goto_3

    .line 24
    :cond_1
    if-eqz p4, :cond_3

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p4}, Leq/k;->d(Landroid/view/View;Lrq/s;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-nez p2, :cond_2

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_2
    :goto_1
    move-object p1, p2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    :goto_2
    invoke-direct {p0, p1}, Leq/k;->c(Landroid/view/View;)Leq/f;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    goto :goto_3

    .line 40
    :cond_4
    new-instance p2, Leq/f;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/4 p4, 0x0

    .line 51
    invoke-direct {p2, p4, p3, p1}, Leq/f;-><init>(FFF)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_3
    return-object p1
.end method


# virtual methods
.method public a(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)Leq/f;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Leq/k$a;->a:[I

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    if-eq v0, v1, :cond_1

    .line 21
    .line 22
    const/4 p2, 0x2

    .line 23
    if-ne v0, p2, :cond_0

    .line 24
    .line 25
    invoke-direct {p0, p1}, Leq/k;->c(Landroid/view/View;)Leq/f;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 31
    .line 32
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    iget-object v0, p0, Leq/k;->a:Lrq/a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lrq/a;->b()Ljava/util/Map;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    check-cast p2, Lrq/d;

    .line 47
    .line 48
    iget-object v0, p0, Leq/k;->a:Lrq/a;

    .line 49
    .line 50
    invoke-virtual {v0}, Lrq/a;->g()Lrq/s;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    if-eqz p2, :cond_2

    .line 56
    .line 57
    invoke-virtual {p2}, Lrq/d;->d()Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    goto :goto_0

    .line 62
    :cond_2
    move-object v2, v1

    .line 63
    :goto_0
    if-eqz p2, :cond_3

    .line 64
    .line 65
    invoke-virtual {p2}, Lrq/d;->a()Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    :cond_3
    invoke-direct {p0, p1, v0, v2, v1}, Leq/k;->e(Landroid/view/View;Lrq/s;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    :goto_1
    return-object p1
.end method

.method public b(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)Leq/f;
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leq/k;->a:Lrq/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lrq/a;->g()Lrq/s;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Leq/k$a;->a:[I

    .line 18
    .line 19
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    aget v1, v1, v2

    .line 24
    .line 25
    const/4 v2, 0x1

    .line 26
    if-eq v1, v2, :cond_3

    .line 27
    .line 28
    const/4 v2, 0x2

    .line 29
    if-ne v1, v2, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Leq/k;->a:Lrq/a;

    .line 32
    .line 33
    invoke-virtual {v1}, Lrq/a;->b()Ljava/util/Map;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    check-cast p2, Lrq/d;

    .line 42
    .line 43
    const/4 v1, 0x0

    .line 44
    if-eqz p2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p2}, Lrq/d;->d()Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v2, v1

    .line 52
    :goto_0
    if-eqz p2, :cond_1

    .line 53
    .line 54
    invoke-virtual {p2}, Lrq/d;->a()Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_1

    .line 59
    .line 60
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/AnimationDirectionType;->inverted()Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    :cond_1
    invoke-direct {p0, p1, v0, v2, v1}, Leq/k;->e(Landroid/view/View;Lrq/s;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationDirectionType;)Leq/f;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    goto :goto_2

    .line 69
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 70
    .line 71
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    iget-object p2, p0, Leq/k;->a:Lrq/a;

    .line 76
    .line 77
    invoke-virtual {p2}, Lrq/a;->c()Lrq/e;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Lrq/e;->l()Ljava/lang/Float;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    if-eqz p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    goto :goto_1

    .line 92
    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    .line 93
    .line 94
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    const-string v1, "context"

    .line 99
    .line 100
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Lrq/s;->k(Landroid/content/Context;)I

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    int-to-float v1, v1

    .line 108
    invoke-virtual {v0, p1}, Lrq/s;->l(Landroid/content/Context;)I

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    int-to-float p1, p1

    .line 113
    new-instance v0, Leq/f;

    .line 114
    .line 115
    invoke-direct {v0, p2, v1, p1}, Leq/f;-><init>(FFF)V

    .line 116
    .line 117
    .line 118
    move-object p1, v0

    .line 119
    :goto_2
    return-object p1
.end method
