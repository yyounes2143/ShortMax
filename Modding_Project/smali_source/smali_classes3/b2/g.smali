.class public final Lb2/g;
.super Ljava/lang/Object;
.source "Operator.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lb2/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lb2/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lb2/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lb2/g;->a:Lb2/g;

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

.method public static final a(Lb2/a;Lb2/a;)V
    .locals 11
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "b"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {p0, v1}, Lb2/a;->b(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {p0, v3}, Lb2/a;->b(I)I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/4 v4, 0x2

    .line 31
    invoke-virtual {p0, v4}, Lb2/a;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-virtual {p0}, Lb2/a;->a()[F

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p1}, Lb2/a;->a()[F

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    move v5, v1

    .line 44
    :goto_0
    if-ge v5, v2, :cond_3

    .line 45
    .line 46
    move v6, v1

    .line 47
    :goto_1
    if-ge v6, v3, :cond_2

    .line 48
    .line 49
    move v7, v1

    .line 50
    :goto_2
    if-ge v7, v4, :cond_1

    .line 51
    .line 52
    mul-int v8, v5, v3

    .line 53
    .line 54
    mul-int/2addr v8, v4

    .line 55
    mul-int v9, v6, v4

    .line 56
    .line 57
    add-int/2addr v8, v9

    .line 58
    add-int/2addr v8, v7

    .line 59
    aget v9, p0, v8

    .line 60
    .line 61
    aget v10, p1, v7

    .line 62
    .line 63
    add-float/2addr v9, v10

    .line 64
    aput v9, p0, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    .line 66
    add-int/lit8 v7, v7, 0x1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catchall_0
    move-exception p0

    .line 70
    goto :goto_3

    .line 71
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    add-int/lit8 v5, v5, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    return-void

    .line 78
    :goto_3
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    return-void
.end method

.method public static final b([Lb2/a;)Lb2/a;
    .locals 15
    .param p0    # [Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "tensors"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    aget-object v3, p0, v1

    .line 18
    .line 19
    invoke-virtual {v3, v1}, Lb2/a;->b(I)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    array-length v4, p0

    .line 24
    move v5, v1

    .line 25
    move v6, v5

    .line 26
    :goto_0
    const/4 v7, 0x1

    .line 27
    if-ge v5, v4, :cond_1

    .line 28
    .line 29
    aget-object v8, p0, v5

    .line 30
    .line 31
    invoke-virtual {v8, v7}, Lb2/a;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    add-int/2addr v6, v7

    .line 36
    add-int/lit8 v5, v5, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_3

    .line 41
    :cond_1
    new-instance v4, Lb2/a;

    .line 42
    .line 43
    filled-new-array {v3, v6}, [I

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    invoke-direct {v4, v5}, Lb2/a;-><init>([I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4}, Lb2/a;->a()[F

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    move v8, v1

    .line 55
    :goto_1
    if-ge v8, v3, :cond_3

    .line 56
    .line 57
    mul-int v9, v8, v6

    .line 58
    .line 59
    array-length v10, p0

    .line 60
    move v11, v1

    .line 61
    :goto_2
    if-ge v11, v10, :cond_2

    .line 62
    .line 63
    aget-object v12, p0, v11

    .line 64
    .line 65
    invoke-virtual {v12}, Lb2/a;->a()[F

    .line 66
    .line 67
    .line 68
    move-result-object v12

    .line 69
    aget-object v13, p0, v11

    .line 70
    .line 71
    invoke-virtual {v13, v7}, Lb2/a;->b(I)I

    .line 72
    .line 73
    .line 74
    move-result v13

    .line 75
    mul-int v14, v8, v13

    .line 76
    .line 77
    invoke-static {v12, v14, v5, v9, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    .line 79
    .line 80
    add-int/2addr v9, v13

    .line 81
    add-int/lit8 v11, v11, 0x1

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_3
    return-object v4

    .line 88
    :goto_3
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    return-object v2
.end method

.method public static final c(Lb2/a;Lb2/a;)Lb2/a;
    .locals 19
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Lb2/g;

    .line 6
    .line 7
    invoke-static {v2}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    :try_start_0
    const-string v3, "x"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "w"

    .line 21
    .line 22
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lb2/a;->b(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    const/4 v6, 0x1

    .line 31
    invoke-virtual {v0, v6}, Lb2/a;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v7

    .line 35
    const/4 v8, 0x2

    .line 36
    invoke-virtual {v0, v8}, Lb2/a;->b(I)I

    .line 37
    .line 38
    .line 39
    move-result v9

    .line 40
    invoke-virtual {v1, v3}, Lb2/a;->b(I)I

    .line 41
    .line 42
    .line 43
    move-result v10

    .line 44
    sub-int v11, v7, v10

    .line 45
    .line 46
    add-int/2addr v11, v6

    .line 47
    invoke-virtual {v1, v8}, Lb2/a;->b(I)I

    .line 48
    .line 49
    .line 50
    move-result v6

    .line 51
    new-instance v8, Lb2/a;

    .line 52
    .line 53
    filled-new-array {v5, v11, v6}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v12

    .line 57
    invoke-direct {v8, v12}, Lb2/a;-><init>([I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual/range {p0 .. p0}, Lb2/a;->a()[F

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v8}, Lb2/a;->a()[F

    .line 65
    .line 66
    .line 67
    move-result-object v12

    .line 68
    invoke-virtual/range {p1 .. p1}, Lb2/a;->a()[F

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move v13, v3

    .line 73
    :goto_0
    if-ge v13, v5, :cond_5

    .line 74
    .line 75
    move v14, v3

    .line 76
    :goto_1
    if-ge v14, v6, :cond_4

    .line 77
    .line 78
    move v15, v3

    .line 79
    :goto_2
    if-ge v15, v11, :cond_3

    .line 80
    .line 81
    const/16 v16, 0x0

    .line 82
    .line 83
    :goto_3
    if-ge v3, v10, :cond_2

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    :goto_4
    if-ge v4, v9, :cond_1

    .line 87
    .line 88
    mul-int v17, v7, v9

    .line 89
    .line 90
    mul-int v17, v17, v13

    .line 91
    .line 92
    add-int v18, v3, v15

    .line 93
    .line 94
    mul-int v18, v18, v9

    .line 95
    .line 96
    add-int v17, v17, v18

    .line 97
    .line 98
    add-int v17, v17, v4

    .line 99
    .line 100
    aget v17, v0, v17

    .line 101
    .line 102
    mul-int v18, v3, v9

    .line 103
    .line 104
    add-int v18, v18, v4

    .line 105
    .line 106
    mul-int v18, v18, v6

    .line 107
    .line 108
    add-int v18, v18, v14

    .line 109
    .line 110
    aget v18, v1, v18

    .line 111
    .line 112
    mul-float v17, v17, v18

    .line 113
    .line 114
    add-float v16, v16, v17

    .line 115
    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_4

    .line 119
    :catchall_0
    move-exception v0

    .line 120
    goto :goto_5

    .line 121
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 122
    .line 123
    const/4 v4, 0x0

    .line 124
    goto :goto_3

    .line 125
    :cond_2
    mul-int v3, v11, v6

    .line 126
    .line 127
    mul-int/2addr v3, v13

    .line 128
    mul-int v4, v15, v6

    .line 129
    .line 130
    add-int/2addr v3, v4

    .line 131
    add-int/2addr v3, v14

    .line 132
    aput v16, v12, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    .line 134
    add-int/lit8 v15, v15, 0x1

    .line 135
    .line 136
    const/4 v3, 0x0

    .line 137
    const/4 v4, 0x0

    .line 138
    goto :goto_2

    .line 139
    :cond_3
    add-int/lit8 v14, v14, 0x1

    .line 140
    .line 141
    const/4 v3, 0x0

    .line 142
    const/4 v4, 0x0

    .line 143
    goto :goto_1

    .line 144
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 145
    .line 146
    const/4 v3, 0x0

    .line 147
    const/4 v4, 0x0

    .line 148
    goto :goto_0

    .line 149
    :cond_5
    return-object v8

    .line 150
    :goto_5
    invoke-static {v0, v2}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    return-object v1
.end method

.method public static final d(Lb2/a;Lb2/a;Lb2/a;)Lb2/a;
    .locals 10
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "w"

    .line 17
    .line 18
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v1, "b"

    .line 22
    .line 23
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v1}, Lb2/a;->b(I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p2, v1}, Lb2/a;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {p0, p1}, Lb2/g;->h(Lb2/a;Lb2/a;)Lb2/a;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {p2}, Lb2/a;->a()[F

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lb2/a;->a()[F

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    move v5, v1

    .line 48
    :goto_0
    if-ge v5, v3, :cond_2

    .line 49
    .line 50
    move v6, v1

    .line 51
    :goto_1
    if-ge v6, v4, :cond_1

    .line 52
    .line 53
    mul-int v7, v5, v4

    .line 54
    .line 55
    add-int/2addr v7, v6

    .line 56
    aget v8, p2, v7

    .line 57
    .line 58
    aget v9, p1, v6

    .line 59
    .line 60
    add-float/2addr v8, v9

    .line 61
    aput v8, p2, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    add-int/lit8 v6, v6, 0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    goto :goto_2

    .line 68
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    return-object p0

    .line 72
    :goto_2
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    return-object v2
.end method

.method public static final e([Ljava/lang/String;ILb2/a;)Lb2/a;
    .locals 13
    .param p0    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "texts"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "w"

    .line 17
    .line 18
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    array-length v1, p0

    .line 22
    const/4 v3, 0x1

    .line 23
    invoke-virtual {p2, v3}, Lb2/a;->b(I)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    new-instance v4, Lb2/a;

    .line 28
    .line 29
    filled-new-array {v1, p1, v3}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-direct {v4, v5}, Lb2/a;-><init>([I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v4}, Lb2/a;->a()[F

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-virtual {p2}, Lb2/a;->a()[F

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 v6, 0x0

    .line 45
    move v7, v6

    .line 46
    :goto_0
    if-ge v7, v1, :cond_2

    .line 47
    .line 48
    sget-object v8, Lb2/h;->a:Lb2/h;

    .line 49
    .line 50
    aget-object v9, p0, v7

    .line 51
    .line 52
    invoke-virtual {v8, v9, p1}, Lb2/h;->d(Ljava/lang/String;I)[I

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    move v9, v6

    .line 57
    :goto_1
    if-ge v9, p1, :cond_1

    .line 58
    .line 59
    aget v10, v8, v9

    .line 60
    .line 61
    mul-int/2addr v10, v3

    .line 62
    mul-int v11, v3, p1

    .line 63
    .line 64
    mul-int/2addr v11, v7

    .line 65
    mul-int v12, v3, v9

    .line 66
    .line 67
    add-int/2addr v11, v12

    .line 68
    invoke-static {p2, v10, v5, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    add-int/lit8 v9, v9, 0x1

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_0
    move-exception p0

    .line 75
    goto :goto_2

    .line 76
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_2
    return-object v4

    .line 80
    :goto_2
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return-object v2
.end method

.method public static final f(Lb2/a;I)V
    .locals 5
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lb2/a;->c()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt p1, v1, :cond_1

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    invoke-virtual {p0}, Lb2/a;->c()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, 0x1

    .line 27
    move v3, p1

    .line 28
    :goto_0
    if-ge v3, v1, :cond_2

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lb2/a;->b(I)I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    mul-int/2addr v2, v4

    .line 35
    add-int/lit8 v3, v3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 41
    .line 42
    new-array v1, v1, [I

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    :goto_1
    if-ge v3, p1, :cond_3

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Lb2/a;->b(I)I

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    aput v4, v1, v3

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_3
    aput v2, v1, p1

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lb2/a;->d([I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_2
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public static final g(Lb2/a;I)Lb2/a;
    .locals 18
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Lb2/g;

    .line 6
    .line 7
    invoke-static {v2}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    :try_start_0
    const-string v3, "x"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v3}, Lb2/a;->b(I)I

    .line 22
    .line 23
    .line 24
    move-result v5

    .line 25
    const/4 v6, 0x1

    .line 26
    invoke-virtual {v0, v6}, Lb2/a;->b(I)I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    const/4 v8, 0x2

    .line 31
    invoke-virtual {v0, v8}, Lb2/a;->b(I)I

    .line 32
    .line 33
    .line 34
    move-result v8

    .line 35
    sub-int v9, v7, v1

    .line 36
    .line 37
    add-int/2addr v9, v6

    .line 38
    new-instance v6, Lb2/a;

    .line 39
    .line 40
    filled-new-array {v5, v9, v8}, [I

    .line 41
    .line 42
    .line 43
    move-result-object v10

    .line 44
    invoke-direct {v6, v10}, Lb2/a;-><init>([I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual/range {p0 .. p0}, Lb2/a;->a()[F

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v6}, Lb2/a;->a()[F

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    move v11, v3

    .line 56
    :goto_0
    if-ge v11, v5, :cond_4

    .line 57
    .line 58
    move v12, v3

    .line 59
    :goto_1
    if-ge v12, v8, :cond_3

    .line 60
    .line 61
    move v13, v3

    .line 62
    :goto_2
    if-ge v13, v9, :cond_2

    .line 63
    .line 64
    mul-int v14, v11, v9

    .line 65
    .line 66
    mul-int/2addr v14, v8

    .line 67
    mul-int v15, v13, v8

    .line 68
    .line 69
    add-int/2addr v14, v15

    .line 70
    add-int/2addr v14, v12

    .line 71
    mul-int v16, v11, v7

    .line 72
    .line 73
    mul-int v16, v16, v8

    .line 74
    .line 75
    add-int v16, v16, v15

    .line 76
    .line 77
    add-int v16, v16, v12

    .line 78
    .line 79
    const/4 v15, 0x1

    .line 80
    aput v15, v10, v14

    .line 81
    .line 82
    move v15, v3

    .line 83
    :goto_3
    if-ge v15, v1, :cond_1

    .line 84
    .line 85
    aget v3, v10, v14

    .line 86
    .line 87
    mul-int v17, v15, v8

    .line 88
    .line 89
    add-int v17, v16, v17

    .line 90
    .line 91
    aget v4, v0, v17

    .line 92
    .line 93
    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    aput v3, v10, v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    .line 99
    add-int/lit8 v15, v15, 0x1

    .line 100
    .line 101
    const/4 v3, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    goto :goto_3

    .line 104
    :catchall_0
    move-exception v0

    .line 105
    goto :goto_4

    .line 106
    :cond_1
    add-int/lit8 v13, v13, 0x1

    .line 107
    .line 108
    const/4 v3, 0x0

    .line 109
    const/4 v4, 0x0

    .line 110
    goto :goto_2

    .line 111
    :cond_2
    add-int/lit8 v12, v12, 0x1

    .line 112
    .line 113
    const/4 v3, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    goto :goto_1

    .line 116
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    const/4 v4, 0x0

    .line 120
    goto :goto_0

    .line 121
    :cond_4
    return-object v6

    .line 122
    :goto_4
    invoke-static {v0, v2}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    return-object v1
.end method

.method public static final h(Lb2/a;Lb2/a;)Lb2/a;
    .locals 17
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-class v2, Lb2/g;

    .line 6
    .line 7
    invoke-static {v2}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    const/4 v4, 0x0

    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    return-object v4

    .line 15
    :cond_0
    :try_start_0
    const-string v3, "x"

    .line 16
    .line 17
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "w"

    .line 21
    .line 22
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v0, v3}, Lb2/a;->b(I)I

    .line 27
    .line 28
    .line 29
    move-result v5

    .line 30
    invoke-virtual {v1, v3}, Lb2/a;->b(I)I

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    const/4 v7, 0x1

    .line 35
    invoke-virtual {v1, v7}, Lb2/a;->b(I)I

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    new-instance v8, Lb2/a;

    .line 40
    .line 41
    filled-new-array {v5, v7}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v9

    .line 45
    invoke-direct {v8, v9}, Lb2/a;-><init>([I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual/range {p0 .. p0}, Lb2/a;->a()[F

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual/range {p1 .. p1}, Lb2/a;->a()[F

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v8}, Lb2/a;->a()[F

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    move v10, v3

    .line 61
    :goto_0
    if-ge v10, v5, :cond_3

    .line 62
    .line 63
    move v11, v3

    .line 64
    :goto_1
    if-ge v11, v7, :cond_2

    .line 65
    .line 66
    mul-int v12, v10, v7

    .line 67
    .line 68
    add-int/2addr v12, v11

    .line 69
    const/4 v13, 0x0

    .line 70
    aput v13, v9, v12

    .line 71
    .line 72
    move v13, v3

    .line 73
    :goto_2
    if-ge v13, v6, :cond_1

    .line 74
    .line 75
    aget v14, v9, v12

    .line 76
    .line 77
    mul-int v15, v10, v6

    .line 78
    .line 79
    add-int/2addr v15, v13

    .line 80
    aget v15, v0, v15

    .line 81
    .line 82
    mul-int v16, v13, v7

    .line 83
    .line 84
    add-int v16, v16, v11

    .line 85
    .line 86
    aget v16, v1, v16

    .line 87
    .line 88
    mul-float v15, v15, v16

    .line 89
    .line 90
    add-float/2addr v14, v15

    .line 91
    aput v14, v9, v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    .line 93
    add-int/lit8 v13, v13, 0x1

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :catchall_0
    move-exception v0

    .line 97
    goto :goto_3

    .line 98
    :cond_1
    add-int/lit8 v11, v11, 0x1

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    return-object v8

    .line 105
    :goto_3
    invoke-static {v0, v2}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    return-object v4
.end method

.method public static final i(Lb2/a;)V
    .locals 5
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lb2/a;->a()[F

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    array-length v1, p0

    .line 20
    const/4 v2, 0x0

    .line 21
    :goto_0
    if-ge v2, v1, :cond_2

    .line 22
    .line 23
    aget v3, p0, v2

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    cmpg-float v3, v3, v4

    .line 27
    .line 28
    if-gez v3, :cond_1

    .line 29
    .line 30
    aput v4, p0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_2

    .line 35
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    return-void

    .line 39
    :goto_2
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public static final j(Lb2/a;)V
    .locals 11
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1}, Lb2/a;->b(I)I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {p0, v3}, Lb2/a;->b(I)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    invoke-virtual {p0}, Lb2/a;->a()[F

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    :goto_0
    if-ge v1, v2, :cond_5

    .line 30
    .line 31
    mul-int v4, v1, v3

    .line 32
    .line 33
    add-int v5, v4, v3

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    move v7, v4

    .line 37
    :goto_1
    if-ge v7, v5, :cond_2

    .line 38
    .line 39
    aget v8, p0, v7

    .line 40
    .line 41
    cmpl-float v9, v8, v6

    .line 42
    .line 43
    if-lez v9, :cond_1

    .line 44
    .line 45
    move v6, v8

    .line 46
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-exception p0

    .line 50
    goto :goto_4

    .line 51
    :cond_2
    const/4 v7, 0x0

    .line 52
    move v8, v4

    .line 53
    :goto_2
    if-ge v8, v5, :cond_3

    .line 54
    .line 55
    aget v9, p0, v8

    .line 56
    .line 57
    sub-float/2addr v9, v6

    .line 58
    float-to-double v9, v9

    .line 59
    invoke-static {v9, v10}, Ljava/lang/Math;->exp(D)D

    .line 60
    .line 61
    .line 62
    move-result-wide v9

    .line 63
    double-to-float v9, v9

    .line 64
    aput v9, p0, v8

    .line 65
    .line 66
    add-float/2addr v7, v9

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_3
    if-ge v4, v5, :cond_4

    .line 71
    .line 72
    aget v6, p0, v4

    .line 73
    .line 74
    div-float/2addr v6, v7

    .line 75
    aput v6, p0, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .line 77
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_5
    return-void

    .line 84
    :goto_4
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static final k(Lb2/a;)Lb2/a;
    .locals 11
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lb2/a;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-virtual {p0, v4}, Lb2/a;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    new-instance v5, Lb2/a;

    .line 27
    .line 28
    filled-new-array {v4, v3}, [I

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-direct {v5, v6}, Lb2/a;-><init>([I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Lb2/a;->a()[F

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v5}, Lb2/a;->a()[F

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    move v7, v1

    .line 44
    :goto_0
    if-ge v7, v3, :cond_2

    .line 45
    .line 46
    move v8, v1

    .line 47
    :goto_1
    if-ge v8, v4, :cond_1

    .line 48
    .line 49
    mul-int v9, v8, v3

    .line 50
    .line 51
    add-int/2addr v9, v7

    .line 52
    mul-int v10, v7, v4

    .line 53
    .line 54
    add-int/2addr v10, v8

    .line 55
    aget v10, p0, v10

    .line 56
    .line 57
    aput v10, v6, v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    add-int/lit8 v8, v8, 0x1

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_2

    .line 64
    :cond_1
    add-int/lit8 v7, v7, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    return-object v5

    .line 68
    :goto_2
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    return-object v2
.end method

.method public static final l(Lb2/a;)Lb2/a;
    .locals 14
    .param p0    # Lb2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lb2/g;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return-object v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "x"

    .line 12
    .line 13
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p0, v1}, Lb2/a;->b(I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-virtual {p0, v4}, Lb2/a;->b(I)I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    const/4 v5, 0x2

    .line 27
    invoke-virtual {p0, v5}, Lb2/a;->b(I)I

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    new-instance v6, Lb2/a;

    .line 32
    .line 33
    filled-new-array {v5, v4, v3}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    invoke-direct {v6, v7}, Lb2/a;-><init>([I)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Lb2/a;->a()[F

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {v6}, Lb2/a;->a()[F

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    move v8, v1

    .line 49
    :goto_0
    if-ge v8, v3, :cond_3

    .line 50
    .line 51
    move v9, v1

    .line 52
    :goto_1
    if-ge v9, v4, :cond_2

    .line 53
    .line 54
    move v10, v1

    .line 55
    :goto_2
    if-ge v10, v5, :cond_1

    .line 56
    .line 57
    mul-int v11, v10, v3

    .line 58
    .line 59
    mul-int/2addr v11, v4

    .line 60
    mul-int v12, v9, v3

    .line 61
    .line 62
    add-int/2addr v11, v12

    .line 63
    add-int/2addr v11, v8

    .line 64
    mul-int v12, v8, v4

    .line 65
    .line 66
    mul-int/2addr v12, v5

    .line 67
    mul-int v13, v9, v5

    .line 68
    .line 69
    add-int/2addr v12, v13

    .line 70
    add-int/2addr v12, v10

    .line 71
    aget v12, p0, v12

    .line 72
    .line 73
    aput v12, v7, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    add-int/lit8 v10, v10, 0x1

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :catchall_0
    move-exception p0

    .line 79
    goto :goto_3

    .line 80
    :cond_1
    add-int/lit8 v9, v9, 0x1

    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v8, v8, 0x1

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_3
    return-object v6

    .line 87
    :goto_3
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    return-object v2
.end method
