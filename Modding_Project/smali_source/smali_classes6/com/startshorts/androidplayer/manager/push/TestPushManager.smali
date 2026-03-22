.class public final Lcom/startshorts/androidplayer/manager/push/TestPushManager;
.super Ljava/lang/Object;
.source "TestPushManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/push/TestPushManager$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTestPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TestPushManager.kt\ncom/startshorts/androidplayer/manager/push/TestPushManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,287:1\n1#2:288\n1863#3:289\n360#3,7:290\n1864#3:297\n*S KotlinDebug\n*F\n+ 1 TestPushManager.kt\ncom/startshorts/androidplayer/manager/push/TestPushManager\n*L\n273#1:289\n274#1:290,7\n273#1:297\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/push/CustomPush;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->a:Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 7
    .line 8
    const/high16 v0, 0x42300000    # 44.0f

    .line 9
    .line 10
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->b:I

    .line 15
    .line 16
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 17
    .line 18
    invoke-virtual {v0}, Lfk/z;->p()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sput v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->c:I

    .line 23
    .line 24
    const/high16 v0, 0x42600000    # 56.0f

    .line 25
    .line 26
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    sput v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->d:I

    .line 31
    .line 32
    const/high16 v0, 0x42580000    # 54.0f

    .line 33
    .line 34
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sput v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->e:I

    .line 39
    .line 40
    const/high16 v0, 0x42900000    # 72.0f

    .line 41
    .line 42
    invoke-static {v0}, Ljk/g;->a(F)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sput v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->f:I

    .line 47
    .line 48
    invoke-static {}, Lkotlinx/coroutines/i;->b()Lgt/g0;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->g:Lgt/g0;

    .line 53
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h:Ljava/util/List;

    .line 60
    .line 61
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


# virtual methods
.method public final a(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/manager/push/task/PushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/manager/push/task/PushType;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 32
    .line 33
    packed-switch v2, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 39
    .line 40
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw p1

    .line 44
    :pswitch_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 47
    .line 48
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    check-cast p3, Lkotlin/Result;

    .line 52
    .line 53
    invoke-virtual {p3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :pswitch_1
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    sget-object p3, Lcom/startshorts/androidplayer/manager/push/TestPushManager$a;->$EnumSwitchMapping$0:[I

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    aget p3, p3, v2

    .line 69
    .line 70
    packed-switch p3, :pswitch_data_1

    .line 71
    .line 72
    .line 73
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 74
    .line 75
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :pswitch_2
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 80
    .line 81
    const/16 p2, 0x8

    .line 82
    .line 83
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->k(Lrs/c;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    if-ne p2, v1, :cond_1

    .line 90
    .line 91
    return-object v1

    .line 92
    :pswitch_3
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 93
    .line 94
    const/4 p2, 0x7

    .line 95
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->j(Lrs/c;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    if-ne p2, v1, :cond_1

    .line 102
    .line 103
    return-object v1

    .line 104
    :pswitch_4
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 105
    .line 106
    const/4 p2, 0x6

    .line 107
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->f(Lrs/c;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    if-ne p2, v1, :cond_1

    .line 114
    .line 115
    return-object v1

    .line 116
    :pswitch_5
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 117
    .line 118
    const/4 p2, 0x5

    .line 119
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->i(Lrs/c;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    if-ne p2, v1, :cond_1

    .line 126
    .line 127
    return-object v1

    .line 128
    :pswitch_6
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 129
    .line 130
    const/4 p2, 0x4

    .line 131
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->l(Lrs/c;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    if-ne p2, v1, :cond_1

    .line 138
    .line 139
    return-object v1

    .line 140
    :pswitch_7
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 141
    .line 142
    const/4 p2, 0x3

    .line 143
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->m(Lrs/c;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    if-ne p2, v1, :cond_1

    .line 150
    .line 151
    return-object v1

    .line 152
    :pswitch_8
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 153
    .line 154
    const/4 p2, 0x2

    .line 155
    iput p2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->g(Lrs/c;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object p2

    .line 161
    if-ne p2, v1, :cond_1

    .line 162
    .line 163
    return-object v1

    .line 164
    :pswitch_9
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 165
    .line 166
    const/4 p3, 0x1

    .line 167
    iput p3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTask$1;->k:I

    .line 168
    .line 169
    invoke-virtual {p0, p2, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object p2

    .line 173
    if-ne p2, v1, :cond_1

    .line 174
    .line 175
    return-object v1

    .line 176
    :cond_1
    :goto_1
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    const-string v0, "TestDefaultPushManager"

    .line 181
    .line 182
    if-eqz p3, :cond_2

    .line 183
    .line 184
    sget-object p3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 185
    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    const-string v2, "executePushTask success -> pushType("

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    const-string v2, ")) "

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p3, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    :cond_2
    invoke-static {p2}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 212
    .line 213
    .line 214
    move-result-object p3

    .line 215
    if-eqz p3, :cond_3

    .line 216
    .line 217
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 218
    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    .line 220
    .line 221
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .line 223
    .line 224
    const-string v3, "executePushTask failed -> pushType("

    .line 225
    .line 226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    .line 228
    .line 229
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string p1, ")) errMsg("

    .line 233
    .line 234
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    const/16 p1, 0x29

    .line 245
    .line 246
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 247
    .line 248
    .line 249
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {v1, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    .line 255
    .line 256
    :cond_3
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result p1

    .line 260
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    return-object p1

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    .line 266
    .line 267
    .line 268
    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    .line 274
    .line 275
    .line 276
    .line 277
    .line 278
    .line 279
    .line 280
    .line 281
    .line 282
    .line 283
    .line 284
    .line 285
    .line 286
    .line 287
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final b(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/manager/push/task/PushType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "type"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "id"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->g:Lgt/g0;

    .line 13
    .line 14
    new-instance v4, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {v4, p1, p2, v0}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$executePushTestTasks$1;-><init>(Lcom/startshorts/androidplayer/manager/push/task/PushType;Ljava/lang/String;Lrs/c;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public final c(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
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

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    new-instance p1, Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;-><init>()V

    .line 62
    .line 63
    .line 64
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$fetchCustomPush$1;->j:I

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRemoteDS;->c(Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v1, :cond_3

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_3
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_c

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const/4 v1, 0x0

    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    move-object p1, v1

    .line 87
    :cond_4
    check-cast p1, Lcom/startshorts/androidplayer/bean/push/CustomPushList;

    .line 88
    .line 89
    if-eqz p1, :cond_5

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/push/CustomPushList;->getPushList()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :cond_5
    move-object p1, v1

    .line 96
    check-cast p1, Ljava/util/Collection;

    .line 97
    .line 98
    if-eqz p1, :cond_b

    .line 99
    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_6

    .line 105
    .line 106
    goto :goto_5

    .line 107
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h:Ljava/util/List;

    .line 108
    .line 109
    check-cast v1, Ljava/lang/Iterable;

    .line 110
    .line 111
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-eqz v1, :cond_a

    .line 120
    .line 121
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    check-cast v1, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 126
    .line 127
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    const/4 v3, 0x0

    .line 132
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    const/4 v5, -0x1

    .line 137
    if-eqz v4, :cond_8

    .line 138
    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    check-cast v4, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getId()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getId()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v6, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_7

    .line 158
    .line 159
    goto :goto_4

    .line 160
    :cond_7
    add-int/lit8 v3, v3, 0x1

    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_8
    move v3, v5

    .line 164
    :goto_4
    if-ne v3, v5, :cond_9

    .line 165
    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_9
    invoke-interface {p1, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_a
    sput-object p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h:Ljava/util/List;

    .line 179
    .line 180
    goto :goto_6

    .line 181
    :cond_b
    :goto_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 182
    .line 183
    return-object p1

    .line 184
    :cond_c
    :goto_6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 185
    .line 186
    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lng/e;->a:Lng/e;

    .line 2
    .line 3
    const-string v1, "checkInIcon"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/String;

    .line 12
    .line 13
    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "TestDefaultPushManager"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final f(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Lkotlin/Result;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_3

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 64
    .line 65
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 73
    .line 74
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 75
    .line 76
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->t(Lrs/c;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    if-ne p1, v1, :cond_4

    .line 83
    .line 84
    return-object v1

    .line 85
    :cond_4
    move-object v2, p0

    .line 86
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v5, "pushBonusWillExpiredNotification: "

    .line 94
    .line 95
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v2, v4}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->e(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const/4 v4, 0x0

    .line 109
    if-nez p1, :cond_5

    .line 110
    .line 111
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 112
    .line 113
    const-string v5, "fake title"

    .line 114
    .line 115
    const-string v6, "pushBonusWillExpiredNotificationfake content:TestDefaultPushManager"

    .line 116
    .line 117
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->d()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-direct {p1, v5, v6, v2, v4}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 122
    .line 123
    .line 124
    :cond_5
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 125
    .line 126
    iput-object v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 127
    .line 128
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 129
    .line 130
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->J(Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;Lrs/c;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 134
    if-ne p1, v1, :cond_6

    .line 135
    .line 136
    return-object v1

    .line 137
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 138
    .line 139
    new-instance v0, Ljava/lang/Throwable;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    :cond_6
    :goto_3
    return-object p1
.end method

.method public final g(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p1, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    goto :goto_2

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 51
    .line 52
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :try_start_1
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->u()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 68
    .line 69
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCheckInNotification$1;->j:I

    .line 70
    .line 71
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->K(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 75
    if-ne p1, v1, :cond_3

    .line 76
    .line 77
    return-object v1

    .line 78
    :goto_1
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 79
    .line 80
    new-instance v0, Ljava/lang/Throwable;

    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    :cond_3
    :goto_2
    return-object p1
.end method

.method public final h(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 11
    .param p1    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->j:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 34
    .line 35
    const-string/jumbo v2, "short"

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x4

    .line 39
    const/4 v4, 0x3

    .line 40
    const/4 v5, 0x2

    .line 41
    const/4 v6, 0x1

    .line 42
    const/4 v8, 0x0

    .line 43
    if-eqz v1, :cond_5

    .line 44
    .line 45
    if-eq v1, v6, :cond_4

    .line 46
    .line 47
    if-eq v1, v5, :cond_3

    .line 48
    .line 49
    if-eq v1, v4, :cond_2

    .line 50
    .line 51
    if-ne v1, v3, :cond_1

    .line 52
    .line 53
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast p1, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 56
    .line 57
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_b

    .line 61
    .line 62
    :catch_0
    move-exception p1

    .line 63
    goto/16 :goto_d

    .line 64
    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :cond_2
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast p1, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 76
    .line 77
    :try_start_1
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 78
    .line 79
    .line 80
    goto/16 :goto_9

    .line 81
    .line 82
    :cond_3
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 83
    .line 84
    check-cast p1, Ljava/lang/String;

    .line 85
    .line 86
    iget-object v1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 89
    .line 90
    :try_start_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .line 92
    .line 93
    goto/16 :goto_6

    .line 94
    .line 95
    :cond_4
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast p1, Ljava/lang/String;

    .line 98
    .line 99
    iget-object v1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 102
    .line 103
    :try_start_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :try_start_4
    iput-object p0, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 113
    .line 114
    iput v6, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 115
    .line 116
    invoke-virtual {p0, v7}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->c(Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    if-ne p2, v0, :cond_6

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_6
    move-object v1, p0

    .line 124
    :goto_2
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->h:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    if-eqz v6, :cond_9

    .line 131
    .line 132
    check-cast p2, Ljava/lang/Iterable;

    .line 133
    .line 134
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    .line 140
    .line 141
    move-result v6

    .line 142
    if-eqz v6, :cond_8

    .line 143
    .line 144
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v6

    .line 148
    move-object v9, v6

    .line 149
    check-cast v9, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 150
    .line 151
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 152
    .line 153
    .line 154
    move-result v9

    .line 155
    if-lez v9, :cond_7

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_8
    move-object v6, v8

    .line 159
    :goto_3
    check-cast v6, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 160
    .line 161
    goto :goto_5

    .line 162
    :cond_9
    check-cast p2, Ljava/lang/Iterable;

    .line 163
    .line 164
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 165
    .line 166
    .line 167
    move-result-object p2

    .line 168
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 169
    .line 170
    .line 171
    move-result v6

    .line 172
    if-eqz v6, :cond_b

    .line 173
    .line 174
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    move-object v9, v6

    .line 179
    check-cast v9, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 180
    .line 181
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-nez v9, :cond_a

    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_b
    move-object v6, v8

    .line 189
    :goto_4
    check-cast v6, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 190
    .line 191
    :goto_5
    if-eqz v6, :cond_d

    .line 192
    .line 193
    sget-object p2, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 194
    .line 195
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getId()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    iput-object v1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 200
    .line 201
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 202
    .line 203
    iput v5, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 204
    .line 205
    invoke-virtual {p2, v6, v7}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->v(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object p2

    .line 209
    if-ne p2, v0, :cond_c

    .line 210
    .line 211
    return-object v0

    .line 212
    :cond_c
    :goto_6
    check-cast p2, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 213
    .line 214
    goto :goto_7

    .line 215
    :cond_d
    move-object p2, v8

    .line 216
    :goto_7
    if-nez p2, :cond_12

    .line 217
    .line 218
    new-instance p2, Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 219
    .line 220
    invoke-direct {p2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;-><init>()V

    .line 221
    .line 222
    .line 223
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    if-eqz v2, :cond_e

    .line 228
    .line 229
    const v1, 0x1b2c9

    .line 230
    .line 231
    .line 232
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setShortId(I)V

    .line 233
    .line 234
    .line 235
    const-string v1, "CustomNotification:Shortfake content:TestDefaultPushManager"

    .line 236
    .line 237
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setContent(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const-string v1, ""

    .line 241
    .line 242
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setCoverId(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    goto :goto_8

    .line 246
    :cond_e
    const-string v2, "CustomNotification:H5fake content:TestDefaultPushManager"

    .line 247
    .line 248
    invoke-virtual {p2, v2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setContent(Ljava/lang/String;)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->d()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setCoverId(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    const/4 v1, 0x0

    .line 259
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setShortId(I)V

    .line 260
    .line 261
    .line 262
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 263
    .line 264
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 265
    .line 266
    .line 267
    const-string v2, "push:"

    .line 268
    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object p1

    .line 279
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setId(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    const-string p1, "fake title"

    .line 283
    .line 284
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->setTitle(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 288
    .line 289
    .line 290
    move-result p1

    .line 291
    if-lez p1, :cond_10

    .line 292
    .line 293
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 294
    .line 295
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getCoverId()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    iput-object p2, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 300
    .line 301
    iput-object v8, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 302
    .line 303
    iput v4, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 304
    .line 305
    invoke-virtual {p1, v1, v7}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->n(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    if-ne p1, v0, :cond_f

    .line 310
    .line 311
    return-object v0

    .line 312
    :cond_f
    move-object v10, p2

    .line 313
    move-object p2, p1

    .line 314
    move-object p1, v10

    .line 315
    :goto_9
    check-cast p2, Landroid/graphics/Bitmap;

    .line 316
    .line 317
    :goto_a
    move-object v4, p1

    .line 318
    goto :goto_c

    .line 319
    :cond_10
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 320
    .line 321
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getCoverId()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    sget v4, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->c:I

    .line 326
    .line 327
    iput-object p2, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 328
    .line 329
    iput-object v8, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 330
    .line 331
    iput v3, v7, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushCustomNotification$1;->l:I

    .line 332
    .line 333
    const/4 v5, 0x0

    .line 334
    const/4 v6, 0x0

    .line 335
    const/16 v8, 0x10

    .line 336
    .line 337
    const/4 v9, 0x0

    .line 338
    move v3, v4

    .line 339
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->m(Lcom/startshorts/androidplayer/repo/push/PushRepo;Ljava/lang/String;IIIZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    if-ne p1, v0, :cond_11

    .line 344
    .line 345
    return-object v0

    .line 346
    :cond_11
    move-object v10, p2

    .line 347
    move-object p2, p1

    .line 348
    move-object p1, v10

    .line 349
    :goto_b
    check-cast p2, Landroid/graphics/Bitmap;

    .line 350
    .line 351
    goto :goto_a

    .line 352
    :goto_c
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 353
    .line 354
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 355
    .line 356
    .line 357
    move-result-wide v0

    .line 358
    const/16 v2, 0x3e8

    .line 359
    .line 360
    int-to-double v2, v2

    .line 361
    mul-double/2addr v0, v2

    .line 362
    double-to-int v1, v0

    .line 363
    const/16 v3, 0x3e7

    .line 364
    .line 365
    const/4 v5, 0x0

    .line 366
    const/16 v2, 0x3e7

    .line 367
    .line 368
    move-object v0, p1

    .line 369
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;-><init>(IIILcom/startshorts/androidplayer/bean/push/CustomPush;Landroid/graphics/Bitmap;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->setCover(Landroid/graphics/Bitmap;)V

    .line 373
    .line 374
    .line 375
    move-object p2, p1

    .line 376
    :cond_12
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 377
    .line 378
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->M(Lcom/startshorts/androidplayer/bean/notification/CustomNotification;)Ljava/lang/Object;

    .line 379
    .line 380
    .line 381
    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 382
    goto :goto_e

    .line 383
    :goto_d
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 384
    .line 385
    new-instance p2, Ljava/lang/Throwable;

    .line 386
    .line 387
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object p1

    .line 398
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    :goto_e
    return-object p1
.end method

.method public final i(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Lkotlin/Result;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_3

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto :goto_2

    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 69
    .line 70
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;->j:I

    .line 71
    .line 72
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->y(Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-ne p1, v1, :cond_4

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_4
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 80
    .line 81
    if-nez p1, :cond_5

    .line 82
    .line 83
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 84
    .line 85
    const-string v2, "fake title"

    .line 86
    .line 87
    const-string v4, "MissCheckInNotification:fake content:TestDefaultPushManager"

    .line 88
    .line 89
    const-string v5, ""

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-direct {p1, v2, v4, v5, v6}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 93
    .line 94
    .line 95
    :cond_5
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 96
    .line 97
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushMissCheckInNotification$1;->j:I

    .line 98
    .line 99
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->N(Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 103
    if-ne p1, v1, :cond_6

    .line 104
    .line 105
    return-object v1

    .line 106
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 107
    .line 108
    new-instance v0, Ljava/lang/Throwable;

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    :cond_6
    :goto_3
    return-object p1
.end method

.method public final j(Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 67
    .line 68
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->k:I

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->x(Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v1, :cond_4

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;-><init>()V

    .line 84
    .line 85
    .line 86
    const v2, 0x1b2c9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setShortPlayId(I)V

    .line 90
    .line 91
    .line 92
    const-string v2, "fake title"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setTitle(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "pushNewShortsNotification:fake content:TestDefaultPushManager"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setRecommendation(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v2, "https://akamai-static.shorttv.live/images/cover/2024/03/18/7d3795ba3a6846d5be8bbddab02322c0.jpg?auth_key=1748320846-0-0-dc5b0b47b3a9696fd2d6708bdb0d5aaa"

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setCoverId(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->h:Ljava/lang/Object;

    .line 114
    .line 115
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushNewShortsNotification$1;->k:I

    .line 116
    .line 117
    invoke-virtual {v2, v4, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->n(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-ne v0, v1, :cond_5

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_5
    move-object v5, v0

    .line 125
    move-object v0, p1

    .line 126
    move-object p1, v5

    .line 127
    :goto_2
    check-cast p1, Landroid/graphics/Bitmap;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;->setCover(Landroid/graphics/Bitmap;)V

    .line 130
    .line 131
    .line 132
    move-object p1, v0

    .line 133
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->O(Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    goto :goto_4

    .line 140
    :goto_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 141
    .line 142
    new-instance v0, Ljava/lang/Throwable;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_4
    return-object p1
.end method

.method public final k(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "pushNewShortsNotification:fake content:TestDefaultPushManager"

    .line 2
    .line 3
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->k:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x2

    .line 36
    const/4 v5, 0x1

    .line 37
    if-eqz v3, :cond_3

    .line 38
    .line 39
    if-eq v3, v5, :cond_2

    .line 40
    .line 41
    if-ne v3, v4, :cond_1

    .line 42
    .line 43
    iget-object v0, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 46
    .line 47
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :catch_0
    move-exception p1

    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 70
    .line 71
    iput v5, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->k:I

    .line 72
    .line 73
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->z(Lrs/c;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v2, :cond_4

    .line 78
    .line 79
    return-object v2

    .line 80
    :cond_4
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 81
    .line 82
    if-nez p1, :cond_6

    .line 83
    .line 84
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 85
    .line 86
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;-><init>()V

    .line 87
    .line 88
    .line 89
    const v3, 0x1b2c9

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setShortPlayId(I)V

    .line 93
    .line 94
    .line 95
    const-string v3, "fake title"

    .line 96
    .line 97
    invoke-virtual {p1, v3}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->setTitle(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->setRecommendation(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setSummary(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "https://akamai-static.shorttv.live/images/cover/2024/03/18/7d3795ba3a6846d5be8bbddab02322c0.jpg?auth_key=1748320846-0-0-dc5b0b47b3a9696fd2d6708bdb0d5aaa"

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->setCoverId(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getCoverId()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    iput-object p1, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->h:Ljava/lang/Object;

    .line 118
    .line 119
    iput v4, v1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushRecommendShortsNotification$1;->k:I

    .line 120
    .line 121
    invoke-virtual {v0, v3, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->n(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    if-ne v0, v2, :cond_5

    .line 126
    .line 127
    return-object v2

    .line 128
    :cond_5
    move-object v6, v0

    .line 129
    move-object v0, p1

    .line 130
    move-object p1, v6

    .line 131
    :goto_2
    check-cast p1, Landroid/graphics/Bitmap;

    .line 132
    .line 133
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->setCover(Landroid/graphics/Bitmap;)V

    .line 134
    .line 135
    .line 136
    move-object p1, v0

    .line 137
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 138
    .line 139
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->S(Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-eqz v1, :cond_7

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getFromLocal()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_7

    .line 154
    .line 155
    sget-object p1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 156
    .line 157
    new-instance v1, Ljava/util/Date;

    .line 158
    .line 159
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    sget-object v1, Lud/b;->a:Lud/b;

    .line 171
    .line 172
    invoke-virtual {v1, p1, v5}, Lud/b;->g4(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 173
    .line 174
    .line 175
    :cond_7
    return-object v0

    .line 176
    :goto_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 177
    .line 178
    new-instance v0, Ljava/lang/Throwable;

    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1
.end method

.method public final l(Lrs/c;)Ljava/lang/Object;
    .locals 6
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast v0, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_3

    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 67
    .line 68
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->k:I

    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->A(Lrs/c;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    if-ne p1, v1, :cond_4

    .line 75
    .line 76
    return-object v1

    .line 77
    :cond_4
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 78
    .line 79
    if-nez p1, :cond_6

    .line 80
    .line 81
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 82
    .line 83
    invoke-direct {p1}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;-><init>()V

    .line 84
    .line 85
    .line 86
    const v2, 0x1b2c9

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setShortPlayId(I)V

    .line 90
    .line 91
    .line 92
    const-string v2, "fake title"

    .line 93
    .line 94
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setTitle(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    const-string v2, "pushStartRechargingNotification:fake content:TestDefaultPushManager"

    .line 98
    .line 99
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->setContent(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const-string v2, "https://akamai-static.shorttv.live/images/cover/2024/03/18/7d3795ba3a6846d5be8bbddab02322c0.jpg?auth_key=1748320846-0-0-dc5b0b47b3a9696fd2d6708bdb0d5aaa"

    .line 103
    .line 104
    invoke-virtual {p1, v2}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->setCoverId(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    sget-object v2, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 108
    .line 109
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getCoverId()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->h:Ljava/lang/Object;

    .line 114
    .line 115
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushStartRechargingNotification$1;->k:I

    .line 116
    .line 117
    invoke-virtual {v2, v4, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->n(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-ne v0, v1, :cond_5

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_5
    move-object v5, v0

    .line 125
    move-object v0, p1

    .line 126
    move-object p1, v5

    .line 127
    :goto_2
    check-cast p1, Landroid/graphics/Bitmap;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->setCover(Landroid/graphics/Bitmap;)V

    .line 130
    .line 131
    .line 132
    move-object p1, v0

    .line 133
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 134
    .line 135
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->U(Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 139
    goto :goto_4

    .line 140
    :goto_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 141
    .line 142
    new-instance v0, Ljava/lang/Throwable;

    .line 143
    .line 144
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    :goto_4
    return-object p1
.end method

.method public final m(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/TestPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    check-cast p1, Lkotlin/Result;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto/16 :goto_4

    .line 51
    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_3

    .line 54
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/startshorts/androidplayer/manager/push/TestPushManager;

    .line 65
    .line 66
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 74
    .line 75
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->k:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->B(Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v1, :cond_4

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_4
    move-object v2, p0

    .line 87
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;

    .line 88
    .line 89
    const/4 v4, 0x0

    .line 90
    if-eqz p1, :cond_5

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getTitle()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    if-eqz v5, :cond_5

    .line 97
    .line 98
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    if-nez v5, :cond_6

    .line 103
    .line 104
    :cond_5
    new-instance p1, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;

    .line 105
    .line 106
    const-string v5, "fake title"

    .line 107
    .line 108
    const-string v6, "pushSubsBonusNotification:fake content:TestDefaultPushManager"

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/push/TestPushManager;->d()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-direct {p1, v5, v6, v2, v4}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 115
    .line 116
    .line 117
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getTitle()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    if-eqz v2, :cond_8

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-nez v2, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 131
    .line 132
    iput-object v4, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 133
    .line 134
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/TestPushManager$pushSubsBonusNotification$1;->k:I

    .line 135
    .line 136
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->V(Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;Lrs/c;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    if-ne p1, v1, :cond_9

    .line 141
    .line 142
    return-object v1

    .line 143
    :cond_8
    :goto_2
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 144
    .line 145
    const-string v0, "TestDefaultPushManager"

    .line 146
    .line 147
    const-string v1, "ignore pushSubsBonusNotification"

    .line 148
    .line 149
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    invoke-static {v4}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 156
    goto :goto_4

    .line 157
    :goto_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 158
    .line 159
    new-instance v0, Ljava/lang/Throwable;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    :cond_9
    :goto_4
    return-object p1
.end method
