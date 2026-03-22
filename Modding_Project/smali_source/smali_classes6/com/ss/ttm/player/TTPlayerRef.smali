.class public Lcom/ss/ttm/player/TTPlayerRef;
.super Lcom/ss/ttm/player/ITTPlayerRef;
.source "TTPlayerRef.java"

# interfaces
.implements Lcom/ss/ttm/player/IPlayerNotifyer;


# static fields
.field private static final TAG:Ljava/lang/String; = "TTPlayerRef"

.field private static mAppPath:Ljava/lang/String; = null

.field private static mLoadErr:Ljava/lang/String; = null

.field private static mLoadSoSuccess:Z = false


# instance fields
.field private mClient:Lcom/ss/ttm/player/TTPlayerClient;

.field private mContext:Landroid/content/Context;

.field private mId:J

.field private mPlayer:Lcom/ss/ttm/player/TTPlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/ITTPlayerRef;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 5
    .line 6
    .line 7
    move-result-wide v0

    .line 8
    iput-wide v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mId:J

    .line 9
    .line 10
    iput-object p1, p0, Lcom/ss/ttm/player/TTPlayerRef;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    return-void
.end method

.method public static final declared-synchronized create(Lcom/ss/ttm/player/TTPlayerClient;Landroid/content/Context;II)Lcom/ss/ttm/player/TTPlayerRef;
    .locals 8

    .line 1
    const-class v0, Lcom/ss/ttm/player/TTPlayerRef;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/ss/ttm/player/TTPlayerRef;->mAppPath:Ljava/lang/String;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    invoke-static {p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->getAppFileCachePath(Landroid/content/Context;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    sput-object v1, Lcom/ss/ttm/player/TTPlayerRef;->mAppPath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    :try_start_1
    invoke-static {}, Lcom/ss/ttm/player/TTPlayer;->getAppPath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    sget-object v1, Lcom/ss/ttm/player/TTPlayerRef;->mAppPath:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v1}, Lcom/ss/ttm/player/TTPlayer;->setTempFileDir(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :catch_0
    move-exception v1

    .line 30
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    sput-object v1, Lcom/ss/ttm/player/TTPlayerRef;->mLoadErr:Ljava/lang/String;

    .line 35
    .line 36
    :cond_0
    :goto_0
    sget-object v1, Lcom/ss/ttm/player/TTPlayerRef;->mLoadErr:Ljava/lang/String;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    sget-boolean v1, Lcom/ss/ttm/player/TTPlayerRef;->mLoadSoSuccess:Z

    .line 41
    .line 42
    if-nez v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x1f

    .line 45
    .line 46
    const/4 v2, 0x0

    .line 47
    invoke-static {v1, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/16 v3, 0x3f7

    .line 52
    .line 53
    invoke-static {v3, v1}, Lcom/ss/ttm/player/TTPlayer;->setGlobalIntOptionForKey(II)V

    .line 54
    .line 55
    .line 56
    const/16 v1, 0x20

    .line 57
    .line 58
    invoke-static {v1, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/16 v3, 0x3f8

    .line 63
    .line 64
    invoke-static {v3, v1}, Lcom/ss/ttm/player/TTPlayer;->setGlobalIntOptionForKey(II)V

    .line 65
    .line 66
    .line 67
    const/16 v1, 0x2c

    .line 68
    .line 69
    invoke-static {v1, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    const/16 v3, 0x54c

    .line 74
    .line 75
    invoke-static {v3, v1}, Lcom/ss/ttm/player/TTPlayer;->setGlobalIntOptionForKey(II)V

    .line 76
    .line 77
    .line 78
    const/16 v1, 0x2d

    .line 79
    .line 80
    invoke-static {v1, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/16 v3, 0x54d

    .line 85
    .line 86
    invoke-static {v3, v1}, Lcom/ss/ttm/player/TTPlayer;->setGlobalIntOptionForKey(II)V

    .line 87
    .line 88
    .line 89
    const/16 v1, 0x2e

    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/ss/ttm/player/TTPlayerConfiger;->getValue(II)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    const/16 v2, 0x54e

    .line 96
    .line 97
    invoke-static {v2, v1}, Lcom/ss/ttm/player/TTPlayer;->setGlobalIntOptionForKey(II)V

    .line 98
    .line 99
    .line 100
    :cond_1
    const/4 v1, 0x1

    .line 101
    sput-boolean v1, Lcom/ss/ttm/player/TTPlayerRef;->mLoadSoSuccess:Z

    .line 102
    .line 103
    new-instance v1, Lcom/ss/ttm/player/TTPlayerRef;

    .line 104
    .line 105
    invoke-direct {v1, p1}, Lcom/ss/ttm/player/TTPlayerRef;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    iput-object p0, v1, Lcom/ss/ttm/player/TTPlayerRef;->mClient:Lcom/ss/ttm/player/TTPlayerClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 109
    .line 110
    :try_start_3
    new-instance p0, Lcom/ss/ttm/player/TTPlayer;

    .line 111
    .line 112
    iget-wide v4, v1, Lcom/ss/ttm/player/TTPlayerRef;->mId:J

    .line 113
    .line 114
    move-object v2, p0

    .line 115
    move-object v3, p1

    .line 116
    move v6, p2

    .line 117
    move v7, p3

    .line 118
    invoke-direct/range {v2 .. v7}, Lcom/ss/ttm/player/TTPlayer;-><init>(Landroid/content/Context;JII)V

    .line 119
    .line 120
    .line 121
    iput-object p0, v1, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/ss/ttm/player/TTPlayer;->setNotifyer(Lcom/ss/ttm/player/IPlayerNotifyer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 124
    .line 125
    .line 126
    monitor-exit v0

    .line 127
    return-object v1

    .line 128
    :catchall_1
    move-exception p0

    .line 129
    :try_start_4
    new-instance p1, Ljava/lang/StringBuffer;

    .line 130
    .line 131
    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    .line 133
    .line 134
    :try_start_5
    invoke-static {}, Lcom/ss/ttm/player/TTPlayerLibraryLoader;->getErrorInfo()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 138
    goto :goto_1

    .line 139
    :catchall_2
    move-exception p2

    .line 140
    :try_start_6
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object p0

    .line 148
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    .line 150
    .line 151
    const-string p0, ",player:"

    .line 152
    .line 153
    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    .line 158
    .line 159
    new-instance p0, Ljava/lang/RuntimeException;

    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_2
    new-instance p0, Ljava/lang/UnsatisfiedLinkError;

    .line 170
    .line 171
    sget-object p1, Lcom/ss/ttm/player/TTPlayerRef;->mLoadErr:Ljava/lang/String;

    .line 172
    .line 173
    invoke-direct {p0, p1}, Ljava/lang/UnsatisfiedLinkError;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :goto_2
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 178
    throw p0
.end method

.method public static setGlobalIntOptionForKey(II)V
    .locals 1

    .line 1
    const/16 v0, 0x3f7

    .line 2
    .line 3
    if-eq p0, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x3f8

    .line 6
    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    packed-switch p0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    const/16 v0, 0x2f

    .line 14
    .line 15
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :pswitch_1
    const/16 v0, 0x2e

    .line 20
    .line 21
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_2
    const/16 v0, 0x2d

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_3
    const/16 v0, 0x2c

    .line 32
    .line 33
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/16 v0, 0x20

    .line 38
    .line 39
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/16 v0, 0x1f

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcom/ss/ttm/player/TTPlayerConfiger;->setValue(II)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-boolean v0, Lcom/ss/ttm/player/TTPlayerRef;->mLoadSoSuccess:Z

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/ss/ttm/player/TTPlayer;->setGlobalIntOptionForKey(II)V

    .line 53
    .line 54
    .line 55
    :cond_2
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x54c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->close()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method protected getDoubleOption(ID)D
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->getDoubleOption(ID)D

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method protected getFloatOption(IF)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->getFloatOption(IF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getIntOption(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->getIntOption(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected getLifeId()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    const/16 v1, 0x23

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/ss/ttm/player/TTPlayer;->getIntOption(II)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public getLongOption(IJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->getLongOption(IJ)J

    .line 4
    .line 5
    .line 6
    move-result-wide p1

    .line 7
    return-wide p1
.end method

.method public getNativeObject()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->getNativePlayer()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method protected getObjectOption(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->getObjectValue(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getStringOption(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->getStringOption(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getSubtitleContent(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->getSubtitleContent(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->getTrackInfo()[Lcom/ss/ttm/player/MediaPlayer$TrackInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public handleErrorNotify(JIILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerRef;->mClient:Lcom/ss/ttm/player/TTPlayerClient;

    .line 2
    .line 3
    invoke-virtual {p1, p3, p4, p5}, Lcom/ss/ttm/player/TTPlayerClient;->onPlayLogInfo(IILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public handlePlayerNotify(JIIILjava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ss/ttm/player/TTPlayerRef;->mClient:Lcom/ss/ttm/player/TTPlayerClient;

    .line 2
    .line 3
    invoke-virtual {p1, p3, p4, p5, p6}, Lcom/ss/ttm/player/TTPlayerClient;->onPlayerNotify(IIILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method public mouseEvent(III)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->mouseEvent(III)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->pause()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prepare()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->prepare()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public prevClose()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->prevClose()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 5
    .line 6
    sget-object v1, Lcom/ss/ttm/player/TTPlayerRef;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const-string v2, "release native player start"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->release()V

    .line 14
    .line 15
    .line 16
    const-string v0, "release native player end"

    .line 17
    .line 18
    invoke-static {v1, v0}, Lcom/ss/ttm/utils/AVLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->reset()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public rotateCamera(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->rotateCamera(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->seekTo(I)V

    return-void
.end method

.method public seekTo(II)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->seekTo(II)V

    return-void
.end method

.method protected setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setABRStrategy(Lcom/ss/ttm/player/ABRStrategy;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setAIBarrageInfo(Lcom/ss/ttm/player/MaskInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setAudioProcessor(Lcom/ss/ttm/player/AudioProcessor;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setCacheFile(Ljava/lang/String;I)V
    .locals 0

    .line 1
    return-void
.end method

.method protected setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setDataSource(Lcom/ss/ttm/player/IMediaDataSource;)V

    return-void
.end method

.method public setDataSource(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setDataSource(Ljava/lang/String;)V

    return-void
.end method

.method protected setDataSourceFd(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setDataSourceFd(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setDoubleOption(ID)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->setDoubleOption(ID)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setFloatOption(IF)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setFloatOption(IF)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setFloatOptionArray([I[F)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setFloatOptionArray([I[F)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setFrameMetadataListener(Lcom/ss/ttm/player/FrameMetadataListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setIntOption(II)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setIntOption(II)I

    .line 4
    .line 5
    .line 6
    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    :goto_0
    return p1
.end method

.method public setIntOptionArray([I[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setIntOptionArray([I[I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setLoadControl(Lcom/ss/ttm/player/LoadControl;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setLoadControl(Lcom/ss/ttm/player/LoadControl;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setLongOption(IJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/ttm/player/TTPlayer;->setLongOption(IJ)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLongOptionArray([I[J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setLongOptionArray([I[J)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setLooping(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setLooping(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setMaskInfo(Lcom/ss/ttm/player/MaskInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setMediaTransport(Lcom/ss/ttm/player/MediaTransport;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setNotifyState(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setNotifyerState(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setOnScreenshotListener(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setOnScreenshotListener(Lcom/ss/ttm/player/MediaPlayer$OnScreenshotListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setStrategyParamsTransport(Lcom/ss/ttm/player/StrategyParamsTransport;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setStrategyParamsTransport(Lcom/ss/ttm/player/StrategyParamsTransport;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setStringOption(ILjava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setStringOption(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public setStringOptionArray([I[Ljava/lang/String;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setStringOptionArray([I[Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method protected setSubInfo(Lcom/ss/ttm/player/SubInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setSubInfo(Lcom/ss/ttm/player/SubInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/ttm/player/TTPlayer;->setVideoSurface(Landroid/view/Surface;)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setSurfaceTimeOut(Landroid/view/Surface;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setVideoSurfaceTimeOut(Landroid/view/Surface;I)I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setTraitObject(ILcom/ss/ttm/player/TraitObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setTraitObject(ILcom/ss/ttm/player/TraitObject;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->setVolume(FF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected setupMediaCodec()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->setupMediaCodec()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->start()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->stop()I

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public switchStream(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/ss/ttm/player/TTPlayer;->switchStream(II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public takeScreenshot()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttm/player/TTPlayerRef;->mPlayer:Lcom/ss/ttm/player/TTPlayer;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/ss/ttm/player/TTPlayer;->takeScreenshot()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
