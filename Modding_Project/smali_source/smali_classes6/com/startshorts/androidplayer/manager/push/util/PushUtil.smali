.class public final Lcom/startshorts/androidplayer/manager/push/util/PushUtil;
.super Ljava/lang/Object;
.source "PushUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPushUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PushUtil.kt\ncom/startshorts/androidplayer/manager/push/util/PushUtil\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,974:1\n13402#2,2:975\n*S KotlinDebug\n*F\n+ 1 PushUtil.kt\ncom/startshorts/androidplayer/manager/push/util/PushUtil\n*L\n906#1:975,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:I

.field private static c:Landroidx/core/app/NotificationManagerCompat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static d:Landroid/app/NotificationManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static e:Landroid/os/PowerManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static f:Landroid/app/KeyguardManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static g:Z

.field private static final h:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final i:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/startshorts/androidplayer/manager/push/task/PushType;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/Pair<",
            "Lcom/startshorts/androidplayer/manager/push/task/PushType;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static k:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->a:Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 7
    .line 8
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 9
    .line 10
    invoke-virtual {v0}, Lfk/z;->p()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->b:I

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    const/4 v1, 0x0

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->h:Lqt/a;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    .line 32
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->j:Ljava/util/List;

    .line 38
    .line 39
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

.method private final A()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->m()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->e:Landroid/os/PowerManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private final C()Z
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0xb

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x6

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    if-gt v1, v0, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x16

    .line 17
    .line 18
    if-ge v0, v1, :cond_0

    .line 19
    .line 20
    move v2, v3

    .line 21
    :cond_0
    xor-int/lit8 v0, v2, 0x1

    .line 22
    .line 23
    return v0
.end method

.method private final D()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->h()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f:Landroid/app/KeyguardManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private final E()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->h()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f:Landroid/app/KeyguardManager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private final G()Z
    .locals 16

    .line 1
    const-string v1, "remote_views_notification_permanent_shorts_fold"

    .line 2
    .line 3
    const-string v2, "TextAppearance.Compat.Notification.Title"

    .line 4
    .line 5
    const-string v3, ""

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 9
    .line 10
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v5

    .line 14
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string/jumbo v6, "style"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v5, v2, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    .line 31
    .line 32
    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    :try_start_1
    const-string v7, "layout"

    .line 34
    .line 35
    invoke-virtual {v5, v1, v7, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 39
    if-eqz v6, :cond_2

    .line 40
    .line 41
    if-nez v0, :cond_0

    .line 42
    .line 43
    goto :goto_2

    .line 44
    :cond_0
    const/4 v4, 0x1

    .line 45
    goto :goto_2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    move v6, v4

    .line 50
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move-object v3, v0

    .line 58
    :goto_1
    move v0, v4

    .line 59
    :cond_2
    :goto_2
    const-string v5, ",layoutID:"

    .line 60
    .line 61
    const-string v7, "PushUtil"

    .line 62
    .line 63
    if-eqz v4, :cond_3

    .line 64
    .line 65
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 66
    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "isNotificationResourceValid valid -> styleId:"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v1, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    goto :goto_3

    .line 94
    :cond_3
    sget-object v8, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 95
    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v10, "isNotificationResourceValid invalid -> styleId:"

    .line 102
    .line 103
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v5, ",error="

    .line 116
    .line 117
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const/16 v5, 0x2e

    .line 124
    .line 125
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v5

    .line 132
    invoke-virtual {v8, v7, v5}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    sget-object v9, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 136
    .line 137
    new-instance v11, Landroid/os/Bundle;

    .line 138
    .line 139
    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v11, v2, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v11, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    const-string v0, "err_msg"

    .line 157
    .line 158
    invoke-virtual {v11, v0, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    const/4 v14, 0x4

    .line 164
    const/4 v15, 0x0

    .line 165
    const-string v10, "notification_resource_check_invalid"

    .line 166
    .line 167
    const-wide/16 v12, 0x0

    .line 168
    .line 169
    invoke-static/range {v9 .. v15}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    :goto_3
    return v4
.end method

.method private final H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    sget-object v2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->i:Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    const-string v4, "getOrDefault(...)"

    .line 20
    .line 21
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v3, Ljava/lang/Number;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 27
    .line 28
    .line 29
    move-result-wide v3

    .line 30
    sub-long v3, v0, v3

    .line 31
    .line 32
    const-wide/16 v5, 0x7d0

    .line 33
    .line 34
    cmp-long v3, v3, v5

    .line 35
    .line 36
    if-gez v3, :cond_0

    .line 37
    .line 38
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 39
    .line 40
    new-instance v1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v2, "push "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p1, " too frequently"

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v1, "PushUtil"

    .line 63
    .line 64
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x1

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x0

    .line 77
    :goto_0
    return p1
.end method

.method private final P(Ljava/lang/String;ILandroid/app/Notification;)V
    .locals 0
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->g(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->l()Landroidx/core/app/NotificationManagerCompat;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, p2, p3}, Landroidx/core/app/NotificationManagerCompat;->notify(ILandroid/app/Notification;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->p()Z

    .line 14
    .line 15
    .line 16
    sget-object p1, Lfk/a0;->a:Lfk/a0;

    .line 17
    .line 18
    invoke-virtual {p1}, Lfk/a0;->b()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->X()Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private final Q(Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)Ljava/lang/Object;
    .locals 15

    .line 1
    sget-object v0, Lud/a;->a:Lud/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/a;->t()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    const-string v1, "PushUtil"

    .line 12
    .line 13
    const-string v2, "pushNotification failed -> app on foreground"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Throwable;

    .line 21
    .line 22
    const-string v1, "app on foreground"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->B()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/Throwable;

    .line 45
    .line 46
    const-string v1, "disable push"

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    return-object v0

    .line 60
    :cond_1
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    const/16 v13, 0x406

    .line 65
    .line 66
    const/4 v14, 0x0

    .line 67
    const/4 v3, 0x0

    .line 68
    const/4 v4, 0x0

    .line 69
    const/4 v12, 0x0

    .line 70
    move-object v1, p0

    .line 71
    move-object/from16 v2, p1

    .line 72
    .line 73
    move-object/from16 v6, p3

    .line 74
    .line 75
    move-object/from16 v7, p4

    .line 76
    .line 77
    move-object/from16 v8, p5

    .line 78
    .line 79
    move-object/from16 v9, p6

    .line 80
    .line 81
    move/from16 v10, p7

    .line 82
    .line 83
    move/from16 v11, p8

    .line 84
    .line 85
    invoke-static/range {v1 .. v14}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->j(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;IZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZZILjava/lang/Object;)Landroid/app/Notification;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    move/from16 v3, p2

    .line 90
    .line 91
    invoke-direct {p0, v2, v3, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->P(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 92
    .line 93
    .line 94
    sget-object v0, Luf/a;->a:Luf/a;

    .line 95
    .line 96
    invoke-virtual {v0}, Luf/a;->c()V

    .line 97
    .line 98
    .line 99
    const-string v0, ""

    .line 100
    .line 101
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    return-object v0
.end method

.method static synthetic R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    move/from16 v0, p9

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v8, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v8, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v9, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v9, p6

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 21
    .line 22
    const/4 v2, 0x0

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    move v10, v2

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move/from16 v10, p7

    .line 28
    .line 29
    :goto_2
    and-int/lit16 v0, v0, 0x80

    .line 30
    .line 31
    if-eqz v0, :cond_3

    .line 32
    .line 33
    move v11, v2

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v11, p8

    .line 36
    .line 37
    :goto_3
    move-object v3, p0

    .line 38
    move-object v4, p1

    .line 39
    move v5, p2

    .line 40
    move-object v6, p3

    .line 41
    move-object/from16 v7, p4

    .line 42
    .line 43
    invoke-direct/range {v3 .. v11}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->Q(Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZ)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    return-object v0
.end method

.method public static final synthetic a()Lqt/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->h:Lqt/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->w()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final g(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "com.startshorts.androidplayer.short_tv_push"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->o()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "com.startshorts.androidplayer.short_tv_Live"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->n()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private final h()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f:Landroid/app/KeyguardManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "keyguard"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/app/KeyguardManager;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Landroid/app/KeyguardManager;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->f:Landroid/app/KeyguardManager;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private final i(Ljava/lang/String;IZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZZ)Landroid/app/Notification;
    .locals 4

    .line 1
    sget-object p8, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {p8}, Lfk/u;->b()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p8

    .line 7
    sget-object v0, Lfk/a0;->a:Lfk/a0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lfk/a0;->b()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz p11, :cond_0

    .line 15
    .line 16
    move p11, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->C()Z

    .line 19
    .line 20
    .line 21
    move-result p11

    .line 22
    :goto_0
    new-instance v2, Landroidx/core/app/NotificationCompat$Builder;

    .line 23
    .line 24
    invoke-direct {v2, p8, p1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->ic_stat_ic_notification:I

    .line 28
    .line 29
    invoke-virtual {v2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    invoke-virtual {p1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    xor-int/lit8 p2, p3, 0x1

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p1, p4}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const/4 p2, -0x1

    .line 56
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {p1, p11}, Landroidx/core/app/NotificationCompat$Builder;->setSilent(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    new-instance p2, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    .line 65
    .line 66
    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const-string/jumbo p2, "setVisibility(...)"

    .line 82
    .line 83
    .line 84
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    if-eqz p7, :cond_1

    .line 88
    .line 89
    invoke-virtual {p1, p7}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 90
    .line 91
    .line 92
    :cond_1
    if-eqz p3, :cond_2

    .line 93
    .line 94
    invoke-virtual {p1, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 95
    .line 96
    .line 97
    :cond_2
    if-eqz v0, :cond_4

    .line 98
    .line 99
    if-nez p3, :cond_4

    .line 100
    .line 101
    if-nez p9, :cond_3

    .line 102
    .line 103
    sget p2, Lcom/startshorts/androidplayer/R$string;->app_name:I

    .line 104
    .line 105
    invoke-virtual {p8, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 110
    .line 111
    .line 112
    :cond_3
    new-instance p2, Landroid/content/Intent;

    .line 113
    .line 114
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 115
    .line 116
    .line 117
    const-class p3, Lcom/startshorts/androidplayer/manager/push/receiver/NotificationDeletedReceiver;

    .line 118
    .line 119
    invoke-virtual {p2, p8, p3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    .line 121
    .line 122
    sget-object p3, Lcom/startshorts/androidplayer/manager/push/receiver/NotificationDeletedReceiver;->a:Lcom/startshorts/androidplayer/manager/push/receiver/NotificationDeletedReceiver$a;

    .line 123
    .line 124
    invoke-virtual {p3}, Lcom/startshorts/androidplayer/manager/push/receiver/NotificationDeletedReceiver$a;->a()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    .line 130
    .line 131
    sget-object p3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 132
    .line 133
    const/high16 p3, 0xc000000

    .line 134
    .line 135
    const/16 p4, 0x2711

    .line 136
    .line 137
    invoke-static {p8, p4, p2, p3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->E()Z

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->I()Z

    .line 149
    .line 150
    .line 151
    move-result p3

    .line 152
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 153
    .line 154
    new-instance p7, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    const-string p8, "createNotification -> forceShowHeadUp("

    .line 160
    .line 161
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {p7, p10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string p8, ") keyguardSecure("

    .line 168
    .line 169
    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    const-string p2, ") isScreenOn("

    .line 176
    .line 177
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string p2, ") isSilent("

    .line 184
    .line 185
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {p7, p11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const/16 p2, 0x29

    .line 192
    .line 193
    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    const-string p3, "PushUtil"

    .line 201
    .line 202
    invoke-virtual {p4, p3, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    sget-object p2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 206
    .line 207
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->Y()Z

    .line 208
    .line 209
    .line 210
    move-result p2

    .line 211
    if-eqz p2, :cond_5

    .line 212
    .line 213
    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 214
    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_5
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 218
    .line 219
    const/16 p3, 0x1f

    .line 220
    .line 221
    if-lt p2, p3, :cond_6

    .line 222
    .line 223
    invoke-virtual {p1, p5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_6
    const/16 p3, 0x1a

    .line 231
    .line 232
    if-eq p2, p3, :cond_8

    .line 233
    .line 234
    const/16 p3, 0x1b

    .line 235
    .line 236
    if-ne p2, p3, :cond_7

    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_7
    invoke-virtual {p1, p5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {p1, p6}, Landroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 243
    .line 244
    .line 245
    goto :goto_2

    .line 246
    :cond_8
    :goto_1
    invoke-virtual {p1, p5}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 247
    .line 248
    .line 249
    :goto_2
    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    const-string p2, "build(...)"

    .line 254
    .line 255
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-object p1
.end method

.method static synthetic j(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;IZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZZILjava/lang/Object;)Landroid/app/Notification;
    .locals 14

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    move v4, v1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move/from16 v4, p2

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x4

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    move v5, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move/from16 v5, p3

    .line 20
    .line 21
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    if-eqz v1, :cond_2

    .line 25
    .line 26
    move-object v9, v3

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move-object/from16 v9, p7

    .line 29
    .line 30
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 31
    .line 32
    if-eqz v1, :cond_3

    .line 33
    .line 34
    move-object v10, v3

    .line 35
    goto :goto_3

    .line 36
    :cond_3
    move-object/from16 v10, p8

    .line 37
    .line 38
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 39
    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    move v11, v2

    .line 43
    goto :goto_4

    .line 44
    :cond_4
    move/from16 v11, p9

    .line 45
    .line 46
    :goto_4
    and-int/lit16 v1, v0, 0x200

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    move v12, v2

    .line 51
    goto :goto_5

    .line 52
    :cond_5
    move/from16 v12, p10

    .line 53
    .line 54
    :goto_5
    and-int/lit16 v0, v0, 0x400

    .line 55
    .line 56
    if-eqz v0, :cond_6

    .line 57
    .line 58
    move v13, v2

    .line 59
    goto :goto_6

    .line 60
    :cond_6
    move/from16 v13, p11

    .line 61
    .line 62
    :goto_6
    move-object v2, p0

    .line 63
    move-object v3, p1

    .line 64
    move-object/from16 v6, p4

    .line 65
    .line 66
    move-object/from16 v7, p5

    .line 67
    .line 68
    move-object/from16 v8, p6

    .line 69
    .line 70
    invoke-direct/range {v2 .. v13}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->i(Ljava/lang/String;IZLjava/lang/String;Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZZ)Landroid/app/Notification;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    return-object v0
.end method

.method private final k()Landroid/app/NotificationManager;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->d:Landroid/app/NotificationManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "notification"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "null cannot be cast to non-null type android.app.NotificationManager"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    check-cast v0, Landroid/app/NotificationManager;

    .line 23
    .line 24
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->d:Landroid/app/NotificationManager;

    .line 25
    .line 26
    :cond_0
    return-object v0
.end method

.method private final l()Landroidx/core/app/NotificationManagerCompat;
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->c:Landroidx/core/app/NotificationManagerCompat;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "from(...)"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->c:Landroidx/core/app/NotificationManagerCompat;

    .line 21
    .line 22
    :cond_0
    return-object v0
.end method

.method private final m()V
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->e:Landroid/os/PowerManager;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 6
    .line 7
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "power"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    instance-of v1, v0, Landroid/os/PowerManager;

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    check-cast v0, Landroid/os/PowerManager;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    :goto_0
    sput-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->e:Landroid/os/PowerManager;

    .line 26
    .line 27
    :cond_1
    return-void
.end method

.method private final n()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->g:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->g:Z

    .line 13
    .line 14
    invoke-static {}, Lb7/d0;->a()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Short TV Push"

    .line 18
    .line 19
    const/4 v2, 0x3

    .line 20
    const-string v3, "com.startshorts.androidplayer.short_tv_Live"

    .line 21
    .line 22
    invoke-static {v3, v1, v2}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, v0}, Luf/b;->a(Landroid/app/NotificationChannel;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Luf/c;->a(Landroid/app/NotificationChannel;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Luf/d;->a(Landroid/app/NotificationChannel;Z)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 36
    .line 37
    sget-object v3, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 38
    .line 39
    invoke-static {v1, v2, v3}, Luf/e;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/a;->a(Landroid/app/NotificationChannel;Z)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->l()Landroidx/core/app/NotificationManagerCompat;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private final o()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    sget-boolean v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->g:Z

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    sput-boolean v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->g:Z

    .line 13
    .line 14
    invoke-static {}, Lb7/d0;->a()V

    .line 15
    .line 16
    .line 17
    const-string v1, "Short TV Push"

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    const-string v3, "com.startshorts.androidplayer.short_tv_push"

    .line 21
    .line 22
    invoke-static {v3, v1, v2}, Landroidx/browser/trusted/f;->a(Ljava/lang/String;Ljava/lang/CharSequence;I)Landroid/app/NotificationChannel;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, v0}, Luf/b;->a(Landroid/app/NotificationChannel;I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1, v0}, Luf/c;->a(Landroid/app/NotificationChannel;Z)V

    .line 30
    .line 31
    .line 32
    invoke-static {v1, v0}, Luf/d;->a(Landroid/app/NotificationChannel;Z)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 36
    .line 37
    sget-object v3, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    .line 38
    .line 39
    invoke-static {v1, v2, v3}, Luf/e;->a(Landroid/app/NotificationChannel;Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/a;->a(Landroid/app/NotificationChannel;Z)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->l()Landroidx/core/app/NotificationManagerCompat;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method private final p()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->C()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 6
    .line 7
    return v0
.end method

.method private final q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/lit8 p1, p1, 0x1

    .line 6
    .line 7
    return p1
.end method

.method private final u(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    add-int/lit8 p1, p1, 0x2

    .line 6
    .line 7
    return p1
.end method

.method private final w()I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k()Landroid/app/NotificationManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    array-length v2, v0

    .line 17
    move v3, v1

    .line 18
    :goto_1
    if-ge v1, v2, :cond_2

    .line 19
    .line 20
    aget-object v4, v0, v1

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eqz v4, :cond_1

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move v1, v3

    .line 34
    :cond_3
    return v1
.end method

.method private final x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->y(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    mul-int/lit16 p1, p1, 0x2710

    .line 6
    .line 7
    add-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method

.method private final y(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->j:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, -0x1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lkotlin/Pair;

    .line 19
    .line 20
    invoke-virtual {v1}, Lkotlin/Pair;->e()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    check-cast v3, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 25
    .line 26
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 31
    .line 32
    .line 33
    move-result v4

    .line 34
    if-ne v3, v4, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Lkotlin/Pair;->f()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Ljava/lang/Number;

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v2

    .line 48
    :goto_0
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->j:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    add-int/lit8 v1, v1, 0x5

    .line 57
    .line 58
    new-instance v2, Lkotlin/Pair;

    .line 59
    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-direct {v2, p1, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move v0, v1

    .line 71
    :cond_2
    return v0
.end method

.method private final z()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->d0()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->e0()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->i0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 25
    :goto_1
    return v0
.end method


# virtual methods
.method public final B()Z
    .locals 12

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lud/b;->m1()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    sget-object v0, Lpe/a;->a:Lpe/a;

    .line 12
    .line 13
    invoke-virtual {v0}, Lpe/a;->h()Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/configure/BlackDeviceController;->getPush()Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->C()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->O()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v4, v0

    .line 32
    check-cast v4, Ljava/util/Collection;

    .line 33
    .line 34
    const-string v5, "PushUtil"

    .line 35
    .line 36
    if-eqz v4, :cond_2

    .line 37
    .line 38
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-eqz v4, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v4, "disable push -> "

    .line 59
    .line 60
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v3, " is in black device list"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual {v0, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return v1

    .line 79
    :cond_2
    :goto_0
    sget-object v0, Lfk/a0;->a:Lfk/a0;

    .line 80
    .line 81
    invoke-virtual {v0}, Lfk/a0;->a()Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    const-string v6, "7.1.1"

    .line 86
    .line 87
    const-string v7, "7.0"

    .line 88
    .line 89
    const-string v8, "7"

    .line 90
    .line 91
    const/4 v9, 0x0

    .line 92
    const/4 v10, 0x2

    .line 93
    const/4 v11, 0x0

    .line 94
    if-eqz v4, :cond_4

    .line 95
    .line 96
    invoke-static {v2, v8, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v3

    .line 100
    if-nez v3, :cond_3

    .line 101
    .line 102
    invoke-static {v2, v7, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-nez v3, :cond_3

    .line 107
    .line 108
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v3

    .line 112
    if-nez v3, :cond_3

    .line 113
    .line 114
    const-string v3, "8"

    .line 115
    .line 116
    invoke-static {v2, v3, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-nez v3, :cond_3

    .line 121
    .line 122
    const-string v3, "8.0"

    .line 123
    .line 124
    invoke-static {v2, v3, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v3

    .line 128
    if-nez v3, :cond_3

    .line 129
    .line 130
    const-string v3, "8.1.0"

    .line 131
    .line 132
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v3

    .line 136
    if-nez v3, :cond_3

    .line 137
    .line 138
    const-string v3, "9"

    .line 139
    .line 140
    invoke-static {v2, v3, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    if-nez v3, :cond_3

    .line 145
    .line 146
    const-string v3, "9.0"

    .line 147
    .line 148
    invoke-static {v2, v3, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-eqz v2, :cond_7

    .line 153
    .line 154
    :cond_3
    return v1

    .line 155
    :cond_4
    invoke-virtual {v0}, Lfk/a0;->b()Z

    .line 156
    .line 157
    .line 158
    move-result v4

    .line 159
    if-eqz v4, :cond_7

    .line 160
    .line 161
    invoke-static {v2, v8, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    move-result v4

    .line 165
    if-nez v4, :cond_5

    .line 166
    .line 167
    invoke-static {v2, v7, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_5

    .line 172
    .line 173
    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_7

    .line 178
    .line 179
    :cond_5
    const-string v2, "SM-T"

    .line 180
    .line 181
    invoke-static {v3, v2, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_6

    .line 186
    .line 187
    const-string v2, "SM-J"

    .line 188
    .line 189
    invoke-static {v3, v2, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 190
    .line 191
    .line 192
    move-result v2

    .line 193
    if-nez v2, :cond_6

    .line 194
    .line 195
    const-string v2, "SM-P"

    .line 196
    .line 197
    invoke-static {v3, v2, v11, v10, v9}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    :cond_6
    return v1

    .line 204
    :cond_7
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 205
    .line 206
    const/16 v3, 0x1b

    .line 207
    .line 208
    if-gt v2, v3, :cond_8

    .line 209
    .line 210
    invoke-virtual {v0}, Lfk/a0;->b()Z

    .line 211
    .line 212
    .line 213
    move-result v0

    .line 214
    if-eqz v0, :cond_8

    .line 215
    .line 216
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->G()Z

    .line 217
    .line 218
    .line 219
    move-result v0

    .line 220
    if-nez v0, :cond_8

    .line 221
    .line 222
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 223
    .line 224
    const-string v2, "disable push -> notification resource invalid"

    .line 225
    .line 226
    invoke-virtual {v0, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    return v1

    .line 230
    :cond_8
    return v11
.end method

.method public final F()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->l()Landroidx/core/app/NotificationManagerCompat;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public final I()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->A()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->D()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method public final J(Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;
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
            "Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->o:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->o:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->o:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 43
    .line 44
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->k:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/content/Context;

    .line 47
    .line 48
    iget-object v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 51
    .line 52
    iget-object v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;

    .line 55
    .line 56
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->BONUS_WILL_EXPIRED:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 77
    .line 78
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 85
    .line 86
    new-instance p1, Ljava/lang/Throwable;

    .line 87
    .line 88
    const-string p2, "Too frequently"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_3
    sget-object v1, Laa/a;->a:Laa/a;

    .line 103
    .line 104
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    :goto_2
    move-object v10, v1

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 121
    .line 122
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_2

    .line 127
    :goto_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getIcon()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getIcon()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sget v4, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->b:I

    .line 147
    .line 148
    iput-object p0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->i:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->j:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v10, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->k:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->l:Ljava/lang/Object;

    .line 157
    .line 158
    iput v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushBonusWillExpiredNotification$1;->o:I

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/16 v8, 0x18

    .line 163
    .line 164
    const/4 v9, 0x0

    .line 165
    move-object v2, v3

    .line 166
    move v3, v4

    .line 167
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->m(Lcom/startshorts/androidplayer/repo/push/PushRepo;Ljava/lang/String;IIIZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-ne v1, v0, :cond_6

    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_6
    move-object v3, p0

    .line 175
    move-object v2, p1

    .line 176
    move-object v0, v10

    .line 177
    move-object v11, v1

    .line 178
    move-object v1, p2

    .line 179
    move-object p2, v11

    .line 180
    :goto_4
    check-cast p2, Landroid/graphics/Bitmap;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    .line 184
    .line 185
    move-object v10, v0

    .line 186
    move-object p2, v1

    .line 187
    move-object p1, v2

    .line 188
    move-object v0, v3

    .line 189
    goto :goto_6

    .line 190
    :cond_7
    :goto_5
    move-object v0, p0

    .line 191
    :goto_6
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    sget-object v1, Luf/f;->a:Luf/f;

    .line 196
    .line 197
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_8

    .line 202
    .line 203
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_bonus_will_expired_compact_fold:I

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_8
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_bonus_will_expired_fold:I

    .line 207
    .line 208
    :goto_7
    invoke-virtual {v1, v3, p1}, Luf/f;->a(ILcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;)Landroid/widget/RemoteViews;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    sget v4, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_bonus_will_expired_unfold:I

    .line 213
    .line 214
    invoke-virtual {v1, v4, p1}, Luf/f;->a(ILcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;)Landroid/widget/RemoteViews;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    new-instance v5, Landroid/content/Intent;

    .line 223
    .line 224
    const-class v6, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 225
    .line 226
    invoke-direct {v5, v10, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .line 228
    .line 229
    new-instance v6, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 230
    .line 231
    const/16 v7, 0xa

    .line 232
    .line 233
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-direct {v6, v7, v8}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v6}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    const-string v7, "data"

    .line 245
    .line 246
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 250
    .line 251
    const/high16 v6, 0xc000000

    .line 252
    .line 253
    invoke-static {v10, v1, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->u(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    new-instance v1, Landroid/content/Intent;

    .line 262
    .line 263
    const-class v7, Lcom/startshorts/androidplayer/ui/activity/notification/BonusWillExpiredNotificationActivity;

    .line 264
    .line 265
    invoke-direct {v1, v10, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    const-string v7, "bonus_will_expired_notification"

    .line 269
    .line 270
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    invoke-static {v10, p2, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    const/16 v9, 0xc0

    .line 282
    .line 283
    const/4 v10, 0x0

    .line 284
    const-string v1, "com.startshorts.androidplayer.short_tv_push"

    .line 285
    .line 286
    const/4 v7, 0x0

    .line 287
    const/4 v8, 0x0

    .line 288
    invoke-static/range {v0 .. v10}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_9

    .line 297
    .line 298
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 299
    .line 300
    new-instance v3, Landroid/os/Bundle;

    .line 301
    .line 302
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v0, "push_name"

    .line 306
    .line 307
    const-string v2, "expiring_soon"

    .line 308
    .line 309
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getTitle()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string/jumbo v2, "title"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v0, "content"

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BonusWillExpiredNotification;->getContent()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const/4 v6, 0x4

    .line 332
    const/4 v7, 0x0

    .line 333
    const-string v2, "push_send"

    .line 334
    .line 335
    const-wide/16 v4, 0x0

    .line 336
    .line 337
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_9
    return-object p2
.end method

.method public final K(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->l:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->l:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->j:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->l:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->i:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 43
    .line 44
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->h:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 47
    .line 48
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 53
    .line 54
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 55
    .line 56
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p1

    .line 60
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 64
    .line 65
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_3

    .line 70
    .line 71
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 72
    .line 73
    new-instance p1, Ljava/lang/Throwable;

    .line 74
    .line 75
    const-string p2, "Too frequently"

    .line 76
    .line 77
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_3
    if-eqz p1, :cond_6

    .line 90
    .line 91
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-nez v1, :cond_4

    .line 96
    .line 97
    goto :goto_3

    .line 98
    :cond_4
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 99
    .line 100
    sget v4, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->b:I

    .line 101
    .line 102
    iput-object p0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->h:Ljava/lang/Object;

    .line 103
    .line 104
    iput-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->i:Ljava/lang/Object;

    .line 105
    .line 106
    iput v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushCheckInNotification$1;->l:I

    .line 107
    .line 108
    const/4 v5, 0x0

    .line 109
    const/4 v6, 0x0

    .line 110
    const/16 v8, 0x18

    .line 111
    .line 112
    const/4 v9, 0x0

    .line 113
    move-object v2, p1

    .line 114
    move v3, v4

    .line 115
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->m(Lcom/startshorts/androidplayer/repo/push/PushRepo;Ljava/lang/String;IIIZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    if-ne p1, v0, :cond_5

    .line 120
    .line 121
    return-object v0

    .line 122
    :cond_5
    move-object v0, p0

    .line 123
    move-object v12, p2

    .line 124
    move-object p2, p1

    .line 125
    move-object p1, v12

    .line 126
    :goto_2
    check-cast p2, Landroid/graphics/Bitmap;

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    :goto_3
    const/4 p1, 0x0

    .line 130
    move-object v0, p0

    .line 131
    move-object v12, p2

    .line 132
    move-object p2, p1

    .line 133
    move-object p1, v12

    .line 134
    :goto_4
    sget-object v1, Laa/a;->a:Laa/a;

    .line 135
    .line 136
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    if-eqz v1, :cond_7

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 147
    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    goto :goto_5

    .line 151
    :cond_7
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 152
    .line 153
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    :goto_5
    const-string v2, "push_check_in_title_"

    .line 158
    .line 159
    const/4 v3, 0x5

    .line 160
    invoke-static {v1, v2, v3}, Ljk/d;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    const-string v4, "push_check_in_contents_"

    .line 165
    .line 166
    invoke-static {v1, v4, v3}, Ljk/d;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    move-object v4, v2

    .line 171
    check-cast v4, Ljava/util/Collection;

    .line 172
    .line 173
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->o(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    check-cast v4, Ljava/util/Collection;

    .line 182
    .line 183
    sget-object v5, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 184
    .line 185
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt;->M0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v4

    .line 189
    check-cast v4, Ljava/lang/Number;

    .line 190
    .line 191
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v4

    .line 195
    move-object v6, v3

    .line 196
    check-cast v6, Ljava/util/Collection;

    .line 197
    .line 198
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->o(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 199
    .line 200
    .line 201
    move-result-object v6

    .line 202
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    .line 203
    .line 204
    .line 205
    move-result-object v6

    .line 206
    check-cast v6, Ljava/util/Collection;

    .line 207
    .line 208
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt;->M0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v5

    .line 212
    check-cast v5, Ljava/lang/Number;

    .line 213
    .line 214
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 215
    .line 216
    .line 217
    move-result v5

    .line 218
    new-instance v11, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;

    .line 219
    .line 220
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    check-cast v2, Ljava/lang/String;

    .line 225
    .line 226
    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    check-cast v3, Ljava/lang/String;

    .line 231
    .line 232
    invoke-direct {v11, v2, v3, p2}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 233
    .line 234
    .line 235
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 236
    .line 237
    .line 238
    move-result p2

    .line 239
    if-eqz p2, :cond_8

    .line 240
    .line 241
    sget p2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_default_check_in_compactf_old:I

    .line 242
    .line 243
    goto :goto_6

    .line 244
    :cond_8
    sget p2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_default_check_in_fold:I

    .line 245
    .line 246
    :goto_6
    sget v2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_default_check_in_unfold:I

    .line 247
    .line 248
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 249
    .line 250
    .line 251
    move-result v3

    .line 252
    sget-object v4, Luf/f;->a:Luf/f;

    .line 253
    .line 254
    invoke-virtual {v4, p2, v11}, Luf/f;->b(ILcom/startshorts/androidplayer/bean/notification/CheckInNotification;)Landroid/widget/RemoteViews;

    .line 255
    .line 256
    .line 257
    move-result-object p2

    .line 258
    invoke-virtual {v4, v2, v11}, Luf/f;->b(ILcom/startshorts/androidplayer/bean/notification/CheckInNotification;)Landroid/widget/RemoteViews;

    .line 259
    .line 260
    .line 261
    move-result-object v4

    .line 262
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 263
    .line 264
    .line 265
    move-result p1

    .line 266
    new-instance v2, Landroid/content/Intent;

    .line 267
    .line 268
    const-class v5, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 269
    .line 270
    invoke-direct {v2, v1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 271
    .line 272
    .line 273
    new-instance v5, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 274
    .line 275
    const/4 v6, 0x2

    .line 276
    invoke-static {v11}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v7

    .line 280
    invoke-direct {v5, v6, v7}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 281
    .line 282
    .line 283
    invoke-static {v5}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    const-string v6, "data"

    .line 288
    .line 289
    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    .line 291
    .line 292
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 293
    .line 294
    const/high16 v5, 0xc000000

    .line 295
    .line 296
    invoke-static {v1, p1, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 297
    .line 298
    .line 299
    move-result-object v5

    .line 300
    const/16 v9, 0xe0

    .line 301
    .line 302
    const/4 v10, 0x0

    .line 303
    const-string v1, "com.startshorts.androidplayer.short_tv_push"

    .line 304
    .line 305
    const/4 v6, 0x0

    .line 306
    const/4 v7, 0x0

    .line 307
    const/4 v8, 0x0

    .line 308
    move v2, v3

    .line 309
    move-object v3, p2

    .line 310
    invoke-static/range {v0 .. v10}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 315
    .line 316
    .line 317
    move-result p2

    .line 318
    if-eqz p2, :cond_9

    .line 319
    .line 320
    sget-object v0, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 321
    .line 322
    new-instance v2, Landroid/os/Bundle;

    .line 323
    .line 324
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 325
    .line 326
    .line 327
    const-string p2, "push_name"

    .line 328
    .line 329
    const-string v1, "check_in_alert"

    .line 330
    .line 331
    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    const-string/jumbo p2, "title"

    .line 335
    .line 336
    .line 337
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getTitle()Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object v1

    .line 341
    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    const-string p2, "content"

    .line 345
    .line 346
    invoke-virtual {v11}, Lcom/startshorts/androidplayer/bean/notification/CheckInNotification;->getContent()Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v2, p2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    const/4 v5, 0x4

    .line 354
    const/4 v6, 0x0

    .line 355
    const-string v1, "push_send"

    .line 356
    .line 357
    const-wide/16 v3, 0x0

    .line 358
    .line 359
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 360
    .line 361
    .line 362
    :cond_9
    return-object p1
.end method

.method public final L(Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 7
    .line 8
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Luf/f;->a:Luf/f;

    .line 13
    .line 14
    sget v2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_cur_play_short_fold:I

    .line 15
    .line 16
    invoke-virtual {v1, v2, p1}, Luf/f;->c(ILcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)Landroid/widget/RemoteViews;

    .line 17
    .line 18
    .line 19
    move-result-object v6

    .line 20
    sget v2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_cur_play_short_unfold:I

    .line 21
    .line 22
    invoke-virtual {v1, v2, p1}, Luf/f;->c(ILcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;)Landroid/widget/RemoteViews;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    new-instance v1, Landroid/content/Intent;

    .line 27
    .line 28
    const-class v2, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 29
    .line 30
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    .line 32
    .line 33
    new-instance v2, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 34
    .line 35
    const/16 v3, 0xb

    .line 36
    .line 37
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-direct {v2, v3, v4}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-static {v2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    const-string v3, "data"

    .line 49
    .line 50
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    .line 52
    .line 53
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    const/high16 v2, 0xc000000

    .line 56
    .line 57
    const v3, 0x9c44

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    const/16 v12, 0xe0

    .line 65
    .line 66
    const/4 v13, 0x0

    .line 67
    const-string v4, "com.startshorts.androidplayer.short_tv_Live"

    .line 68
    .line 69
    const/16 v5, 0x2766

    .line 70
    .line 71
    const/4 v9, 0x0

    .line 72
    const/4 v10, 0x0

    .line 73
    const/4 v11, 0x0

    .line 74
    move-object v3, p0

    .line 75
    invoke-static/range {v3 .. v13}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    .line 85
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 86
    .line 87
    new-instance v4, Landroid/os/Bundle;

    .line 88
    .line 89
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 90
    .line 91
    .line 92
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v3, "country"

    .line 99
    .line 100
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    const-string v1, "device_type"

    .line 104
    .line 105
    const-string v3, "and"

    .line 106
    .line 107
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "type"

    .line 111
    .line 112
    .line 113
    const-string v3, "Real_time_Watch"

    .line 114
    .line 115
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getShortPlayCode()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    const-string v3, "reel_id"

    .line 127
    .line 128
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/ShortPlayNotification;->getDramaNum()Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    const-string v1, "episode"

    .line 140
    .line 141
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    const/4 v7, 0x4

    .line 145
    const/4 v8, 0x0

    .line 146
    const-string v3, "realtimeactivity_show"

    .line 147
    .line 148
    const-wide/16 v5, 0x0

    .line 149
    .line 150
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_0
    return-object v0
.end method

.method public final M(Lcom/startshorts/androidplayer/bean/notification/CustomNotification;)Ljava/lang/Object;
    .locals 14
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/CustomNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->CUSTOM:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/Throwable;

    .line 17
    .line 18
    const-string v0, "Too frequently"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-lez v0, :cond_1

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 v0, 0x0

    .line 45
    :goto_0
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 46
    .line 47
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getNotificationId()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    sget-object v2, Luf/f;->a:Luf/f;

    .line 56
    .line 57
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-eqz v3, :cond_3

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_custom_short_compact_fold:I

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_custom_compact_fold:I

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    if-eqz v0, :cond_4

    .line 72
    .line 73
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_custom_short_fold:I

    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_4
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_custom_fold:I

    .line 77
    .line 78
    :goto_1
    invoke-virtual {v2, v3, p1, v0}, Luf/f;->d(ILcom/startshorts/androidplayer/bean/notification/CustomNotification;Z)Landroid/widget/RemoteViews;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    if-eqz v0, :cond_5

    .line 83
    .line 84
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_custom_short_unfold:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_5
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_custom_unfold:I

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v2, v3, p1, v0}, Luf/f;->d(ILcom/startshorts/androidplayer/bean/notification/CustomNotification;Z)Landroid/widget/RemoteViews;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getNotificationRequestCode()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    new-instance v2, Landroid/content/Intent;

    .line 98
    .line 99
    const-class v3, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 100
    .line 101
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .line 103
    .line 104
    new-instance v3, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 105
    .line 106
    const/4 v7, 0x6

    .line 107
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v8

    .line 111
    invoke-direct {v3, v7, v8}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    invoke-static {v3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const-string v7, "data"

    .line 119
    .line 120
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    .line 122
    .line 123
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 124
    .line 125
    const/high16 v3, 0xc000000

    .line 126
    .line 127
    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 128
    .line 129
    .line 130
    move-result-object v7

    .line 131
    const/16 v11, 0xe0

    .line 132
    .line 133
    const/4 v12, 0x0

    .line 134
    const-string v3, "com.startshorts.androidplayer.short_tv_push"

    .line 135
    .line 136
    const/4 v8, 0x0

    .line 137
    const/4 v9, 0x0

    .line 138
    const/4 v10, 0x0

    .line 139
    move-object v2, p0

    .line 140
    invoke-static/range {v2 .. v12}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-eqz v1, :cond_7

    .line 149
    .line 150
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 151
    .line 152
    new-instance v4, Landroid/os/Bundle;

    .line 153
    .line 154
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v1, "push_name"

    .line 158
    .line 159
    const-string v3, "customize"

    .line 160
    .line 161
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-lez v1, :cond_6

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortPlayCode()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v1

    .line 182
    const-string v3, "reel_id"

    .line 183
    .line 184
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    :cond_6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getPushId()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    const-string v3, "push_id"

    .line 196
    .line 197
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getTitle()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string/jumbo v3, "title"

    .line 209
    .line 210
    .line 211
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getContent()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    const-string v3, "content"

    .line 223
    .line 224
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    const/4 v7, 0x4

    .line 228
    const/4 v8, 0x0

    .line 229
    const-string v3, "push_send"

    .line 230
    .line 231
    const-wide/16 v5, 0x0

    .line 232
    .line 233
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 237
    .line 238
    .line 239
    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortId()I

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-lez v1, :cond_7

    .line 245
    .line 246
    sget-object v2, Lag/a;->a:Lag/a;

    .line 247
    .line 248
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getShortPlayCode()Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/CustomNotification;->getPush()Lcom/startshorts/androidplayer/bean/push/CustomPush;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/push/CustomPush;->getUpack()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v10

    .line 264
    const/16 v12, 0x17c

    .line 265
    .line 266
    const/4 v13, 0x0

    .line 267
    const-string v3, "Push"

    .line 268
    .line 269
    const/4 v5, 0x0

    .line 270
    const/4 v6, 0x0

    .line 271
    const/4 v7, 0x0

    .line 272
    const/4 v8, 0x0

    .line 273
    const/4 v9, 0x0

    .line 274
    const/4 v11, 0x0

    .line 275
    invoke-static/range {v2 .. v13}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 276
    .line 277
    .line 278
    :cond_7
    return-object v0
.end method

.method public final N(Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;
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
            "Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->o:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->o:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->o:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 43
    .line 44
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->k:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/content/Context;

    .line 47
    .line 48
    iget-object v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 51
    .line 52
    iget-object v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;

    .line 55
    .line 56
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->MISS_CHECK_IN:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 77
    .line 78
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 85
    .line 86
    new-instance p1, Ljava/lang/Throwable;

    .line 87
    .line 88
    const-string p2, "Too frequently"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_3
    sget-object v1, Laa/a;->a:Laa/a;

    .line 103
    .line 104
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    :goto_2
    move-object v10, v1

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 121
    .line 122
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_2

    .line 127
    :goto_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getIcon()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getIcon()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sget v4, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->b:I

    .line 147
    .line 148
    iput-object p0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->i:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->j:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v10, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->k:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->l:Ljava/lang/Object;

    .line 157
    .line 158
    iput v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushMissCheckInNotification$1;->o:I

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/16 v8, 0x18

    .line 163
    .line 164
    const/4 v9, 0x0

    .line 165
    move-object v2, v3

    .line 166
    move v3, v4

    .line 167
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->m(Lcom/startshorts/androidplayer/repo/push/PushRepo;Ljava/lang/String;IIIZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-ne v1, v0, :cond_6

    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_6
    move-object v3, p0

    .line 175
    move-object v2, p1

    .line 176
    move-object v0, v10

    .line 177
    move-object v11, v1

    .line 178
    move-object v1, p2

    .line 179
    move-object p2, v11

    .line 180
    :goto_4
    check-cast p2, Landroid/graphics/Bitmap;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    .line 184
    .line 185
    move-object v10, v0

    .line 186
    move-object p2, v1

    .line 187
    move-object p1, v2

    .line 188
    move-object v0, v3

    .line 189
    goto :goto_6

    .line 190
    :cond_7
    :goto_5
    move-object v0, p0

    .line 191
    :goto_6
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    sget-object v1, Luf/f;->a:Luf/f;

    .line 196
    .line 197
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_8

    .line 202
    .line 203
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_miss_check_in_compact_fold:I

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_8
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_miss_check_in_fold:I

    .line 207
    .line 208
    :goto_7
    invoke-virtual {v1, v3, p1}, Luf/f;->f(ILcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;)Landroid/widget/RemoteViews;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    sget v4, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_miss_check_in_unfold:I

    .line 213
    .line 214
    invoke-virtual {v1, v4, p1}, Luf/f;->f(ILcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;)Landroid/widget/RemoteViews;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    new-instance v5, Landroid/content/Intent;

    .line 223
    .line 224
    const-class v6, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 225
    .line 226
    invoke-direct {v5, v10, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .line 228
    .line 229
    new-instance v6, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 230
    .line 231
    const/16 v7, 0x9

    .line 232
    .line 233
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v8

    .line 237
    invoke-direct {v6, v7, v8}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 238
    .line 239
    .line 240
    invoke-static {v6}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v6

    .line 244
    const-string v7, "data"

    .line 245
    .line 246
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 247
    .line 248
    .line 249
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 250
    .line 251
    const/high16 v6, 0xc000000

    .line 252
    .line 253
    invoke-static {v10, v1, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->u(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 258
    .line 259
    .line 260
    move-result p2

    .line 261
    new-instance v1, Landroid/content/Intent;

    .line 262
    .line 263
    const-class v7, Lcom/startshorts/androidplayer/ui/activity/notification/MissCheckInNotificationActivity;

    .line 264
    .line 265
    invoke-direct {v1, v10, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 266
    .line 267
    .line 268
    const-string v7, "check_in_notification"

    .line 269
    .line 270
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v8

    .line 274
    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    .line 276
    .line 277
    invoke-static {v10, p2, v1, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 278
    .line 279
    .line 280
    move-result-object v6

    .line 281
    const/16 v9, 0xc0

    .line 282
    .line 283
    const/4 v10, 0x0

    .line 284
    const-string v1, "com.startshorts.androidplayer.short_tv_push"

    .line 285
    .line 286
    const/4 v7, 0x0

    .line 287
    const/4 v8, 0x0

    .line 288
    invoke-static/range {v0 .. v10}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    if-eqz v0, :cond_9

    .line 297
    .line 298
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 299
    .line 300
    new-instance v3, Landroid/os/Bundle;

    .line 301
    .line 302
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 303
    .line 304
    .line 305
    const-string v0, "push_name"

    .line 306
    .line 307
    const-string v2, "miss_check_in"

    .line 308
    .line 309
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getTitle()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    const-string/jumbo v2, "title"

    .line 317
    .line 318
    .line 319
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    const-string v0, "content"

    .line 323
    .line 324
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/MissCheckInNotification;->getContent()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    .line 330
    .line 331
    const/4 v6, 0x4

    .line 332
    const/4 v7, 0x0

    .line 333
    const-string v2, "push_send"

    .line 334
    .line 335
    const-wide/16 v4, 0x0

    .line 336
    .line 337
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 338
    .line 339
    .line 340
    :cond_9
    return-object p2
.end method

.method public final O(Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;)Ljava/lang/Object;
    .locals 24
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/NewShortsNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    const-string v0, "notification"

    .line 6
    .line 7
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->NEW_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 11
    .line 12
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Throwable;

    .line 21
    .line 22
    const-string v1, "Too frequently"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 37
    .line 38
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    sget-object v2, Luf/f;->a:Luf/f;

    .line 43
    .line 44
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    if-eqz v3, :cond_1

    .line 49
    .line 50
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_default_new_shorts_compact_fold:I

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_default_new_shorts_fold:I

    .line 54
    .line 55
    :goto_0
    invoke-virtual {v2, v3, v12}, Luf/f;->e(ILcom/startshorts/androidplayer/bean/notification/NewShortsNotification;)Landroid/widget/RemoteViews;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    sget v4, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_default_new_shorts_unfold:I

    .line 60
    .line 61
    invoke-virtual {v2, v4, v12}, Luf/f;->e(ILcom/startshorts/androidplayer/bean/notification/NewShortsNotification;)Landroid/widget/RemoteViews;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    new-instance v5, Landroid/content/Intent;

    .line 74
    .line 75
    const-class v6, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 76
    .line 77
    invoke-direct {v5, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 81
    .line 82
    const/4 v7, 0x3

    .line 83
    invoke-static/range {p1 .. p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-direct {v6, v7, v8}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v6}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const-string v7, "data"

    .line 95
    .line 96
    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    const/high16 v6, 0xc000000

    .line 102
    .line 103
    invoke-static {v1, v0, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    const/16 v9, 0xe0

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    const-string v1, "com.startshorts.androidplayer.short_tv_push"

    .line 111
    .line 112
    const/4 v6, 0x0

    .line 113
    const/4 v7, 0x0

    .line 114
    const/4 v8, 0x0

    .line 115
    move-object/from16 v0, p0

    .line 116
    .line 117
    invoke-static/range {v0 .. v10}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    if-eqz v1, :cond_2

    .line 126
    .line 127
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 128
    .line 129
    new-instance v4, Landroid/os/Bundle;

    .line 130
    .line 131
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v1, "push_name"

    .line 135
    .line 136
    const-string v3, "reel_update"

    .line 137
    .line 138
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v3, "reel_id"

    .line 146
    .line 147
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    const-string/jumbo v1, "title"

    .line 151
    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v1, "content"

    .line 161
    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    const/4 v7, 0x4

    .line 170
    const/4 v8, 0x0

    .line 171
    const-string v3, "push_send"

    .line 172
    .line 173
    const-wide/16 v5, 0x0

    .line 174
    .line 175
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    sget-object v1, Lag/a;->a:Lag/a;

    .line 179
    .line 180
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getShortPlayCode()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v14

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getUpack()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v20

    .line 188
    const/16 v22, 0x17c

    .line 189
    .line 190
    const/16 v23, 0x0

    .line 191
    .line 192
    const-string v13, "Push"

    .line 193
    .line 194
    const/4 v15, 0x0

    .line 195
    const/16 v16, 0x0

    .line 196
    .line 197
    const/16 v17, 0x0

    .line 198
    .line 199
    const/16 v18, 0x0

    .line 200
    .line 201
    const/16 v19, 0x0

    .line 202
    .line 203
    const/16 v21, 0x0

    .line 204
    .line 205
    move-object v12, v1

    .line 206
    invoke-static/range {v12 .. v23}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    :cond_2
    return-object v0
.end method

.method public final S(Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;)Ljava/lang/Object;
    .locals 24
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v11, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    const-string v0, "notification"

    .line 6
    .line 7
    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->RECOMMEND_SHORTS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 11
    .line 12
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/Throwable;

    .line 21
    .line 22
    const-string v1, "Too frequently"

    .line 23
    .line 24
    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0

    .line 36
    :cond_0
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 37
    .line 38
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    sget-object v3, Luf/f;->a:Luf/f;

    .line 47
    .line 48
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_1

    .line 53
    .line 54
    sget v4, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_recommend_shorts_compact_fold:I

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    sget v4, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_recommend_shorts_fold:I

    .line 58
    .line 59
    :goto_0
    invoke-virtual {v3, v4, v12}, Luf/f;->g(ILcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;)Landroid/widget/RemoteViews;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    sget v5, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_recommend_shorts_unfold:I

    .line 64
    .line 65
    invoke-virtual {v3, v5, v12}, Luf/f;->g(ILcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;)Landroid/widget/RemoteViews;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-direct {v11, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    new-instance v3, Landroid/content/Intent;

    .line 74
    .line 75
    const-class v6, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 76
    .line 77
    invoke-direct {v3, v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .line 79
    .line 80
    new-instance v6, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 81
    .line 82
    const/4 v7, 0x4

    .line 83
    invoke-static/range {p1 .. p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-direct {v6, v7, v8}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v6}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const-string v7, "data"

    .line 95
    .line 96
    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    .line 98
    .line 99
    sget-object v6, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    const/high16 v6, 0xc000000

    .line 102
    .line 103
    invoke-static {v1, v0, v3, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 104
    .line 105
    .line 106
    move-result-object v6

    .line 107
    const/16 v9, 0xe0

    .line 108
    .line 109
    const/4 v10, 0x0

    .line 110
    const-string v1, "com.startshorts.androidplayer.short_tv_push"

    .line 111
    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    const/4 v13, 0x0

    .line 115
    move-object/from16 v0, p0

    .line 116
    .line 117
    move-object v3, v4

    .line 118
    move-object v4, v5

    .line 119
    move-object v5, v6

    .line 120
    move-object v6, v7

    .line 121
    move v7, v8

    .line 122
    move v8, v13

    .line 123
    invoke-static/range {v0 .. v10}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 134
    .line 135
    invoke-virtual {v2, v12}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 136
    .line 137
    .line 138
    move-result-object v4

    .line 139
    const-string v1, "push_name"

    .line 140
    .line 141
    const-string v3, "active_push"

    .line 142
    .line 143
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getTitle()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    const-string/jumbo v3, "title"

    .line 151
    .line 152
    .line 153
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_3

    .line 161
    .line 162
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_2

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/notification/RecommendShortsNotification;->getRecommendation()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    goto :goto_2

    .line 174
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getSummary()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    :goto_2
    const-string v3, "content"

    .line 179
    .line 180
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    const/4 v7, 0x4

    .line 184
    const/4 v8, 0x0

    .line 185
    const-string v3, "push_send"

    .line 186
    .line 187
    const-wide/16 v5, 0x0

    .line 188
    .line 189
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 190
    .line 191
    .line 192
    sget-object v1, Lag/a;->a:Lag/a;

    .line 193
    .line 194
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getShortPlayCode()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v14

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getUpack()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v20

    .line 202
    const/16 v22, 0x17c

    .line 203
    .line 204
    const/16 v23, 0x0

    .line 205
    .line 206
    const-string v13, "Push"

    .line 207
    .line 208
    const/4 v15, 0x0

    .line 209
    const/16 v16, 0x0

    .line 210
    .line 211
    const/16 v17, 0x0

    .line 212
    .line 213
    const/16 v18, 0x0

    .line 214
    .line 215
    const/16 v19, 0x0

    .line 216
    .line 217
    const/16 v21, 0x0

    .line 218
    .line 219
    move-object v12, v1

    .line 220
    invoke-static/range {v12 .. v23}, Lag/a;->d(Lag/a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;ILcom/startshorts/androidplayer/bean/discover/DiscoverRanking;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    :cond_4
    return-object v0
.end method

.method public final T()Ljava/lang/Object;
    .locals 16
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 19
    .line 20
    invoke-virtual {v0}, Lfk/u;->b()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    const-string v1, "reel_time_activity_rewards_title_"

    .line 25
    .line 26
    const/4 v2, 0x1

    .line 27
    invoke-static {v0, v1, v2}, Ljk/d;->b(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    move-object v3, v1

    .line 32
    check-cast v3, Ljava/util/Collection;

    .line 33
    .line 34
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->o(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-static {v3}, Lkotlin/collections/CollectionsKt;->f(Ljava/lang/Iterable;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    check-cast v3, Ljava/util/Collection;

    .line 43
    .line 44
    sget-object v4, Lkotlin/random/Random;->a:Lkotlin/random/Random$Default;

    .line 45
    .line 46
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->M0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/Number;

    .line 51
    .line 52
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    new-instance v4, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;

    .line 57
    .line 58
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;-><init>()V

    .line 59
    .line 60
    .line 61
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 62
    .line 63
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Ljava/lang/String;

    .line 68
    .line 69
    sget-object v3, Lud/a;->a:Lud/a;

    .line 70
    .line 71
    invoke-virtual {v3}, Lud/a;->H()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    const-string v2, "format(...)"

    .line 92
    .line 93
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;->setTitle(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget v1, Lcom/startshorts/androidplayer/R$string;->reel_time_activity_rewards_content:I

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;->setContent(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    sget v1, Lcom/startshorts/androidplayer/R$drawable;->ic_push_msg_rewards_gift:I

    .line 109
    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/bean/notification/RewardsNotification;->setBonusIconResource(Ljava/lang/Integer;)V

    .line 115
    .line 116
    .line 117
    sget-object v1, Luf/f;->a:Luf/f;

    .line 118
    .line 119
    sget v2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_rewards_fold:I

    .line 120
    .line 121
    invoke-virtual {v1, v2, v4}, Luf/f;->h(ILcom/startshorts/androidplayer/bean/notification/RewardsNotification;)Landroid/widget/RemoteViews;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    sget v2, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_rewards_unfold:I

    .line 126
    .line 127
    invoke-virtual {v1, v2, v4}, Luf/f;->h(ILcom/startshorts/androidplayer/bean/notification/RewardsNotification;)Landroid/widget/RemoteViews;

    .line 128
    .line 129
    .line 130
    move-result-object v9

    .line 131
    new-instance v1, Landroid/content/Intent;

    .line 132
    .line 133
    const-class v2, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 134
    .line 135
    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 139
    .line 140
    const/16 v3, 0xc

    .line 141
    .line 142
    invoke-static {v4}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v4

    .line 146
    invoke-direct {v2, v3, v4}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-static {v2}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    const-string v3, "data"

    .line 154
    .line 155
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    .line 157
    .line 158
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 159
    .line 160
    const/high16 v2, 0xc000000

    .line 161
    .line 162
    const v3, 0x9c45

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 166
    .line 167
    .line 168
    move-result-object v10

    .line 169
    const/16 v14, 0xe0

    .line 170
    .line 171
    const/4 v15, 0x0

    .line 172
    const-string v6, "com.startshorts.androidplayer.short_tv_push"

    .line 173
    .line 174
    const/16 v7, 0x1a0a

    .line 175
    .line 176
    const/4 v11, 0x0

    .line 177
    const/4 v12, 0x0

    .line 178
    const/4 v13, 0x0

    .line 179
    move-object/from16 v5, p0

    .line 180
    .line 181
    invoke-static/range {v5 .. v15}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 186
    .line 187
    .line 188
    move-result v1

    .line 189
    if-eqz v1, :cond_1

    .line 190
    .line 191
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 192
    .line 193
    new-instance v4, Landroid/os/Bundle;

    .line 194
    .line 195
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 196
    .line 197
    .line 198
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->k()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    const-string v3, "country"

    .line 205
    .line 206
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    const-string v1, "device_type"

    .line 210
    .line 211
    const-string v3, "and"

    .line 212
    .line 213
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    const-string/jumbo v1, "type"

    .line 217
    .line 218
    .line 219
    const-string v3, "Real_time_Rewards"

    .line 220
    .line 221
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    const/4 v7, 0x4

    .line 225
    const/4 v8, 0x0

    .line 226
    const-string v3, "realtimeactivity_show"

    .line 227
    .line 228
    const-wide/16 v5, 0x0

    .line 229
    .line 230
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 231
    .line 232
    .line 233
    :cond_1
    return-object v0
.end method

.method public final U(Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;)Ljava/lang/Object;
    .locals 13
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "notification"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/manager/push/task/PushType;->START_RECHARGING:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 7
    .line 8
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    .line 16
    new-instance p1, Ljava/lang/Throwable;

    .line 17
    .line 18
    const-string v0, "Too frequently"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_0
    sget-object v1, Laa/a;->a:Laa/a;

    .line 33
    .line 34
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 45
    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 50
    .line 51
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :goto_0
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 56
    .line 57
    .line 58
    move-result v4

    .line 59
    sget-object v2, Luf/f;->a:Luf/f;

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    .line 67
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_start_recharging_compact_fold:I

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_start_recharging_fold:I

    .line 71
    .line 72
    :goto_1
    invoke-virtual {v2, v3, p1}, Luf/f;->i(ILcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;)Landroid/widget/RemoteViews;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_start_recharging_unfold:I

    .line 77
    .line 78
    invoke-virtual {v2, v3, p1}, Luf/f;->i(ILcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;)Landroid/widget/RemoteViews;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    new-instance v2, Landroid/content/Intent;

    .line 87
    .line 88
    const-class v3, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 89
    .line 90
    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 91
    .line 92
    .line 93
    new-instance v3, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 94
    .line 95
    const/16 v7, 0x8

    .line 96
    .line 97
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v8

    .line 101
    invoke-direct {v3, v7, v8}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-static {v3}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    const-string v7, "data"

    .line 109
    .line 110
    invoke-virtual {v2, v7, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    .line 112
    .line 113
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 114
    .line 115
    const/high16 v3, 0xc000000

    .line 116
    .line 117
    invoke-static {v1, v0, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    const/16 v11, 0xe0

    .line 122
    .line 123
    const/4 v12, 0x0

    .line 124
    const-string v3, "com.startshorts.androidplayer.short_tv_push"

    .line 125
    .line 126
    const/4 v8, 0x0

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v10, 0x0

    .line 129
    move-object v2, p0

    .line 130
    invoke-static/range {v2 .. v12}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    if-eqz v1, :cond_3

    .line 139
    .line 140
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 141
    .line 142
    new-instance v4, Landroid/os/Bundle;

    .line 143
    .line 144
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v1, "push_name"

    .line 148
    .line 149
    const-string/jumbo v3, "start_charging"

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/BaseShortsNotification;->getTitle()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string/jumbo v3, "title"

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    const-string v1, "content"

    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/StartRechargingNotification;->getContent()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    const/4 v7, 0x4

    .line 175
    const/4 v8, 0x0

    .line 176
    const-string v3, "push_send"

    .line 177
    .line 178
    const-wide/16 v5, 0x0

    .line 179
    .line 180
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    return-object v0
.end method

.method public final V(Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .param p1    # Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;
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
            "Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->o:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->o:I

    .line 18
    .line 19
    :goto_0
    move-object v7, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;-><init>(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->m:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->o:I

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    if-ne v1, v2, :cond_1

    .line 39
    .line 40
    iget-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p1, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;

    .line 43
    .line 44
    iget-object v0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->k:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Landroid/content/Context;

    .line 47
    .line 48
    iget-object v1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 51
    .line 52
    iget-object v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v2, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;

    .line 55
    .line 56
    iget-object v3, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v3, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_4

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    sget-object p2, Lcom/startshorts/androidplayer/manager/push/task/PushType;->SUBS_BONUS:Lcom/startshorts/androidplayer/manager/push/task/PushType;

    .line 77
    .line 78
    invoke-direct {p0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->H(Lcom/startshorts/androidplayer/manager/push/task/PushType;)Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 85
    .line 86
    new-instance p1, Ljava/lang/Throwable;

    .line 87
    .line 88
    const-string p2, "Too frequently"

    .line 89
    .line 90
    invoke-direct {p1, p2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    return-object p1

    .line 102
    :cond_3
    sget-object v1, Laa/a;->a:Laa/a;

    .line 103
    .line 104
    invoke-virtual {v1}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    if-eqz v1, :cond_4

    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    check-cast v1, Lcom/hades/aar/activity/IDActivity;

    .line 115
    .line 116
    if-eqz v1, :cond_4

    .line 117
    .line 118
    :goto_2
    move-object v10, v1

    .line 119
    goto :goto_3

    .line 120
    :cond_4
    sget-object v1, Lfk/u;->a:Lfk/u;

    .line 121
    .line 122
    invoke-virtual {v1}, Lfk/u;->b()Landroid/content/Context;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    goto :goto_2

    .line 127
    :goto_3
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getIcon()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-nez v1, :cond_5

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_5
    sget-object v1, Lcom/startshorts/androidplayer/repo/push/PushRepo;->a:Lcom/startshorts/androidplayer/repo/push/PushRepo;

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getIcon()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    sget v4, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->b:I

    .line 147
    .line 148
    iput-object p0, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->h:Ljava/lang/Object;

    .line 149
    .line 150
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->i:Ljava/lang/Object;

    .line 151
    .line 152
    iput-object p2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->j:Ljava/lang/Object;

    .line 153
    .line 154
    iput-object v10, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->k:Ljava/lang/Object;

    .line 155
    .line 156
    iput-object p1, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->l:Ljava/lang/Object;

    .line 157
    .line 158
    iput v2, v7, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$pushSubsBonusNotification$1;->o:I

    .line 159
    .line 160
    const/4 v5, 0x0

    .line 161
    const/4 v6, 0x0

    .line 162
    const/16 v8, 0x18

    .line 163
    .line 164
    const/4 v9, 0x0

    .line 165
    move-object v2, v3

    .line 166
    move v3, v4

    .line 167
    invoke-static/range {v1 .. v9}, Lcom/startshorts/androidplayer/repo/push/PushRepo;->m(Lcom/startshorts/androidplayer/repo/push/PushRepo;Ljava/lang/String;IIIZLrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    if-ne v1, v0, :cond_6

    .line 172
    .line 173
    return-object v0

    .line 174
    :cond_6
    move-object v3, p0

    .line 175
    move-object v2, p1

    .line 176
    move-object v0, v10

    .line 177
    move-object v11, v1

    .line 178
    move-object v1, p2

    .line 179
    move-object p2, v11

    .line 180
    :goto_4
    check-cast p2, Landroid/graphics/Bitmap;

    .line 181
    .line 182
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 183
    .line 184
    .line 185
    move-object v10, v0

    .line 186
    move-object p2, v1

    .line 187
    move-object p1, v2

    .line 188
    move-object v0, v3

    .line 189
    goto :goto_6

    .line 190
    :cond_7
    :goto_5
    move-object v0, p0

    .line 191
    :goto_6
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    sget-object v1, Luf/f;->a:Luf/f;

    .line 196
    .line 197
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->z()Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_8

    .line 202
    .line 203
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_subs_bonus_compact_fold:I

    .line 204
    .line 205
    goto :goto_7

    .line 206
    :cond_8
    sget v3, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_subs_bonus_fold:I

    .line 207
    .line 208
    :goto_7
    invoke-virtual {v1, v3, p1}, Luf/f;->j(ILcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;)Landroid/widget/RemoteViews;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    sget v4, Lcom/startshorts/androidplayer/R$layout;->remote_views_notification_subs_bonus_unfold:I

    .line 213
    .line 214
    invoke-virtual {v1, v4, p1}, Luf/f;->j(ILcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;)Landroid/widget/RemoteViews;

    .line 215
    .line 216
    .line 217
    move-result-object v4

    .line 218
    invoke-direct {v0, p2}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->q(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 219
    .line 220
    .line 221
    move-result p2

    .line 222
    new-instance v1, Landroid/content/Intent;

    .line 223
    .line 224
    const-class v5, Lcom/startshorts/androidplayer/ui/activity/notification/LocalNotificationNavigatorActivity;

    .line 225
    .line 226
    invoke-direct {v1, v10, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 227
    .line 228
    .line 229
    new-instance v5, Lcom/startshorts/androidplayer/bean/notification/NotificationData;

    .line 230
    .line 231
    const/4 v6, 0x7

    .line 232
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v7

    .line 236
    invoke-direct {v5, v6, v7}, Lcom/startshorts/androidplayer/bean/notification/NotificationData;-><init>(ILjava/lang/String;)V

    .line 237
    .line 238
    .line 239
    invoke-static {v5}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v5

    .line 243
    const-string v6, "data"

    .line 244
    .line 245
    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    .line 247
    .line 248
    sget-object v5, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 249
    .line 250
    const/high16 v5, 0xc000000

    .line 251
    .line 252
    invoke-static {v10, p2, v1, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 253
    .line 254
    .line 255
    move-result-object v5

    .line 256
    const/16 v9, 0xe0

    .line 257
    .line 258
    const/4 v10, 0x0

    .line 259
    const-string v1, "com.startshorts.androidplayer.short_tv_push"

    .line 260
    .line 261
    const/4 v6, 0x0

    .line 262
    const/4 v7, 0x0

    .line 263
    const/4 v8, 0x0

    .line 264
    invoke-static/range {v0 .. v10}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->R(Lcom/startshorts/androidplayer/manager/push/util/PushUtil;Ljava/lang/String;ILandroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZZILjava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object p2

    .line 268
    invoke-static {p2}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v0

    .line 272
    if-eqz v0, :cond_9

    .line 273
    .line 274
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 275
    .line 276
    new-instance v3, Landroid/os/Bundle;

    .line 277
    .line 278
    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 279
    .line 280
    .line 281
    const-string v0, "push_name"

    .line 282
    .line 283
    const-string/jumbo v2, "subscribe"

    .line 284
    .line 285
    .line 286
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getTitle()Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    const-string/jumbo v2, "title"

    .line 294
    .line 295
    .line 296
    invoke-virtual {v3, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    const-string v0, "content"

    .line 300
    .line 301
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/notification/SubsBonusNotification;->getContent()Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {v3, v0, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    const/4 v6, 0x4

    .line 309
    const/4 v7, 0x0

    .line 310
    const-string v2, "push_send"

    .line 311
    .line 312
    const-wide/16 v4, 0x0

    .line 313
    .line 314
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 315
    .line 316
    .line 317
    :cond_9
    return-object p2
.end method

.method public final W(I)V
    .locals 0

    .line 1
    sput p1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k:I

    .line 2
    .line 3
    return-void
.end method

.method public final X()Lkotlinx/coroutines/r;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$updateNotificationCount$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, v1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil$updateNotificationCount$1;-><init>(Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string/jumbo v1, "updateNotificationCount"

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public final c(I)V
    .locals 1

    .line 1
    sget-object v0, Luf/a;->a:Luf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Luf/a;->d()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k()Landroid/app/NotificationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    .line 1
    const/16 v0, 0x3ea

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->e(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    sget-object v0, Luf/a;->a:Luf/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Luf/a;->d()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k()Landroid/app/NotificationManager;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final f(Lcom/startshorts/androidplayer/manager/push/task/PushType;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/manager/push/task/PushType;
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
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->x(Lcom/startshorts/androidplayer/manager/push/task/PushType;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->e(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final r()I
    .locals 2

    .line 1
    const v0, 0x9c43

    .line 2
    .line 3
    .line 4
    sget v1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    return v1
.end method

.method public final s()I
    .locals 2

    .line 1
    const v0, 0x9c41

    .line 2
    .line 3
    .line 4
    sget v1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    return v1
.end method

.method public final t()I
    .locals 2

    .line 1
    const v0, 0x9c42

    .line 2
    .line 3
    .line 4
    sget v1, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k:I

    .line 5
    .line 6
    add-int/2addr v1, v0

    .line 7
    return v1
.end method

.method public final v()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/manager/push/util/PushUtil;->k:I

    .line 2
    .line 3
    return v0
.end method
