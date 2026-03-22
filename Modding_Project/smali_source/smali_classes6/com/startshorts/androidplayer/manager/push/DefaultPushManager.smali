.class public final Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;
.super Ljava/lang/Object;
.source "DefaultPushManager.kt"

# interfaces
.implements Lrf/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$a;,
        Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDefaultPushManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultPushManager.kt\ncom/startshorts/androidplayer/manager/push/DefaultPushManager\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,525:1\n1863#2,2:526\n*S KotlinDebug\n*F\n+ 1 DefaultPushManager.kt\ncom/startshorts/androidplayer/manager/push/DefaultPushManager\n*L\n503#1:526,2\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final k:J

.field private static final l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Z

.field private final b:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Landroid/app/PendingIntent;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Z

.field private final f:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private g:Z

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->j:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$a;

    .line 8
    .line 9
    const-wide/32 v0, 0x493e0

    .line 10
    .line 11
    .line 12
    sput-wide v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->k:J

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->B()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ".fixedCheckPush"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->l:Ljava/lang/String;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->b:Lqt/a;

    .line 12
    .line 13
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->f:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;

    .line 19
    .line 20
    return-void
.end method

.method private final A()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->c:Landroid/app/PendingIntent;

    .line 2
    .line 3
    const-string v1, "DefaultPushManager"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    const-string v2, "cancel FixedCheckPushIntent"

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->c:Landroid/app/PendingIntent;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->d:Lkotlinx/coroutines/r;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v2, v0, v3, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    const-string v3, "cancel FixedCheckPushJob"

    .line 30
    .line 31
    invoke-virtual {v2, v1, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->d:Lkotlinx/coroutines/r;

    .line 35
    .line 36
    return-void
.end method

.method private final B(Lrs/c;)Ljava/lang/Object;
    .locals 12
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
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->D()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move-object v2, v1

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    const/16 v4, 0x29

    .line 16
    .line 17
    const-string v5, "DefaultPushManager"

    .line 18
    .line 19
    if-eqz v3, :cond_4

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Lsf/b;

    .line 26
    .line 27
    invoke-interface {v3}, Lsf/b;->a()Lcom/startshorts/androidplayer/bean/push/PushTime;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v3}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    sget-object v8, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CUSTOM:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 39
    .line 40
    if-ne v7, v8, :cond_2

    .line 41
    .line 42
    invoke-interface {v3}, Lsf/b;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v7

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    invoke-interface {v3}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 v8, 0x5f

    .line 64
    .line 65
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/push/PushTime;->getBeginTime()J

    .line 69
    .line 70
    .line 71
    move-result-wide v9

    .line 72
    invoke-virtual {v7, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/push/PushTime;->getEndTime()J

    .line 79
    .line 80
    .line 81
    move-result-wide v8

    .line 82
    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v7

    .line 89
    :goto_1
    sget-object v8, Lud/b;->a:Lud/b;

    .line 90
    .line 91
    invoke-virtual {v8, v7}, Lud/b;->n1(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/push/PushTime;->getMaxCount()I

    .line 96
    .line 97
    .line 98
    move-result v9

    .line 99
    if-ge v8, v9, :cond_0

    .line 100
    .line 101
    sget-object v9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 102
    .line 103
    new-instance v10, Ljava/lang/StringBuilder;

    .line 104
    .line 105
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-interface {v3}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 109
    .line 110
    .line 111
    move-result-object v11

    .line 112
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v11, " pushShowedCount("

    .line 116
    .line 117
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v8, ") maxCount("

    .line 124
    .line 125
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/push/PushTime;->getMaxCount()I

    .line 129
    .line 130
    .line 131
    move-result v6

    .line 132
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v9, v5, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    if-nez v1, :cond_3

    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_3
    invoke-interface {v3}, Lsf/b;->priority()Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 149
    .line 150
    .line 151
    move-result-object v4

    .line 152
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->getValue()I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    invoke-interface {v1}, Lsf/b;->priority()Lcom/startshorts/androidplayer/manager/push/task/PushPriority;

    .line 157
    .line 158
    .line 159
    move-result-object v5

    .line 160
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/manager/push/task/PushPriority;->getValue()I

    .line 161
    .line 162
    .line 163
    move-result v5

    .line 164
    if-ge v4, v5, :cond_0

    .line 165
    .line 166
    :goto_2
    move-object v1, v3

    .line 167
    move-object v2, v7

    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_4
    const/4 v0, 0x0

    .line 171
    if-eqz v1, :cond_8

    .line 172
    .line 173
    if-eqz v2, :cond_8

    .line 174
    .line 175
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 176
    .line 177
    .line 178
    move-result v3

    .line 179
    if-nez v3, :cond_5

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_5
    invoke-interface {v1}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 183
    .line 184
    .line 185
    move-result-object v3

    .line 186
    sget-object v6, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CUSTOM:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 187
    .line 188
    if-eq v3, v6, :cond_6

    .line 189
    .line 190
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 193
    .line 194
    .line 195
    move-result-wide v6

    .line 196
    iget-wide v8, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->i:J

    .line 197
    .line 198
    sub-long v8, v6, v8

    .line 199
    .line 200
    sget-wide v10, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->k:J

    .line 201
    .line 202
    cmp-long v3, v8, v10

    .line 203
    .line 204
    if-gez v3, :cond_6

    .line 205
    .line 206
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 207
    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string v2, "checkPushInternal too frequently -> currentTime("

    .line 214
    .line 215
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    const-string v2, ") lastPushTime("

    .line 222
    .line 223
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    iget-wide v2, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->i:J

    .line 227
    .line 228
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {p1, v5, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->g:Z

    .line 242
    .line 243
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 244
    .line 245
    return-object p1

    .line 246
    :cond_6
    invoke-direct {p0, v2, v1, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->C(Ljava/lang/String;Lsf/b;Lrs/c;)Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    if-ne p1, v0, :cond_7

    .line 255
    .line 256
    return-object p1

    .line 257
    :cond_7
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 258
    .line 259
    return-object p1

    .line 260
    :cond_8
    :goto_3
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 261
    .line 262
    const-string v1, "checkPushInternal -> no meet condition task find"

    .line 263
    .line 264
    invoke-virtual {p1, v5, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->P()V

    .line 268
    .line 269
    .line 270
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->g:Z

    .line 271
    .line 272
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 273
    .line 274
    return-object p1
.end method

.method private final C(Ljava/lang/String;Lsf/b;Lrs/c;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsf/b;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
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
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    instance-of v4, v3, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;

    .line 15
    .line 16
    iget v5, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

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
    iput v5, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->l:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 40
    .line 41
    const/4 v7, 0x1

    .line 42
    packed-switch v6, :pswitch_data_0

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 46
    .line 47
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 48
    .line 49
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw v1

    .line 53
    :pswitch_0
    iget-wide v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 54
    .line 55
    iget-object v5, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v5, Lsf/b;

    .line 58
    .line 59
    iget-object v6, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v6, Ljava/lang/String;

    .line 62
    .line 63
    iget-object v4, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 66
    .line 67
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    check-cast v3, Lkotlin/Result;

    .line 71
    .line 72
    invoke-virtual {v3}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    move-wide v8, v1

    .line 77
    move-object v2, v5

    .line 78
    move-object v1, v6

    .line 79
    goto/16 :goto_1

    .line 80
    .line 81
    :pswitch_1
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 87
    .line 88
    .line 89
    move-result-wide v8

    .line 90
    invoke-interface/range {p2 .. p2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    sget-object v6, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$b;->$EnumSwitchMapping$0:[I

    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    aget v3, v6, v3

    .line 101
    .line 102
    packed-switch v3, :pswitch_data_1

    .line 103
    .line 104
    .line 105
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 106
    .line 107
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 108
    .line 109
    .line 110
    throw v1

    .line 111
    :pswitch_2
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 114
    .line 115
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 116
    .line 117
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 118
    .line 119
    const/16 v3, 0x8

    .line 120
    .line 121
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 122
    .line 123
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->L(Lrs/c;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    if-ne v3, v5, :cond_1

    .line 128
    .line 129
    return-object v5

    .line 130
    :cond_1
    move-object v4, v0

    .line 131
    goto/16 :goto_1

    .line 132
    .line 133
    :pswitch_3
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 138
    .line 139
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 140
    .line 141
    const/4 v3, 0x7

    .line 142
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 143
    .line 144
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->K(Lrs/c;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    if-ne v3, v5, :cond_1

    .line 149
    .line 150
    return-object v5

    .line 151
    :pswitch_4
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 156
    .line 157
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 158
    .line 159
    const/4 v3, 0x6

    .line 160
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 161
    .line 162
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->G(Lrs/c;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    if-ne v3, v5, :cond_1

    .line 167
    .line 168
    return-object v5

    .line 169
    :pswitch_5
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 170
    .line 171
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 172
    .line 173
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 174
    .line 175
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 176
    .line 177
    const/4 v3, 0x5

    .line 178
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 179
    .line 180
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->J(Lrs/c;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    if-ne v3, v5, :cond_1

    .line 185
    .line 186
    return-object v5

    .line 187
    :pswitch_6
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 188
    .line 189
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 190
    .line 191
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 192
    .line 193
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 194
    .line 195
    const/4 v3, 0x4

    .line 196
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 197
    .line 198
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->M(Lrs/c;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    if-ne v3, v5, :cond_1

    .line 203
    .line 204
    return-object v5

    .line 205
    :pswitch_7
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 206
    .line 207
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 208
    .line 209
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 210
    .line 211
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 212
    .line 213
    const/4 v3, 0x3

    .line 214
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 215
    .line 216
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->N(Lrs/c;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-ne v3, v5, :cond_1

    .line 221
    .line 222
    return-object v5

    .line 223
    :pswitch_8
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 224
    .line 225
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 226
    .line 227
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 228
    .line 229
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 230
    .line 231
    const/4 v3, 0x2

    .line 232
    iput v3, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 233
    .line 234
    invoke-direct {v0, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->H(Lrs/c;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    if-ne v3, v5, :cond_1

    .line 239
    .line 240
    return-object v5

    .line 241
    :pswitch_9
    invoke-interface/range {p2 .. p2}, Lsf/b;->getId()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    iput-object v0, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->h:Ljava/lang/Object;

    .line 246
    .line 247
    iput-object v1, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->i:Ljava/lang/Object;

    .line 248
    .line 249
    iput-object v2, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->j:Ljava/lang/Object;

    .line 250
    .line 251
    iput-wide v8, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->k:J

    .line 252
    .line 253
    iput v7, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$executePushTask$1;->n:I

    .line 254
    .line 255
    invoke-direct {v0, v3, v4}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->I(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v3

    .line 259
    if-ne v3, v5, :cond_1

    .line 260
    .line 261
    return-object v5

    .line 262
    :goto_1
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    const-string v6, ") pushKey("

    .line 267
    .line 268
    const-string v10, "DefaultPushManager"

    .line 269
    .line 270
    if-eqz v5, :cond_5

    .line 271
    .line 272
    sget-object v5, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 273
    .line 274
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 275
    .line 276
    .line 277
    move-result-wide v11

    .line 278
    sget-object v13, Lud/b;->a:Lud/b;

    .line 279
    .line 280
    invoke-interface {v2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 281
    .line 282
    .line 283
    move-result-object v14

    .line 284
    invoke-virtual {v14}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    invoke-virtual {v13, v14, v11, v12}, Lud/b;->b4(Ljava/lang/String;J)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13, v1}, Lud/b;->n1(Ljava/lang/String;)I

    .line 292
    .line 293
    .line 294
    move-result v11

    .line 295
    add-int/2addr v11, v7

    .line 296
    invoke-virtual {v13, v1, v11}, Lud/b;->B4(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v13, v1}, Lud/b;->n1(Ljava/lang/String;)I

    .line 300
    .line 301
    .line 302
    move-result v12

    .line 303
    if-eq v12, v11, :cond_2

    .line 304
    .line 305
    sget-object v14, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 306
    .line 307
    const/16 v19, 0x6

    .line 308
    .line 309
    const/16 v20, 0x0

    .line 310
    .line 311
    const-string v15, "push_count_increase_failed"

    .line 312
    .line 313
    const/16 v16, 0x0

    .line 314
    .line 315
    const-wide/16 v17, 0x0

    .line 316
    .line 317
    invoke-static/range {v14 .. v20}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 318
    .line 319
    .line 320
    :cond_2
    invoke-interface {v2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 321
    .line 322
    .line 323
    move-result-object v12

    .line 324
    sget-object v14, Lcom/startshorts/androidplayer/manager/push/task/PushType;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 325
    .line 326
    if-eq v12, v14, :cond_3

    .line 327
    .line 328
    invoke-interface {v2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 329
    .line 330
    .line 331
    move-result-object v12

    .line 332
    sget-object v14, Lcom/startshorts/androidplayer/manager/push/task/PushType;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 333
    .line 334
    if-eq v12, v14, :cond_3

    .line 335
    .line 336
    invoke-interface {v2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 337
    .line 338
    .line 339
    move-result-object v12

    .line 340
    sget-object v14, Lcom/startshorts/androidplayer/manager/push/task/PushType;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 341
    .line 342
    if-ne v12, v14, :cond_4

    .line 343
    .line 344
    :cond_3
    sget-object v12, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 345
    .line 346
    new-instance v14, Ljava/util/Date;

    .line 347
    .line 348
    invoke-direct {v14}, Ljava/util/Date;-><init>()V

    .line 349
    .line 350
    .line 351
    invoke-static {v14}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 352
    .line 353
    .line 354
    move-result-object v14

    .line 355
    invoke-virtual {v12, v14}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v12

    .line 359
    invoke-virtual {v13, v12}, Lud/b;->f(Ljava/lang/String;)I

    .line 360
    .line 361
    .line 362
    move-result v14

    .line 363
    add-int/2addr v14, v7

    .line 364
    sget-object v7, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 365
    .line 366
    new-instance v15, Ljava/lang/StringBuilder;

    .line 367
    .line 368
    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .line 370
    .line 371
    const-string v0, "setActPushNum -> "

    .line 372
    .line 373
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    .line 375
    .line 376
    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    invoke-virtual {v7, v10, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v13, v12, v14}, Lud/b;->o2(Ljava/lang/String;I)V

    .line 387
    .line 388
    .line 389
    :cond_4
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 390
    .line 391
    .line 392
    move-result-wide v12

    .line 393
    iput-wide v12, v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->i:J

    .line 394
    .line 395
    sub-long/2addr v12, v8

    .line 396
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 397
    .line 398
    new-instance v4, Ljava/lang/StringBuilder;

    .line 399
    .line 400
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 401
    .line 402
    .line 403
    const-string v5, "executePushTask success -> pushType("

    .line 404
    .line 405
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    .line 407
    .line 408
    invoke-interface {v2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 409
    .line 410
    .line 411
    move-result-object v5

    .line 412
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string v5, ") pushShowedCount("

    .line 422
    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    const-string v5, ") cost("

    .line 430
    .line 431
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    .line 433
    .line 434
    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    const-string v5, "ms)"

    .line 438
    .line 439
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    .line 441
    .line 442
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 443
    .line 444
    .line 445
    move-result-object v4

    .line 446
    invoke-virtual {v0, v10, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    .line 448
    .line 449
    :cond_5
    invoke-static {v3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    if-eqz v0, :cond_6

    .line 454
    .line 455
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 456
    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    const-string v7, "executePushTask failed -> pushType("

    .line 463
    .line 464
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    .line 466
    .line 467
    invoke-interface {v2}, Lsf/b;->c()Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    .line 476
    .line 477
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    .line 479
    .line 480
    const-string v1, ") errMsg("

    .line 481
    .line 482
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 486
    .line 487
    .line 488
    move-result-object v0

    .line 489
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    const/16 v0, 0x29

    .line 493
    .line 494
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 495
    .line 496
    .line 497
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v0

    .line 501
    invoke-virtual {v4, v10, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    :cond_6
    invoke-static {v3}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 509
    .line 510
    .line 511
    move-result-object v0

    .line 512
    return-object v0

    .line 513
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

    .line 514
    .line 515
    .line 516
    .line 517
    .line 518
    .line 519
    .line 520
    .line 521
    .line 522
    .line 523
    .line 524
    .line 525
    .line 526
    .line 527
    .line 528
    .line 529
    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
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

.method private final D()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsf/b;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->o()Ljava/util/List;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast v1, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    new-instance v1, Ltf/b;

    .line 20
    .line 21
    invoke-direct {v1}, Ltf/b;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    new-instance v1, Ltf/h;

    .line 28
    .line 29
    invoke-direct {v1}, Ltf/h;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    new-instance v1, Ltf/g;

    .line 36
    .line 37
    invoke-direct {v1}, Ltf/g;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance v1, Ltf/d;

    .line 44
    .line 45
    invoke-direct {v1}, Ltf/d;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v1, Ltf/a;

    .line 52
    .line 53
    invoke-direct {v1}, Ltf/a;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    new-instance v1, Ltf/e;

    .line 60
    .line 61
    invoke-direct {v1}, Ltf/e;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance v1, Ltf/f;

    .line 68
    .line 69
    invoke-direct {v1}, Ltf/f;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method private final E(Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "handleIntent("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {v3, p1, p0, v2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$handleIntent$1;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    const/4 v4, 0x2

    .line 32
    const/4 v5, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private final F()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "DefaultPushManager"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v3, "handleIntent failed -> mStarted(false)"

    .line 11
    .line 12
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->g:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    const-string v3, "handleIntent failed -> mPushChecking(true)"

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->F()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_2

    .line 35
    .line 36
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 37
    .line 38
    const-string v3, "handleIntent failed -> notificationEnabled(false)"

    .line 39
    .line 40
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return v1

    .line 44
    :cond_2
    const/4 v0, 0x1

    .line 45
    return v0
.end method

.method private final G(Lrs/c;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->k:I

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
    goto/16 :goto_3

    .line 51
    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_2

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
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

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
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->t(Lrs/c;)Ljava/lang/Object;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 92
    .line 93
    new-instance p1, Ljava/lang/Throwable;

    .line 94
    .line 95
    const-string v0, "notification is null"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    iget-boolean v2, v2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 110
    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/Throwable;

    .line 116
    .line 117
    const-string v0, "not start yet"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    iput-object v4, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 135
    .line 136
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushBonusWillExpiredNotification$1;->k:I

    .line 137
    .line 138
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->J(Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;Lrs/c;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    if-ne p1, v1, :cond_7

    .line 143
    .line 144
    return-object v1

    .line 145
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 146
    .line 147
    new-instance v0, Ljava/lang/Throwable;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :cond_7
    :goto_3
    return-object p1
.end method

.method private final H(Lrs/c;)Ljava/lang/Object;
    .locals 4
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

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;->j:I

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
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCheckInNotification$1;->j:I

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

.method private final I(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    const-string v0, "CustomNotification:img download failed,bitmap is null"

    .line 2
    .line 3
    instance-of v1, p2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p2

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->k:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object p1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto/16 :goto_2

    .line 50
    .line 51
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    sget-object p2, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 63
    .line 64
    iput-object p0, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->h:Ljava/lang/Object;

    .line 65
    .line 66
    iput v4, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushCustomNotification$1;->k:I

    .line 67
    .line 68
    invoke-virtual {p2, p1, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->v(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p2

    .line 72
    if-ne p2, v2, :cond_3

    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_3
    move-object p1, p0

    .line 76
    :goto_1
    check-cast p2, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;

    .line 77
    .line 78
    if-nez p2, :cond_4

    .line 79
    .line 80
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 81
    .line 82
    new-instance p1, Ljava/lang/Throwable;

    .line 83
    .line 84
    const-string p2, "notification is null"

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

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
    goto :goto_3

    .line 98
    :cond_4
    iget-boolean p1, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 99
    .line 100
    if-nez p1, :cond_5

    .line 101
    .line 102
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 103
    .line 104
    new-instance p1, Ljava/lang/Throwable;

    .line 105
    .line 106
    const-string p2, "not start yet"

    .line 107
    .line 108
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-lez p1, :cond_6

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getCover()Landroid/graphics/Bitmap;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-nez p1, :cond_6

    .line 135
    .line 136
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 137
    .line 138
    const-string p2, "PushUtil"

    .line 139
    .line 140
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 144
    .line 145
    new-instance p1, Ljava/lang/Throwable;

    .line 146
    .line 147
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    goto :goto_3

    .line 159
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->M(Lcom/startshorts/androidplayer/bean/notification/CustomNotification;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    goto :goto_3

    .line 166
    :goto_2
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 167
    .line 168
    new-instance p2, Ljava/lang/Throwable;

    .line 169
    .line 170
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-direct {p2, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-static {p2}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    :goto_3
    return-object p1
.end method

.method private final J(Lrs/c;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->k:I

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
    goto/16 :goto_3

    .line 51
    .line 52
    :catch_0
    move-exception p1

    .line 53
    goto :goto_2

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
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->h:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

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
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->h:Ljava/lang/Object;

    .line 76
    .line 77
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->k:I

    .line 78
    .line 79
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->y(Lrs/c;)Ljava/lang/Object;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 88
    .line 89
    if-nez p1, :cond_5

    .line 90
    .line 91
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 92
    .line 93
    new-instance p1, Ljava/lang/Throwable;

    .line 94
    .line 95
    const-string v0, "notification is null"

    .line 96
    .line 97
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    iget-boolean v2, v2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 110
    .line 111
    if-nez v2, :cond_6

    .line 112
    .line 113
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 114
    .line 115
    new-instance p1, Ljava/lang/Throwable;

    .line 116
    .line 117
    const-string v0, "not start yet"

    .line 118
    .line 119
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    goto :goto_3

    .line 131
    :cond_6
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 132
    .line 133
    const/4 v4, 0x0

    .line 134
    iput-object v4, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->h:Ljava/lang/Object;

    .line 135
    .line 136
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushMissCheckInNotification$1;->k:I

    .line 137
    .line 138
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->N(Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;Lrs/c;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    if-ne p1, v1, :cond_7

    .line 143
    .line 144
    return-object v1

    .line 145
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 146
    .line 147
    new-instance v0, Ljava/lang/Throwable;

    .line 148
    .line 149
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    :cond_7
    :goto_3
    return-object p1
.end method

.method private final K(Lrs/c;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    const-string v0, "NewShortsNotification:img download failed,bitmap is null"

    .line 2
    .line 3
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->k:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_2

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
    iput-object p0, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->h:Ljava/lang/Object;

    .line 64
    .line 65
    iput v4, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushNewShortsNotification$1;->k:I

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->x(Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v2, :cond_3

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_3
    move-object v1, p0

    .line 75
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 80
    .line 81
    new-instance p1, Ljava/lang/Throwable;

    .line 82
    .line 83
    const-string v0, "notification is null"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    iget-boolean v1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 102
    .line 103
    new-instance p1, Ljava/lang/Throwable;

    .line 104
    .line 105
    const-string v0, "not start yet"

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;->getCover()Landroid/graphics/Bitmap;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v1, :cond_6

    .line 124
    .line 125
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 126
    .line 127
    const-string v1, "PushUtil"

    .line 128
    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 133
    .line 134
    new-instance p1, Ljava/lang/Throwable;

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->O(Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    goto :goto_3

    .line 155
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 156
    .line 157
    new-instance v0, Ljava/lang/Throwable;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_3
    return-object p1
.end method

.method private final L(Lrs/c;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    const-string v0, "RecommendShorts:img download failed,bitmap is null"

    .line 2
    .line 3
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->k:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto/16 :goto_2

    .line 50
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
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    :try_start_1
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 63
    .line 64
    iput-object p0, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->h:Ljava/lang/Object;

    .line 65
    .line 66
    iput v4, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRecommendShortsNotification$1;->k:I

    .line 67
    .line 68
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->z(Lrs/c;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-ne p1, v2, :cond_3

    .line 73
    .line 74
    return-object v2

    .line 75
    :cond_3
    move-object v1, p0

    .line 76
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;

    .line 77
    .line 78
    if-nez p1, :cond_4

    .line 79
    .line 80
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 81
    .line 82
    new-instance p1, Ljava/lang/Throwable;

    .line 83
    .line 84
    const-string v0, "notification is null"

    .line 85
    .line 86
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

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
    goto :goto_3

    .line 98
    :cond_4
    iget-boolean v1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 99
    .line 100
    if-nez v1, :cond_5

    .line 101
    .line 102
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 103
    .line 104
    new-instance p1, Ljava/lang/Throwable;

    .line 105
    .line 106
    const-string v0, "not start yet"

    .line 107
    .line 108
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getCover()Landroid/graphics/Bitmap;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    if-nez v1, :cond_6

    .line 125
    .line 126
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 127
    .line 128
    const-string v1, "PushUtil"

    .line 129
    .line 130
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 134
    .line 135
    new-instance p1, Ljava/lang/Throwable;

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    goto :goto_3

    .line 149
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 150
    .line 151
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->S(Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getFromLocal()Z

    .line 162
    .line 163
    .line 164
    move-result p1

    .line 165
    if-eqz p1, :cond_7

    .line 166
    .line 167
    sget-object p1, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 168
    .line 169
    new-instance v1, Ljava/util/Date;

    .line 170
    .line 171
    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {v1}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/utils/TimeUtil;->f(Ljava/util/Date;)Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    sget-object v1, Lud/b;->a:Lud/b;

    .line 183
    .line 184
    invoke-virtual {v1, p1, v4}, Lud/b;->g4(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .line 186
    .line 187
    :cond_7
    return-object v0

    .line 188
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 189
    .line 190
    new-instance v0, Ljava/lang/Throwable;

    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    :goto_3
    return-object p1
.end method

.method private final M(Lrs/c;)Ljava/lang/Object;
    .locals 5
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

    .line 1
    const-string v0, "StartRecharging:img download failed,bitmap is null"

    .line 2
    .line 3
    instance-of v1, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, p1

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->k:I

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
    iput v2, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->k:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;

    .line 23
    .line 24
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object p1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->i:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->k:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->h:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 43
    .line 44
    :try_start_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :catch_0
    move-exception p1

    .line 49
    goto :goto_2

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
    iput-object p0, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->h:Ljava/lang/Object;

    .line 64
    .line 65
    iput v4, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushStartRechargingNotification$1;->k:I

    .line 66
    .line 67
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->A(Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-ne p1, v2, :cond_3

    .line 72
    .line 73
    return-object v2

    .line 74
    :cond_3
    move-object v1, p0

    .line 75
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;

    .line 76
    .line 77
    if-nez p1, :cond_4

    .line 78
    .line 79
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 80
    .line 81
    new-instance p1, Ljava/lang/Throwable;

    .line 82
    .line 83
    const-string v0, "notification is null"

    .line 84
    .line 85
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    goto :goto_3

    .line 97
    :cond_4
    iget-boolean v1, v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 98
    .line 99
    if-nez v1, :cond_5

    .line 100
    .line 101
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 102
    .line 103
    new-instance p1, Ljava/lang/Throwable;

    .line 104
    .line 105
    const-string v0, "not start yet"

    .line 106
    .line 107
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    goto :goto_3

    .line 119
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->getCover()Landroid/graphics/Bitmap;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    if-nez v1, :cond_6

    .line 124
    .line 125
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 126
    .line 127
    const-string v1, "PushUtil"

    .line 128
    .line 129
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 133
    .line 134
    new-instance p1, Ljava/lang/Throwable;

    .line 135
    .line 136
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    goto :goto_3

    .line 148
    :cond_6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 149
    .line 150
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->U(Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    goto :goto_3

    .line 155
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 156
    .line 157
    new-instance v0, Ljava/lang/Throwable;

    .line 158
    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    :goto_3
    return-object p1
.end method

.method private final N(Lrs/c;)Ljava/lang/Object;
    .locals 6
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

    .line 1
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->k:I

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
    goto/16 :goto_3

    .line 54
    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 56
    .line 57
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 58
    .line 59
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_2
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 64
    .line 65
    check-cast v2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 66
    .line 67
    :try_start_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :try_start_2
    sget-object p1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 75
    .line 76
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 77
    .line 78
    iput v4, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->k:I

    .line 79
    .line 80
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->B(Lrs/c;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-ne p1, v1, :cond_4

    .line 85
    .line 86
    return-object v1

    .line 87
    :cond_4
    move-object v2, p0

    .line 88
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;

    .line 89
    .line 90
    if-nez p1, :cond_5

    .line 91
    .line 92
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 93
    .line 94
    new-instance p1, Ljava/lang/Throwable;

    .line 95
    .line 96
    const-string v0, "notification is null"

    .line 97
    .line 98
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    goto :goto_4

    .line 110
    :cond_5
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getTitle()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    const/4 v5, 0x0

    .line 115
    if-eqz v4, :cond_8

    .line 116
    .line 117
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-nez v4, :cond_6

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_6
    iget-boolean v2, v2, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 125
    .line 126
    if-nez v2, :cond_7

    .line 127
    .line 128
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 129
    .line 130
    new-instance p1, Ljava/lang/Throwable;

    .line 131
    .line 132
    const-string v0, "not start yet"

    .line 133
    .line 134
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    goto :goto_4

    .line 146
    :cond_7
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 147
    .line 148
    iput-object v5, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushSubsBonusNotification$1;->k:I

    .line 151
    .line 152
    invoke-virtual {v2, p1, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->V(Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    if-ne p1, v1, :cond_9

    .line 157
    .line 158
    return-object v1

    .line 159
    :cond_8
    :goto_2
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 160
    .line 161
    const-string v0, "DefaultPushManager"

    .line 162
    .line 163
    const-string v1, "ignore pushSubsBonusNotification"

    .line 164
    .line 165
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-static {v5}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    goto :goto_4

    .line 173
    :goto_3
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 174
    .line 175
    new-instance v0, Ljava/lang/Throwable;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    invoke-direct {v0, p1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    :cond_9
    :goto_4
    return-object p1
.end method

.method private final O()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    const-string v1, "registerBroadcastReceiver"

    .line 8
    .line 9
    const-string v2, "DefaultPushManager"

    .line 10
    .line 11
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->e:Z

    .line 16
    .line 17
    new-instance v0, Landroid/content/IntentFilter;

    .line 18
    .line 19
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    .line 21
    .line 22
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->l:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v1, "android.intent.action.TIME_SET"

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->X()Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 46
    .line 47
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->f:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;

    .line 52
    .line 53
    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 60
    .line 61
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->f:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;

    .line 66
    .line 67
    const/4 v4, 0x2

    .line 68
    invoke-static {v1, v3, v0, v4}, Lcom/android/billingclient/api/x;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_0
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 73
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v4, "registerBroadcastReceiver failed -> "

    .line 80
    .line 81
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->e:Z

    .line 100
    .line 101
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    :cond_1
    :goto_1
    return-void
.end method

.method private final P()V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "DefaultPushManager"

    .line 4
    .line 5
    const-string v2, "resetLastPushFailed"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 11
    .line 12
    sget-object v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 13
    .line 14
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 15
    .line 16
    sget-object v3, Lcom/startshorts/androidplayer/manager/push/task/PushType;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 17
    .line 18
    sget-object v4, Lcom/startshorts/androidplayer/manager/push/task/PushType;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 19
    .line 20
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Iterable;

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_0

    .line 39
    .line 40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 45
    .line 46
    sget-object v2, Lud/a;->a:Lud/a;

    .line 47
    .line 48
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v2, v1, v3}, Lud/a;->A0(Ljava/lang/String;Z)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    return-void
.end method

.method private final Q()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->A()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v2, "startFixedCheckPushJob -> interval("

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-wide/32 v2, 0x493e0

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v4, "ms)"

    .line 24
    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v4, "DefaultPushManager"

    .line 33
    .line 34
    invoke-virtual {v0, v4, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->c:Landroid/app/PendingIntent;

    .line 39
    .line 40
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 41
    .line 42
    invoke-static {}, Lgt/q0;->a()Lgt/c0;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    new-instance v4, Lrf/a;

    .line 47
    .line 48
    invoke-direct {v4, p0}, Lrf/a;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->f(JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;)Lkotlinx/coroutines/r;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->d:Lkotlinx/coroutines/r;

    .line 56
    .line 57
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->E(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 4
    .line 5
    .line 6
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p0
.end method

.method private final S(Lrs/c;)Ljava/lang/Object;
    .locals 10
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
    instance-of v0, p1, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->k:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->k:I

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
    iget-object v0, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 60
    .line 61
    .line 62
    move-result-wide v4

    .line 63
    iget-wide v6, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->h:J

    .line 64
    .line 65
    sub-long v6, v4, v6

    .line 66
    .line 67
    const-wide/16 v8, 0x7d0

    .line 68
    .line 69
    cmp-long p1, v6, v8

    .line 70
    .line 71
    if-gez p1, :cond_3

    .line 72
    .line 73
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 74
    .line 75
    const-string v0, "DefaultPushManager"

    .line 76
    .line 77
    const-string/jumbo v1, "tryPushNotification too frequently, less than 2s"

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_3
    iput-wide v4, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->h:J

    .line 87
    .line 88
    iput-boolean v3, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->g:Z

    .line 89
    .line 90
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->h:Ljava/lang/Object;

    .line 91
    .line 92
    iput v3, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$tryPushNotification$1;->k:I

    .line 93
    .line 94
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->B(Lrs/c;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-ne p1, v1, :cond_4

    .line 99
    .line 100
    return-object v1

    .line 101
    :cond_4
    move-object v0, p0

    .line 102
    :goto_1
    const/4 p1, 0x0

    .line 103
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->g:Z

    .line 104
    .line 105
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 106
    .line 107
    return-object p1
.end method

.method private final T()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->e:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->e:Z

    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string/jumbo v1, "unregisterBroadcastReceiver"

    .line 11
    .line 12
    .line 13
    const-string v2, "DefaultPushManager"

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 19
    .line 20
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->f:Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$mBroadcastReceiver$1;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 32
    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v4, "unregisterBroadcastReceiver failed -> "

    .line 39
    .line 40
    .line 41
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    :goto_0
    return-void
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->R(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->A()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Ljava/lang/String;Lsf/b;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->C(Ljava/lang/String;Lsf/b;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Lqt/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->b:Lqt/a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic k(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Ljava/lang/String;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->E(Ljava/lang/String;)Lkotlinx/coroutines/r;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->F()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic m(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->G(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->H(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->I(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->J(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->K(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->L(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->M(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic t(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->N(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->g:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->S(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->T()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$cancelRewardsNotification$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$cancelRewardsNotification$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "cancelRewardsNotification"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public b(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)V
    .locals 7
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bean"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p1, v0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushShortVideoPlayStateNotification$1;-><init>(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "pushShortVideoPlayStateNotification"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public c()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRewardsNotification$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$pushRewardsNotification$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "pushRewardsNotification"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public d()V
    .locals 0

    .line 1
    return-void
.end method

.method public e()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$cancelShortVideoPlayStateNotification$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$cancelShortVideoPlayStateNotification$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "cancelShortVideoPlayStateNotification"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public start()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lud/a;->a:Lud/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 15
    .line 16
    new-instance v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$start$1;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-direct {v4, p0, v0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$start$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 20
    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    const/4 v6, 0x0

    .line 24
    const-string v2, "BackgroundPusher:start"

    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 7
    .line 8
    new-instance v4, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$stop$1;

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {v4, p0, v0}, Lcom/startshorts/androidplayer/manager/push/DefaultPushManager$stop$1;-><init>(Lcom/startshorts/androidplayer/manager/push/DefaultPushManager;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    const/4 v5, 0x2

    .line 15
    const/4 v6, 0x0

    .line 16
    const-string v2, "BackgroundPusher:stop"

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 20
    .line 21
    .line 22
    return-void
.end method
