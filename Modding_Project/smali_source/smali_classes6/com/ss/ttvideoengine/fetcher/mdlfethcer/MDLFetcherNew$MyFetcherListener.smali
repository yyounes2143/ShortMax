.class Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;
.super Ljava/lang/Object;
.source "MDLFetcherNew.java"

# interfaces
.implements Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyFetcherListener"
.end annotation


# instance fields
.field private final mFetcherRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onCompletion model "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", error "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "MDLFetcherNew"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;

    .line 38
    .line 39
    if-nez v0, :cond_0

    .line 40
    .line 41
    const-string p1, "onCompletion but fetcher is null"

    .line 42
    .line 43
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const/4 v2, 0x1

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-static {v0, p2, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$100(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    const-string p2, "kTTVideoErrorDomainMDLRetry"

    .line 55
    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 59
    .line 60
    const/16 v1, -0x270d

    .line 61
    .line 62
    const-string v3, "fetch empty"

    .line 63
    .line 64
    invoke-direct {p1, p2, v1, v3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-static {v0, p1, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$100(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_2
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$300(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {v0, p1, v3}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$400(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    invoke-static {v0, v3}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$202(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;[Ljava/lang/String;)[Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v4, "onCompletion newUrls "

    .line 88
    .line 89
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$200(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$200(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)[Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    if-eqz v3, :cond_5

    .line 115
    .line 116
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$200(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)[Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    array-length v3, v3

    .line 121
    if-nez v3, :cond_3

    .line 122
    .line 123
    goto :goto_1

    .line 124
    :cond_3
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$200(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)[Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$500(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v3

    .line 132
    invoke-static {v1, v3}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$600([Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-eqz v1, :cond_4

    .line 137
    .line 138
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$800(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$700(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$300(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$200(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)[Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    const/4 v5, 0x0

    .line 155
    invoke-interface {p2, v5, v1, v3, v4}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    invoke-static {v0, p1, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$900(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/model/VideoModel;Z)V

    .line 159
    .line 160
    .line 161
    goto :goto_0

    .line 162
    :cond_4
    new-instance p1, Lcom/ss/ttvideoengine/utils/Error;

    .line 163
    .line 164
    const/16 v1, -0x2714

    .line 165
    .line 166
    const-string v3, "fetch videoModel is expired"

    .line 167
    .line 168
    invoke-direct {p1, p2, v1, v3}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 169
    .line 170
    .line 171
    invoke-static {v0, p1, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$100(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 172
    .line 173
    .line 174
    :goto_0
    return-void

    .line 175
    :cond_5
    :goto_1
    new-instance v3, Lcom/ss/ttvideoengine/utils/Error;

    .line 176
    .line 177
    const/16 v4, -0x2713

    .line 178
    .line 179
    const-string v5, "file hash invalid"

    .line 180
    .line 181
    invoke-direct {v3, p2, v4, v5}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 182
    .line 183
    .line 184
    invoke-static {v0, v3, v2}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$100(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/model/VideoModel;->getMediaInfo()Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-eqz p1, :cond_6

    .line 192
    .line 193
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    const-string p2, "new video model: %s"

    .line 202
    .line 203
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_6
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$000(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$000(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->onLog(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$000(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$000(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;)Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-interface {v0, p1}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherListener;->onRetry(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method public onStatusException(ILjava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "MDLFetcherNew"

    .line 12
    .line 13
    const-string p2, "onStatusException but fetcher is null"

    .line 14
    .line 15
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance v1, Lcom/ss/ttvideoengine/utils/Error;

    .line 20
    .line 21
    const-string v2, "kTTVideoErrorDomainMDLRetry"

    .line 22
    .line 23
    const/16 v3, -0x2715

    .line 24
    .line 25
    invoke-direct {v1, v2, v3, p1, p2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    invoke-static {v0, v1, p1}, Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;->access$100(Lcom/ss/ttvideoengine/fetcher/mdlfethcer/MDLFetcherNew;Lcom/ss/ttvideoengine/utils/Error;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
