.class final Lio/bidmachine/core/NetworkRequest$e;
.super Ljava/lang/Object;
.source "NetworkRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/core/NetworkRequest;


# direct methods
.method private constructor <init>(Lio/bidmachine/core/NetworkRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/core/NetworkRequest;Lio/bidmachine/core/NetworkRequest$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/core/NetworkRequest$e;-><init>(Lio/bidmachine/core/NetworkRequest;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$100(Lio/bidmachine/core/NetworkRequest;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 7
    .line 8
    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/bidmachine/core/NetworkRequest;->isCanceled()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 23
    .line 24
    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$300(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$State;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lio/bidmachine/core/NetworkRequest$State;->Success:Lio/bidmachine/core/NetworkRequest$State;

    .line 29
    .line 30
    if-ne v0, v1, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 33
    .line 34
    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 39
    .line 40
    invoke-static {v1}, Lio/bidmachine/core/NetworkRequest;->access$400(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-interface {v0, v1}, Lio/bidmachine/core/NetworkRequest$b;->onSuccess(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    iget-object v0, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 49
    .line 50
    invoke-static {v0}, Lio/bidmachine/core/NetworkRequest;->access$200(Lio/bidmachine/core/NetworkRequest;)Lio/bidmachine/core/NetworkRequest$b;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lio/bidmachine/core/NetworkRequest$e;->a:Lio/bidmachine/core/NetworkRequest;

    .line 55
    .line 56
    invoke-static {v1}, Lio/bidmachine/core/NetworkRequest;->access$500(Lio/bidmachine/core/NetworkRequest;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Lio/bidmachine/core/NetworkRequest$b;->a(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    :cond_1
    :goto_0
    return-void
.end method
