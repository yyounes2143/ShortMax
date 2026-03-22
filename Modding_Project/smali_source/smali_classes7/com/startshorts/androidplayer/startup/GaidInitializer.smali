.class public final Lcom/startshorts/androidplayer/startup/GaidInitializer;
.super Lcom/startshorts/androidplayer/startup/BaseInitializer;
.source "GaidInitializer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/startup/BaseInitializer<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final g:Lgt/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/p<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private b:Z

.field private c:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->f:Lcom/startshorts/androidplayer/startup/GaidInitializer$Companion;

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {v1, v0, v1}, Lgt/r;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/p;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->g:Lgt/p;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/BaseInitializer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Loh/c;

    .line 5
    .line 6
    invoke-direct {v0}, Loh/c;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->d:Lms/i;

    .line 14
    .line 15
    return-void
.end method

.method public static synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->q()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic g(Lcom/startshorts/androidplayer/startup/GaidInitializer;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->s(Lcom/startshorts/androidplayer/startup/GaidInitializer;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lcom/startshorts/androidplayer/startup/GaidInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->m()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic i(Lcom/startshorts/androidplayer/startup/GaidInitializer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic j(Lcom/startshorts/androidplayer/startup/GaidInitializer;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->o(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic k()Lgt/p;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->g:Lgt/p;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic l(Lcom/startshorts/androidplayer/startup/GaidInitializer;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->b:Z

    .line 2
    .line 3
    return p0
.end method

.method private final m()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->c:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->c:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final n()V
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/PushManager;->a:Lcom/startshorts/androidplayer/manager/push/PushManager;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, v3, v1, v2}, Lcom/startshorts/androidplayer/manager/push/PushManager;->f(Lcom/startshorts/androidplayer/manager/push/PushManager;ZILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 7
    .line 8
    .line 9
    sget-object v0, Lud/a;->a:Lud/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->w()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->C()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;

    .line 28
    .line 29
    const-string v1, "doAfterQueryGaid"

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->i(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->h()V

    .line 37
    .line 38
    .line 39
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->e1()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-eqz v1, :cond_1

    .line 49
    .line 50
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/config/RemoteConfigRepo;->s()Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    sget-object v0, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->C()V

    .line 64
    .line 65
    .line 66
    :cond_1
    return-void
.end method

.method private final o(Landroid/content/Context;)V
    .locals 11

    .line 1
    const-string v0, "DeviceUtil"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lfk/p;

    .line 4
    .line 5
    invoke-direct {v1}, Lfk/p;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Lfk/p;->d()Lfk/p;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v2, "getAdvertisingIdInfo(...)"

    .line 17
    .line 18
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v4, "getAdvertisingIdInfo -> gaid("

    .line 35
    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v4, ") isLimitedAdTracking("

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v4, ") costTime("

    .line 51
    .line 52
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lfk/p;->b()J

    .line 56
    .line 57
    .line 58
    move-result-wide v4

    .line 59
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, "ms)"

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {p0, v3}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->d(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 75
    .line 76
    const-string v5, "query_gaid"

    .line 77
    .line 78
    new-instance v6, Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "limit_ad_tracking"

    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    .line 87
    const-string p1, "1"

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p1

    .line 91
    goto :goto_4

    .line 92
    :catch_0
    move-exception p1

    .line 93
    goto :goto_2

    .line 94
    :cond_0
    const-string p1, "0"

    .line 95
    .line 96
    :goto_0
    invoke-virtual {v6, v3, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    const-string p1, "cost_time"

    .line 100
    .line 101
    invoke-virtual {v1}, Lfk/p;->a()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v6, p1, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    const/4 v9, 0x4

    .line 115
    const/4 v10, 0x0

    .line 116
    const-wide/16 v7, 0x0

    .line 117
    .line 118
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    if-eqz v2, :cond_2

    .line 122
    .line 123
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    if-nez p1, :cond_1

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    sget-object p1, Lud/a;->a:Lud/a;

    .line 131
    .line 132
    invoke-virtual {p1, v2}, Lud/a;->o0(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object p1, Lud/b;->a:Lud/b;

    .line 136
    .line 137
    invoke-virtual {p1, v2}, Lud/b;->Q3(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 141
    .line 142
    const-string v1, "getGaid getDeviceId()"

    .line 143
    .line 144
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/startup/GaidInitializer;->g:Lgt/p;

    .line 153
    .line 154
    sget-object v0, Lud/b;->a:Lud/b;

    .line 155
    .line 156
    invoke-virtual {v0}, Lud/b;->E0()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;->d(Lgt/p;Ljava/lang/Object;)V

    .line 161
    .line 162
    .line 163
    goto :goto_3

    .line 164
    :goto_2
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    const-string v2, "getGaid exception -> "

    .line 170
    .line 171
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 189
    .line 190
    const-string v1, "getGaid exception getDeviceId()"

    .line 191
    .line 192
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :goto_3
    return-void

    .line 202
    :goto_4
    sget-object v0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->g:Lgt/p;

    .line 203
    .line 204
    sget-object v1, Lud/b;->a:Lud/b;

    .line 205
    .line 206
    invoke-virtual {v1}, Lud/b;->E0()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/utils/ext/CompletableDeferredExtKt;->d(Lgt/p;Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    throw p1
.end method

.method private final p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->d:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final q()Ljava/util/List;
    .locals 4

    .line 1
    const-string v0, "SM-A226B"

    .line 2
    .line 3
    const-string v1, "22041211AC"

    .line 4
    .line 5
    const-string v2, "SM-G975U"

    .line 6
    .line 7
    const-string v3, "SM-A146P"

    .line 8
    .line 9
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method

.method private static final s(Lcom/startshorts/androidplayer/startup/GaidInitializer;)Lkotlin/Unit;
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->b:Z

    .line 3
    .line 4
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 5
    .line 6
    const/4 v6, 0x6

    .line 7
    const/4 v7, 0x0

    .line 8
    const-string v2, "query_gaid_timeout"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    const-wide/16 v4, 0x0

    .line 12
    .line 13
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->n()V

    .line 17
    .line 18
    .line 19
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p0
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "GaidInitializer"

    .line 2
    .line 3
    return-object v0
.end method

.method public dependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/startup/Initializer<",
            "*>;>;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-class v0, Lcom/startshorts/androidplayer/startup/DbInitializer;

    .line 2
    .line 3
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public e(Landroid/content/Context;Z)Ljava/lang/Object;
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "DeviceUtil"

    .line 7
    .line 8
    const-string v1, "gaid -> "

    .line 9
    .line 10
    if-nez p2, :cond_2

    .line 11
    .line 12
    sget-object p2, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->a:Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/api/limit/ApiLimitManager;->h()Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-eqz p2, :cond_2

    .line 19
    .line 20
    const-string p1, "GaidInitializer init failed -> ApiLimitManager.isLimited"

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lud/b;->a:Lud/b;

    .line 26
    .line 27
    invoke-virtual {p1}, Lud/b;->E0()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-nez p2, :cond_0

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->d(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    sget-object p2, Lud/a;->a:Lud/a;

    .line 59
    .line 60
    invoke-virtual {p2, p1}, Lud/a;->o0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 64
    .line 65
    const-string p2, "Gaid init getDeviceId()"

    .line 66
    .line 67
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    :cond_1
    :goto_0
    return-object p0

    .line 76
    :cond_2
    iget-boolean p2, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->e:Z

    .line 77
    .line 78
    if-eqz p2, :cond_3

    .line 79
    .line 80
    const-string p1, "GaidInitializer init failed -> mInitialized is true"

    .line 81
    .line 82
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->b(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_3
    const/4 p2, 0x1

    .line 87
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->e:Z

    .line 88
    .line 89
    sget-object v2, Lud/b;->a:Lud/b;

    .line 90
    .line 91
    invoke-virtual {v2}, Lud/b;->E0()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    if-eqz v2, :cond_5

    .line 96
    .line 97
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    if-nez v3, :cond_4

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/startup/BaseInitializer;->d(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object p1, Lud/a;->a:Lud/a;

    .line 123
    .line 124
    invoke-virtual {p1, v2}, Lud/a;->o0(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 128
    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v1, "gaid.isNullOrEmpty() getDeviceId(), "

    .line 135
    .line 136
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p2

    .line 146
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 150
    .line 151
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->n()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->n()V

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :cond_5
    :goto_1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 159
    .line 160
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->C()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->p()Ljava/util/List;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    const-string v1, "SM-G975U"

    .line 175
    .line 176
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    const-string v0, "cn"

    .line 183
    .line 184
    const-string v1, "hk"

    .line 185
    .line 186
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 195
    .line 196
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->i0()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 201
    .line 202
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    const-string v2, "toLowerCase(...)"

    .line 207
    .line 208
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_7

    .line 216
    .line 217
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->b:Z

    .line 218
    .line 219
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->n()V

    .line 220
    .line 221
    .line 222
    goto :goto_2

    .line 223
    :cond_6
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->b:Z

    .line 224
    .line 225
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->n()V

    .line 226
    .line 227
    .line 228
    :cond_7
    :goto_2
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 229
    .line 230
    new-instance v4, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;

    .line 231
    .line 232
    const/4 p2, 0x0

    .line 233
    invoke-direct {v4, p0, p1, p2}, Lcom/startshorts/androidplayer/startup/GaidInitializer$init$1;-><init>(Lcom/startshorts/androidplayer/startup/GaidInitializer;Landroid/content/Context;Lrs/c;)V

    .line 234
    .line 235
    .line 236
    const/4 v5, 0x2

    .line 237
    const/4 v6, 0x0

    .line 238
    const-string v2, "getGaid"

    .line 239
    .line 240
    const/4 v3, 0x0

    .line 241
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 242
    .line 243
    .line 244
    :goto_3
    return-object p0
.end method

.method public final r()V
    .locals 8

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->p()Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 19
    .line 20
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->C()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/startup/GaidInitializer;->m()V

    .line 32
    .line 33
    .line 34
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 35
    .line 36
    new-instance v5, Loh/d;

    .line 37
    .line 38
    invoke-direct {v5, p0}, Loh/d;-><init>(Lcom/startshorts/androidplayer/startup/GaidInitializer;)V

    .line 39
    .line 40
    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    const-wide/16 v2, 0xfa0

    .line 44
    .line 45
    const/4 v4, 0x0

    .line 46
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/startshorts/androidplayer/startup/GaidInitializer;->c:Lkotlinx/coroutines/r;

    .line 51
    .line 52
    return-void
.end method
