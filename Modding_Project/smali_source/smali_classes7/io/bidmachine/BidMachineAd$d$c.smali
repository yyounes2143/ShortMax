.class Lio/bidmachine/BidMachineAd$d$c;
.super Ljava/lang/Object;
.source "BidMachineAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/BidMachineAd$d;->processClicked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/BidMachineAd$d;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$d$c;->a:Lio/bidmachine/BidMachineAd$d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d$c;->a:Lio/bidmachine/BidMachineAd$d;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 4
    .line 5
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d$c;->a:Lio/bidmachine/BidMachineAd$d;

    .line 12
    .line 13
    iget-object v0, v0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 14
    .line 15
    const-string v1, "notify AdClicked"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d$c;->a:Lio/bidmachine/BidMachineAd$d;

    .line 21
    .line 22
    iget-object v0, v0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 23
    .line 24
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lio/bidmachine/BidMachineAd$d$c;->a:Lio/bidmachine/BidMachineAd$d;

    .line 29
    .line 30
    iget-object v1, v1, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 31
    .line 32
    invoke-interface {v0, v1}, Lio/bidmachine/AdListener;->onAdClicked(Lio/bidmachine/IAd;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method
