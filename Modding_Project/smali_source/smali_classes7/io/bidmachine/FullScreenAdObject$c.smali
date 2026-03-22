.class final Lio/bidmachine/FullScreenAdObject$c;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "FullScreenAdObject.java"

# interfaces
.implements Lxq/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/AdProcessCallback;)V
    .locals 0
    .param p1    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processFinished()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdClosed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processClosed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onAdLoaded()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 2
    .line 3
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
