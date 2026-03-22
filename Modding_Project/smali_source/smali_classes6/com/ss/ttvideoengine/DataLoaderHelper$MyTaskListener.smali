.class Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;
.super Ljava/lang/Object;
.source "DataLoaderHelper.java"

# interfaces
.implements Lcom/ss/ttvideoengine/DataLoaderHelper$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/DataLoaderHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTaskListener"
.end annotation


# instance fields
.field private final mDataLoader:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/DataLoaderHelper;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;->this$0:Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;->mDataLoader:Ljava/lang/ref/WeakReference;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public taskFinished(Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DataLoaderHelper$MyTaskListener;->mDataLoader:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/DataLoaderHelper;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    if-nez p1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 16
    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    new-instance v1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 26
    .line 27
    const/4 v2, 0x4

    .line 28
    invoke-direct {v1, v2}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 29
    .line 30
    .line 31
    iget-object v2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 32
    .line 33
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 34
    .line 35
    iput-object v2, v1, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->fetchVideoModel:Lcom/ss/ttvideoengine/model/VideoModel;

    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2, v1}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 45
    .line 46
    if-eqz v1, :cond_2

    .line 47
    .line 48
    iget-object v1, v1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 49
    .line 50
    iput-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 51
    .line 52
    :cond_2
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 53
    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getFetchEndListener()Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    if-eqz v1, :cond_3

    .line 61
    .line 62
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getFetchEndListener()Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget-object v2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 69
    .line 70
    check-cast v2, Lcom/ss/ttvideoengine/model/VideoModel;

    .line 71
    .line 72
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 73
    .line 74
    invoke-interface {v1, v2, v3}, Lcom/ss/ttvideoengine/PreloaderVidItemFetchListener;->fetchEnd(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 80
    .line 81
    iput-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 82
    .line 83
    :cond_3
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mURLItem:Lcom/ss/ttvideoengine/PreloaderURLItem;

    .line 84
    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    iget-object v1, v1, Lcom/ss/ttvideoengine/PreloaderURLItem;->mAdapter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;

    .line 88
    .line 89
    if-eqz v1, :cond_4

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->isFetchSmartUrl()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_4

    .line 96
    .line 97
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 98
    .line 99
    invoke-static {v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->findTargetResolution(Lcom/ss/ttvideoengine/model/IVideoModel;)Lcom/ss/ttvideoengine/Resolution;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 104
    .line 105
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$700(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 106
    .line 107
    .line 108
    :cond_4
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 109
    .line 110
    if-eqz v1, :cond_5

    .line 111
    .line 112
    iget-object v2, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseData:Lcom/ss/ttvideoengine/model/IVideoModel;

    .line 113
    .line 114
    iget-object v1, v1, Lcom/ss/ttvideoengine/PreloaderVidItem;->mResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 115
    .line 116
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/selector/BestResolution;->findDefaultResolution(Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/Resolution;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iput-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mSetResolution:Lcom/ss/ttvideoengine/Resolution;

    .line 121
    .line 122
    :cond_5
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVidItem:Lcom/ss/ttvideoengine/PreloaderVidItem;

    .line 123
    .line 124
    if-eqz v1, :cond_6

    .line 125
    .line 126
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/PreloaderVidItem;->getOnlyFetchVideoModel()Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-nez v1, :cond_6

    .line 131
    .line 132
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$700(Lcom/ss/ttvideoengine/DataLoaderHelper;Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;)V

    .line 133
    .line 134
    .line 135
    :cond_6
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 136
    .line 137
    if-eqz v1, :cond_8

    .line 138
    .line 139
    invoke-static {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$400(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    invoke-static {v0}, Lcom/ss/ttvideoengine/DataLoaderHelper;->access$400(Lcom/ss/ttvideoengine/DataLoaderHelper;)Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mVideoId:Ljava/lang/String;

    .line 150
    .line 151
    const/4 v2, 0x1

    .line 152
    iget-object v3, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 153
    .line 154
    invoke-virtual {v0, v1, v2, v3}, Lcom/ss/ttvideoengine/DataLoaderListenerWrapper;->dataLoaderError(Ljava/lang/String;ILcom/ss/ttvideoengine/utils/Error;)V

    .line 155
    .line 156
    .line 157
    :cond_7
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    if-eqz v0, :cond_8

    .line 162
    .line 163
    new-instance v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;

    .line 164
    .line 165
    const/4 v1, 0x3

    .line 166
    invoke-direct {v0, v1}, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;-><init>(I)V

    .line 167
    .line 168
    .line 169
    iget-object v1, p1, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->mResponseError:Lcom/ss/ttvideoengine/utils/Error;

    .line 170
    .line 171
    iput-object v1, v0, Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;->preloadError:Lcom/ss/ttvideoengine/utils/Error;

    .line 172
    .line 173
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/DataLoaderHelper$DataLoaderTaskItem;->getCallBackListener()Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-interface {p1, v0}, Lcom/ss/ttvideoengine/IPreLoaderItemCallBackListener;->preloadItemInfo(Lcom/ss/ttvideoengine/PreLoaderItemCallBackInfo;)V

    .line 178
    .line 179
    .line 180
    :cond_8
    return-void
.end method
