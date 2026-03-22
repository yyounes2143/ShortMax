.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkt/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkt/c;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n1#1,49:1\n57#2:50\n58#2:86\n244#3,35:51\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkt/c;

.field public final synthetic b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

.field public final synthetic c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

.field public final synthetic d:D

.field public final synthetic e:Lcom/moloco/sdk/common_adapter_internal/b;

.field public final synthetic f:Z

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkt/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->a:Lkt/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->d:D

    .line 8
    .line 9
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->e:Lcom/moloco/sdk/common_adapter_internal/b;

    .line 10
    .line 11
    iput-boolean p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->f:Z

    .line 12
    .line 13
    iput-object p8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->g:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->i:I

    .line 13
    .line 14
    const/high16 v4, -0x80000000

    .line 15
    .line 16
    and-int v5, v3, v4

    .line 17
    .line 18
    if-eqz v5, :cond_0

    .line 19
    .line 20
    sub-int/2addr v3, v4

    .line 21
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->i:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->h:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v12

    .line 35
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->i:I

    .line 36
    .line 37
    const/4 v13, 0x3

    .line 38
    const/4 v4, 0x2

    .line 39
    const/4 v5, 0x1

    .line 40
    const/4 v14, 0x0

    .line 41
    if-eqz v3, :cond_4

    .line 42
    .line 43
    if-eq v3, v5, :cond_3

    .line 44
    .line 45
    if-eq v3, v4, :cond_2

    .line 46
    .line 47
    if-ne v3, v13, :cond_1

    .line 48
    .line 49
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    goto/16 :goto_6

    .line 53
    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v1

    .line 62
    :cond_2
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->l:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v3, Lkt/c;

    .line 65
    .line 66
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->j:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;

    .line 69
    .line 70
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->l:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v3, Lkt/c;

    .line 78
    .line 79
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->j:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;

    .line 82
    .line 83
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_4
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->a:Lkt/c;

    .line 91
    .line 92
    move-object/from16 v3, p1

    .line 93
    .line 94
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;

    .line 95
    .line 96
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    instance-of v6, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d$b;

    .line 101
    .line 102
    if-eqz v6, :cond_6

    .line 103
    .line 104
    sget-object v15, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 105
    .line 106
    iget-object v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 107
    .line 108
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->A(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v16

    .line 112
    const/16 v20, 0xc

    .line 113
    .line 114
    const/16 v21, 0x0

    .line 115
    .line 116
    const-string v17, "Found Wrapper child element, trying load wrapper render Ad"

    .line 117
    .line 118
    const/16 v18, 0x0

    .line 119
    .line 120
    const/16 v19, 0x0

    .line 121
    .line 122
    invoke-static/range {v15 .. v21}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 126
    .line 127
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d$b;

    .line 128
    .line 129
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    iget-object v7, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 134
    .line 135
    iget-wide v8, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->d:D

    .line 136
    .line 137
    iget-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->e:Lcom/moloco/sdk/common_adapter_internal/b;

    .line 138
    .line 139
    iget-boolean v11, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->f:Z

    .line 140
    .line 141
    iget-object v15, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->g:Ljava/lang/String;

    .line 142
    .line 143
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->j:Ljava/lang/Object;

    .line 144
    .line 145
    iput-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->l:Ljava/lang/Object;

    .line 146
    .line 147
    iput v5, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->i:I

    .line 148
    .line 149
    move-object v3, v4

    .line 150
    move-object v4, v6

    .line 151
    move-object v5, v7

    .line 152
    move-wide v6, v8

    .line 153
    move-object v8, v10

    .line 154
    move v9, v11

    .line 155
    move-object v10, v15

    .line 156
    move-object v11, v2

    .line 157
    invoke-static/range {v3 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->m(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-ne v3, v12, :cond_5

    .line 162
    .line 163
    return-object v12

    .line 164
    :cond_5
    move-object v4, v0

    .line 165
    move-object/from16 v22, v3

    .line 166
    .line 167
    move-object v3, v1

    .line 168
    move-object/from16 v1, v22

    .line 169
    .line 170
    :goto_1
    check-cast v1, Lcom/moloco/sdk/internal/g0;

    .line 171
    .line 172
    goto :goto_4

    .line 173
    :cond_6
    instance-of v5, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d$a;

    .line 174
    .line 175
    if-eqz v5, :cond_c

    .line 176
    .line 177
    sget-object v15, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 178
    .line 179
    iget-object v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 180
    .line 181
    invoke-static {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->A(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v16

    .line 185
    const/16 v20, 0xc

    .line 186
    .line 187
    const/16 v21, 0x0

    .line 188
    .line 189
    const-string v17, "Found InLine child element, trying load render Ad"

    .line 190
    .line 191
    const/16 v18, 0x0

    .line 192
    .line 193
    const/16 v19, 0x0

    .line 194
    .line 195
    invoke-static/range {v15 .. v21}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    iget-object v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 199
    .line 200
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d$a;

    .line 201
    .line 202
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    iget-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;

    .line 207
    .line 208
    if-eqz v3, :cond_7

    .line 209
    .line 210
    invoke-virtual {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    move-object v7, v3

    .line 215
    goto :goto_2

    .line 216
    :cond_7
    move-object v7, v14

    .line 217
    :goto_2
    iget-wide v8, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->d:D

    .line 218
    .line 219
    iget-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->e:Lcom/moloco/sdk/common_adapter_internal/b;

    .line 220
    .line 221
    iget-boolean v11, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->f:Z

    .line 222
    .line 223
    iget-object v15, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->g:Ljava/lang/String;

    .line 224
    .line 225
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->j:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->l:Ljava/lang/Object;

    .line 228
    .line 229
    iput v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->i:I

    .line 230
    .line 231
    move-object v3, v5

    .line 232
    move-object v4, v6

    .line 233
    move-object v5, v7

    .line 234
    move-wide v6, v8

    .line 235
    move-object v8, v10

    .line 236
    move v9, v11

    .line 237
    move-object v10, v15

    .line 238
    move-object v11, v2

    .line 239
    invoke-static/range {v3 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$a;DLcom/moloco/sdk/common_adapter_internal/b;ZLjava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    if-ne v3, v12, :cond_8

    .line 244
    .line 245
    return-object v12

    .line 246
    :cond_8
    move-object v4, v0

    .line 247
    move-object/from16 v22, v3

    .line 248
    .line 249
    move-object v3, v1

    .line 250
    move-object/from16 v1, v22

    .line 251
    .line 252
    :goto_3
    check-cast v1, Lcom/moloco/sdk/internal/g0;

    .line 253
    .line 254
    :goto_4
    instance-of v5, v1, Lcom/moloco/sdk/internal/g0$a;

    .line 255
    .line 256
    if-eqz v5, :cond_9

    .line 257
    .line 258
    sget-object v15, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 259
    .line 260
    iget-object v5, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 261
    .line 262
    invoke-static {v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->A(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v16

    .line 266
    new-instance v5, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v6, "Failed to load the ad with error: "

    .line 272
    .line 273
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    check-cast v1, Lcom/moloco/sdk/internal/g0$a;

    .line 277
    .line 278
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    .line 287
    .line 288
    move-result-object v17

    .line 289
    const/16 v20, 0xc

    .line 290
    .line 291
    const/16 v21, 0x0

    .line 292
    .line 293
    const/16 v18, 0x0

    .line 294
    .line 295
    const/16 v19, 0x0

    .line 296
    .line 297
    invoke-static/range {v15 .. v21}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 298
    .line 299
    .line 300
    iget-object v4, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a;->h:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 301
    .line 302
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    iput-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 307
    .line 308
    move-object v1, v14

    .line 309
    goto :goto_5

    .line 310
    :cond_9
    instance-of v4, v1, Lcom/moloco/sdk/internal/g0$b;

    .line 311
    .line 312
    if-eqz v4, :cond_b

    .line 313
    .line 314
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    .line 315
    .line 316
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v1

    .line 320
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 321
    .line 322
    :goto_5
    if-eqz v1, :cond_a

    .line 323
    .line 324
    iput-object v14, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->j:Ljava/lang/Object;

    .line 325
    .line 326
    iput-object v14, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->l:Ljava/lang/Object;

    .line 327
    .line 328
    iput v13, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$i$a$a;->i:I

    .line 329
    .line 330
    invoke-interface {v3, v1, v2}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    if-ne v1, v12, :cond_a

    .line 335
    .line 336
    return-object v12

    .line 337
    :cond_a
    :goto_6
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 338
    .line 339
    return-object v1

    .line 340
    :cond_b
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 341
    .line 342
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 343
    .line 344
    .line 345
    throw v1

    .line 346
    :cond_c
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 347
    .line 348
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 349
    .line 350
    .line 351
    throw v1
.end method
