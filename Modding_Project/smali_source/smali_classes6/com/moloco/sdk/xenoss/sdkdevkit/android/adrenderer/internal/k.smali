.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDECLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DECLoader.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/DECLoaderImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,50:1\n1#2:51\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/error/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;Lcom/moloco/sdk/internal/error/b;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/error/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mediaCacheRepository"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "errorReportingService"

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
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;->b:Lcom/moloco/sdk/internal/error/b;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 19
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;",
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
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;

    .line 15
    .line 16
    iget v5, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->n:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->n:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->l:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->n:I

    .line 40
    .line 41
    const-string v7, "UNKNOWN_MTID"

    .line 42
    .line 43
    const/4 v8, 0x1

    .line 44
    if-eqz v6, :cond_2

    .line 45
    .line 46
    if-ne v6, v8, :cond_1

    .line 47
    .line 48
    iget-object v1, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->k:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Ljava/lang/String;

    .line 51
    .line 52
    iget-object v2, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->j:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Ljava/lang/String;

    .line 55
    .line 56
    iget-object v5, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->i:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 59
    .line 60
    iget-object v4, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;

    .line 63
    .line 64
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object/from16 v18, v3

    .line 68
    .line 69
    move-object v3, v1

    .line 70
    move-object v1, v5

    .line 71
    move-object v5, v4

    .line 72
    move-object/from16 v4, v18

    .line 73
    .line 74
    goto :goto_2

    .line 75
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 76
    .line 77
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw v1

    .line 83
    :cond_2
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual/range {p1 .. p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;->c()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-nez v3, :cond_4

    .line 91
    .line 92
    iget-object v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;->b:Lcom/moloco/sdk/internal/error/b;

    .line 93
    .line 94
    new-instance v4, Lcom/moloco/sdk/internal/error/a;

    .line 95
    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    invoke-direct {v4, v2}, Lcom/moloco/sdk/internal/error/a;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-direct {v4, v7}, Lcom/moloco/sdk/internal/error/a;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :goto_1
    const-string v2, "DEC_LOADED_WITH_NO_APP_ICON"

    .line 106
    .line 107
    invoke-interface {v3, v2, v4}, Lcom/moloco/sdk/internal/error/b;->a(Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;)V

    .line 108
    .line 109
    .line 110
    const-string v2, "can\'t precache DEC: appIconUri is null"

    .line 111
    .line 112
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m0;->b(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v1

    .line 116
    :cond_4
    iget-object v6, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;

    .line 117
    .line 118
    iput-object v0, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->h:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object v1, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->i:Ljava/lang/Object;

    .line 121
    .line 122
    iput-object v2, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->j:Ljava/lang/Object;

    .line 123
    .line 124
    iput-object v3, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->k:Ljava/lang/Object;

    .line 125
    .line 126
    iput v8, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k$a;->n:I

    .line 127
    .line 128
    invoke-interface {v6, v3, v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n;->b(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    if-ne v4, v5, :cond_5

    .line 133
    .line 134
    return-object v5

    .line 135
    :cond_5
    move-object v5, v0

    .line 136
    :goto_2
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a;

    .line 137
    .line 138
    instance-of v6, v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 139
    .line 140
    if-eqz v6, :cond_6

    .line 141
    .line 142
    check-cast v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;

    .line 143
    .line 144
    invoke-virtual {v4}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/n$a$b;->a()Ljava/io/File;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v9

    .line 152
    const/16 v16, 0x7e

    .line 153
    .line 154
    const/16 v17, 0x0

    .line 155
    .line 156
    const/4 v10, 0x0

    .line 157
    const/4 v11, 0x0

    .line 158
    const/4 v12, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    const/4 v14, 0x0

    .line 161
    const/4 v15, 0x0

    .line 162
    move-object v8, v1

    .line 163
    invoke-static/range {v8 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k0;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    goto :goto_4

    .line 168
    :cond_6
    iget-object v5, v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/k;->b:Lcom/moloco/sdk/internal/error/b;

    .line 169
    .line 170
    new-instance v6, Lcom/moloco/sdk/internal/error/a;

    .line 171
    .line 172
    if-eqz v2, :cond_7

    .line 173
    .line 174
    invoke-direct {v6, v2}, Lcom/moloco/sdk/internal/error/a;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_7
    invoke-direct {v6, v7}, Lcom/moloco/sdk/internal/error/a;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    :goto_3
    const-string v2, "DEC_FAILED_TO_LOAD"

    .line 182
    .line 183
    invoke-interface {v5, v2, v6}, Lcom/moloco/sdk/internal/error/b;->a(Ljava/lang/String;Lcom/moloco/sdk/internal/error/a;)V

    .line 184
    .line 185
    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v5, "dec loading error: "

    .line 192
    .line 193
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v4, ": `Not found` for "

    .line 200
    .line 201
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/m0;->b(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    const/4 v2, 0x0

    .line 215
    :goto_4
    if-nez v2, :cond_8

    .line 216
    .line 217
    goto :goto_5

    .line 218
    :cond_8
    move-object v1, v2

    .line 219
    :goto_5
    return-object v1
.end method
