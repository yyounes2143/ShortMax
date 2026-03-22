.class public Lio/bidmachine/BidToken;
.super Ljava/lang/Object;
.source "BidToken.java"

# interfaces
.implements Lio/bidmachine/ExpirationHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/BidToken$b;
    }
.end annotation


# instance fields
.field private final adRequest:Lio/bidmachine/AdRequest;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/AdRequest<",
            "***>;"
        }
    .end annotation
.end field

.field private final expirationHandler:Lio/bidmachine/ExpirationHandler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final expirationListener:Lio/bidmachine/ExpirationListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ExpirationListener<",
            "Lio/bidmachine/BidToken;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;ILio/bidmachine/ExpirationListener;)V
    .locals 3
    .param p1    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/ExpirationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdRequest<",
            "***>;I",
            "Lio/bidmachine/ExpirationListener<",
            "Lio/bidmachine/BidToken;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lio/bidmachine/BidToken;->id:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    .line 15
    .line 16
    new-instance p1, Lio/bidmachine/ExpirationHandler;

    .line 17
    .line 18
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 19
    .line 20
    int-to-long v1, p2

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    new-instance p2, Lio/bidmachine/BidToken$b;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-direct {p2, v2}, Lio/bidmachine/BidToken$b;-><init>(Lio/bidmachine/BidToken$a;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p1, v0, v1, p0, p2}, Lio/bidmachine/ExpirationHandler;-><init>(JLio/bidmachine/ExpirationHandler$Listener;Lio/bidmachine/ExpirationHandler$TaskScheduler;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lio/bidmachine/BidToken;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    .line 35
    .line 36
    iput-object p3, p0, Lio/bidmachine/BidToken;->expirationListener:Lio/bidmachine/ExpirationListener;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method destroyAdRequest()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->clearNetworkAdUnits()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->destroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getAdRequest()Lio/bidmachine/AdRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/AdRequest<",
            "***>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->adRequest:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onExpired()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->expirationListener:Lio/bidmachine/ExpirationListener;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lio/bidmachine/ExpirationListener;->onExpired(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method startExpiration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->start()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method stopExpiration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidToken;->expirationHandler:Lio/bidmachine/ExpirationHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/ExpirationHandler;->stop()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
