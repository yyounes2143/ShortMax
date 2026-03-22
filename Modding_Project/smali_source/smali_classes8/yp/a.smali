.class public final Lyp/a;
.super Lup/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyp/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final s:Lyp/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final r:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lyp/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lyp/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lyp/a;->s:Lyp/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/rendering/internal/detector/brokencreative/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adElementParams"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "adFormListener"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "eventCallback"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct/range {p0 .. p6}, Lup/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 27
    .line 28
    .line 29
    new-instance p2, Landroid/widget/TextView;

    .line 30
    .line 31
    invoke-direct {p2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object p2, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 35
    .line 36
    return-void
.end method


# virtual methods
.method public D()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {p0}, Lup/a;->h()Lrq/a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lrq/a;->n()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lrq/e;->o()Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lrq/e;->j()Ljava/lang/Float;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    const/4 v2, 0x0

    .line 48
    cmpl-float v1, v1, v2

    .line 49
    .line 50
    if-lez v1, :cond_1

    .line 51
    .line 52
    iget-object v1, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lrq/e;->k()Lio/bidmachine/rendering/model/FontStyleType;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    iget-object v1, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 73
    .line 74
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 75
    .line 76
    invoke-virtual {v0}, Lio/bidmachine/rendering/model/FontStyleType;->getTypeface()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lrq/e;->s()Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-lez v1, :cond_3

    .line 102
    .line 103
    iget-object v1, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 110
    .line 111
    .line 112
    :cond_3
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v0, v1}, Lrq/e;->r(Landroid/content/Context;)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/high16 v1, 0x3f800000    # 1.0f

    .line 125
    .line 126
    if-eqz v0, :cond_4

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    iget-object v2, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 133
    .line 134
    int-to-float v0, v0

    .line 135
    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 136
    .line 137
    .line 138
    :cond_4
    iget-object v0, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Lrq/e;->q()Lio/bidmachine/rendering/model/HorizontalGravity;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lio/bidmachine/rendering/model/HorizontalGravity;->getValue()I

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    or-int/lit8 v2, v2, 0x10

    .line 153
    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {v0}, Lrq/e;->n()Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    if-eqz v0, :cond_5

    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    invoke-static {v2, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 176
    .line 177
    .line 178
    move-result v2

    .line 179
    int-to-float v2, v2

    .line 180
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-static {v3, v1}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 185
    .line 186
    .line 187
    move-result v1

    .line 188
    int-to-float v1, v1

    .line 189
    iget-object v3, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 190
    .line 191
    invoke-virtual {v3, v1, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 192
    .line 193
    .line 194
    :cond_5
    iget-object v0, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 195
    .line 196
    const/4 v1, 0x0

    .line 197
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Lup/a;->z()Lup/c;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-interface {v0, p0}, Lup/c;->a(Lup/a;)V

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method protected w(Landroid/view/View;Ltp/c0;)V
    .locals 11
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ltp/c0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x2

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {p1, v0, v1, v2, v3}, Lrq/e;->h(Lrq/e;Landroid/content/Context;IILjava/lang/Object;)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v0, v2}, Lrq/e;->e(Landroid/content/Context;)Lrq/j;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    iget-object v1, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 36
    .line 37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p2, v1, p1, v0}, Ltp/c0;->a(Landroid/view/View;Ljava/lang/Integer;Lrq/j;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iget-object p2, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 46
    .line 47
    new-instance v2, Lio/bidmachine/rendering/internal/j;

    .line 48
    .line 49
    invoke-direct {v2}, Lio/bidmachine/rendering/internal/j;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lup/a;->A()Lrq/e;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    const/4 v5, 0x1

    .line 57
    invoke-static {v4, v1, v5, v3}, Lrq/e;->d(Lrq/e;IILjava/lang/Object;)I

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    invoke-virtual {v2, v1}, Lio/bidmachine/rendering/internal/j;->j(I)V

    .line 62
    .line 63
    .line 64
    int-to-float p1, p1

    .line 65
    invoke-virtual {v2, p1}, Lio/bidmachine/rendering/internal/j;->e(F)V

    .line 66
    .line 67
    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    invoke-virtual {v0}, Lrq/j;->b()I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    invoke-virtual {v0}, Lrq/j;->a()I

    .line 75
    .line 76
    .line 77
    move-result v6

    .line 78
    const/16 v9, 0xc

    .line 79
    .line 80
    const/4 v10, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x0

    .line 83
    move-object v4, v2

    .line 84
    invoke-static/range {v4 .. v10}, Lio/bidmachine/rendering/internal/j;->i(Lio/bidmachine/rendering/internal/j;IIFFILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lyp/a;->r:Landroid/widget/TextView;

    .line 88
    .line 89
    invoke-virtual {v0}, Lrq/j;->b()I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    invoke-virtual {v0}, Lrq/j;->b()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    const/high16 v5, 0x40000000    # 2.0f

    .line 102
    .line 103
    invoke-static {v4, v5}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    sub-int/2addr v3, v4

    .line 108
    invoke-virtual {v0}, Lrq/j;->b()I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    invoke-virtual {v0}, Lrq/j;->b()I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    invoke-virtual {p0}, Lup/a;->B()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v6

    .line 120
    invoke-static {v6, v5}, Lyq/s;->j(Landroid/content/Context;F)I

    .line 121
    .line 122
    .line 123
    move-result v5

    .line 124
    add-int/2addr v0, v5

    .line 125
    invoke-virtual {p1, v1, v3, v4, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    .line 127
    .line 128
    :cond_1
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    return-void
.end method
