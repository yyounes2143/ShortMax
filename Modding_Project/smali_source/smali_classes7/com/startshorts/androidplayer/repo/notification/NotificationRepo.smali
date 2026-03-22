.class public final Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;
.super Ljava/lang/Object;
.source "NotificationRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->a:Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;

    .line 7
    .line 8
    new-instance v0, Lch/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lch/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lch/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lch/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->c:Lms/i;

    .line 29
    .line 30
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

.method public static synthetic a()Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->i()Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lch/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->h()Lch/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;)Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->f()Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e()Lch/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lch/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f()Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final h()Lch/a;
    .locals 1

    .line 1
    new-instance v0, Lch/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lch/a;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final i()Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public final c()V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "NotificationRepo"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    const-string v2, "acceptNotificationReward -> ignore,account == null"

    .line 14
    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v0, Lud/b;->a:Lud/b;

    .line 20
    .line 21
    invoke-virtual {v0}, Lud/b;->d()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 28
    .line 29
    const-string v2, "acceptNotificationReward -> ignore, acceptedNotificationsReward = true"

    .line 30
    .line 31
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object v0, Lmk/c;->a:Lmk/c;

    .line 36
    .line 37
    invoke-virtual {v0}, Lmk/c;->d()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 44
    .line 45
    const-string v2, "acceptNotificationReward -> ignore, isNotificationEnabled=false"

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->X()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 60
    .line 61
    const-string v2, "acceptNotificationReward -> ignore, below13 no need to issue rewards"

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 68
    .line 69
    new-instance v6, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;

    .line 70
    .line 71
    const/4 v0, 0x0

    .line 72
    invoke-direct {v6, v0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo$acceptNotificationReward$1;-><init>(Lrs/c;)V

    .line 73
    .line 74
    .line 75
    const/4 v7, 0x2

    .line 76
    const/4 v8, 0x0

    .line 77
    const-string v4, "acceptNotificationReward"

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final g(Ljava/lang/String;)I
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->e()Lch/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lch/a;->b(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    return p1
.end method

.method public final j()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->e()Lch/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lch/a;->c()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final k(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/notification/NotificationRepo;->e()Lch/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1, p2}, Lch/a;->d(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    return-void
.end method
