.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;ZLjava/lang/Boolean;IIIZZ)Ljava/util/List;
    .locals 16
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Z",
            "Ljava/lang/Boolean;",
            "IIIZZ)",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "externalLinkHandler"

    .line 9
    .line 10
    move-object/from16 v13, p1

    .line 11
    .line 12
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "context"

    .line 16
    .line 17
    move-object/from16 v14, p2

    .line 18
    .line 19
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "customUserEventBuilderService"

    .line 23
    .line 24
    move-object/from16 v15, p3

    .line 25
    .line 26
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k$c;

    .line 30
    .line 31
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/e;

    .line 32
    .line 33
    invoke-virtual/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    const/4 v4, 0x0

    .line 38
    move-object v2, v12

    .line 39
    move/from16 v5, p4

    .line 40
    .line 41
    move-object/from16 v6, p5

    .line 42
    .line 43
    move/from16 v7, p6

    .line 44
    .line 45
    move/from16 v8, p9

    .line 46
    .line 47
    move/from16 v9, p10

    .line 48
    .line 49
    move-object/from16 v10, p2

    .line 50
    .line 51
    move-object/from16 v11, p3

    .line 52
    .line 53
    move-object v1, v12

    .line 54
    move-object/from16 v12, p1

    .line 55
    .line 56
    invoke-direct/range {v2 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;IZLjava/lang/Boolean;IZZLandroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/linear/c;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    const/4 v1, 0x0

    .line 67
    const/4 v10, 0x0

    .line 68
    if-eqz v3, :cond_0

    .line 69
    .line 70
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k$a;

    .line 71
    .line 72
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/c;

    .line 73
    .line 74
    move/from16 v2, p7

    .line 75
    .line 76
    invoke-static {v2, v10}, Lkotlin/ranges/e;->e(II)I

    .line 77
    .line 78
    .line 79
    move-result v2

    .line 80
    invoke-static {v2}, Lms/n;->b(I)I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    const/4 v9, 0x0

    .line 85
    move-object v2, v12

    .line 86
    move-object/from16 v5, p2

    .line 87
    .line 88
    move-object/from16 v6, p3

    .line 89
    .line 90
    move-object/from16 v7, p1

    .line 91
    .line 92
    move/from16 v8, p4

    .line 93
    .line 94
    invoke-direct/range {v2 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/c;ILandroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;ZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 95
    .line 96
    .line 97
    invoke-direct {v11, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/a;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_0
    move-object v11, v1

    .line 102
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    if-eqz v2, :cond_1

    .line 107
    .line 108
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k$b;

    .line 109
    .line 110
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/c;

    .line 111
    .line 112
    invoke-virtual/range {p0 .. p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;->g()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/f;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    move/from16 v1, p8

    .line 121
    .line 122
    invoke-static {v1, v10}, Lkotlin/ranges/e;->e(II)I

    .line 123
    .line 124
    .line 125
    move-result v1

    .line 126
    invoke-static {v1}, Lms/n;->b(I)I

    .line 127
    .line 128
    .line 129
    move-result v4

    .line 130
    const/4 v8, 0x0

    .line 131
    move-object v1, v12

    .line 132
    move-object/from16 v5, p2

    .line 133
    .line 134
    move-object/from16 v6, p3

    .line 135
    .line 136
    move-object/from16 v7, p1

    .line 137
    .line 138
    invoke-direct/range {v1 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/e;ILandroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {v9, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/dec/a;)V

    .line 142
    .line 143
    .line 144
    move-object v1, v9

    .line 145
    :cond_1
    const/4 v2, 0x3

    .line 146
    new-array v2, v2, [Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/k;

    .line 147
    .line 148
    aput-object v0, v2, v10

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    aput-object v11, v2, v0

    .line 152
    .line 153
    const/4 v0, 0x2

    .line 154
    aput-object v1, v2, v0

    .line 155
    .line 156
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->s([Ljava/lang/Object;)Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    return-object v0
.end method
