.class public Lcom/ss/ttvideoengine/abr/SegmentInfo;
.super Ljava/lang/Object;
.source "SegmentInfo.java"

# interfaces
.implements Lcom/bytedance/vcloud/abrmodule/ISegmentInfo;


# static fields
.field private static final PLAYER_SIDX_OBJECT_NAME:Ljava/lang/String; = "com.ss.ttm.player.SidxListObject"

.field private static loadClassFailed:Z = false

.field private static sidxGetBitRate:Ljava/lang/reflect/Method;

.field private static sidxGetEndIndex:Ljava/lang/reflect/Method;

.field private static sidxGetFileId:Ljava/lang/reflect/Method;

.field private static sidxGetItem:Ljava/lang/reflect/Method;

.field private static sidxGetMediaType:Ljava/lang/reflect/Method;

.field private static sidxGetStartIndex:Ljava/lang/reflect/Method;

.field private static sidxGetTotalNum:Ljava/lang/reflect/Method;

.field private static sidxListObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private loadObjectSucceed:Z

.field private mBitrate:Ljava/lang/Long;

.field private mEndIndex:Ljava/lang/Integer;

.field private mFileId:Ljava/lang/String;

.field private mMediaType:Ljava/lang/Integer;

.field private mStartIndex:Ljava/lang/Integer;

.field private mTotalNum:Ljava/lang/Integer;

.field private playerSidxList:Ljava/lang/Object;


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
    iput-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 8
    .line 9
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-boolean v3, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadClassFailed:Z

    .line 16
    .line 17
    if-nez v3, :cond_0

    .line 18
    .line 19
    :try_start_0
    const-string p1, "com.ss.ttm.player.SidxListObject"

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
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 28
    .line 29
    const-string v3, "getMediaType"

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
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetMediaType:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 40
    .line 41
    const-string v3, "getTotalNum"

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
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetTotalNum:Ljava/lang/reflect/Method;

    .line 50
    .line 51
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 52
    .line 53
    const-string v3, "getStartIndex"

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
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetStartIndex:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 64
    .line 65
    const-string v3, "getEndIndex"

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
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetEndIndex:Ljava/lang/reflect/Method;

    .line 74
    .line 75
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 76
    .line 77
    const-string v3, "getBitrate"

    .line 78
    .line 79
    new-array v4, v0, [Ljava/lang/Class;

    .line 80
    .line 81
    invoke-virtual {p1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetBitRate:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 88
    .line 89
    const-string v3, "getFileId"

    .line 90
    .line 91
    new-array v0, v0, [Ljava/lang/Class;

    .line 92
    .line 93
    invoke-virtual {p1, v3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetFileId:Ljava/lang/reflect/Method;

    .line 98
    .line 99
    sget-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 100
    .line 101
    const-string v0, "getItem"

    .line 102
    .line 103
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 104
    .line 105
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {p1, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    sput-object p1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetItem:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    iput-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 117
    .line 118
    sput-boolean v1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadClassFailed:Z

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_0
    if-nez p1, :cond_1

    .line 122
    .line 123
    iput-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 124
    .line 125
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 126
    .line 127
    if-eqz p1, :cond_2

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxListObjectClass:Ljava/lang/Class;

    .line 134
    .line 135
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_2

    .line 140
    .line 141
    iput-boolean v1, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 142
    .line 143
    :cond_2
    return-void
.end method


# virtual methods
.method public getBitrate()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mBitrate:Ljava/lang/Long;

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
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 11
    .line 12
    const-wide/16 v1, -0x1

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetBitRate:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    iget-object v3, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mBitrate:Ljava/lang/Long;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mBitrate:Ljava/lang/Long;

    .line 43
    .line 44
    :cond_1
    :goto_0
    return-wide v1
.end method

.method public getEndIndex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mEndIndex:Ljava/lang/Integer;

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
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetEndIndex:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mEndIndex:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 v1, -0x1

    .line 37
    :cond_1
    :goto_0
    return v1
.end method

.method public getFileId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mFileId:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetFileId:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mFileId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mFileId:Ljava/lang/String;

    .line 30
    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mFileId:Ljava/lang/String;

    .line 32
    .line 33
    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/bytedance/vcloud/abrmodule/ISegmentItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-boolean v1, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetItem:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/abr/SegmentInfo;->getStartIndex()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    add-int/2addr v2, v1

    .line 20
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/abr/SegmentInfo;->getEndIndex()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-gt v2, v3, :cond_0

    .line 25
    .line 26
    sget-object v2, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetItem:Ljava/lang/reflect/Method;

    .line 27
    .line 28
    iget-object v3, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    new-instance v3, Lcom/ss/ttvideoengine/abr/SegmentItem;

    .line 43
    .line 44
    invoke-direct {v3, v2}, Lcom/ss/ttvideoengine/abr/SegmentItem;-><init>(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    add-int/lit8 v1, v1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    const/4 v0, 0x0

    .line 54
    :cond_0
    return-object v0
.end method

.method public getMediaType()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mMediaType:Ljava/lang/Integer;

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
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetMediaType:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mMediaType:Ljava/lang/Integer;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mMediaType:Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_1
    :goto_0
    return v1
.end method

.method public getStartIndex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mStartIndex:Ljava/lang/Integer;

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
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetStartIndex:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

    .line 20
    .line 21
    new-array v1, v1, [Ljava/lang/Object;

    .line 22
    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mStartIndex:Ljava/lang/Integer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    .line 33
    .line 34
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 v1, -0x1

    .line 37
    :cond_1
    :goto_0
    return v1
.end method

.method public getTotalNum()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mTotalNum:Ljava/lang/Integer;

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
    iget-boolean v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->loadObjectSucceed:Z

    .line 11
    .line 12
    const/4 v1, -0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    sget-object v0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->sidxGetTotalNum:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->playerSidxList:Ljava/lang/Object;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mTotalNum:Ljava/lang/Integer;

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
    iput-object v0, p0, Lcom/ss/ttvideoengine/abr/SegmentInfo;->mTotalNum:Ljava/lang/Integer;

    .line 42
    .line 43
    :cond_1
    :goto_0
    return v1
.end method
