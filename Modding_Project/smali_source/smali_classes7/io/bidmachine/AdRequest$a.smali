.class Lio/bidmachine/AdRequest$a;
.super Ljava/lang/Object;
.source "AdRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/AdRequest;


# direct methods
.method constructor <init>(Lio/bidmachine/AdRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

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
    .locals 3

    .line 1
    invoke-static {}, Lio/bidmachine/w0;->e()Lio/bidmachine/w0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    .line 6
    .line 7
    invoke-static {v1}, Lio/bidmachine/AdRequest;->access$000(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdRequestParameters;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Lio/bidmachine/w0;->m(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/u;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v1, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lio/bidmachine/AdRequest;->processApiRequestSuccess(Lio/bidmachine/u;)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    .line 24
    .line 25
    sget-object v1, Lfr/a;->f:Lfr/a;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/AdRequest;->processApiRequestFail(Lfr/a;Z)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lio/bidmachine/AdRequest$a;->a:Lio/bidmachine/AdRequest;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->cancel()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
