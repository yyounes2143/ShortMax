.class public final Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;
.super Ljava/lang/Object;
.source "UserAgentManager.kt"

# interfaces
.implements Lio/bidmachine/UserAgentManager$UserAgentSource;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/UserAgentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BidMachineUserAgentSource"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final applicationContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final expirationMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-wide p2, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->expirationMs:J

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string p2, "context.applicationContext"

    .line 16
    .line 17
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final calculateExpirationMs()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->expirationMs:J

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public final checkAndUpdate()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->get()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    invoke-static {p0}, Lyq/n;->b(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    :cond_1
    return-void
.end method

.method public get()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/m2;->n(Landroid/content/Context;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final getExpirationMs()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->expirationMs:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public run()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lio/bidmachine/UserAgentManager;->INSTANCE:Lio/bidmachine/UserAgentManager;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "getDefaultUserAgent(applicationContext)"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->applicationContext:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {p0}, Lio/bidmachine/UserAgentManager$BidMachineUserAgentSource;->calculateExpirationMs()J

    .line 19
    .line 20
    .line 21
    move-result-wide v2

    .line 22
    invoke-static {v1, v0, v2, v3}, Lio/bidmachine/m2;->v(Landroid/content/Context;Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    :goto_0
    sput-object v0, Lio/bidmachine/UserAgentManager;->webUserAgent:Ljava/lang/String;

    .line 28
    .line 29
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :catchall_0
    return-void
.end method
