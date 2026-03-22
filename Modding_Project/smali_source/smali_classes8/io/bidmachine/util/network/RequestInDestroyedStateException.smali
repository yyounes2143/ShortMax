.class public final Lio/bidmachine/util/network/RequestInDestroyedStateException;
.super Ljava/lang/IllegalStateException;
.source "RequestInDestroyedStateException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "Request has already been destroyed"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
