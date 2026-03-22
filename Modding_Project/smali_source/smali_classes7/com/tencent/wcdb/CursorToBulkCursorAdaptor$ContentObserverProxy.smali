.class final Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;
.super Landroid/database/ContentObserver;
.source "CursorToBulkCursorAdaptor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/CursorToBulkCursorAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ContentObserverProxy"
.end annotation


# instance fields
.field protected mRemote:Lcom/tencent/wcdb/IContentObserver;


# direct methods
.method public constructor <init>(Lcom/tencent/wcdb/IContentObserver;Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Lcom/tencent/wcdb/IContentObserver;

    .line 6
    .line 7
    :try_start_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    .line 14
    .line 15
    :catch_0
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Lcom/tencent/wcdb/IContentObserver;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/tencent/wcdb/IContentObserver;->onChange(ZLandroid/net/Uri;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public unlinkToDeath(Landroid/os/IBinder$DeathRecipient;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/CursorToBulkCursorAdaptor$ContentObserverProxy;->mRemote:Lcom/tencent/wcdb/IContentObserver;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
