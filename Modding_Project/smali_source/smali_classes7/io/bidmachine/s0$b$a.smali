.class Lio/bidmachine/s0$b$a;
.super Ljava/lang/Object;
.source "AdResponseLoader.java"

# interfaces
.implements Lio/bidmachine/a5$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/s0$b;->i(Lcom/explorestack/protobuf/openrtb/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/a5$a<",
        "Lio/bidmachine/u;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/s0$b;


# direct methods
.method constructor <init>(Lio/bidmachine/s0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lfr/a;)V
    .locals 2
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/s0$b;->c(Lio/bidmachine/s0$b;)Lio/bidmachine/NetworkAdUnitManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/s0$b;->c(Lio/bidmachine/s0$b;)Lio/bidmachine/NetworkAdUnitManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkClearAuction()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 21
    .line 22
    invoke-static {v0, p1}, Lio/bidmachine/s0$b;->e(Lio/bidmachine/s0$b;Lfr/a;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public b(Lio/bidmachine/u;)V
    .locals 2
    .param p1    # Lio/bidmachine/u;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/s0$b;->b(Lio/bidmachine/s0$b;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v1, Lio/bidmachine/AdResponseStatus;->Idle:Lio/bidmachine/AdResponseStatus;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lio/bidmachine/AdResponseStatus;->Busy:Lio/bidmachine/AdResponseStatus;

    .line 13
    .line 14
    :goto_0
    invoke-virtual {p1, v1}, Lio/bidmachine/u;->Z(Lio/bidmachine/AdResponseStatus;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p1}, Lio/bidmachine/w0;->p(Lio/bidmachine/u;)V

    .line 22
    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lio/bidmachine/u;->X()V

    .line 27
    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    iget-object v0, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/s0$b;->c(Lio/bidmachine/s0$b;)Lio/bidmachine/NetworkAdUnitManager;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1}, Lio/bidmachine/u;->J()Lio/bidmachine/NetworkAdUnit;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lio/bidmachine/NetworkAdUnitManager;->notifyNetworkAuctionResult(Lio/bidmachine/NetworkAdUnit;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lio/bidmachine/s0$b$a;->a:Lio/bidmachine/s0$b;

    .line 44
    .line 45
    invoke-static {v0, p1}, Lio/bidmachine/s0$b;->d(Lio/bidmachine/s0$b;Lio/bidmachine/u;)V

    .line 46
    .line 47
    .line 48
    :goto_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/u;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/s0$b$a;->b(Lio/bidmachine/u;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
