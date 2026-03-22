.class public final Lcom/moloco/sdk/internal/services/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/f0;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/t$a;
    }
.end annotation


# static fields
.field public static final c:Lcom/moloco/sdk/internal/services/t$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/t$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/t;->c:Lcom/moloco/sdk/internal/services/t$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "externalLinkHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/t;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/t;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lkt/d;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkt/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkt/d<",
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
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/t;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p1, ""

    .line 6
    .line 7
    :cond_0
    invoke-interface {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    invoke-interface {p2, p1, p3}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-ne p2, p3, :cond_1

    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_1
    return-object p1

    .line 29
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p1
.end method

.method public b(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lkt/d;Lrs/c;)Ljava/lang/Object;
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lkt/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;",
            "Lkt/d<",
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p5

    .line 4
    .line 5
    instance-of v2, v1, Lcom/moloco/sdk/internal/services/t$b;

    .line 6
    .line 7
    if-eqz v2, :cond_0

    .line 8
    .line 9
    move-object v2, v1

    .line 10
    check-cast v2, Lcom/moloco/sdk/internal/services/t$b;

    .line 11
    .line 12
    iget v3, v2, Lcom/moloco/sdk/internal/services/t$b;->l:I

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
    iput v3, v2, Lcom/moloco/sdk/internal/services/t$b;->l:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/moloco/sdk/internal/services/t$b;

    .line 25
    .line 26
    invoke-direct {v2, v0, v1}, Lcom/moloco/sdk/internal/services/t$b;-><init>(Lcom/moloco/sdk/internal/services/t;Lrs/c;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    iget-object v1, v2, Lcom/moloco/sdk/internal/services/t$b;->j:Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v9

    .line 35
    iget v3, v2, Lcom/moloco/sdk/internal/services/t$b;->l:I

    .line 36
    .line 37
    const/4 v10, 0x2

    .line 38
    const/4 v4, 0x1

    .line 39
    if-eqz v3, :cond_3

    .line 40
    .line 41
    if-eq v3, v4, :cond_2

    .line 42
    .line 43
    if-ne v3, v10, :cond_1

    .line 44
    .line 45
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v1

    .line 58
    :cond_2
    iget-object v3, v2, Lcom/moloco/sdk/internal/services/t$b;->i:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v3, Lkt/d;

    .line 61
    .line 62
    iget-object v4, v2, Lcom/moloco/sdk/internal/services/t$b;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v4, Lcom/moloco/sdk/internal/services/t;

    .line 65
    .line 66
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    move-object/from16 v17, v3

    .line 70
    .line 71
    move-object v3, v1

    .line 72
    move-object/from16 v1, v17

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_3
    invoke-static {v1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 79
    .line 80
    .line 81
    move-result-wide v5

    .line 82
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 83
    .line 84
    sget-object v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;

    .line 85
    .line 86
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;->a()I

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    invoke-virtual {v3, v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 91
    .line 92
    .line 93
    move-result v7

    .line 94
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;->b()I

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-virtual {v3, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 99
    .line 100
    .line 101
    move-result v8

    .line 102
    invoke-direct {v1, v7, v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;-><init>(FF)V

    .line 103
    .line 104
    .line 105
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;

    .line 106
    .line 107
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 108
    .line 109
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;->c()I

    .line 110
    .line 111
    .line 112
    move-result v11

    .line 113
    invoke-virtual {v3, v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 114
    .line 115
    .line 116
    move-result v11

    .line 117
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;->d()I

    .line 118
    .line 119
    .line 120
    move-result v12

    .line 121
    invoke-virtual {v3, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 122
    .line 123
    .line 124
    move-result v12

    .line 125
    invoke-direct {v8, v11, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;-><init>(FF)V

    .line 126
    .line 127
    .line 128
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 129
    .line 130
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;->f()I

    .line 131
    .line 132
    .line 133
    move-result v12

    .line 134
    invoke-virtual {v3, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 135
    .line 136
    .line 137
    move-result v12

    .line 138
    invoke-virtual/range {p2 .. p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;->e()I

    .line 139
    .line 140
    .line 141
    move-result v13

    .line 142
    invoke-virtual {v3, v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/utils/c;->a(I)F

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    invoke-direct {v11, v12, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;-><init>(FF)V

    .line 147
    .line 148
    .line 149
    invoke-interface/range {p3 .. p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;->x()Ljava/util/List;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-direct {v7, v1, v8, v11, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;Ljava/util/List;)V

    .line 154
    .line 155
    .line 156
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/t;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 157
    .line 158
    iput-object v0, v2, Lcom/moloco/sdk/internal/services/t$b;->h:Ljava/lang/Object;

    .line 159
    .line 160
    move-object/from16 v1, p4

    .line 161
    .line 162
    iput-object v1, v2, Lcom/moloco/sdk/internal/services/t$b;->i:Ljava/lang/Object;

    .line 163
    .line 164
    iput v4, v2, Lcom/moloco/sdk/internal/services/t$b;->l:I

    .line 165
    .line 166
    move-wide v4, v5

    .line 167
    move-object v6, v7

    .line 168
    move-object/from16 v7, p1

    .line 169
    .line 170
    move-object v8, v2

    .line 171
    invoke-interface/range {v3 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;->a(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    if-ne v3, v9, :cond_4

    .line 176
    .line 177
    return-object v9

    .line 178
    :cond_4
    move-object v4, v0

    .line 179
    :goto_1
    check-cast v3, Ljava/lang/String;

    .line 180
    .line 181
    sget-object v11, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v6, "Launching url: "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v13

    .line 200
    const/4 v15, 0x4

    .line 201
    const/16 v16, 0x0

    .line 202
    .line 203
    const-string v12, "ClickthroughService"

    .line 204
    .line 205
    const/4 v14, 0x0

    .line 206
    invoke-static/range {v11 .. v16}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    iget-object v4, v4, Lcom/moloco/sdk/internal/services/t;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 210
    .line 211
    if-nez v3, :cond_5

    .line 212
    .line 213
    const-string v3, ""

    .line 214
    .line 215
    :cond_5
    invoke-interface {v4, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;->a(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    if-eqz v3, :cond_7

    .line 220
    .line 221
    if-eqz v1, :cond_7

    .line 222
    .line 223
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 224
    .line 225
    const/4 v4, 0x0

    .line 226
    iput-object v4, v2, Lcom/moloco/sdk/internal/services/t$b;->h:Ljava/lang/Object;

    .line 227
    .line 228
    iput-object v4, v2, Lcom/moloco/sdk/internal/services/t$b;->i:Ljava/lang/Object;

    .line 229
    .line 230
    iput v10, v2, Lcom/moloco/sdk/internal/services/t$b;->l:I

    .line 231
    .line 232
    invoke-interface {v1, v3, v2}, Lkt/d;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    if-ne v1, v9, :cond_6

    .line 237
    .line 238
    return-object v9

    .line 239
    :cond_6
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 240
    .line 241
    return-object v1

    .line 242
    :cond_7
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 243
    .line 244
    return-object v1
.end method
