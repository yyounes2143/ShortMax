.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Tap.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/TapKt\n*L\n1#1,155:1\n146#1:156\n138#1,10:157\n152#1:167\n138#1,5:168\n153#1:173\n152#1:174\n138#1,5:175\n153#1:180\n138#1,5:181\n138#1,5:186\n*S KotlinDebug\n*F\n+ 1 Tap.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/TapKt\n*L\n63#1:156\n63#1:157,10\n66#1:167\n66#1:168,5\n66#1:173\n78#1:174\n78#1:175,5\n78#1:180\n146#1:181,5\n152#1:186,5\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b;->c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p0    # Landroidx/compose/ui/input/pointer/PointerInputScope;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/PointerInputScope;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "-",
            "Landroidx/compose/ui/geometry/Offset;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/a;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$a;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, p1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/a;Lkotlin/jvm/functions/Function2;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v1, p2}, Landroidx/compose/foundation/gestures/ForEachGestureKt;->forEachGesture(Landroidx/compose/ui/input/pointer/PointerInputScope;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    if-ne p0, p1, :cond_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method public static final c(Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/input/pointer/PointerInputChange;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->j:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->j:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    const/4 v6, 0x1

    .line 37
    if-eqz v2, :cond_3

    .line 38
    .line 39
    if-eq v2, v6, :cond_2

    .line 40
    .line 41
    if-ne v2, v4, :cond_1

    .line 42
    .line 43
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto/16 :goto_5

    .line 51
    .line 52
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0

    .line 60
    :cond_2
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;

    .line 63
    .line 64
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :cond_4
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 72
    .line 73
    iput-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->h:Ljava/lang/Object;

    .line 74
    .line 75
    iput v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->j:I

    .line 76
    .line 77
    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    if-ne p1, v1, :cond_5

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_5
    :goto_1
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    move v8, v5

    .line 95
    :goto_2
    if-ge v8, v7, :cond_c

    .line 96
    .line 97
    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v9

    .line 101
    check-cast v9, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 102
    .line 103
    invoke-static {v9}, Landroidx/compose/ui/input/pointer/PointerEventKt;->changedToUp(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    .line 104
    .line 105
    .line 106
    move-result v9

    .line 107
    if-nez v9, :cond_b

    .line 108
    .line 109
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    move v7, v5

    .line 118
    :goto_3
    if-ge v7, v2, :cond_8

    .line 119
    .line 120
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v8

    .line 124
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 125
    .line 126
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-nez v9, :cond_7

    .line 131
    .line 132
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getSize-YbymL2g()J

    .line 133
    .line 134
    .line 135
    move-result-wide v9

    .line 136
    invoke-interface {p0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->getExtendedTouchPadding-NH-jbRc()J

    .line 137
    .line 138
    .line 139
    move-result-wide v11

    .line 140
    invoke-static {v8, v9, v10, v11, v12}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-jwHxaWs(Landroidx/compose/ui/input/pointer/PointerInputChange;JJ)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-eqz v8, :cond_6

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_6
    add-int/lit8 v7, v7, 0x1

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_7
    :goto_4
    return-object v3

    .line 151
    :cond_8
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    .line 152
    .line 153
    iput-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->h:Ljava/lang/Object;

    .line 154
    .line 155
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/compose/touch/b$b;->j:I

    .line 156
    .line 157
    invoke-interface {p0, p1, v0}, Landroidx/compose/ui/input/pointer/AwaitPointerEventScope;->awaitPointerEvent(Landroidx/compose/ui/input/pointer/PointerEventPass;Lrs/c;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    if-ne p1, v1, :cond_9

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_9
    :goto_5
    check-cast p1, Landroidx/compose/ui/input/pointer/PointerEvent;

    .line 165
    .line 166
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    move v7, v5

    .line 175
    :goto_6
    if-ge v7, v2, :cond_4

    .line 176
    .line 177
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    .line 182
    .line 183
    invoke-virtual {v8}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    .line 184
    .line 185
    .line 186
    move-result v8

    .line 187
    if-eqz v8, :cond_a

    .line 188
    .line 189
    return-object v3

    .line 190
    :cond_a
    add-int/lit8 v7, v7, 0x1

    .line 191
    .line 192
    goto :goto_6

    .line 193
    :cond_b
    add-int/lit8 v8, v8, 0x1

    .line 194
    .line 195
    goto :goto_2

    .line 196
    :cond_c
    invoke-virtual {p1}, Landroidx/compose/ui/input/pointer/PointerEvent;->getChanges()Ljava/util/List;

    .line 197
    .line 198
    .line 199
    move-result-object p0

    .line 200
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p0

    .line 204
    return-object p0
.end method
