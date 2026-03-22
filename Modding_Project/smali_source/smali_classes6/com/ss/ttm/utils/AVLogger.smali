.class public final Lcom/ss/ttm/utils/AVLogger;
.super Ljava/lang/Object;
.source "AVLogger.java"


# static fields
.field public static final DEBUG:Z = false

.field public static final FORMAT:Ljava/lang/String; = "<%s,%x>%s"

.field public static final LEVEL_LOG_ALL:I = 0x0

.field public static final LEVEL_LOG_DEBUG:I = 0x1000000

.field public static final LEVEL_LOG_ERROR:I = 0x4000000

.field public static final LEVEL_LOG_FATAL:I = 0x5000000

.field public static final LEVEL_LOG_INFO:I = 0x2000000

.field public static final LEVEL_LOG_INFO_KILL:I = 0x2100000

.field public static final LEVEL_LOG_INFO_TRACK_FUNC:I = 0x28e0000

.field public static final LEVEL_LOG_INFO_TRACK_LIFE:I = 0x28f0000

.field public static final LEVEL_LOG_SILENT:I = 0x6000000

.field public static final LEVEL_LOG_VERBOSE:I = 0x0

.field public static final LEVEL_LOG_WARN:I = 0x3000000

.field private static final TAG:Ljava/lang/String; = "ttmj"

.field private static final TTVideoEngineLog:Ljava/lang/String; = "com.ss.ttvideoengine.utils.TTVideoEngineLog"

.field private static gLogLevel:I = 0x2000000

.field private static methodLogD:Ljava/lang/reflect/Method;

.field private static methodLogE:Ljava/lang/reflect/Method;

.field private static methodLogI:Ljava/lang/reflect/Method;

.field private static methodLogW:Ljava/lang/reflect/Method;

.field private static objectTTVideoEngineLog:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/high16 v0, 0x4000000

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/ss/ttm/utils/AVLogger;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static Info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/high16 v0, 0x2000000

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/ss/ttm/utils/AVLogger;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static InfoKill(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/high16 v0, 0x2100000

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/ss/ttm/utils/AVLogger;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static InfoTrackFunc(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/high16 v0, 0x28e0000

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/ss/ttm/utils/AVLogger;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static InfoTrackLife(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/high16 v0, 0x28f0000

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/ss/ttm/utils/AVLogger;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static Verbose(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/high16 v0, 0x3000000

    .line 2
    .line 3
    invoke-static {v0, p0, p1, p2}, Lcom/ss/ttm/utils/AVLogger;->log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/ss/ttm/utils/AVLogger;->Debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/ss/ttm/utils/AVLogger;->Error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/ss/ttm/utils/AVLogger;->Info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/ss/ttm/utils/AVLogger;->InfoKill(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static log(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    sget v1, Lcom/ss/ttm/utils/AVLogger;->gLogLevel:I

    .line 4
    .line 5
    const/high16 v2, -0x10000

    .line 6
    .line 7
    and-int/2addr v1, v2

    .line 8
    if-ge p0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    sget-object v1, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 12
    .line 13
    const-string/jumbo v2, "ttmj"

    .line 14
    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    :try_start_0
    const-class v1, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;

    .line 19
    .line 20
    sput-object v1, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 21
    .line 22
    const-string v3, "d"

    .line 23
    .line 24
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    sput-object v1, Lcom/ss/ttm/utils/AVLogger;->methodLogD:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    sget-object v1, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 35
    .line 36
    const-string v3, "i"

    .line 37
    .line 38
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    sput-object v1, Lcom/ss/ttm/utils/AVLogger;->methodLogI:Ljava/lang/reflect/Method;

    .line 47
    .line 48
    sget-object v1, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 49
    .line 50
    const-string/jumbo v3, "w"

    .line 51
    .line 52
    .line 53
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v4

    .line 57
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    sput-object v1, Lcom/ss/ttm/utils/AVLogger;->methodLogW:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    sget-object v1, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 64
    .line 65
    const-string v3, "e"

    .line 66
    .line 67
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    sput-object v0, Lcom/ss/ttm/utils/AVLogger;->methodLogE:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :catch_0
    move-exception p0

    .line 79
    const/4 p1, 0x0

    .line 80
    sput-object p1, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 81
    .line 82
    new-instance p1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string p2, "reflect failed! e:"

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_1
    :goto_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 104
    .line 105
    if-nez p2, :cond_2

    .line 106
    .line 107
    const/4 p2, 0x0

    .line 108
    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    const-string p2, "<%s,%x>%s"

    .line 122
    .line 123
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    if-eqz p0, :cond_6

    .line 128
    .line 129
    const/high16 p2, 0x1000000

    .line 130
    .line 131
    if-eq p0, p2, :cond_6

    .line 132
    .line 133
    const/high16 p2, 0x2000000

    .line 134
    .line 135
    if-eq p0, p2, :cond_5

    .line 136
    .line 137
    const/high16 p2, 0x2100000

    .line 138
    .line 139
    if-eq p0, p2, :cond_5

    .line 140
    .line 141
    const/high16 p2, 0x28e0000

    .line 142
    .line 143
    if-eq p0, p2, :cond_5

    .line 144
    .line 145
    const/high16 p2, 0x28f0000

    .line 146
    .line 147
    if-eq p0, p2, :cond_5

    .line 148
    .line 149
    const/high16 p2, 0x3000000

    .line 150
    .line 151
    if-eq p0, p2, :cond_4

    .line 152
    .line 153
    const/high16 p2, 0x4000000

    .line 154
    .line 155
    if-eq p0, p2, :cond_3

    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_3
    :try_start_1
    sget-object p0, Lcom/ss/ttm/utils/AVLogger;->methodLogE:Ljava/lang/reflect/Method;

    .line 159
    .line 160
    sget-object p2, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 161
    .line 162
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception p0

    .line 171
    goto :goto_2

    .line 172
    :cond_4
    sget-object p0, Lcom/ss/ttm/utils/AVLogger;->methodLogW:Ljava/lang/reflect/Method;

    .line 173
    .line 174
    sget-object p2, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 175
    .line 176
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :cond_5
    sget-object p0, Lcom/ss/ttm/utils/AVLogger;->methodLogI:Ljava/lang/reflect/Method;

    .line 185
    .line 186
    sget-object p2, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 187
    .line 188
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_6
    sget-object p0, Lcom/ss/ttm/utils/AVLogger;->methodLogD:Ljava/lang/reflect/Method;

    .line 197
    .line 198
    sget-object p2, Lcom/ss/ttm/utils/AVLogger;->objectTTVideoEngineLog:Ljava/lang/Class;

    .line 199
    .line 200
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 205
    .line 206
    .line 207
    goto :goto_3

    .line 208
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    .line 212
    .line 213
    const-string p2, "invoke failed! e:"

    .line 214
    .line 215
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object p0

    .line 225
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    :goto_3
    return-void
.end method

.method public static setLogLevel(I)V
    .locals 0

    .line 1
    sput p0, Lcom/ss/ttm/utils/AVLogger;->gLogLevel:I

    .line 2
    .line 3
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/ss/ttm/utils/AVLogger;->Verbose(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, v0, p1}, Lcom/ss/ttm/utils/AVLogger;->Warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
