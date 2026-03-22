.class public final Landroidx/compose/ui/graphics/AndroidMatrixConversions_androidKt;
.super Ljava/lang/Object;
.source "AndroidMatrixConversions.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final setFrom-EL8BTi8(Landroid/graphics/Matrix;[F)V
    .locals 23
    .param p0    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "$this$setFrom"

    .line 4
    .line 5
    move-object/from16 v2, p0

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "matrix"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    aget v3, v0, v1

    .line 17
    .line 18
    const/4 v4, 0x0

    .line 19
    cmpg-float v5, v3, v4

    .line 20
    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    const/4 v5, 0x6

    .line 24
    aget v6, v0, v5

    .line 25
    .line 26
    cmpg-float v7, v6, v4

    .line 27
    .line 28
    if-nez v7, :cond_0

    .line 29
    .line 30
    const/16 v7, 0xa

    .line 31
    .line 32
    aget v7, v0, v7

    .line 33
    .line 34
    const/high16 v8, 0x3f800000    # 1.0f

    .line 35
    .line 36
    cmpg-float v7, v7, v8

    .line 37
    .line 38
    if-nez v7, :cond_0

    .line 39
    .line 40
    const/16 v7, 0xe

    .line 41
    .line 42
    aget v7, v0, v7

    .line 43
    .line 44
    cmpg-float v7, v7, v4

    .line 45
    .line 46
    if-nez v7, :cond_0

    .line 47
    .line 48
    const/16 v7, 0x8

    .line 49
    .line 50
    aget v8, v0, v7

    .line 51
    .line 52
    cmpg-float v9, v8, v4

    .line 53
    .line 54
    if-nez v9, :cond_0

    .line 55
    .line 56
    const/16 v9, 0x9

    .line 57
    .line 58
    aget v9, v0, v9

    .line 59
    .line 60
    cmpg-float v9, v9, v4

    .line 61
    .line 62
    if-nez v9, :cond_0

    .line 63
    .line 64
    const/16 v9, 0xb

    .line 65
    .line 66
    aget v9, v0, v9

    .line 67
    .line 68
    cmpg-float v4, v9, v4

    .line 69
    .line 70
    if-nez v4, :cond_0

    .line 71
    .line 72
    const/4 v4, 0x0

    .line 73
    aget v9, v0, v4

    .line 74
    .line 75
    const/4 v10, 0x1

    .line 76
    aget v11, v0, v10

    .line 77
    .line 78
    const/4 v12, 0x3

    .line 79
    aget v13, v0, v12

    .line 80
    .line 81
    const/4 v14, 0x4

    .line 82
    aget v15, v0, v14

    .line 83
    .line 84
    const/16 v16, 0x5

    .line 85
    .line 86
    aget v17, v0, v16

    .line 87
    .line 88
    const/16 v18, 0x7

    .line 89
    .line 90
    aget v19, v0, v18

    .line 91
    .line 92
    const/16 v20, 0xc

    .line 93
    .line 94
    aget v20, v0, v20

    .line 95
    .line 96
    const/16 v21, 0xd

    .line 97
    .line 98
    aget v21, v0, v21

    .line 99
    .line 100
    const/16 v22, 0xf

    .line 101
    .line 102
    aget v22, v0, v22

    .line 103
    .line 104
    aput v9, v0, v4

    .line 105
    .line 106
    aput v15, v0, v10

    .line 107
    .line 108
    aput v20, v0, v1

    .line 109
    .line 110
    aput v11, v0, v12

    .line 111
    .line 112
    aput v17, v0, v14

    .line 113
    .line 114
    aput v21, v0, v16

    .line 115
    .line 116
    aput v13, v0, v5

    .line 117
    .line 118
    aput v19, v0, v18

    .line 119
    .line 120
    aput v22, v0, v7

    .line 121
    .line 122
    invoke-virtual/range {p0 .. p1}, Landroid/graphics/Matrix;->setValues([F)V

    .line 123
    .line 124
    .line 125
    aput v9, v0, v4

    .line 126
    .line 127
    aput v11, v0, v10

    .line 128
    .line 129
    aput v3, v0, v1

    .line 130
    .line 131
    aput v13, v0, v12

    .line 132
    .line 133
    aput v15, v0, v14

    .line 134
    .line 135
    aput v17, v0, v16

    .line 136
    .line 137
    aput v6, v0, v5

    .line 138
    .line 139
    aput v19, v0, v18

    .line 140
    .line 141
    aput v8, v0, v7

    .line 142
    .line 143
    return-void

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string v1, "Android does not support arbitrary transforms"

    .line 147
    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0
.end method

.method public static final setFrom-tU-YjHk([FLandroid/graphics/Matrix;)V
    .locals 19
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Landroid/graphics/Matrix;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "$this$setFrom"

    .line 6
    .line 7
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v2, "matrix"

    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    aget v2, v0, v1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    aget v4, v0, v3

    .line 23
    .line 24
    const/4 v5, 0x2

    .line 25
    aget v6, v0, v5

    .line 26
    .line 27
    const/4 v7, 0x3

    .line 28
    aget v8, v0, v7

    .line 29
    .line 30
    const/4 v9, 0x4

    .line 31
    aget v10, v0, v9

    .line 32
    .line 33
    const/4 v11, 0x5

    .line 34
    aget v12, v0, v11

    .line 35
    .line 36
    const/4 v13, 0x6

    .line 37
    aget v14, v0, v13

    .line 38
    .line 39
    const/4 v15, 0x7

    .line 40
    aget v16, v0, v15

    .line 41
    .line 42
    const/16 v17, 0x8

    .line 43
    .line 44
    aget v18, v0, v17

    .line 45
    .line 46
    aput v2, v0, v1

    .line 47
    .line 48
    aput v8, v0, v3

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    aput v1, v0, v5

    .line 52
    .line 53
    aput v14, v0, v7

    .line 54
    .line 55
    aput v4, v0, v9

    .line 56
    .line 57
    aput v10, v0, v11

    .line 58
    .line 59
    aput v1, v0, v13

    .line 60
    .line 61
    aput v16, v0, v15

    .line 62
    .line 63
    aput v1, v0, v17

    .line 64
    .line 65
    const/16 v2, 0x9

    .line 66
    .line 67
    aput v1, v0, v2

    .line 68
    .line 69
    const/16 v2, 0xa

    .line 70
    .line 71
    const/high16 v3, 0x3f800000    # 1.0f

    .line 72
    .line 73
    aput v3, v0, v2

    .line 74
    .line 75
    const/16 v2, 0xb

    .line 76
    .line 77
    aput v1, v0, v2

    .line 78
    .line 79
    const/16 v2, 0xc

    .line 80
    .line 81
    aput v6, v0, v2

    .line 82
    .line 83
    const/16 v2, 0xd

    .line 84
    .line 85
    aput v12, v0, v2

    .line 86
    .line 87
    const/16 v2, 0xe

    .line 88
    .line 89
    aput v1, v0, v2

    .line 90
    .line 91
    const/16 v1, 0xf

    .line 92
    .line 93
    aput v18, v0, v1

    .line 94
    .line 95
    return-void
.end method
