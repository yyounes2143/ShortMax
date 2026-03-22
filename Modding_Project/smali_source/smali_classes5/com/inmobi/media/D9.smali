.class public final Lcom/inmobi/media/D9;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/util/HashMap;

.field public static volatile d:Ljava/lang/ref/WeakReference;

.field public static e:Ljava/lang/ref/WeakReference;

.field public static f:I

.field public static g:I


# instance fields
.field public a:I

.field public final b:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    const-class v1, Lcom/inmobi/media/J8;

    .line 7
    .line 8
    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-class v3, Lcom/inmobi/media/Sc;

    .line 18
    .line 19
    invoke-static {v3, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    const/4 v1, 0x2

    .line 24
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    const-class v4, Lcom/inmobi/media/Rc;

    .line 29
    .line 30
    invoke-static {v4, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    const/4 v1, 0x3

    .line 35
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    const-class v5, Lcom/inmobi/media/j8;

    .line 40
    .line 41
    invoke-static {v5, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    const/4 v1, 0x6

    .line 46
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    const-class v6, Landroid/widget/ImageView;

    .line 51
    .line 52
    invoke-static {v6, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 53
    .line 54
    .line 55
    move-result-object v6

    .line 56
    const/4 v1, 0x7

    .line 57
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const-class v7, Lcom/inmobi/media/m9;

    .line 62
    .line 63
    invoke-static {v7, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    const/4 v1, 0x4

    .line 68
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const-class v8, Lcom/inmobi/media/p9;

    .line 73
    .line 74
    invoke-static {v8, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 75
    .line 76
    .line 77
    move-result-object v8

    .line 78
    const/4 v1, 0x5

    .line 79
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-class v9, Landroid/widget/Button;

    .line 84
    .line 85
    invoke-static {v9, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    const/16 v1, 0x8

    .line 90
    .line 91
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    const-class v10, Lcom/inmobi/media/T8;

    .line 96
    .line 97
    invoke-static {v10, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 98
    .line 99
    .line 100
    move-result-object v10

    .line 101
    const/16 v1, 0x9

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-class v11, Lcom/inmobi/media/ec;

    .line 108
    .line 109
    invoke-static {v11, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    const/16 v1, 0xa

    .line 114
    .line 115
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    const-class v12, Lcom/inmobi/media/K4;

    .line 120
    .line 121
    invoke-static {v12, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v12

    .line 125
    filled-new-array/range {v2 .. v12}, [Lkotlin/Pair;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v1}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    sput-object v1, Lcom/inmobi/media/D9;->c:Ljava/util/HashMap;

    .line 134
    .line 135
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 136
    .line 137
    const/4 v2, 0x0

    .line 138
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    sput-object v1, Lcom/inmobi/media/D9;->e:Ljava/lang/ref/WeakReference;

    .line 142
    .line 143
    sput v0, Lcom/inmobi/media/D9;->f:I

    .line 144
    .line 145
    sput v0, Lcom/inmobi/media/D9;->g:I

    .line 146
    .line 147
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    move-object/from16 v2, p1

    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/inmobi/media/D9;->e:Ljava/lang/ref/WeakReference;

    .line 14
    .line 15
    new-instance v1, Lcom/inmobi/media/w9;

    .line 16
    .line 17
    invoke-direct {v1, v0}, Lcom/inmobi/media/w9;-><init>(Lcom/inmobi/media/D9;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/inmobi/media/s9;

    .line 21
    .line 22
    invoke-direct {v2, v0}, Lcom/inmobi/media/s9;-><init>(Lcom/inmobi/media/D9;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Lcom/inmobi/media/B9;

    .line 26
    .line 27
    invoke-direct {v3, v0}, Lcom/inmobi/media/B9;-><init>(Lcom/inmobi/media/D9;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Lcom/inmobi/media/x9;

    .line 31
    .line 32
    invoke-direct {v4, v0}, Lcom/inmobi/media/x9;-><init>(Lcom/inmobi/media/D9;)V

    .line 33
    .line 34
    .line 35
    new-instance v5, Lcom/inmobi/media/v9;

    .line 36
    .line 37
    invoke-direct {v5, v0}, Lcom/inmobi/media/v9;-><init>(Lcom/inmobi/media/D9;)V

    .line 38
    .line 39
    .line 40
    new-instance v6, Lcom/inmobi/media/u9;

    .line 41
    .line 42
    invoke-direct {v6, v0}, Lcom/inmobi/media/u9;-><init>(Lcom/inmobi/media/D9;)V

    .line 43
    .line 44
    .line 45
    new-instance v7, Lcom/inmobi/media/A9;

    .line 46
    .line 47
    invoke-direct {v7, v0}, Lcom/inmobi/media/A9;-><init>(Lcom/inmobi/media/D9;)V

    .line 48
    .line 49
    .line 50
    new-instance v8, Lcom/inmobi/media/y9;

    .line 51
    .line 52
    invoke-direct {v8, v0}, Lcom/inmobi/media/y9;-><init>(Lcom/inmobi/media/D9;)V

    .line 53
    .line 54
    .line 55
    new-instance v9, Lcom/inmobi/media/t9;

    .line 56
    .line 57
    invoke-direct {v9, v0}, Lcom/inmobi/media/t9;-><init>(Lcom/inmobi/media/D9;)V

    .line 58
    .line 59
    .line 60
    new-instance v10, Lcom/inmobi/media/z9;

    .line 61
    .line 62
    invoke-direct {v10, v0}, Lcom/inmobi/media/z9;-><init>(Lcom/inmobi/media/D9;)V

    .line 63
    .line 64
    .line 65
    new-instance v11, Lcom/inmobi/media/C9;

    .line 66
    .line 67
    invoke-direct {v11, v0}, Lcom/inmobi/media/C9;-><init>(Lcom/inmobi/media/D9;)V

    .line 68
    .line 69
    .line 70
    const/4 v12, 0x0

    .line 71
    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 72
    .line 73
    .line 74
    move-result-object v12

    .line 75
    invoke-static {v12, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 76
    .line 77
    .line 78
    move-result-object v13

    .line 79
    const/4 v1, 0x3

    .line 80
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {v1, v2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    const/4 v1, 0x1

    .line 89
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-static {v1, v3}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v15

    .line 97
    const/4 v1, 0x2

    .line 98
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-static {v1, v4}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 103
    .line 104
    .line 105
    move-result-object v16

    .line 106
    const/4 v1, 0x6

    .line 107
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-static {v1, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 112
    .line 113
    .line 114
    move-result-object v17

    .line 115
    const/16 v1, 0xa

    .line 116
    .line 117
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v1, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v18

    .line 125
    const/4 v1, 0x7

    .line 126
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-static {v1, v7}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 131
    .line 132
    .line 133
    move-result-object v19

    .line 134
    const/4 v1, 0x4

    .line 135
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1, v8}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 140
    .line 141
    .line 142
    move-result-object v20

    .line 143
    const/4 v1, 0x5

    .line 144
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-static {v1, v9}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 149
    .line 150
    .line 151
    move-result-object v21

    .line 152
    const/16 v1, 0x8

    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    invoke-static {v1, v10}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 159
    .line 160
    .line 161
    move-result-object v22

    .line 162
    const/16 v1, 0x9

    .line 163
    .line 164
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v1, v11}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 169
    .line 170
    .line 171
    move-result-object v23

    .line 172
    filled-new-array/range {v13 .. v23}, [Lkotlin/Pair;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-static {v1}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v0, Lcom/inmobi/media/D9;->b:Ljava/util/HashMap;

    .line 181
    .line 182
    return-void
.end method

.method public static final a(Lcom/inmobi/media/D9;Landroid/widget/Button;Lcom/inmobi/media/d8;)V
    .locals 6

    .line 23
    const-string v0, "event"

    const-string v1, "TAG"

    const-string v2, "D9"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    iget-object p0, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 25
    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeCtaAsset.NativeCtaAssetStyle"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/k8;

    .line 26
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 27
    iget-object v4, p0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 28
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/media/n9;->a(I)I

    move-result v4

    .line 29
    iget-object v5, p0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 30
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/n9;->a(I)I

    move-result v5

    .line 31
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    iget-object p2, p2, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 33
    instance-of v3, p2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget p2, p0, Lcom/inmobi/media/M8;->l:I

    .line 35
    invoke-static {p2}, Lcom/inmobi/media/n9;->a(I)I

    move-result p2

    int-to-float p2, p2

    const/4 v3, 0x1

    .line 36
    invoke-virtual {p1, v3, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    const-string p2, "#ff000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 38
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/M8;->n:Ljava/lang/String;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "US"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 40
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    sget-object v4, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v4, Lcom/inmobi/media/f2;

    invoke-direct {v4, v3}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 42
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    sget-object v3, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v3, v4}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 44
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    const-string p2, "#00000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 46
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/media/M8;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    .line 47
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v1, Lcom/inmobi/media/f2;

    invoke-direct {v1, v3}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 49
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 51
    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    const/4 p2, 0x4

    .line 52
    invoke-virtual {p1, p2}, Landroid/view/View;->setTextAlignment(I)V

    const/16 p2, 0x11

    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    .line 54
    iget-object p2, p0, Lcom/inmobi/media/M8;->o:Ljava/util/ArrayList;

    .line 55
    invoke-static {p1, p2}, Lcom/inmobi/media/n9;->a(Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 56
    invoke-static {p1, p0}, Lcom/inmobi/media/n9;->a(Landroid/view/View;Lcom/inmobi/media/e8;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/D9;Landroid/widget/ImageView;Lcom/inmobi/media/d8;)V
    .locals 8

    .line 57
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 58
    iget-object p0, p2, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 59
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_11

    .line 60
    iget-object v0, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 61
    iget-object v0, v0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 62
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/media/n9;->a(I)I

    move-result v0

    .line 63
    iget-object v1, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 64
    iget-object v1, v1, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 65
    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Lcom/inmobi/media/n9;->a(I)I

    move-result v1

    .line 66
    iget-object v2, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 67
    iget-object v2, v2, Lcom/inmobi/media/e8;->g:Ljava/lang/String;

    .line 68
    const-string v3, "aspectFit"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 69
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 70
    :cond_1
    const-string v3, "aspectFill"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 71
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    .line 72
    :cond_2
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 73
    :goto_1
    sget-object v2, Lcom/inmobi/media/D9;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_a

    if-lez v0, :cond_a

    if-lez v1, :cond_a

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v3

    move v5, v1

    :goto_2
    if-gt v1, v0, :cond_8

    if-nez v5, :cond_3

    move v6, v1

    goto :goto_3

    :cond_3
    move v6, v0

    .line 75
    :goto_3
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    .line 76
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    move-result v6

    if-gtz v6, :cond_4

    move v6, v4

    goto :goto_4

    :cond_4
    move v6, v3

    :goto_4
    if-nez v5, :cond_6

    if-nez v6, :cond_5

    move v5, v4

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-nez v6, :cond_7

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_8
    :goto_5
    add-int/2addr v0, v4

    .line 77
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a

    .line 80
    sget-object v0, Lcom/inmobi/media/ya;->a:Lcom/inmobi/media/ya;

    invoke-virtual {v0, v2}, Lcom/inmobi/media/ya;->a(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    .line 81
    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p0

    .line 82
    new-instance v1, Lcom/inmobi/media/q9;

    invoke-direct {v1, v2, p1, p2}, Lcom/inmobi/media/q9;-><init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/inmobi/media/d8;)V

    .line 83
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ya;->a(Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.squareup.picasso.Callback"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/squareup/picasso/Callback;

    .line 84
    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 85
    const-string p0, "cross_button"

    .line 86
    iget-object v0, p2, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 87
    invoke-static {p0, v0, v4}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_a

    .line 88
    iget-object p0, p2, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    if-eqz p0, :cond_9

    .line 89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_a

    .line 90
    :cond_9
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 91
    new-instance v0, Lcom/inmobi/media/o9;

    invoke-direct {v0, v2, p1}, Lcom/inmobi/media/o9;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    const-wide/16 v1, 0x7d0

    .line 92
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    :cond_a
    iget-object p0, p2, Lcom/inmobi/media/d8;->r:Lcom/inmobi/media/h8;

    if-eqz p0, :cond_10

    .line 94
    iget-object v0, p0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 95
    iget-object v0, v0, Lcom/inmobi/media/e8;->e:Ljava/lang/String;

    .line 96
    const-string v1, "line"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 97
    iget-object v0, p0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 98
    iget-object v1, v0, Lcom/inmobi/media/e8;->c:Landroid/graphics/Point;

    .line 99
    iget v1, v1, Landroid/graphics/Point;->x:I

    .line 100
    iget-object v2, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 101
    iget-object v2, v2, Lcom/inmobi/media/e8;->c:Landroid/graphics/Point;

    .line 102
    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v1, v2, :cond_b

    move v1, v4

    goto :goto_6

    :cond_b
    move v1, v3

    .line 103
    :goto_6
    iget-object v0, v0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 104
    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Lcom/inmobi/media/n9;->a(I)I

    move-result v0

    .line 105
    iget-object v2, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 106
    iget-object v2, v2, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 107
    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-static {v2}, Lcom/inmobi/media/n9;->a(I)I

    move-result v2

    .line 108
    iget-object v5, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 109
    iget-object v5, v5, Lcom/inmobi/media/e8;->c:Landroid/graphics/Point;

    .line 110
    iget v5, v5, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v5

    if-ne v0, v2, :cond_c

    move v0, v4

    goto :goto_7

    :cond_c
    move v0, v3

    .line 111
    :goto_7
    iget-object v2, p0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 112
    iget-object v2, v2, Lcom/inmobi/media/e8;->c:Landroid/graphics/Point;

    .line 113
    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Lcom/inmobi/media/n9;->a(I)I

    move-result v2

    .line 114
    iget-object v5, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 115
    iget-object v5, v5, Lcom/inmobi/media/e8;->c:Landroid/graphics/Point;

    .line 116
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/n9;->a(I)I

    move-result v5

    if-ne v2, v5, :cond_d

    move v2, v4

    goto :goto_8

    :cond_d
    move v2, v3

    .line 117
    :goto_8
    iget-object v5, p0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 118
    iget-object v5, v5, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 119
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/n9;->a(I)I

    move-result v5

    .line 120
    iget-object v6, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 121
    iget-object v6, v6, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 122
    iget v6, v6, Landroid/graphics/Point;->y:I

    invoke-static {v6}, Lcom/inmobi/media/n9;->a(I)I

    move-result v6

    .line 123
    iget-object v7, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 124
    iget-object v7, v7, Lcom/inmobi/media/e8;->c:Landroid/graphics/Point;

    .line 125
    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-static {v7}, Lcom/inmobi/media/n9;->a(I)I

    move-result v7

    add-int/2addr v7, v6

    if-ne v5, v7, :cond_e

    move v3, v4

    .line 126
    :cond_e
    iget-object p0, p0, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 127
    iget-object p0, p0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 128
    iget p0, p0, Landroid/graphics/Point;->x:I

    invoke-static {p0}, Lcom/inmobi/media/n9;->a(I)I

    move-result p0

    .line 129
    iget-object v5, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 130
    iget-object v5, v5, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 131
    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Lcom/inmobi/media/n9;->a(I)I

    move-result v5

    if-ne p0, v5, :cond_f

    move p0, v3

    move v0, v4

    move v3, v0

    goto :goto_9

    :cond_f
    move p0, v3

    move v3, v1

    goto :goto_9

    :cond_10
    move p0, v3

    move v0, p0

    move v2, v0

    .line 132
    :goto_9
    invoke-virtual {p1, v3, v2, v0, p0}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 133
    iget-object p0, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 134
    invoke-static {p1, p0}, Lcom/inmobi/media/n9;->a(Landroid/view/View;Lcom/inmobi/media/e8;)V

    :cond_11
    return-void
.end method

.method public static final a(Lcom/inmobi/media/D9;Landroid/widget/TextView;Lcom/inmobi/media/d8;)V
    .locals 7

    .line 135
    const-string v0, "event"

    const-string v1, "TAG"

    const-string v2, "D9"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 136
    iget-object p0, p2, Lcom/inmobi/media/d8;->d:Lcom/inmobi/media/e8;

    .line 137
    const-string v3, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTextAsset.NativeTextAssetStyle"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/inmobi/media/M8;

    .line 138
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    .line 139
    iget-object v4, p0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 140
    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Lcom/inmobi/media/n9;->a(I)I

    move-result v4

    .line 141
    iget-object v5, p0, Lcom/inmobi/media/e8;->a:Landroid/graphics/Point;

    .line 142
    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Lcom/inmobi/media/n9;->a(I)I

    move-result v5

    .line 143
    invoke-direct {v3, v4, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object p2, p2, Lcom/inmobi/media/d8;->e:Ljava/lang/Object;

    .line 145
    instance-of v3, p2, Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    check-cast p2, Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 147
    iget-byte p2, p0, Lcom/inmobi/media/M8;->m:B

    const v3, 0x800013

    const/4 v4, 0x1

    if-nez p2, :cond_1

    .line 148
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_1
    if-ne p2, v4, :cond_2

    const p2, 0x800015

    .line 149
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    :cond_2
    const/4 v5, 0x2

    if-ne p2, v5, :cond_3

    const/16 p2, 0x11

    .line 150
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_1

    .line 151
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 152
    :goto_1
    iget p2, p0, Lcom/inmobi/media/M8;->l:I

    .line 153
    invoke-static {p2}, Lcom/inmobi/media/n9;->a(I)I

    move-result p2

    int-to-float p2, p2

    .line 154
    invoke-virtual {p1, v4, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 155
    const-string p2, "#ff000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 156
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/media/M8;->n:Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "US"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 158
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    sget-object v5, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v5, Lcom/inmobi/media/f2;

    invoke-direct {v5, v3}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 160
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    sget-object v3, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v3, v5}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 162
    :goto_2
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 163
    const-string p2, "#00000000"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    .line 164
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/media/M8;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 165
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    new-instance v1, Lcom/inmobi/media/f2;

    invoke-direct {v1, v3}, Lcom/inmobi/media/f2;-><init>(Ljava/lang/Throwable;)V

    .line 167
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 168
    sget-object v0, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {v0, v1}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 169
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 170
    invoke-virtual {p1, v4}, Landroid/view/View;->setTextAlignment(I)V

    .line 171
    iget-object p2, p0, Lcom/inmobi/media/M8;->o:Ljava/util/ArrayList;

    .line 172
    invoke-static {p1, p2}, Lcom/inmobi/media/n9;->a(Landroid/widget/TextView;Ljava/util/ArrayList;)V

    .line 173
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 174
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 175
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 176
    invoke-virtual {p1, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 177
    invoke-static {p1, p0}, Lcom/inmobi/media/n9;->a(Landroid/view/View;Lcom/inmobi/media/e8;)V

    return-void
.end method

.method public static final a(Lcom/inmobi/media/Q8;Lcom/inmobi/media/T8;)V
    .locals 1

    const-string v0, "$timerAsset"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    sget-object v0, Lcom/inmobi/media/D9;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 208
    iget-boolean p0, p0, Lcom/inmobi/media/Q8;->y:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    .line 209
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/media/T8;->d()V

    :cond_1
    return-void
.end method

.method public static a(Lcom/inmobi/media/T8;Lcom/inmobi/media/d8;)V
    .locals 6

    const/4 v0, 0x4

    .line 194
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 195
    const-string v0, "null cannot be cast to non-null type com.inmobi.ads.modelsv2.NativeTimerAsset"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/Q8;

    .line 196
    iget-object v0, p1, Lcom/inmobi/media/Q8;->x:Lcom/inmobi/media/P8;

    .line 197
    iget-object v1, v0, Lcom/inmobi/media/P8;->a:Lcom/inmobi/media/O8;

    .line 198
    iget-object v0, v0, Lcom/inmobi/media/P8;->b:Lcom/inmobi/media/O8;

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_0

    .line 199
    :try_start_0
    invoke-virtual {v1}, Lcom/inmobi/media/O8;->a()J

    move-result-wide v4

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-wide v4, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 200
    invoke-virtual {v0}, Lcom/inmobi/media/O8;->a()J

    move-result-wide v0

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 201
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/T8;->setTimerValue(J)V

    .line 202
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lub/t;

    invoke-direct {v1, p1, p0}, Lub/t;-><init>(Lcom/inmobi/media/Q8;Lcom/inmobi/media/T8;)V

    const/16 p0, 0x3e8

    int-to-long p0, p0

    mul-long/2addr v4, p0

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 203
    :goto_2
    const-string p1, "D9"

    const-string v0, "TAG"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    sget-object p1, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 205
    const-string p1, "event"

    invoke-static {p0, p1}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    move-result-object p0

    .line 206
    sget-object p1, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    :cond_2
    :goto_3
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lcom/inmobi/media/d8;Lcom/inmobi/commons/core/configs/AdConfig;)Landroid/view/View;
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "asset"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "adConfig"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    const-string v3, "nativeAsset"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v3, p2, Lcom/inmobi/media/h8;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 3
    move-object v3, p2

    check-cast v3, Lcom/inmobi/media/h8;

    .line 4
    iget-boolean v6, v3, Lcom/inmobi/media/h8;->C:Z

    if-eqz v6, :cond_0

    const/4 v3, 0x0

    goto/16 :goto_2

    .line 5
    :cond_0
    iget-boolean v6, v3, Lcom/inmobi/media/h8;->D:Z

    if-eqz v6, :cond_3

    .line 6
    iget-byte v3, v3, Lcom/inmobi/media/h8;->z:B

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    const/4 v3, 0x2

    goto/16 :goto_2

    :cond_2
    :goto_0
    move v3, v5

    goto/16 :goto_2

    :cond_3
    const/4 v3, 0x3

    goto/16 :goto_2

    .line 7
    :cond_4
    iget-object v3, p2, Lcom/inmobi/media/d8;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v6, "WEBVIEW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    const/16 v3, 0x9

    goto :goto_2

    :sswitch_1
    const-string v6, "VIDEO"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x7

    goto :goto_2

    :sswitch_2
    const-string v6, "TIMER"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    const/16 v3, 0x8

    goto :goto_2

    :sswitch_3
    const-string v6, "IMAGE"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :sswitch_4
    const-string v6, "TEXT"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const/4 v3, 0x4

    goto :goto_2

    :sswitch_5
    const-string v6, "ICON"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    const/4 v3, 0x6

    goto :goto_2

    :sswitch_6
    const-string v6, "GIF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_1

    :cond_a
    const/16 v3, 0xa

    goto :goto_2

    :sswitch_7
    const-string v6, "CTA"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :goto_1
    move v3, v4

    goto :goto_2

    :cond_b
    const/4 v3, 0x5

    :goto_2
    const/4 v6, 0x0

    if-ne v4, v3, :cond_c

    .line 9
    const-string p1, "D9"

    const-string p2, "TAG"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v6

    .line 10
    :cond_c
    iget-object v7, p0, Lcom/inmobi/media/D9;->b:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/r9;

    if-eqz v3, :cond_e

    .line 11
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 13
    sput-object v0, Lcom/inmobi/media/D9;->e:Ljava/lang/ref/WeakReference;

    .line 14
    iget-object v0, v3, Lcom/inmobi/media/r9;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15
    iget v0, v3, Lcom/inmobi/media/r9;->b:I

    add-int/2addr v0, v5

    iput v0, v3, Lcom/inmobi/media/r9;->b:I

    .line 16
    invoke-virtual {v3, p1}, Lcom/inmobi/media/r9;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p1

    :goto_3
    move-object v6, p1

    goto :goto_4

    .line 17
    :cond_d
    iget p1, v3, Lcom/inmobi/media/r9;->c:I

    add-int/2addr p1, v5

    iput p1, v3, Lcom/inmobi/media/r9;->c:I

    .line 18
    iget-object p1, v3, Lcom/inmobi/media/r9;->a:Ljava/util/LinkedList;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->P(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 19
    iget-object v0, v3, Lcom/inmobi/media/r9;->d:Lcom/inmobi/media/D9;

    .line 20
    iget v1, v0, Lcom/inmobi/media/D9;->a:I

    add-int/2addr v1, v4

    .line 21
    iput v1, v0, Lcom/inmobi/media/D9;->a:I

    goto :goto_3

    :goto_4
    if-eqz v6, :cond_e

    .line 22
    invoke-virtual {v3, v6, p2, p3}, Lcom/inmobi/media/r9;->a(Landroid/view/View;Lcom/inmobi/media/d8;Lcom/inmobi/commons/core/configs/AdConfig;)V

    :cond_e
    return-object v6

    :sswitch_data_0
    .sparse-switch
        0x105f0 -> :sswitch_7
        0x113a4 -> :sswitch_6
        0x223479 -> :sswitch_5
        0x273d2d -> :sswitch_4
        0x428b13b -> :sswitch_3
        0x4c20f25 -> :sswitch_2
        0x4de1c5b -> :sswitch_1
        0x73c6c7d9 -> :sswitch_0
    .end sparse-switch
.end method

.method public final a(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    instance-of v0, p1, Lcom/inmobi/media/J8;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/inmobi/media/j8;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/media/D9;->b(Landroid/view/View;)V

    goto :goto_4

    .line 180
    :cond_1
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/inmobi/media/j8;

    .line 181
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 182
    invoke-virtual {p0, p1}, Lcom/inmobi/media/D9;->b(Landroid/view/View;)V

    goto :goto_4

    .line 183
    :cond_2
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    .line 184
    invoke-virtual {p1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_1
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 186
    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/j8;

    .line 187
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    const/4 v2, -0x1

    if-ge v2, v1, :cond_4

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 190
    instance-of v3, v2, Lcom/inmobi/media/j8;

    if-eqz v3, :cond_3

    .line 191
    invoke-virtual {p1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 192
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/inmobi/media/D9;->b(Landroid/view/View;)V

    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 193
    :cond_4
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/media/D9;->b(Landroid/view/View;)V

    goto :goto_1

    :cond_5
    :goto_4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/inmobi/media/D9;->c:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Byte;

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    const-string v2, "TAG"

    .line 23
    .line 24
    const-string v3, "D9"

    .line 25
    .line 26
    if-ne v1, v0, :cond_1

    .line 27
    .line 28
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/D9;->b:Ljava/util/HashMap;

    .line 36
    .line 37
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Lcom/inmobi/media/r9;

    .line 46
    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_2
    iget v1, p0, Lcom/inmobi/media/D9;->a:I

    .line 54
    .line 55
    const/16 v2, 0x12c

    .line 56
    .line 57
    if-lt v1, v2, :cond_5

    .line 58
    .line 59
    iget-object v1, p0, Lcom/inmobi/media/D9;->b:Ljava/util/HashMap;

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 72
    .line 73
    .line 74
    move-result v4

    .line 75
    if-eqz v4, :cond_4

    .line 76
    .line 77
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    check-cast v4, Ljava/util/Map$Entry;

    .line 82
    .line 83
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/inmobi/media/r9;

    .line 88
    .line 89
    iget-object v5, v4, Lcom/inmobi/media/r9;->a:Ljava/util/LinkedList;

    .line 90
    .line 91
    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    .line 92
    .line 93
    .line 94
    move-result v5

    .line 95
    if-le v5, v2, :cond_3

    .line 96
    .line 97
    iget-object v2, v4, Lcom/inmobi/media/r9;->a:Ljava/util/LinkedList;

    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    move-object v3, v4

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    if-eqz v3, :cond_5

    .line 106
    .line 107
    iget-object v1, v3, Lcom/inmobi/media/r9;->a:Ljava/util/LinkedList;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-lez v1, :cond_5

    .line 114
    .line 115
    iget-object v1, v3, Lcom/inmobi/media/r9;->a:Ljava/util/LinkedList;

    .line 116
    .line 117
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->P(Ljava/util/List;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :cond_5
    invoke-virtual {v0, p1}, Lcom/inmobi/media/r9;->a(Landroid/view/View;)V

    .line 121
    .line 122
    .line 123
    return-void
.end method
