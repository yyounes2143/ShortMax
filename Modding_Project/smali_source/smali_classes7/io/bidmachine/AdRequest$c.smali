.class Lio/bidmachine/AdRequest$c;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/AdRequest;->request(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lio/bidmachine/AdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/AdRequest$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/AdRequest$c;->c()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private static synthetic c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Request start"

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 7
    .line 8
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$100(Lio/bidmachine/AdRequest;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 12
    .line 13
    iget-object v1, v0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-virtual {v1, v0}, Lio/bidmachine/u;->r(Lio/bidmachine/AdRequest;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 21
    .line 22
    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lio/bidmachine/AdRequest;->adResponse:Lio/bidmachine/u;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 29
    .line 30
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$200(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 39
    .line 40
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$300(Lio/bidmachine/AdRequest;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 48
    .line 49
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$400(Lio/bidmachine/AdRequest;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 53
    .line 54
    new-instance v1, Lio/bidmachine/k;

    .line 55
    .line 56
    invoke-direct {v1}, Lio/bidmachine/k;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->access$500(Lio/bidmachine/AdRequest;Lhr/b;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 63
    .line 64
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$600(Lio/bidmachine/AdRequest;)Lio/bidmachine/BidMachineTrackingObject;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    sget-object v1, Lio/bidmachine/TrackEventType;->AuctionRequest:Lio/bidmachine/TrackEventType;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineTrackingObject;->eventStart(Lio/bidmachine/TrackEventType;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 74
    .line 75
    invoke-static {v0}, Lio/bidmachine/AdRequest;->access$000(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequestParameters;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lio/bidmachine/AdRequestParameters;->getBidPayload()Lio/bidmachine/protobuf/ResponsePayload;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    .line 85
    iget-object v1, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 86
    .line 87
    invoke-virtual {v1, v0}, Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_1
    iget-object v0, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 92
    .line 93
    iget-object v1, p0, Lio/bidmachine/AdRequest$c;->a:Landroid/content/Context;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lio/bidmachine/AdRequest;->access$700(Lio/bidmachine/AdRequest;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 100
    .line 101
    .line 102
    iget-object v1, p0, Lio/bidmachine/AdRequest$c;->b:Lio/bidmachine/AdRequest;

    .line 103
    .line 104
    const-string v2, "Exception loading ad request"

    .line 105
    .line 106
    invoke-static {v2, v0}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v1, v0}, Lio/bidmachine/AdRequest;->processRequestFail(Lfr/a;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method
