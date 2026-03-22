.class Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/bytedance/vcloud/strategy/IPreloadTaskCallbackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPreloadTaskCallbackListener"
.end annotation


# instance fields
.field private mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public preloadItemInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    const/4 v2, 0x4

    .line 9
    const/4 v3, 0x3

    .line 10
    const/4 v4, 0x2

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    move v5, v3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v5, 0x5

    .line 16
    if-ne p1, v5, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-ne p1, v4, :cond_2

    .line 20
    .line 21
    move v5, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    if-ne p1, v0, :cond_3

    .line 24
    .line 25
    const/4 v5, 0x7

    .line 26
    goto :goto_0

    .line 27
    :cond_3
    const/4 v5, 0x6

    .line 28
    if-ne p1, v5, :cond_4

    .line 29
    .line 30
    const/16 v5, 0x9

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_4
    move v5, v4

    .line 34
    :goto_0
    new-instance p1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 35
    .line 36
    invoke-direct {p1, v5}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_6

    .line 44
    .line 45
    const-string v6, ","

    .line 46
    .line 47
    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 48
    .line 49
    .line 50
    move-result v7

    .line 51
    if-eqz v7, :cond_6

    .line 52
    .line 53
    invoke-virtual {p2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    array-length v1, p2

    .line 58
    if-lt v1, v3, :cond_7

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    aget-object v1, p2, v1

    .line 62
    .line 63
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v5

    .line 71
    aget-object v0, p2, v0

    .line 72
    .line 73
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 78
    .line 79
    .line 80
    move-result-wide v0

    .line 81
    aget-object v4, p2, v4

    .line 82
    .line 83
    array-length v7, p2

    .line 84
    if-lt v7, v2, :cond_5

    .line 85
    .line 86
    aget-object p2, p2, v3

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_5
    const-string p2, ""

    .line 90
    .line 91
    :goto_1
    new-instance v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 94
    .line 95
    invoke-direct {v2, v3}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;-><init>(Lcom/ss/ttvideoengine/DataLoaderHelper;)V

    .line 96
    .line 97
    .line 98
    iput-object v2, p1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadDataInfo:Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;

    .line 99
    .line 100
    iput-object v4, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mKey:Ljava/lang/String;

    .line 101
    .line 102
    iput-wide v5, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mCacheSizeFromZero:J

    .line 103
    .line 104
    iput-wide v0, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mMediaSize:J

    .line 105
    .line 106
    iput-object p2, v2, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskProgressInfo;->mLocalFilePath:Ljava/lang/String;

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    if-ne v5, v1, :cond_7

    .line 110
    .line 111
    iput-object p2, p1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->fileHash:Ljava/lang/String;

    .line 112
    .line 113
    :cond_7
    :goto_2
    iput-object p3, p1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->businessContext:Ljava/lang/String;

    .line 114
    .line 115
    iget-object p2, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyPreloadTaskCallbackListener;->mCallBackListener:Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 116
    .line 117
    invoke-interface {p2, p1}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    return-void
.end method
