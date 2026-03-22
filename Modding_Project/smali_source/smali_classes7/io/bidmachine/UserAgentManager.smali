.class public final Lio/bidmachine/UserAgentManager;
.super Ljava/lang/Object;
.source "UserAgentManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/UserAgentManager$UserAgentSource;,
        Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;,
        Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;,
        Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;,
        Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;,
        Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;,
        Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final DEFAULT_EXPIRATION_MS:J

.field public static final INSTANCE:Lio/bidmachine/UserAgentManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final SYSTEM_HTTP_AGENT:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final SYSTEM_PROPERTY_HTTP_AGENT:Ljava/lang/String; = "http.agent"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final WEB_USER_AGENT_UPDATED:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static applicationContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static generatedUserAgent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public static webUserAgent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/UserAgentManager;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/UserAgentManager;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    .line 7
    .line 8
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    .line 9
    .line 10
    const-wide/16 v1, 0xe

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    sput-wide v0, Lio/bidmachine/UserAgentManager;->DEFAULT_EXPIRATION_MS:J

    .line 17
    .line 18
    :try_start_0
    const-string v0, "http.agent"

    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 25
    :catchall_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    sput-object v0, Lio/bidmachine/UserAgentManager;->SYSTEM_HTTP_AGENT:Ljava/lang/String;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_UPDATED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    .line 43
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

.method public static final clear()V
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 9
    .line 10
    sput-object v0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static final getUserAgent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lio/bidmachine/UserAgentManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    .line 3
    :cond_0
    sget-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 4
    sget-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    invoke-virtual {v0, p0}, Lio/bidmachine/UserAgentManager;->findWebUserAgent$bidmachine_android_sdk_bh_3_4_0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 5
    :cond_1
    sget-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 6
    sget-object p0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    return-object p0

    .line 7
    :cond_2
    sget-object v0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    if-nez v0, :cond_3

    if-eqz p0, :cond_3

    .line 8
    new-instance v0, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;

    invoke-direct {v0, p0}, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$GeneratedUserAgentSource;->get()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    .line 9
    :cond_3
    sget-object p0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-lez p0, :cond_4

    .line 10
    sget-object p0, Lio/bidmachine/UserAgentManager;->generatedUserAgent:Ljava/lang/String;

    return-object p0

    .line 11
    :cond_4
    sget-object p0, Lio/bidmachine/UserAgentManager;->SYSTEM_HTTP_AGENT:Ljava/lang/String;

    return-object p0
.end method

.method public static final initialize(Landroid/content/Context;)V
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    .line 11
    .line 12
    sget-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    .line 13
    .line 14
    invoke-virtual {v0, p0}, Lio/bidmachine/UserAgentManager;->findWebUserAgent$bidmachine_android_sdk_bh_3_4_0(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static final updateWebViewUserAgent()V
    .locals 4

    .line 1
    sget-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_UPDATED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget-object v0, Lio/bidmachine/UserAgentManager;->applicationContext:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    :try_start_0
    new-instance v1, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;

    .line 18
    .line 19
    sget-wide v2, Lio/bidmachine/UserAgentManager;->DEFAULT_EXPIRATION_MS:J

    .line 20
    .line 21
    invoke-direct {v1, v0, v2, v3}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;-><init>(Landroid/content/Context;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->checkAndUpdate()V

    .line 25
    .line 26
    .line 27
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    :catchall_0
    return-void
.end method


# virtual methods
.method public final findWebUserAgent$bidmachine_android_sdk_bh_3_4_0(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/bidmachine/UserAgentManager;->WEB_USER_AGENT_PROCESSED:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object p1, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    new-instance v0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;

    .line 20
    .line 21
    sget-wide v1, Lio/bidmachine/UserAgentManager;->DEFAULT_EXPIRATION_MS:J

    .line 22
    .line 23
    invoke-direct {v0, p1, v1, v2}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;-><init>(Landroid/content/Context;J)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->get()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-lez v1, :cond_1

    .line 37
    .line 38
    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;

    .line 40
    .line 41
    invoke-direct {v0, p1}, Lio/bidmachine/UserAgentManager$ApplovinUserAgentSource;-><init>(Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->get()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-lez v1, :cond_2

    .line 55
    .line 56
    return-object v0

    .line 57
    :cond_2
    new-instance v0, Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;

    .line 58
    .line 59
    invoke-direct {v0, p1}, Lio/bidmachine/UserAgentManager$IronSourceUserAgentSource;-><init>(Landroid/content/Context;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->get()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lez v1, :cond_3

    .line 73
    .line 74
    return-object v0

    .line 75
    :cond_3
    new-instance v0, Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;

    .line 76
    .line 77
    invoke-direct {v0, p1}, Lio/bidmachine/UserAgentManager$FacebookUserAgentSource;-><init>(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Lio/bidmachine/UserAgentManager$SharedPreferenceUserAgentSource;->get()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_4

    .line 85
    .line 86
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-lez v0, :cond_4

    .line 91
    .line 92
    return-object p1

    .line 93
    :cond_4
    invoke-static {}, Lio/bidmachine/UserAgentManager;->updateWebViewUserAgent()V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 97
    .line 98
    return-object p1
.end method
