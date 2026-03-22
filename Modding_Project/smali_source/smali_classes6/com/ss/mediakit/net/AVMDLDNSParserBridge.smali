.class public Lcom/ss/mediakit/net/AVMDLDNSParserBridge;
.super Ljava/lang/Object;
.source "AVMDLDNSParserBridge.java"

# interfaces
.implements Lcom/ss/mediakit/net/AVMDLDNSParserListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AVMDLDNSParserBridge"

.field private static v2Usable:Z = true


# instance fields
.field private handle:J

.field public host:Ljava/lang/String;

.field ipList:Ljava/lang/String;

.field isFinish:Z

.field private lock:Ljava/util/concurrent/locks/Lock;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->ipList:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 16
    .line 17
    const-wide/16 v0, 0x0

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J

    .line 20
    .line 21
    return-void
.end method

.method private static native _notifyParserResult(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
.end method

.method private static native _notifyParserResultV2(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
.end method

.method private parserResult(JLjava/lang/String;II)I
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v10, p3

    move/from16 v11, p5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----start parse host:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",preferDNSType:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v12, "AVMDLDNSParserBridge"

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "****end parse fail for host:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0

    .line 4
    :cond_0
    iget-object v0, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    move-wide/from16 v2, p1

    .line 5
    iput-wide v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 6
    :try_start_0
    iput-object v10, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->host:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/ss/mediakit/net/IPCache;->get(Ljava/lang/String;)Lcom/ss/mediakit/net/AVMDLDNSInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 8
    iget-object v2, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mIpList:Ljava/lang/String;

    iput-object v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->ipList:Ljava/lang/String;

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 10
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "get result from cache expiredT:%d curT:%d "

    iget-wide v6, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mExpiredTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-wide v5, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mExpiredTime:J

    cmp-long v2, v5, v2

    if-gtz v2, :cond_1

    .line 12
    const-string v2, "cache has expired need try call but not need listener"

    new-array v3, v14, [Ljava/lang/Object;

    invoke-static {v4, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    if-ltz v11, :cond_3

    if-ltz v11, :cond_2

    .line 13
    iget v2, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mType:I
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v11, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    move/from16 v16, v13

    goto :goto_2

    :cond_3
    :goto_1
    move/from16 v16, v14

    .line 14
    :goto_2
    :try_start_1
    iget-wide v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cache iplist, host = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " iplist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mIpList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v2, p4

    if-ne v2, v13, :cond_4

    .line 16
    sput-boolean v14, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    .line 17
    iget-wide v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J

    iget-object v5, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->ipList:Ljava/lang/String;

    iget-wide v6, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mExpiredTime:J

    const/4 v8, 0x0

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v8}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->_notifyParserResult(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_3

    :catch_1
    move-exception v0

    move/from16 v13, v16

    goto :goto_5

    .line 18
    :cond_4
    sput-boolean v13, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    .line 19
    iget-wide v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J

    iget-object v5, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->ipList:Ljava/lang/String;

    iget-wide v6, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mExpiredTime:J

    iget v9, v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mType:I

    const/4 v8, 0x0

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v9}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->_notifyParserResultV2(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    :goto_3
    move v14, v13

    move/from16 v13, v16

    goto :goto_4

    .line 20
    :cond_6
    :try_start_2
    const-string v0, "not get result from cache, need this listener"

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v1

    .line 21
    :cond_7
    :goto_4
    iget-object v0, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_6

    .line 22
    :goto_5
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    sget-boolean v0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    if-eqz v0, :cond_7

    .line 24
    sput-boolean v14, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :goto_6
    if-eqz v13, :cond_8

    .line 25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "call add host to parser listener:%s"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getInstance()Lcom/ss/mediakit/net/AVMDLDNSParser;

    move-result-object v0

    invoke-virtual {v0, v10, v15, v11}, Lcom/ss/mediakit/net/AVMDLDNSParser;->addHost(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSParserListener;I)V

    goto :goto_7

    .line 27
    :cond_8
    const-string v0, "not need call add host to parser"

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :goto_7
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "****call start end, listener:%s"

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v14

    .line 29
    :goto_8
    iget-object v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private parserResult(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;II)V
    .locals 16

    move-object/from16 v1, p0

    .line 30
    const-string v2, "AVMDLDNSParserBridge"

    iget-object v0, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v3, 0x0

    .line 31
    :try_start_0
    iget-boolean v0, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z

    if-nez v0, :cond_4

    .line 32
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "receive completion code:%d result:%s type:%d"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "null"

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x5

    .line 34
    invoke-static {v4}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getIntValue(I)I

    move-result v4

    if-ne v4, v7, :cond_1

    .line 35
    const-string v4, "pare result is null, try get backupip"

    invoke-static {v2, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    move-result-object v4

    move-object/from16 v10, p2

    invoke-virtual {v4, v10}, Lcom/ss/mediakit/net/IPCache;->getBackUpIp(Ljava/lang/String;)Lcom/ss/mediakit/net/AVMDLDNSInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 37
    iget-object v8, v4, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mIpList:Ljava/lang/String;

    .line 38
    iget v4, v4, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mType:I

    .line 39
    const-string v9, "get backup ip, result:%s type:%d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v8, v11}, [Ljava/lang/Object;

    move-result-object v11

    invoke-static {v0, v9, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v15, v4

    move-wide v12, v5

    move-object v11, v8

    goto :goto_1

    :cond_1
    move-object/from16 v10, p2

    :cond_2
    move-object/from16 v11, p3

    move-wide/from16 v12, p4

    move/from16 v15, p7

    .line 40
    :goto_1
    iput-object v11, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->ipList:Ljava/lang/String;

    .line 41
    iput-boolean v7, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z

    .line 42
    iget-wide v8, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J

    cmp-long v0, v8, v5

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    move/from16 v4, p8

    if-ne v4, v0, :cond_3

    .line 43
    sput-boolean v7, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    move-object/from16 v10, p2

    move-object/from16 v14, p6

    .line 44
    invoke-static/range {v8 .. v15}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->_notifyParserResultV2(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V

    goto :goto_2

    .line 45
    :cond_3
    sput-boolean v3, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    move-object/from16 v10, p2

    move-object/from16 v14, p6

    .line 46
    invoke-static/range {v8 .. v14}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->_notifyParserResult(JLjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    .line 47
    :cond_4
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "has finished not nedd cur completion code:%d result:%s expiredTime:%d"

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v7, p3

    filled-new-array {v5, v7, v6}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_5
    :goto_2
    iget-object v0, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_4

    .line 49
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget-boolean v0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    if-eqz v0, :cond_6

    .line 51
    sput-boolean v3, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    .line 52
    :cond_6
    iput-boolean v3, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_4
    return-void

    .line 53
    :goto_5
    iget-object v2, v1, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public getBackUp(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getIntValue(I)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/ss/mediakit/net/IPCache;->getInstance()Lcom/ss/mediakit/net/IPCache;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Lcom/ss/mediakit/net/IPCache;->getBackUpIp(Ljava/lang/String;)Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p1, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mIpList:Ljava/lang/String;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "****get backup ip result:"

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "AVMDLDNSParserBridge"

    .line 41
    .line 42
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p1
.end method

.method public getResult()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->ipList:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "****get result:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "AVMDLDNSParserBridge"

    .line 31
    .line 32
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method isFinish()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z

    .line 2
    .line 3
    return v0
.end method

.method public onCompletion(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)V
    .locals 10

    .line 1
    move-object v9, p0

    .line 2
    iget-boolean v0, v9, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget-boolean v0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v8, 0x2

    .line 11
    move-object v0, p0

    .line 12
    move v1, p1

    .line 13
    move-object v2, p2

    .line 14
    move-object v3, p3

    .line 15
    move-wide v4, p4

    .line 16
    move-object/from16 v6, p6

    .line 17
    .line 18
    move/from16 v7, p7

    .line 19
    .line 20
    invoke-direct/range {v0 .. v8}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->parserResult(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;II)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-boolean v0, v9, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->isFinish:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    move-object v0, p0

    .line 29
    move v1, p1

    .line 30
    move-object v2, p2

    .line 31
    move-object v3, p3

    .line 32
    move-wide v4, p4

    .line 33
    move-object/from16 v6, p6

    .line 34
    .line 35
    move/from16 v7, p7

    .line 36
    .line 37
    invoke-direct/range {v0 .. v8}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->parserResult(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;II)V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const-string v1, "----start release:%s"

    .line 4
    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "AVMDLDNSParserBridge"

    .line 14
    .line 15
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 21
    .line 22
    .line 23
    const-wide/16 v3, 0x0

    .line 24
    .line 25
    :try_start_0
    iput-wide v3, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->host:Ljava/lang/String;

    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v3, "remove host:%s"

    .line 39
    .line 40
    invoke-static {v0, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getInstance()Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->host:Ljava/lang/String;

    .line 52
    .line 53
    invoke-virtual {v1, v3, p0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->removeHost(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLDNSParserListener;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "****end call release:%s"

    .line 57
    .line 58
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :catchall_0
    move-exception v0

    .line 71
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->lock:Ljava/util/concurrent/locks/Lock;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 74
    .line 75
    .line 76
    throw v0
.end method

.method public start(JLjava/lang/String;)I
    .locals 7

    .line 1
    sget-boolean v0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->parserResult(JLjava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    const/4 v5, 0x1

    const/4 v6, -0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->parserResult(JLjava/lang/String;II)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public start(JLjava/lang/String;I)I
    .locals 7

    .line 4
    sget-boolean v0, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->v2Usable:Z

    if-eqz v0, :cond_0

    const/4 v5, 0x2

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    .line 5
    invoke-direct/range {v1 .. v6}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->parserResult(JLjava/lang/String;II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-gtz v0, :cond_1

    const/4 v5, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move v6, p4

    .line 6
    invoke-direct/range {v1 .. v6}, Lcom/ss/mediakit/net/AVMDLDNSParserBridge;->parserResult(JLjava/lang/String;II)I

    move-result p1

    return p1

    :cond_1
    return v0
.end method

.method public triggerRefresh(JLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSParser;->getInstance()Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p3, p4}, Lcom/ss/mediakit/net/AVMDLDNSParser;->postDNSInfoRefreshMsg(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
