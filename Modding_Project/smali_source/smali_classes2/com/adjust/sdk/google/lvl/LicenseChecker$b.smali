.class Lcom/adjust/sdk/google/lvl/LicenseChecker$b;
.super Landroid/os/Binder;
.source "LicenseChecker.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/google/lvl/LicenseChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/adjust/sdk/google/lvl/LicenseChecker;


# direct methods
.method constructor <init>(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.android.vending.licensing.ILicenseResultListener"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method protected onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    const v0, 0x5f4e5446

    .line 2
    .line 3
    .line 4
    const-string v1, "com.android.vending.licensing.ILicenseResultListener"

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    if-ne p1, v0, :cond_1

    .line 8
    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return v2

    .line 15
    :cond_1
    if-ne p1, v2, :cond_3

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    iget-object p4, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 33
    .line 34
    invoke-static {p4}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "LVL received license response: "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const/4 v1, 0x0

    .line 56
    new-array v3, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-interface {p4, v0, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    new-instance p4, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$500(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v3, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 70
    .line 71
    invoke-static {v3}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    const/4 v4, 0x3

    .line 76
    invoke-direct {p4, v0, v3, v4}, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;-><init>(Lcom/adjust/sdk/google/lvl/LicenseRawCallback;Lcom/adjust/sdk/ILogger;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$300(Lcom/adjust/sdk/google/lvl/LicenseChecker;)I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    invoke-virtual {p4, p1, p3, p2, v0}, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->handleResponse(ILjava/lang/String;Ljava/lang/String;I)Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$308(Lcom/adjust/sdk/google/lvl/LicenseChecker;)I

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    const-string p3, "LVL retrying license check... Attempt: "

    .line 108
    .line 109
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object p3, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 113
    .line 114
    invoke-static {p3}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$300(Lcom/adjust/sdk/google/lvl/LicenseChecker;)I

    .line 115
    .line 116
    .line 117
    move-result p3

    .line 118
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    new-array p3, v1, [Ljava/lang/Object;

    .line 126
    .line 127
    invoke-interface {p1, p2, p3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$400(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :catch_0
    move-exception p1

    .line 137
    goto :goto_1

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    :goto_0
    return v2

    .line 144
    :goto_1
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 145
    .line 146
    invoke-static {p2}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;

    .line 147
    .line 148
    .line 149
    move-result-object p2

    .line 150
    const-string p3, "LVL failed to process license response: "

    .line 151
    .line 152
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    invoke-interface {p2, p3, p1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 160
    .line 161
    invoke-static {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->access$500(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const/4 p2, -0x1

    .line 166
    invoke-interface {p1, p2}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;->a:Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 170
    .line 171
    invoke-virtual {p1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->onDestroy()V

    .line 172
    .line 173
    .line 174
    return v2

    .line 175
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    return p1
.end method
