.class Lio/bidmachine/FullScreenAdObject$a;
.super Lio/bidmachine/FullScreenAdObject$b;
.source "FullScreenAdObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/FullScreenAdObject;


# direct methods
.method constructor <init>(Lio/bidmachine/FullScreenAdObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/FullScreenAdObject$a;->a:Lio/bidmachine/FullScreenAdObject;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdObject$b;-><init>(Lio/bidmachine/FullScreenAdObject$a;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/FullScreenAdObject$a;->a:Lio/bidmachine/FullScreenAdObject;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getProcessCallback()Lio/bidmachine/AdProcessCallback;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lio/bidmachine/AdProcessCallback;->processVisibilityTrackerImpression()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
