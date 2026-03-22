.class public final Lio/bidmachine/analytics/internal/O;
.super Lio/bidmachine/analytics/internal/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/O$d;,
        Lio/bidmachine/analytics/internal/O$b;,
        Lio/bidmachine/analytics/internal/O$c;,
        Lio/bidmachine/analytics/internal/O$a;
    }
.end annotation


# static fields
.field public static final k:Lio/bidmachine/analytics/internal/O$a;


# instance fields
.field private final h:Ljava/lang/String;

.field private i:Lio/bidmachine/analytics/internal/O$d;

.field private final j:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/O$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/O$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/O;->k:Lio/bidmachine/analytics/internal/O$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "mimp"

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/analytics/internal/O;->h:Ljava/lang/String;

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/analytics/internal/O$e;->a:Lio/bidmachine/analytics/internal/O$e;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lio/bidmachine/analytics/internal/O;->j:Lms/i;

    .line 15
    .line 16
    return-void
.end method

.method private final c()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/O;->j:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/O;->h:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lio/bidmachine/analytics/internal/g$a;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/e;->a(Lio/bidmachine/analytics/internal/g$a;)V

    .line 3
    iget-object p1, p0, Lio/bidmachine/analytics/internal/O;->i:Lio/bidmachine/analytics/internal/O$d;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lio/bidmachine/analytics/internal/O$c;

    invoke-direct {v0, p0}, Lio/bidmachine/analytics/internal/O$c;-><init>(Lio/bidmachine/analytics/internal/f;)V

    invoke-virtual {p1, v0}, Lio/bidmachine/analytics/internal/O$d;->a(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/util/Map;)Lio/bidmachine/analytics/internal/e$b;
    .locals 8

    .line 2
    const-string v0, "revenue"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lio/bidmachine/analytics/internal/a0;->a(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 3
    const-string v0, "network_name"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Lio/bidmachine/analytics/internal/e$b;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lio/bidmachine/analytics/internal/e$b;-><init>(IFLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic b(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/analytics/internal/g$a;

    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/O;->a(Lio/bidmachine/analytics/internal/g$a;)V

    return-void
.end method

.method public c(Ljava/util/Map;)Lio/bidmachine/analytics/internal/e$a;
    .locals 2

    .line 2
    const-string v0, "ad_format"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "BANNER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :sswitch_1
    const-string v1, "REWARDED_INTERSTITIAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :sswitch_2
    const-string v1, "REWARDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    sget-object v0, Lio/bidmachine/analytics/internal/e$a;->d:Lio/bidmachine/analytics/internal/e$a;

    goto :goto_1

    .line 5
    :sswitch_3
    const-string v1, "INTER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :sswitch_4
    const-string v1, "MREC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_0

    :sswitch_5
    const-string v1, "INTERSTITIAL"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    sget-object v0, Lio/bidmachine/analytics/internal/e$a;->c:Lio/bidmachine/analytics/internal/e$a;

    goto :goto_1

    .line 7
    :sswitch_6
    const-string v1, "NATIVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    sget-object v0, Lio/bidmachine/analytics/internal/e$a;->e:Lio/bidmachine/analytics/internal/e$a;

    goto :goto_1

    .line 9
    :sswitch_7
    const-string v1, "LEADER"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    :goto_0
    sget-object v0, Lio/bidmachine/analytics/internal/e$a;->b:Lio/bidmachine/analytics/internal/e$a;

    :cond_5
    :goto_1
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7a64c6f7 -> :sswitch_7
        -0x772abbe9 -> :sswitch_6
        -0x51d5b0d4 -> :sswitch_5
        0x243d03 -> :sswitch_4
        0x4296cbc -> :sswitch_3
        0x205e3c0e -> :sswitch_2
        0x6e8e03bd -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch
.end method

.method public d(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/O$d;

    .line 2
    .line 3
    invoke-direct {p1}, Lio/bidmachine/analytics/internal/O$d;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroid/content/IntentFilter;

    .line 7
    .line 8
    const-string v1, "max_revenue_events"

    .line 9
    .line 10
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/applovin/impl/sdk/AppLovinBroadcastManager;->registerReceiver(Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;Landroid/content/IntentFilter;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lio/bidmachine/analytics/internal/O;->i:Lio/bidmachine/analytics/internal/O$d;

    .line 17
    .line 18
    return-void
.end method

.method public e(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/O;->i:Lio/bidmachine/analytics/internal/O$d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/O$d;->a(Z)V

    .line 7
    .line 8
    .line 9
    :cond_0
    invoke-static {p1}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/O;->c()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "max_revenue_events"

    .line 18
    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->unsubscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/analytics/internal/e;->f(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/analytics/internal/O;->i:Lio/bidmachine/analytics/internal/O$d;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/O$d;->a(Z)V

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-static {p1}, Lcom/applovin/communicator/AppLovinCommunicator;->getInstance(Landroid/content/Context;)Lcom/applovin/communicator/AppLovinCommunicator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/O;->c()Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "max_revenue_events"

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/applovin/communicator/AppLovinCommunicator;->subscribe(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
