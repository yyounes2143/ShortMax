.class public Lcom/ss/ttvideoengine/utils/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final NTP_LEAP_NOSYNC:I = 0x3

.field private static final NTP_MODE_BROADCAST:I = 0x5

.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_MODE_SERVER:I = 0x4

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_STRATUM_DEATH:I = 0x0

.field private static final NTP_STRATUM_MAX:I = 0xf

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static checkValidServerReply(BBIJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    if-eq p0, v0, :cond_4

    .line 3
    .line 4
    const/4 p0, 0x4

    .line 5
    if-eq p1, p0, :cond_1

    .line 6
    .line 7
    const/4 p0, 0x5

    .line 8
    if-ne p1, p0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;

    .line 12
    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string/jumbo p3, "untrusted mode: "

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p0

    .line 35
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 36
    .line 37
    const/16 p0, 0xf

    .line 38
    .line 39
    if-gt p2, p0, :cond_3

    .line 40
    .line 41
    const-wide/16 p0, 0x0

    .line 42
    .line 43
    cmp-long p0, p3, p0

    .line 44
    .line 45
    if-eqz p0, :cond_2

    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    new-instance p0, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;

    .line 49
    .line 50
    const-string/jumbo p1, "zero transmitTime"

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_3
    new-instance p0, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;

    .line 58
    .line 59
    new-instance p1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string/jumbo p3, "untrusted stratum: "

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    throw p0

    .line 81
    :cond_4
    new-instance p0, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;

    .line 82
    .line 83
    const-string/jumbo p1, "unsynchronized server"

    .line 84
    .line 85
    .line 86
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/utils/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p0
.end method

.method private read32([BI)J
    .locals 5

    .line 1
    aget-byte v0, p1, p2

    .line 2
    .line 3
    add-int/lit8 v1, p2, 0x1

    .line 4
    .line 5
    aget-byte v1, p1, v1

    .line 6
    .line 7
    add-int/lit8 v2, p2, 0x2

    .line 8
    .line 9
    aget-byte v2, p1, v2

    .line 10
    .line 11
    add-int/lit8 p2, p2, 0x3

    .line 12
    .line 13
    aget-byte p1, p1, p2

    .line 14
    .line 15
    and-int/lit16 p2, v0, 0x80

    .line 16
    .line 17
    const/16 v3, 0x80

    .line 18
    .line 19
    if-ne p2, v3, :cond_0

    .line 20
    .line 21
    and-int/lit8 p2, v0, 0x7f

    .line 22
    .line 23
    add-int/lit16 v0, p2, 0x80

    .line 24
    .line 25
    :cond_0
    and-int/lit16 p2, v1, 0x80

    .line 26
    .line 27
    if-ne p2, v3, :cond_1

    .line 28
    .line 29
    and-int/lit8 p2, v1, 0x7f

    .line 30
    .line 31
    add-int/lit16 v1, p2, 0x80

    .line 32
    .line 33
    :cond_1
    and-int/lit16 p2, v2, 0x80

    .line 34
    .line 35
    if-ne p2, v3, :cond_2

    .line 36
    .line 37
    and-int/lit8 p2, v2, 0x7f

    .line 38
    .line 39
    add-int/lit16 v2, p2, 0x80

    .line 40
    .line 41
    :cond_2
    and-int/lit16 p2, p1, 0x80

    .line 42
    .line 43
    if-ne p2, v3, :cond_3

    .line 44
    .line 45
    and-int/lit8 p1, p1, 0x7f

    .line 46
    .line 47
    add-int/2addr p1, v3

    .line 48
    :cond_3
    int-to-long v3, v0

    .line 49
    const/16 p2, 0x18

    .line 50
    .line 51
    shl-long/2addr v3, p2

    .line 52
    int-to-long v0, v1

    .line 53
    const/16 p2, 0x10

    .line 54
    .line 55
    shl-long/2addr v0, p2

    .line 56
    add-long/2addr v3, v0

    .line 57
    int-to-long v0, v2

    .line 58
    const/16 p2, 0x8

    .line 59
    .line 60
    shl-long/2addr v0, p2

    .line 61
    add-long/2addr v3, v0

    .line 62
    int-to-long p1, p1

    .line 63
    add-long/2addr v3, p1

    .line 64
    return-wide v3
.end method

.method private readTimeStamp([BI)J
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/utils/SntpClient;->read32([BI)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    add-int/lit8 p2, p2, 0x4

    .line 6
    .line 7
    invoke-direct {p0, p1, p2}, Lcom/ss/ttvideoengine/utils/SntpClient;->read32([BI)J

    .line 8
    .line 9
    .line 10
    move-result-wide p1

    .line 11
    const-wide/16 v2, 0x0

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-nez v4, :cond_0

    .line 16
    .line 17
    cmp-long v4, p1, v2

    .line 18
    .line 19
    if-nez v4, :cond_0

    .line 20
    .line 21
    return-wide v2

    .line 22
    :cond_0
    const-wide v2, 0x83aa7e80L

    .line 23
    .line 24
    .line 25
    .line 26
    .line 27
    sub-long/2addr v0, v2

    .line 28
    const-wide/16 v2, 0x3e8

    .line 29
    .line 30
    mul-long/2addr v0, v2

    .line 31
    mul-long/2addr p1, v2

    .line 32
    const-wide v2, 0x100000000L

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    div-long/2addr p1, v2

    .line 38
    add-long/2addr v0, p1

    .line 39
    return-wide v0
.end method

.method private writeTimeStamp([BIJ)V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v0, p3, v0

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    add-int/lit8 p3, p2, 0x8

    .line 8
    .line 9
    const/4 p4, 0x0

    .line 10
    invoke-static {p1, p2, p3, p4}, Ljava/util/Arrays;->fill([BIIB)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const-wide/16 v0, 0x3e8

    .line 15
    .line 16
    div-long v2, p3, v0

    .line 17
    .line 18
    mul-long v4, v2, v0

    .line 19
    .line 20
    sub-long/2addr p3, v4

    .line 21
    const-wide v4, 0x83aa7e80L

    .line 22
    .line 23
    .line 24
    .line 25
    .line 26
    add-long/2addr v2, v4

    .line 27
    add-int/lit8 v4, p2, 0x1

    .line 28
    .line 29
    const/16 v5, 0x18

    .line 30
    .line 31
    shr-long v6, v2, v5

    .line 32
    .line 33
    long-to-int v6, v6

    .line 34
    int-to-byte v6, v6

    .line 35
    aput-byte v6, p1, p2

    .line 36
    .line 37
    add-int/lit8 v6, p2, 0x2

    .line 38
    .line 39
    const/16 v7, 0x10

    .line 40
    .line 41
    shr-long v8, v2, v7

    .line 42
    .line 43
    long-to-int v8, v8

    .line 44
    int-to-byte v8, v8

    .line 45
    aput-byte v8, p1, v4

    .line 46
    .line 47
    add-int/lit8 v4, p2, 0x3

    .line 48
    .line 49
    const/16 v8, 0x8

    .line 50
    .line 51
    shr-long v9, v2, v8

    .line 52
    .line 53
    long-to-int v9, v9

    .line 54
    int-to-byte v9, v9

    .line 55
    aput-byte v9, p1, v6

    .line 56
    .line 57
    add-int/lit8 v6, p2, 0x4

    .line 58
    .line 59
    long-to-int v2, v2

    .line 60
    int-to-byte v2, v2

    .line 61
    aput-byte v2, p1, v4

    .line 62
    .line 63
    const-wide v2, 0x100000000L

    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    mul-long/2addr p3, v2

    .line 69
    div-long/2addr p3, v0

    .line 70
    add-int/lit8 v0, p2, 0x5

    .line 71
    .line 72
    shr-long v1, p3, v5

    .line 73
    .line 74
    long-to-int v1, v1

    .line 75
    int-to-byte v1, v1

    .line 76
    aput-byte v1, p1, v6

    .line 77
    .line 78
    add-int/lit8 v1, p2, 0x6

    .line 79
    .line 80
    shr-long v2, p3, v7

    .line 81
    .line 82
    long-to-int v2, v2

    .line 83
    int-to-byte v2, v2

    .line 84
    aput-byte v2, p1, v0

    .line 85
    .line 86
    add-int/lit8 p2, p2, 0x7

    .line 87
    .line 88
    shr-long/2addr p3, v8

    .line 89
    long-to-int p3, p3

    .line 90
    int-to-byte p3, p3

    .line 91
    aput-byte p3, p1, v1

    .line 92
    .line 93
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 94
    .line 95
    .line 96
    move-result-wide p3

    .line 97
    const-wide v0, 0x406fe00000000000L    # 255.0

    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    mul-double/2addr p3, v0

    .line 103
    double-to-int p3, p3

    .line 104
    int-to-byte p3, p3

    .line 105
    aput-byte p3, p1, p2

    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/utils/SntpClient;->mNtpTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/utils/SntpClient;->mNtpTimeReference:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/utils/SntpClient;->mRoundTripTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x7b

    .line 2
    invoke-virtual {p0, p1, v0, p2}, Lcom/ss/ttvideoengine/utils/SntpClient;->requestTime(Ljava/net/InetAddress;II)Z

    move-result p1

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public requestTime(Ljava/net/InetAddress;II)Z
    .locals 21

    move-object/from16 v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 4
    :try_start_0
    new-instance v4, Ljava/net/DatagramSocket;

    invoke-direct {v4}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move/from16 v0, p3

    .line 5
    :try_start_1
    invoke-virtual {v4, v0}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v0, 0x30

    .line 6
    new-array v3, v0, [B

    .line 7
    new-instance v5, Ljava/net/DatagramPacket;

    move-object/from16 v6, p1

    move/from16 v7, p2

    invoke-direct {v5, v3, v0, v6, v7}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v6, 0x1b

    .line 8
    aput-byte v6, v3, v2

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    const/16 v10, 0x28

    .line 11
    invoke-direct {v1, v3, v10, v6, v7}, Lcom/ss/ttvideoengine/utils/SntpClient;->writeTimeStamp([BIJ)V

    .line 12
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 13
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-direct {v5, v3, v0}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 14
    invoke-virtual {v4, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v8, v11, v8

    add-long/2addr v6, v8

    .line 16
    aget-byte v0, v3, v2

    shr-int/lit8 v5, v0, 0x6

    and-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    and-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    const/4 v13, 0x1

    .line 17
    aget-byte v14, v3, v13

    and-int/lit16 v14, v14, 0xff

    const/16 v15, 0x18

    .line 18
    invoke-direct {v1, v3, v15}, Lcom/ss/ttvideoengine/utils/SntpClient;->readTimeStamp([BI)J

    move-result-wide v15

    const/16 v2, 0x20

    .line 19
    invoke-direct {v1, v3, v2}, Lcom/ss/ttvideoengine/utils/SntpClient;->readTimeStamp([BI)J

    move-result-wide v17

    .line 20
    invoke-direct {v1, v3, v10}, Lcom/ss/ttvideoengine/utils/SntpClient;->readTimeStamp([BI)J

    move-result-wide v2

    .line 21
    invoke-static {v5, v0, v14, v2, v3}, Lcom/ss/ttvideoengine/utils/SntpClient;->checkValidServerReply(BBIJ)V

    sub-long v19, v2, v17

    sub-long v8, v8, v19

    sub-long v17, v17, v15

    sub-long/2addr v2, v6

    add-long v17, v17, v2

    const-wide/16 v2, 0x2

    .line 22
    div-long v2, v17, v2

    .line 23
    const-string v0, "SntpClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestTime round trip: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms, clock offset: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "ms"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-long/2addr v6, v2

    .line 24
    iput-wide v6, v1, Lcom/ss/ttvideoengine/utils/SntpClient;->mNtpTime:J

    .line 25
    iput-wide v11, v1, Lcom/ss/ttvideoengine/utils/SntpClient;->mNtpTimeReference:J

    .line 26
    iput-wide v8, v1, Lcom/ss/ttvideoengine/utils/SntpClient;->mRoundTripTime:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    invoke-virtual {v4}, Ljava/net/DatagramSocket;->close()V

    return v13

    :catchall_0
    move-exception v0

    move-object v3, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v3, v4

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 28
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_0

    .line 29
    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    const/4 v2, 0x0

    return v2

    :goto_1
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    throw v0
.end method
