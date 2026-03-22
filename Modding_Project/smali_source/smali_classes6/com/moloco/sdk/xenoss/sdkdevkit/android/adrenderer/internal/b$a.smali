.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/internal/a;Lgt/g0;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$a;
    }
.end annotation


# instance fields
.field public final a:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

.field public final synthetic d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->a:Lkt/e;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlinx/coroutines/flow/c;->d(Lkt/e;)Lkt/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->b:Lkt/i;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->b(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->a:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b(Lrs/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->k:I

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
    iput v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->k:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->i:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    iget v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->k:I

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x1

    .line 39
    if-eqz v4, :cond_2

    .line 40
    .line 41
    if-ne v4, v6, :cond_1

    .line 42
    .line 43
    iget-object v2, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;

    .line 46
    .line 47
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v1

    .line 59
    :cond_2
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object v7, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 65
    .line 66
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->S(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    const/4 v11, 0x4

    .line 71
    const/4 v12, 0x0

    .line 72
    const-string v9, "Preparing banner"

    .line 73
    .line 74
    const/4 v10, 0x0

    .line 75
    invoke-static/range {v7 .. v12}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->getCreativeType()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    if-nez v1, :cond_4

    .line 85
    .line 86
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-interface {v1}, Lcom/moloco/sdk/internal/scheduling/a;->getDefault()Lkotlin/coroutines/CoroutineContext;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$f;

    .line 95
    .line 96
    iget-object v7, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 97
    .line 98
    invoke-direct {v4, v7, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$f;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;Lrs/c;)V

    .line 99
    .line 100
    .line 101
    iput-object v0, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->h:Ljava/lang/Object;

    .line 102
    .line 103
    iput v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$c;->k:I

    .line 104
    .line 105
    invoke-static {v1, v4, v2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    if-ne v1, v3, :cond_3

    .line 110
    .line 111
    return-object v3

    .line 112
    :cond_3
    move-object v2, v0

    .line 113
    :goto_1
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 114
    .line 115
    goto :goto_2

    .line 116
    :cond_4
    move-object v2, v0

    .line 117
    :goto_2
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$a;->a:[I

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    aget v1, v3, v1

    .line 124
    .line 125
    if-eq v1, v6, :cond_9

    .line 126
    .line 127
    const/4 v3, 0x2

    .line 128
    if-eq v1, v3, :cond_8

    .line 129
    .line 130
    const/4 v3, 0x3

    .line 131
    if-ne v1, v3, :cond_7

    .line 132
    .line 133
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;

    .line 134
    .line 135
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 136
    .line 137
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->G(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v8

    .line 141
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 142
    .line 143
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->D(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/internal/services/f0;

    .line 144
    .line 145
    .line 146
    move-result-object v10

    .line 147
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 148
    .line 149
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->C(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 154
    .line 155
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->w(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/c;->d()Lcom/moloco/sdk/internal/ortb/model/d;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/d;->c()Lcom/moloco/sdk/internal/ortb/model/m;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-eqz v3, :cond_5

    .line 168
    .line 169
    invoke-virtual {v3}, Lcom/moloco/sdk/internal/ortb/model/m;->a()Lcom/moloco/sdk/internal/ortb/model/b;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    goto :goto_3

    .line 174
    :cond_5
    move-object v3, v5

    .line 175
    :goto_3
    if-eqz v3, :cond_6

    .line 176
    .line 177
    :goto_4
    move v12, v6

    .line 178
    goto :goto_5

    .line 179
    :cond_6
    const/4 v6, 0x0

    .line 180
    goto :goto_4

    .line 181
    :goto_5
    const/16 v14, 0x22

    .line 182
    .line 183
    const/4 v15, 0x0

    .line 184
    const/4 v9, 0x0

    .line 185
    const/4 v13, 0x0

    .line 186
    move-object v7, v1

    .line 187
    invoke-direct/range {v7 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;-><init>(Landroid/content/Context;Lgt/g0;Lcom/moloco/sdk/internal/services/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/c;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 188
    .line 189
    .line 190
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 191
    .line 192
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/z;

    .line 193
    .line 194
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 195
    .line 196
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->G(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Landroid/content/Context;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 201
    .line 202
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->U(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 203
    .line 204
    .line 205
    move-result-object v9

    .line 206
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/y;

    .line 207
    .line 208
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 209
    .line 210
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->w(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 211
    .line 212
    .line 213
    move-result-object v6

    .line 214
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/ortb/model/c;->a()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v6

    .line 218
    iget-object v7, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 219
    .line 220
    invoke-static {v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 221
    .line 222
    .line 223
    move-result-object v7

    .line 224
    invoke-direct {v11, v6, v7, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/y;-><init>(Ljava/lang/String;Lgt/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;)V

    .line 225
    .line 226
    .line 227
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 228
    .line 229
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 230
    .line 231
    .line 232
    move-result-object v12

    .line 233
    const/16 v14, 0x20

    .line 234
    .line 235
    move-object v7, v4

    .line 236
    move-object v10, v1

    .line 237
    invoke-direct/range {v7 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/z;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/y;Lgt/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->r(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)V

    .line 241
    .line 242
    .line 243
    goto/16 :goto_6

    .line 244
    .line 245
    :cond_7
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 246
    .line 247
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 248
    .line 249
    .line 250
    throw v1

    .line 251
    :cond_8
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 252
    .line 253
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;

    .line 254
    .line 255
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 256
    .line 257
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->G(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object v7

    .line 261
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 262
    .line 263
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->w(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 264
    .line 265
    .line 266
    move-result-object v4

    .line 267
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/ortb/model/c;->a()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v8

    .line 271
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 272
    .line 273
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->K(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 274
    .line 275
    .line 276
    move-result-object v9

    .line 277
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 278
    .line 279
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->U(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;

    .line 280
    .line 281
    .line 282
    move-result-object v10

    .line 283
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 284
    .line 285
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 286
    .line 287
    .line 288
    move-result-object v12

    .line 289
    const/16 v13, 0x10

    .line 290
    .line 291
    const/4 v14, 0x0

    .line 292
    const/4 v11, 0x0

    .line 293
    move-object v6, v3

    .line 294
    invoke-direct/range {v6 .. v14}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/t;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/webview/s;Lgt/g0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 295
    .line 296
    .line 297
    invoke-static {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->o(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)V

    .line 298
    .line 299
    .line 300
    goto :goto_6

    .line 301
    :cond_9
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 302
    .line 303
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->T(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/internal/a;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 308
    .line 309
    invoke-interface {v1, v3}, Lcom/moloco/sdk/internal/a;->a(Landroid/view/View;)V

    .line 310
    .line 311
    .line 312
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 313
    .line 314
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;

    .line 315
    .line 316
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 317
    .line 318
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->G(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Landroid/content/Context;

    .line 319
    .line 320
    .line 321
    move-result-object v7

    .line 322
    iget-object v8, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 323
    .line 324
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 325
    .line 326
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->L(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/r;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 331
    .line 332
    .line 333
    move-result-object v9

    .line 334
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 335
    .line 336
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->K(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 337
    .line 338
    .line 339
    move-result-object v10

    .line 340
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 341
    .line 342
    invoke-static {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 343
    .line 344
    .line 345
    move-result-object v11

    .line 346
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 347
    .line 348
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 349
    .line 350
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->w(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/internal/ortb/model/c;

    .line 351
    .line 352
    .line 353
    move-result-object v13

    .line 354
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 355
    .line 356
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 357
    .line 358
    .line 359
    move-result-object v14

    .line 360
    iget-object v6, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 361
    .line 362
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->G(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Landroid/content/Context;

    .line 363
    .line 364
    .line 365
    move-result-object v6

    .line 366
    invoke-static {v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/n;->a(Landroid/content/Context;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;

    .line 367
    .line 368
    .line 369
    move-result-object v15

    .line 370
    sget-object v6, Lcom/moloco/sdk/service_locator/b$a;->a:Lcom/moloco/sdk/service_locator/b$a;

    .line 371
    .line 372
    invoke-virtual {v6}, Lcom/moloco/sdk/service_locator/b$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;

    .line 373
    .line 374
    .line 375
    move-result-object v16

    .line 376
    const/16 v17, 0x0

    .line 377
    .line 378
    move-object v12, v4

    .line 379
    invoke-direct/range {v12 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;-><init>(Lcom/moloco/sdk/internal/ortb/model/c;Lgt/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;Z)V

    .line 380
    .line 381
    .line 382
    move-object v6, v3

    .line 383
    invoke-direct/range {v6 .. v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lgt/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)V

    .line 384
    .line 385
    .line 386
    invoke-static {v1, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->x(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;)V

    .line 387
    .line 388
    .line 389
    :goto_6
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 390
    .line 391
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    if-eqz v1, :cond_a

    .line 396
    .line 397
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->isLoaded()Lkt/i;

    .line 398
    .line 399
    .line 400
    move-result-object v1

    .line 401
    if-eqz v1, :cond_a

    .line 402
    .line 403
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$d;

    .line 404
    .line 405
    invoke-direct {v3, v2, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$d;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;Lrs/c;)V

    .line 406
    .line 407
    .line 408
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 409
    .line 410
    .line 411
    move-result-object v1

    .line 412
    if-eqz v1, :cond_a

    .line 413
    .line 414
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 415
    .line 416
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 417
    .line 418
    .line 419
    move-result-object v3

    .line 420
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 421
    .line 422
    .line 423
    :cond_a
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 424
    .line 425
    invoke-static {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->q(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;

    .line 426
    .line 427
    .line 428
    move-result-object v1

    .line 429
    if-eqz v1, :cond_b

    .line 430
    .line 431
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->m()Lkt/i;

    .line 432
    .line 433
    .line 434
    move-result-object v1

    .line 435
    if-eqz v1, :cond_b

    .line 436
    .line 437
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$e;

    .line 438
    .line 439
    iget-object v4, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 440
    .line 441
    invoke-direct {v3, v4, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$e;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;Lrs/c;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    if-eqz v1, :cond_b

    .line 449
    .line 450
    iget-object v3, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 451
    .line 452
    invoke-static {v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-static {v1, v3}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 457
    .line 458
    .line 459
    :cond_b
    iget-object v1, v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 460
    .line 461
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->getAdShowListener()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    invoke-virtual {v1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->setAdShowListener(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/q;)V

    .line 466
    .line 467
    .line 468
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 469
    .line 470
    return-object v1
.end method

.method public h(JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;->M(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;)Lgt/g0;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$b;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;

    .line 10
    .line 11
    const/4 v8, 0x0

    .line 12
    move-object v2, v0

    .line 13
    move-object v3, p0

    .line 14
    move-wide v5, p1

    .line 15
    move-object v7, p3

    .line 16
    invoke-direct/range {v2 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a$b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b;JLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m$a;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    move-object v4, v0

    .line 24
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public isLoaded()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/b$a;->b:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method
