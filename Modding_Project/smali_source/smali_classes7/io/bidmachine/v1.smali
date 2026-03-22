.class public final synthetic Lio/bidmachine/v1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/Executable;


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$d;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/v1;->a:Lio/bidmachine/BidMachineAd$d;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final execute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/v1;->a:Lio/bidmachine/BidMachineAd$d;

    .line 2
    .line 3
    check-cast p1, Lio/bidmachine/u;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lio/bidmachine/BidMachineAd$d;->c(Lio/bidmachine/BidMachineAd$d;Lio/bidmachine/u;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
