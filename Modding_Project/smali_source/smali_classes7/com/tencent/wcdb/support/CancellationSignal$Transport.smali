.class final Lcom/tencent/wcdb/support/CancellationSignal$Transport;
.super Lcom/tencent/wcdb/support/ICancellationSignal$Stub;
.source "CancellationSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/support/CancellationSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Transport"
.end annotation


# instance fields
.field final mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/tencent/wcdb/support/ICancellationSignal$Stub;-><init>()V

    .line 2
    new-instance v0, Lcom/tencent/wcdb/support/CancellationSignal;

    invoke-direct {v0}, Lcom/tencent/wcdb/support/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/tencent/wcdb/support/CancellationSignal$Transport;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/wcdb/support/CancellationSignal$1;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tencent/wcdb/support/CancellationSignal$Transport;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/support/CancellationSignal$Transport;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/support/CancellationSignal;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
