.class public abstract Lcom/tencent/wcdb/BulkCursorNative;
.super Landroid/os/Binder;
.source "BulkCursorNative.java"

# interfaces
.implements Lcom/tencent/wcdb/IBulkCursor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "android.content.IBulkCursor"

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/wcdb/IBulkCursor;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    const-string v0, "android.content.IBulkCursor"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/tencent/wcdb/IBulkCursor;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lcom/tencent/wcdb/BulkCursorProxy;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/tencent/wcdb/BulkCursorProxy;-><init>(Landroid/os/IBinder;)V

    .line 19
    .line 20
    .line 21
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const-string v0, "android.content.IBulkCursor"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1

    .line 12
    :pswitch_0
    :try_start_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p0}, Lcom/tencent/wcdb/IBulkCursor;->close()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 19
    .line 20
    .line 21
    return v1

    .line 22
    :catch_0
    move-exception p1

    .line 23
    goto :goto_1

    .line 24
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p2, p1}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {p0, p1}, Lcom/tencent/wcdb/IBulkCursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 47
    .line 48
    .line 49
    return v1

    .line 50
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-interface {p0}, Lcom/tencent/wcdb/IBulkCursor;->getExtras()Landroid/os/Bundle;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 61
    .line 62
    .line 63
    return v1

    .line 64
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    invoke-interface {p0, p1}, Lcom/tencent/wcdb/IBulkCursor;->onMove(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {p1}, Lcom/tencent/wcdb/IContentObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/wcdb/IContentObserver;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-interface {p0, p1}, Lcom/tencent/wcdb/IBulkCursor;->requery(Lcom/tencent/wcdb/IContentObserver;)I

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    invoke-interface {p0}, Lcom/tencent/wcdb/IBulkCursor;->getExtras()Landroid/os/Bundle;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 104
    .line 105
    .line 106
    return v1

    .line 107
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-interface {p0}, Lcom/tencent/wcdb/IBulkCursor;->deactivate()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    .line 115
    .line 116
    return v1

    .line 117
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    invoke-interface {p0, p1}, Lcom/tencent/wcdb/IBulkCursor;->getWindow(I)Lcom/tencent/wcdb/CursorWindow;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    .line 130
    .line 131
    if-nez p1, :cond_0

    .line 132
    .line 133
    const/4 p1, 0x0

    .line 134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p1, p3, v1}, Lcom/tencent/wcdb/CursorWindow;->writeToParcel(Landroid/os/Parcel;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    .line 143
    .line 144
    :goto_0
    return v1

    .line 145
    :goto_1
    invoke-static {p3, p1}, Lcom/tencent/wcdb/DatabaseUtils;->writeExceptionToParcel(Landroid/os/Parcel;Ljava/lang/Exception;)V

    .line 146
    .line 147
    .line 148
    return v1

    .line 149
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
