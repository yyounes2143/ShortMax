.class public Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;
.super Ljava/lang/Object;
.source "LicenseResponseHandler.java"


# static fields
.field private static final ERROR_CONTACTING_SERVER:I = 0x101

.field private static final ERROR_INVALID_PACKAGE_NAME:I = 0x102

.field private static final ERROR_NON_MATCHING_UID:I = 0x103

.field private static final ERROR_NOT_MARKET_MANAGED:I = 0x3

.field private static final ERROR_OVER_QUOTA:I = 0x5

.field private static final ERROR_SERVER_FAILURE:I = 0x4

.field private static final LICENSED:I = 0x0

.field private static final LICENSED_OLD_KEY:I = 0x2

.field private static final NOT_LICENSED:I = 0x1


# instance fields
.field private final callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

.field private final logger:Lcom/adjust/sdk/ILogger;

.field private final maxRetries:I


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/google/lvl/LicenseRawCallback;Lcom/adjust/sdk/ILogger;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 7
    .line 8
    iput p3, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->maxRetries:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleResponse(ILjava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    const/4 v1, 0x1

    .line 5
    if-eq p1, v1, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    if-eq p1, v2, :cond_3

    .line 9
    .line 10
    const/4 p2, 0x3

    .line 11
    if-eq p1, p2, :cond_2

    .line 12
    .line 13
    const/4 p2, 0x4

    .line 14
    if-eq p1, p2, :cond_0

    .line 15
    .line 16
    const/4 p2, 0x5

    .line 17
    if-eq p1, p2, :cond_0

    .line 18
    .line 19
    packed-switch p1, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p3

    .line 32
    const-string p4, "LVL unexpected response code: "

    .line 33
    .line 34
    invoke-interface {p2, p4, p3}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 38
    .line 39
    invoke-interface {p2, p1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 40
    .line 41
    .line 42
    return v0

    .line 43
    :cond_0
    :pswitch_0
    iget p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->maxRetries:I

    .line 44
    .line 45
    const-string p3, "LVL retry attempt ["

    .line 46
    .line 47
    if-ge p4, p2, :cond_1

    .line 48
    .line 49
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 50
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    add-int/2addr p4, v1

    .line 60
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string p3, "]: "

    .line 64
    .line 65
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p2, p3, p1}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    return v1

    .line 84
    :cond_1
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, "] failed after max retries: "

    .line 98
    .line 99
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p4

    .line 110
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p4

    .line 114
    invoke-interface {p2, p3, p4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 118
    .line 119
    invoke-interface {p2, p1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 120
    .line 121
    .line 122
    return v0

    .line 123
    :cond_2
    :pswitch_1
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 124
    .line 125
    new-instance p3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string p4, "LVL license check failed: "

    .line 131
    .line 132
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object p3

    .line 142
    new-array p4, v0, [Ljava/lang/Object;

    .line 143
    .line 144
    invoke-interface {p2, p3, p4}, Lcom/adjust/sdk/ILogger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 148
    .line 149
    invoke-interface {p2, p1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 150
    .line 151
    .line 152
    return v0

    .line 153
    :cond_3
    if-eqz p2, :cond_4

    .line 154
    .line 155
    if-eqz p3, :cond_4

    .line 156
    .line 157
    iget-object p4, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 158
    .line 159
    invoke-interface {p4, p1, p2, p3}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onLicenseDataReceived(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_4
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 164
    .line 165
    const-string p3, "LVL missing signed data or signature"

    .line 166
    .line 167
    new-array p4, v0, [Ljava/lang/Object;

    .line 168
    .line 169
    invoke-interface {p2, p3, p4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    .line 171
    .line 172
    iget-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseResponseHandler;->callback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 173
    .line 174
    invoke-interface {p2, p1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 175
    .line 176
    .line 177
    :goto_0
    return v0

    .line 178
    nop

    .line 179
    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
