.class public Lcom/ss/ttvideoengine/net/IPCache;
.super Ljava/lang/Object;
.source "IPCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/net/IPCache$IpInfo;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/ss/ttvideoengine/net/IPCache; = null

.field private static mNetExtraInfo:Ljava/lang/String; = null

.field private static mNetType:I = -0x1


# instance fields
.field private mIpRecord:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/net/IPCache$IpInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/net/IPCache;->mIpRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance()Lcom/ss/ttvideoengine/net/IPCache;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/net/IPCache;->mInstance:Lcom/ss/ttvideoengine/net/IPCache;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/ss/ttvideoengine/net/IPCache;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/ss/ttvideoengine/net/IPCache;->mInstance:Lcom/ss/ttvideoengine/net/IPCache;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/ss/ttvideoengine/net/IPCache;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/ss/ttvideoengine/net/IPCache;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/ss/ttvideoengine/net/IPCache;->mInstance:Lcom/ss/ttvideoengine/net/IPCache;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1

    .line 26
    :cond_1
    :goto_2
    sget-object v0, Lcom/ss/ttvideoengine/net/IPCache;->mInstance:Lcom/ss/ttvideoengine/net/IPCache;

    .line 27
    .line 28
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/IPCache;->mIpRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public get(Ljava/lang/String;)Lcom/ss/ttvideoengine/net/IPCache$IpInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/IPCache;->mIpRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/ss/ttvideoengine/net/IPCache$IpInfo;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    return-object p1
.end method

.method public getCurNetExtraInfo()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/net/IPCache;->mNetExtraInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurNetType()I
    .locals 1

    .line 1
    sget v0, Lcom/ss/ttvideoengine/net/IPCache;->mNetType:I

    .line 2
    .line 3
    return v0
.end method

.method public getRecordSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/IPCache;->mIpRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method public put(Ljava/lang/String;Lcom/ss/ttvideoengine/net/IPCache$IpInfo;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/net/IPCache;->mIpRecord:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setCurNetExtraInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p1, Lcom/ss/ttvideoengine/net/IPCache;->mNetExtraInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setCurNetType(I)V
    .locals 0

    .line 1
    sput p1, Lcom/ss/ttvideoengine/net/IPCache;->mNetType:I

    .line 2
    .line 3
    return-void
.end method
