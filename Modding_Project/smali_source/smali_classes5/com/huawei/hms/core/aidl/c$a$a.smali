.class Lcom/huawei/hms/core/aidl/c$a$a;
.super Ljava/lang/Object;
.source "IAIDLCallback.java"

# interfaces
.implements Lcom/huawei/hms/core/aidl/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/core/aidl/c$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/huawei/hms/core/aidl/c$a$a;->a:Landroid/os/IBinder;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/core/aidl/c$a$a;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object v0
.end method

.method public call(Lcom/huawei/hms/core/aidl/DataBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "com.huawei.hms.core.aidl.IAIDLCallback"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v0, p1, v1}, Lcom/huawei/hms/core/aidl/c$b;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/huawei/hms/core/aidl/c$a$a;->a:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-interface {p1, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 27
    .line 28
    .line 29
    throw p1
.end method
