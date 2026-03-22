.class public final Lcom/moloco/sdk/internal/services/D$h;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/D;->c(Ljava/lang/String;Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.PreferencesDataStoreServiceImpl$set$2"
    f = "DataStoreService.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final synthetic j:Lcom/moloco/sdk/internal/services/D;

.field public final synthetic k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/moloco/sdk/internal/services/D;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/moloco/sdk/internal/services/D;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/D$h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/D$h;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/D$h;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/internal/services/D$h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/moloco/sdk/internal/services/D$h;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/moloco/sdk/internal/services/D$h;-><init>(Ljava/lang/Object;Lcom/moloco/sdk/internal/services/D;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/internal/services/D$h;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/internal/services/D$h;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_6

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 12
    .line 13
    instance-of v0, p1, Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/D;->d(Lcom/moloco/sdk/internal/services/D;)Landroid/content/SharedPreferences;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v1, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v0, :cond_1

    .line 49
    .line 50
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/D;->d(Lcom/moloco/sdk/internal/services/D;)Landroid/content/SharedPreferences;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v1, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_1
    instance-of v0, p1, Ljava/lang/Float;

    .line 76
    .line 77
    if-eqz v0, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 80
    .line 81
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/D;->d(Lcom/moloco/sdk/internal/services/D;)Landroid/content/SharedPreferences;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 90
    .line 91
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 92
    .line 93
    check-cast v1, Ljava/lang/Number;

    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 96
    .line 97
    .line 98
    move-result v1

    .line 99
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 104
    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :cond_2
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 109
    .line 110
    if-eqz v0, :cond_3

    .line 111
    .line 112
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/D;->d(Lcom/moloco/sdk/internal/services/D;)Landroid/content/SharedPreferences;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 123
    .line 124
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v1, Ljava/lang/Boolean;

    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_3
    instance-of v0, p1, Ljava/lang/Double;

    .line 141
    .line 142
    if-eqz v0, :cond_4

    .line 143
    .line 144
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/D;->d(Lcom/moloco/sdk/internal/services/D;)Landroid/content/SharedPreferences;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 157
    .line 158
    check-cast v1, Ljava/lang/Number;

    .line 159
    .line 160
    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    .line 161
    .line 162
    .line 163
    move-result-wide v1

    .line 164
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_4
    instance-of p1, p1, Ljava/lang/Long;

    .line 177
    .line 178
    if-eqz p1, :cond_5

    .line 179
    .line 180
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/D$h;->j:Lcom/moloco/sdk/internal/services/D;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/D;->d(Lcom/moloco/sdk/internal/services/D;)Landroid/content/SharedPreferences;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 191
    .line 192
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v1, Ljava/lang/Number;

    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    .line 197
    .line 198
    .line 199
    move-result-wide v1

    .line 200
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 209
    .line 210
    .line 211
    goto :goto_0

    .line 212
    :cond_5
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 213
    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .line 218
    .line 219
    const-string v1, "Unexpected value type: "

    .line 220
    .line 221
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->i:Ljava/lang/Object;

    .line 225
    .line 226
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    const-string v1, " for key: "

    .line 230
    .line 231
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/D$h;->k:Ljava/lang/String;

    .line 235
    .line 236
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v2

    .line 243
    const/16 v5, 0xc

    .line 244
    .line 245
    const/4 v6, 0x0

    .line 246
    const-string v1, "ContentValues"

    .line 247
    .line 248
    const/4 v3, 0x0

    .line 249
    const/4 v4, 0x0

    .line 250
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 251
    .line 252
    .line 253
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 254
    .line 255
    return-object p1

    .line 256
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 257
    .line 258
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 259
    .line 260
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p1
.end method
