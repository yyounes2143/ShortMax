.class final Lio/bidmachine/analytics/internal/O$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/f;

.field private final b:Lms/i;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/O$c;->a:Lio/bidmachine/analytics/internal/f;

    .line 5
    .line 6
    sget-object p1, Lio/bidmachine/analytics/internal/O$c$a;->a:Lio/bidmachine/analytics/internal/O$c$a;

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lio/bidmachine/analytics/internal/O$c;->b:Lms/i;

    .line 13
    .line 14
    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/O$c;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public getCommunicatorId()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/O$c;->a()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const-string v0, "max_revenue_events"

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getTopic()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/communicator/AppLovinCommunicatorMessage;->getMessageData()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/BaseBundle;->size()I

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 29
    if-gtz v0, :cond_2

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    :try_start_1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/O$c;->a:Lio/bidmachine/analytics/internal/f;

    .line 33
    .line 34
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->a(Landroid/os/Bundle;)Ljava/util/Map;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-interface {v0, p1}, Lio/bidmachine/analytics/internal/f;->a(Ljava/util/Map;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception p1

    .line 45
    :try_start_2
    new-instance v0, Lio/bidmachine/analytics/internal/q0;

    .line 46
    .line 47
    const-string v1, "mimp"

    .line 48
    .line 49
    sget-object v2, Lio/bidmachine/analytics/internal/q0$a;->d:Lio/bidmachine/analytics/internal/q0$a;

    .line 50
    .line 51
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-direct {v0, v1, v2, p1}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    move-object p1, v0

    .line 59
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    goto :goto_3

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    goto :goto_2

    .line 65
    :cond_3
    :goto_1
    iget-object p1, p0, Lio/bidmachine/analytics/internal/O$c;->a:Lio/bidmachine/analytics/internal/f;

    .line 66
    .line 67
    new-instance v6, Lio/bidmachine/analytics/internal/q0;

    .line 68
    .line 69
    const-string v1, "mimp"

    .line 70
    .line 71
    sget-object v2, Lio/bidmachine/analytics/internal/q0$a;->c:Lio/bidmachine/analytics/internal/q0$a;

    .line 72
    .line 73
    const/4 v4, 0x4

    .line 74
    const/4 v5, 0x0

    .line 75
    const/4 v3, 0x0

    .line 76
    move-object v0, v6

    .line 77
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    .line 79
    .line 80
    invoke-interface {p1, v6}, Lio/bidmachine/analytics/internal/f;->a(Lio/bidmachine/analytics/internal/q0;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 85
    .line 86
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    :goto_3
    return-void
.end method
