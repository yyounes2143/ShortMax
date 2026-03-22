.class Lio/bidmachine/BidMachineAd$d;
.super Lio/bidmachine/p5;
.source "BidMachineAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/BidMachineAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private a:Lio/bidmachine/AdCridThreadHandler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field final synthetic b:Lio/bidmachine/BidMachineAd;


# direct methods
.method constructor <init>(Lio/bidmachine/BidMachineAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-direct {p0}, Lio/bidmachine/p5;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/BidMachineAd$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/BidMachineAd$d;->e()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/BidMachineAd$d;Lfr/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd$d;->h(Lfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/BidMachineAd$d;Lio/bidmachine/u;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd$d;->g(Lio/bidmachine/u;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/BidMachineAd$d;Lfr/a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/BidMachineAd$d;->f(Lfr/a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    instance-of v0, v0, Lio/bidmachine/AdFullScreenListener;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 12
    .line 13
    const-string v1, "notify AdClosed"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 19
    .line 20
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lio/bidmachine/AdFullScreenListener;

    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 27
    .line 28
    iget-object v2, v1, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-interface {v0, v1, v2}, Lio/bidmachine/AdFullScreenListener;->onAdClosed(Lio/bidmachine/IAd;Z)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->isDuplicateShowDisabled()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 46
    .line 47
    const-string v1, "duplicate showing is disabled, starting destroy internally"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 53
    .line 54
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method

.method private synthetic f(Lfr/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 10
    .line 11
    const-string v1, "notify AdLoadFailed"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 17
    .line 18
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Lio/bidmachine/AdListener;->onAdLoadFailed(Lio/bidmachine/IAd;Lfr/a;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private synthetic g(Lio/bidmachine/u;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/AdCridThreadHandler;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/r1;

    .line 4
    .line 5
    invoke-direct {v1}, Lio/bidmachine/r1;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p1, Lio/bidmachine/u;->w:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Lio/bidmachine/AdCridThreadHandler;

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/bidmachine/u;->D()Llp/c;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {p1}, Llp/c;->getCreativeId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-direct {v0, p1}, Lio/bidmachine/AdCridThreadHandler;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/AdCridThreadHandler;

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private synthetic h(Lfr/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 10
    .line 11
    const-string v1, "notify AdShowFailed"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 17
    .line 18
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$100(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/AdListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 23
    .line 24
    invoke-interface {v0, v1, p1}, Lio/bidmachine/AdListener;->onAdShowFailed(Lio/bidmachine/IAd;Lfr/a;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method


# virtual methods
.method public processClicked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    const-string v1, "processClicked"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lio/bidmachine/BidMachineAd$d$c;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$d$c;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public processClosed()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->isCloseTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 34
    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "processClosed ("

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 46
    .line 47
    iget-object v2, v2, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v2, ")"

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lio/bidmachine/u1;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lio/bidmachine/u1;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 74
    .line 75
    .line 76
    return-void
.end method

.method public processDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    const-string v1, "destroy requested"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 9
    .line 10
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Destroyed:Lio/bidmachine/BidMachineAd$State;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 16
    .line 17
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0, p0}, Lio/bidmachine/u;->Y(Lio/bidmachine/AdProcessCallback;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 27
    .line 28
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$200(Lio/bidmachine/BidMachineAd;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/AdCridThreadHandler;

    .line 32
    .line 33
    new-instance v1, Lio/bidmachine/r1;

    .line 34
    .line 35
    invoke-direct {v1}, Lio/bidmachine/r1;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/AdCridThreadHandler;

    .line 43
    .line 44
    return-void
.end method

.method public processExpired()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    const-string v1, "processExpired"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 28
    .line 29
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Expired:Lio/bidmachine/BidMachineAd$State;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lio/bidmachine/BidMachineAd$d$e;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$d$e;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/AdCridThreadHandler;

    .line 43
    .line 44
    new-instance v1, Lio/bidmachine/r1;

    .line 45
    .line 46
    invoke-direct {v1}, Lio/bidmachine/r1;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 50
    .line 51
    .line 52
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lio/bidmachine/BidMachineAd$d;->a:Lio/bidmachine/AdCridThreadHandler;

    .line 54
    .line 55
    return-void
.end method

.method public processFillAd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    const-string v1, "processFillAd"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public processFinished()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    iget-object v0, v0, Lio/bidmachine/BidMachineAd;->isFinishTracked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    const/4 v2, 0x1

    .line 26
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 34
    .line 35
    const-string v1, "processFinished"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Lio/bidmachine/BidMachineAd$d$d;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$d$d;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 43
    .line 44
    .line 45
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public processLoadFail(Lfr/a;)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "processLoadFail - "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 24
    .line 25
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Failed:Lio/bidmachine/BidMachineAd$State;

    .line 26
    .line 27
    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 28
    .line 29
    .line 30
    new-instance v0, Lio/bidmachine/t1;

    .line 31
    .line 32
    invoke-direct {v0, p0, p1}, Lio/bidmachine/t1;-><init>(Lio/bidmachine/BidMachineAd$d;Lfr/a;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public processLoadSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Loading:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    const-string v1, "processLoadSuccess"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 28
    .line 29
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 30
    .line 31
    invoke-static {v0, v1}, Lio/bidmachine/BidMachineAd;->access$002(Lio/bidmachine/BidMachineAd;Lio/bidmachine/BidMachineAd$State;)Lio/bidmachine/BidMachineAd$State;

    .line 32
    .line 33
    .line 34
    new-instance v0, Lio/bidmachine/BidMachineAd$d$a;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$d$a;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 37
    .line 38
    .line 39
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 43
    .line 44
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->getAdResponse()Lio/bidmachine/u;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    new-instance v1, Lio/bidmachine/v1;

    .line 49
    .line 50
    invoke-direct {v1, p0}, Lio/bidmachine/v1;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 51
    .line 52
    .line 53
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public processShowFail(Lfr/a;)V
    .locals 3
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "processShowFail - "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lio/bidmachine/s1;

    .line 24
    .line 25
    invoke-direct {v0, p0, p1}, Lio/bidmachine/s1;-><init>(Lio/bidmachine/BidMachineAd$d;Lfr/a;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public processShown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    const-string v1, "processShown"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Lio/bidmachine/BidMachineAd$d$b;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lio/bidmachine/BidMachineAd$d$b;-><init>(Lio/bidmachine/BidMachineAd$d;)V

    .line 30
    .line 31
    .line 32
    invoke-static {v0}, Lio/bidmachine/core/g;->Z(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public processVisibilityTrackerImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/BidMachineAd;->access$000(Lio/bidmachine/BidMachineAd;)Lio/bidmachine/BidMachineAd$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    sget-object v1, Lio/bidmachine/BidMachineAd$State;->Success:Lio/bidmachine/BidMachineAd$State;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-le v0, v1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/BidMachineAd$d;->b:Lio/bidmachine/BidMachineAd;

    .line 21
    .line 22
    const-string v1, "processImpression"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
