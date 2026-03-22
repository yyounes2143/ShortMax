.class public abstract Landroid/support/customtabs/ICustomTabsCallback$Stub;
.super Landroid/os/Binder;
.source "ICustomTabsCallback.java"

# interfaces
.implements Landroid/support/customtabs/ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/customtabs/ICustomTabsCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/ICustomTabsCallback$Stub$a;
    }
.end annotation


# static fields
.field static final TRANSACTION_extraCallback:I = 0x3

.field static final TRANSACTION_extraCallbackWithResult:I = 0x7

.field static final TRANSACTION_onActivityLayout:I = 0xa

.field static final TRANSACTION_onActivityResized:I = 0x8

.field static final TRANSACTION_onMessageChannelReady:I = 0x4

.field static final TRANSACTION_onMinimized:I = 0xb

.field static final TRANSACTION_onNavigationEvent:I = 0x2

.field static final TRANSACTION_onPostMessage:I = 0x5

.field static final TRANSACTION_onRelationshipValidationResult:I = 0x6

.field static final TRANSACTION_onUnminimized:I = 0xc

.field static final TRANSACTION_onWarmupCompleted:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/support/customtabs/ICustomTabsCallback;->t8:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/support/customtabs/ICustomTabsCallback;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    sget-object v0, Landroid/support/customtabs/ICustomTabsCallback;->t8:Ljava/lang/String;

    .line 6
    .line 7
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    instance-of v1, v0, Landroid/support/customtabs/ICustomTabsCallback;

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    check-cast v0, Landroid/support/customtabs/ICustomTabsCallback;

    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_1
    new-instance v0, Landroid/support/customtabs/ICustomTabsCallback$Stub$a;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Landroid/support/customtabs/ICustomTabsCallback$Stub$a;-><init>(Landroid/os/IBinder;)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    sget-object v0, Landroid/support/customtabs/ICustomTabsCallback;->t8:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-lt p1, v1, :cond_0

    .line 5
    .line 6
    const v2, 0xffffff

    .line 7
    .line 8
    .line 9
    if-gt p1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    const v2, 0x5f4e5446

    .line 15
    .line 16
    .line 17
    if-ne p1, v2, :cond_1

    .line 18
    .line 19
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    return p1

    .line 31
    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    .line 33
    invoke-static {p2, p1}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Landroid/os/Bundle;

    .line 38
    .line 39
    invoke-interface {p0, p1}, Landroid/support/customtabs/ICustomTabsCallback;->onUnminimized(Landroid/os/Bundle;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_1

    .line 43
    .line 44
    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    invoke-static {p2, p1}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-interface {p0, p1}, Landroid/support/customtabs/ICustomTabsCallback;->onMinimized(Landroid/os/Bundle;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_1

    .line 56
    .line 57
    :pswitch_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 70
    .line 71
    .line 72
    move-result v6

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 78
    .line 79
    invoke-static {p2, p1}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    move-object v8, p1

    .line 84
    check-cast v8, Landroid/os/Bundle;

    .line 85
    .line 86
    move-object v2, p0

    .line 87
    invoke-interface/range {v2 .. v8}, Landroid/support/customtabs/ICustomTabsCallback;->onActivityLayout(IIIIILandroid/os/Bundle;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_1

    .line 91
    .line 92
    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 93
    .line 94
    invoke-static {p2, p1}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/os/Bundle;

    .line 99
    .line 100
    invoke-interface {p0, p1}, Landroid/support/customtabs/ICustomTabsCallback;->onWarmupCompleted(Landroid/os/Bundle;)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_1

    .line 104
    .line 105
    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result p3

    .line 113
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 114
    .line 115
    invoke-static {p2, p4}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object p2

    .line 119
    check-cast p2, Landroid/os/Bundle;

    .line 120
    .line 121
    invoke-interface {p0, p1, p3, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onActivityResized(IILandroid/os/Bundle;)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_1

    .line 125
    .line 126
    :pswitch_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 131
    .line 132
    invoke-static {p2, p4}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object p2

    .line 136
    check-cast p2, Landroid/os/Bundle;

    .line 137
    .line 138
    invoke-interface {p0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->extraCallbackWithResult(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    .line 144
    .line 145
    invoke-static {p3, p1, v1}, Landroid/support/customtabs/ICustomTabsCallback$a;->b(Landroid/os/Parcel;Landroid/os/Parcelable;I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    sget-object p3, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-static {p2, p3}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p3

    .line 159
    check-cast p3, Landroid/net/Uri;

    .line 160
    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 162
    .line 163
    .line 164
    move-result p4

    .line 165
    if-eqz p4, :cond_2

    .line 166
    .line 167
    move p4, v1

    .line 168
    goto :goto_0

    .line 169
    :cond_2
    const/4 p4, 0x0

    .line 170
    :goto_0
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 171
    .line 172
    invoke-static {p2, v0}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object p2

    .line 176
    check-cast p2, Landroid/os/Bundle;

    .line 177
    .line 178
    invoke-interface {p0, p1, p3, p4, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onRelationshipValidationResult(ILandroid/net/Uri;ZLandroid/os/Bundle;)V

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    sget-object p4, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 187
    .line 188
    invoke-static {p2, p4}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p2

    .line 192
    check-cast p2, Landroid/os/Bundle;

    .line 193
    .line 194
    invoke-interface {p0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onPostMessage(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    .line 199
    .line 200
    goto :goto_1

    .line 201
    :pswitch_8
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 202
    .line 203
    invoke-static {p2, p1}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Landroid/os/Bundle;

    .line 208
    .line 209
    invoke-interface {p0, p1}, Landroid/support/customtabs/ICustomTabsCallback;->onMessageChannelReady(Landroid/os/Bundle;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    .line 214
    .line 215
    goto :goto_1

    .line 216
    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 221
    .line 222
    invoke-static {p2, p3}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object p2

    .line 226
    check-cast p2, Landroid/os/Bundle;

    .line 227
    .line 228
    invoke-interface {p0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->extraCallback(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :pswitch_a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    sget-object p3, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 237
    .line 238
    invoke-static {p2, p3}, Landroid/support/customtabs/ICustomTabsCallback$a;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object p2

    .line 242
    check-cast p2, Landroid/os/Bundle;

    .line 243
    .line 244
    invoke-interface {p0, p1, p2}, Landroid/support/customtabs/ICustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 245
    .line 246
    .line 247
    :goto_1
    return v1

    .line 248
    nop

    .line 249
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
