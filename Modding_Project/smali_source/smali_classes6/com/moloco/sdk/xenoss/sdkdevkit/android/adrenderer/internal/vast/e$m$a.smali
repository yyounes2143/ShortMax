.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkt/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m;->collect(Lkt/c;Lrs/c;)Ljava/lang/Object;
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
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 VastAdLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastAdLoaderImpl\n*L\n1#1,49:1\n57#2:50\n58#2:82\n533#3,31:51\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkt/c;

.field public final synthetic b:Z

.field public final synthetic c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lkt/c;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->a:Lkt/c;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->b:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 8

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->i:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->i:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    const/4 v6, 0x0

    .line 37
    if-eqz v2, :cond_4

    .line 38
    .line 39
    if-eq v2, v5, :cond_3

    .line 40
    .line 41
    if-eq v2, v4, :cond_2

    .line 42
    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_5

    .line 49
    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->m:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;

    .line 61
    .line 62
    iget-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->l:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lkt/c;

    .line 65
    .line 66
    iget-object v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->j:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_3
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->m:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;

    .line 78
    .line 79
    iget-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->l:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v2, Lkt/c;

    .line 82
    .line 83
    iget-object v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->j:Ljava/lang/Object;

    .line 84
    .line 85
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;

    .line 86
    .line 87
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_4
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->a:Lkt/c;

    .line 95
    .line 96
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;

    .line 97
    .line 98
    iget-boolean p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->b:Z

    .line 99
    .line 100
    if-eqz p2, :cond_9

    .line 101
    .line 102
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 103
    .line 104
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->y(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->e()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->d:Ljava/lang/String;

    .line 113
    .line 114
    iput-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->j:Ljava/lang/Object;

    .line 115
    .line 116
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->l:Ljava/lang/Object;

    .line 117
    .line 118
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->m:Ljava/lang/Object;

    .line 119
    .line 120
    iput v5, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->i:I

    .line 121
    .line 122
    invoke-interface {p2, v4, v7, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;->a(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    if-ne p2, v1, :cond_5

    .line 127
    .line 128
    return-object v1

    .line 129
    :cond_5
    move-object v4, p0

    .line 130
    :goto_1
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h;

    .line 131
    .line 132
    instance-of v5, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;

    .line 133
    .line 134
    if-eqz v5, :cond_6

    .line 135
    .line 136
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;

    .line 137
    .line 138
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$a;->a()Ljava/io/File;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    goto :goto_4

    .line 147
    :cond_6
    instance-of v5, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$c;

    .line 148
    .line 149
    if-eqz v5, :cond_7

    .line 150
    .line 151
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$c;

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$c;->a()Ljava/io/File;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    goto :goto_4

    .line 162
    :cond_7
    instance-of p1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;

    .line 163
    .line 164
    if-eqz p1, :cond_8

    .line 165
    .line 166
    iget-object p1, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 167
    .line 168
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;

    .line 169
    .line 170
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/stream/h$b;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;

    .line 171
    .line 172
    .line 173
    move-result-object p2

    .line 174
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/u;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 179
    .line 180
    :goto_2
    move-object p1, v6

    .line 181
    goto :goto_4

    .line 182
    :cond_8
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 183
    .line 184
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 185
    .line 186
    .line 187
    throw p1

    .line 188
    :cond_9
    iget-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;

    .line 189
    .line 190
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;->y(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 191
    .line 192
    .line 193
    move-result-object p2

    .line 194
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;->e()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    iput-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->j:Ljava/lang/Object;

    .line 199
    .line 200
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->l:Ljava/lang/Object;

    .line 201
    .line 202
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->m:Ljava/lang/Object;

    .line 203
    .line 204
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->i:I

    .line 205
    .line 206
    invoke-interface {p2, v5, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    if-ne p2, v1, :cond_a

    .line 211
    .line 212
    return-object v1

    .line 213
    :cond_a
    move-object v4, p0

    .line 214
    :goto_3
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;

    .line 215
    .line 216
    instance-of v5, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 217
    .line 218
    if-eqz v5, :cond_b

    .line 219
    .line 220
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 221
    .line 222
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;->a()Ljava/io/File;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 227
    .line 228
    .line 229
    move-result-object p1

    .line 230
    goto :goto_4

    .line 231
    :cond_b
    instance-of p1, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;

    .line 232
    .line 233
    if-eqz p1, :cond_d

    .line 234
    .line 235
    iget-object p1, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a;->e:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 236
    .line 237
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;

    .line 238
    .line 239
    invoke-static {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/u;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/k;

    .line 240
    .line 241
    .line 242
    move-result-object p2

    .line 243
    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 244
    .line 245
    goto :goto_2

    .line 246
    :goto_4
    if-eqz p1, :cond_c

    .line 247
    .line 248
    iput-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->j:Ljava/lang/Object;

    .line 249
    .line 250
    iput-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->l:Ljava/lang/Object;

    .line 251
    .line 252
    iput-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->m:Ljava/lang/Object;

    .line 253
    .line 254
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/e$m$a$a;->i:I

    .line 255
    .line 256
    invoke-interface {v2, p1, v0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-ne p1, v1, :cond_c

    .line 261
    .line 262
    return-object v1

    .line 263
    :cond_c
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 264
    .line 265
    return-object p1

    .line 266
    :cond_d
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 267
    .line 268
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 269
    .line 270
    .line 271
    throw p1
.end method
