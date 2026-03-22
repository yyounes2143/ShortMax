.class public final Lcom/startshorts/androidplayer/manager/crash/CrashManager;
.super Ljava/lang/Object;
.source "CrashManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/crash/CrashManager$QuitCockroachException;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Ljava/lang/Thread$UncaughtExceptionHandler;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static c:Z

.field private static d:Z

.field private static final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 7
    .line 8
    new-instance v0, Lte/a;

    .line 9
    .line 10
    invoke-direct {v0}, Lte/a;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->e:Lms/i;

    .line 18
    .line 19
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

.method public static synthetic a(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->r(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->o()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->k()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final f(Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    :try_start_0
    sget-object v1, Lqe/a;->a:Lqe/a;

    .line 12
    .line 13
    invoke-virtual {v1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getInterceptCrashesType()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljk/v;->r(Ljava/lang/String;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Ljava/lang/String;

    .line 40
    .line 41
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-lez v3, :cond_1

    .line 46
    .line 47
    const/4 v3, 0x2

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-static {p1, v2, v0, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method private final h()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p1}, Lms/d;->c(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    goto :goto_0

    .line 6
    :catch_0
    const-string p1, ""

    .line 7
    .line 8
    :goto_0
    return-object p1
.end method

.method private final j(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p3

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v4, "interceptCrash -> threadName("

    .line 13
    .line 14
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v4, ") stackTrace("

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/16 v4, 0x29

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0, v3}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    sget-object v3, Lhk/c;->a:Lhk/c;

    .line 41
    .line 42
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    if-nez v4, :cond_0

    .line 47
    .line 48
    move-object v4, v2

    .line 49
    :cond_0
    invoke-virtual {v3, v4}, Lhk/c;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->h()Ljava/util/concurrent/ConcurrentHashMap;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v4, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    check-cast v4, Ljava/lang/Integer;

    .line 62
    .line 63
    const/4 v5, 0x0

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v4

    .line 70
    goto :goto_0

    .line 71
    :cond_1
    move v4, v5

    .line 72
    :goto_0
    const/4 v6, 0x1

    .line 73
    const/4 v7, 0x2

    .line 74
    if-ge v4, v7, :cond_2

    .line 75
    .line 76
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->h()Ljava/util/concurrent/ConcurrentHashMap;

    .line 77
    .line 78
    .line 79
    move-result-object v8

    .line 80
    add-int/2addr v4, v6

    .line 81
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-interface {v8, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 89
    .line 90
    new-instance v11, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string/jumbo v3, "thread_name"

    .line 96
    .line 97
    .line 98
    invoke-virtual {v11, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v1, "err_msg"

    .line 102
    .line 103
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v11, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "stack_trace"

    .line 111
    .line 112
    .line 113
    invoke-virtual {v11, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 117
    .line 118
    const/4 v14, 0x4

    .line 119
    const/4 v15, 0x0

    .line 120
    const-string v10, "app_crash"

    .line 121
    .line 122
    const-wide/16 v12, 0x0

    .line 123
    .line 124
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    :cond_2
    move-object/from16 v1, p2

    .line 128
    .line 129
    instance-of v3, v1, Ljava/lang/UnsatisfiedLinkError;

    .line 130
    .line 131
    const/4 v4, 0x0

    .line 132
    if-eqz v3, :cond_3

    .line 133
    .line 134
    const-string v3, "libimagepipeline.so"

    .line 135
    .line 136
    invoke-static {v2, v3, v5, v7, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v3

    .line 140
    if-eqz v3, :cond_3

    .line 141
    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v3, "fresco exception -> "

    .line 148
    .line 149
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->g(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    sget-object v1, Lud/b;->a:Lud/b;

    .line 167
    .line 168
    invoke-virtual {v1, v6}, Lud/b;->O3(Z)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    const-string v3, "android.app.RemoteServiceException"

    .line 173
    .line 174
    invoke-static {v2, v3, v5, v7, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v3

    .line 178
    if-eqz v3, :cond_4

    .line 179
    .line 180
    const-string v3, "Bad notification"

    .line 181
    .line 182
    invoke-static {v2, v3, v5, v7, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_4

    .line 187
    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    .line 189
    .line 190
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .line 192
    .line 193
    const-string v3, "push exception -> "

    .line 194
    .line 195
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->g(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    sget-object v1, Lud/b;->a:Lud/b;

    .line 213
    .line 214
    invoke-virtual {v1, v6}, Lud/b;->A4(Z)V

    .line 215
    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_4
    const-string v1, "OutOfMemoryError"

    .line 219
    .line 220
    invoke-static {v2, v1, v5, v7, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-eqz v1, :cond_5

    .line 225
    .line 226
    invoke-static {}, Lkk/a;->a()Lt3/r;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lt3/r;->b()V

    .line 231
    .line 232
    .line 233
    :cond_5
    :goto_1
    return-void
.end method

.method private static final k()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final l(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->m()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->n()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private final m()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->d:Z

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string v1, "CrashManager"

    .line 12
    .line 13
    const-string/jumbo v2, "turn off ChildThreadInterceptCrash"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method private final n()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->c:Z

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string v1, "CrashManager"

    .line 12
    .line 13
    const-string/jumbo v2, "turn off MainThreadInterceptCrash"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lte/c;

    .line 29
    .line 30
    invoke-direct {v1}, Lte/c;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final o()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager$QuitCockroachException;

    .line 2
    .line 3
    const-string v1, "Quit Cockroach....."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager$QuitCockroachException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method private final p(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_1

    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    if-eq p1, v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->q()V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->s()V

    .line 13
    .line 14
    .line 15
    :goto_0
    return-void
.end method

.method private final q()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->d:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->d:Z

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 16
    .line 17
    const-string v2, "CrashManager"

    .line 18
    .line 19
    const-string/jumbo v3, "turn on ChildThreadInterceptCrash"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 26
    .line 27
    new-instance v1, Lte/b;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lte/b;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private static final r(Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "t"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "e"

    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 13
    .line 14
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    sget-boolean v2, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->d:Z

    .line 19
    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->f(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "getName(...)"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0, p2, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->j(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    invoke-interface {p0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private final s()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->c:Z

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string v1, "CrashManager"

    .line 12
    .line 13
    const-string/jumbo v2, "turn on MainThreadInterceptCrash"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Landroid/os/Handler;

    .line 20
    .line 21
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26
    .line 27
    .line 28
    new-instance v1, Lte/d;

    .line 29
    .line 30
    invoke-direct {v1}, Lte/d;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private static final t()V
    .locals 4

    .line 1
    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    goto :goto_0

    .line 5
    :catchall_0
    move-exception v0

    .line 6
    instance-of v1, v0, Lcom/startshorts/androidplayer/manager/crash/CrashManager$QuitCockroachException;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    sget-object v1, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    sget-boolean v3, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->c:Z

    .line 18
    .line 19
    if-eqz v3, :cond_2

    .line 20
    .line 21
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->f(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    const-string v3, "MainThread"

    .line 28
    .line 29
    invoke-direct {v1, v3, v0, v2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->j(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 34
    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-interface {v1, v2, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0
.end method


# virtual methods
.method public final e()V
    .locals 3

    .line 1
    sget-object v0, Lqe/a;->a:Lqe/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getInterceptMainThreadCrashes()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->p(I)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->l(I)V

    .line 19
    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getInterceptChildThreadCrashes()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    const/4 v1, 0x2

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->p(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-direct {p0, v1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->l(I)V

    .line 37
    .line 38
    .line 39
    :goto_1
    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    const-string v1, "CrashManager"

    .line 9
    .line 10
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
