.class public final synthetic Lio/bidmachine/t1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lio/bidmachine/BidMachineAd$d;

.field public final synthetic b:Lfr/a;


# direct methods
.method public synthetic constructor <init>(Lio/bidmachine/BidMachineAd$d;Lfr/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/t1;->a:Lio/bidmachine/BidMachineAd$d;

    .line 5
    .line 6
    iput-object p2, p0, Lio/bidmachine/t1;->b:Lfr/a;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/t1;->a:Lio/bidmachine/BidMachineAd$d;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/t1;->b:Lfr/a;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd$d;->d(Lio/bidmachine/BidMachineAd$d;Lfr/a;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
