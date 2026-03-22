.class public Lcom/ss/ttvideoengine/abr/SegmentItem;
.super Ljava/lang/Object;
.source "SegmentItem.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/ISegmentItem;


# static fields
.field private static final PLAYER_SIDX_ITEM_NAME:Ljava/lang/String; = "com.ss.ttm.player.SidxListObject$SidxItem"

.field private static loadClassFailed:Z = false

.field private static sidxItemGetDuration:Ljava/lang/reflect/Method;

.field private static sidxItemGetIndex:Ljava/lang/reflect/Method;

.field private static sidxItemGetOffset:Ljava/lang/reflect/Method;

.field private static sidxItemGetSize:Ljava/lang/reflect/Method;

.field private static sidxItemGetTimeStamp:Ljava/lang/reflect/Method;

.field private static sidxItemObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private loadObjectSucceed:Z

.field private mDuration:Ljava/lang/Long;

.field private mIndex:Ljava/lang/Integer;

.field private mOffset:Ljava/lang/Long;

.field private mSize:Ljava/lang/Long;

.field private mTimeStamp:Ljava/lang/Long;

.field private playerSidxItem:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-boolean v3, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadClassFailed:Z

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    :try_start_0
    const-string p1, "com.ss.ttm.player.SidxListObject$SidxItem"

    .line 20
    .line 21
    const/16 v3, 0xc8

    .line 22
    .line 23
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 28
    .line 29
    const-string v3, "getIndex"

    .line 30
    .line 31
    new-array v4, v0, [Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetIndex:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 40
    .line 41
    const-string v3, "getOffset"

    .line 42
    .line 43
    new-array v4, v0, [Ljava/lang/Class;

    .line 44
    .line 45
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetOffset:Ljava/lang/reflect/Method;

    .line 50
    .line 51
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 52
    .line 53
    const-string v3, "getTimestamp"

    .line 54
    .line 55
    new-array v4, v0, [Ljava/lang/Class;

    .line 56
    .line 57
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetTimeStamp:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 64
    .line 65
    const-string v3, "getDuration"

    .line 66
    .line 67
    new-array v4, v0, [Ljava/lang/Class;

    .line 68
    .line 69
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetDuration:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 76
    .line 77
    const-string v3, "getSize"

    .line 78
    .line 79
    new-array v0, v0, [Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetSize:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    iput-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 89
    .line 90
    sput-boolean v1, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadClassFailed:Z

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    if-nez p1, :cond_1

    .line 94
    .line 95
    iput-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 96
    .line 97
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 98
    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemObjectClass:Ljava/lang/Class;

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    if-eqz p1, :cond_2

    .line 112
    .line 113
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 114
    .line 115
    :cond_2
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mDuration:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetDuration:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mDuration:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mDuration:Ljava/lang/Long;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getIndex()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mIndex:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetIndex:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Integer;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mIndex:Ljava/lang/Integer;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 33
    .line 34
    .line 35
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mIndex:Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_1
    :goto_0
    return v1
.end method

.method public getOffset()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mOffset:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetOffset:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mOffset:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mOffset:Ljava/lang/Long;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getSize()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mSize:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetSize:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mSize:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mSize:Ljava/lang/Long;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getTimestamp()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mTimeStamp:Ljava/lang/Long;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->loadObjectSucceed:Z

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentItem;->sidxItemGetTimeStamp:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->playerSidxItem:Ljava/lang/Object;

    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    new-array v4, v4, [Ljava/lang/Object;

    .line 24
    .line 25
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Long;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mTimeStamp:Ljava/lang/Long;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 38
    :catch_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentItem;->mTimeStamp:Ljava/lang/Long;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-wide v1
.end method
