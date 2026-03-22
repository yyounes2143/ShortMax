.class public final Lio/bidmachine/analytics/internal/O$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/sdk/AppLovinBroadcastManager$Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/analytics/internal/O;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private volatile a:Z

.field private volatile b:Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/O$d;->b:Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    return-void
.end method

.method public final a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lio/bidmachine/analytics/internal/O$d;->a:Z

    return-void
.end method

.method public onReceive(Landroid/content/Intent;Ljava/util/Map;)V
    .locals 0

    .line 1
    iget-boolean p2, p0, Lio/bidmachine/analytics/internal/O$d;->a:Z

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    instance-of p2, p1, Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lio/bidmachine/analytics/internal/O$d;->b:Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    check-cast p1, Lcom/applovin/communicator/AppLovinCommunicatorMessage;

    .line 14
    .line 15
    invoke-interface {p2, p1}, Lcom/applovin/communicator/AppLovinCommunicatorSubscriber;->onMessageReceived(Lcom/applovin/communicator/AppLovinCommunicatorMessage;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
