.class Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;
.super Ljava/lang/Object;
.source "MDLFetcher.java"

# interfaces
.implements Lcom/ss/ttvideoengine/fetcher/VideoInfoFetcher$FetcherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/fetcher/MDLFetcher;
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
            "Lcom/ss/ttvideoengine/fetcher/MDLFetcher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)V
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
    iput-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ss/ttvideoengine/model/VideoModel;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 3

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
    const-string v1, "MDLFetcher"

    .line 27
    .line 28
    invoke-static {v1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;

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
    const/4 v2, 0x0

    .line 48
    if-eqz p1, :cond_4

    .line 49
    .line 50
    if-eqz p2, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$200(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {v0, p1, p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$400(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;Lcom/ss/ttvideoengine/model/VideoModel;Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {v0, p1}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$302(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;[Ljava/lang/String;)[Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string p2, "onCompletion newUrls "

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$300(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)[Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$300(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$500(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$600([Ljava/lang/String;Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_2

    .line 105
    .line 106
    const-string p1, "onCompletion success"

    .line 107
    .line 108
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    if-eqz p1, :cond_3

    .line 116
    .line 117
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$100(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$200(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$300(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)[Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/4 v2, 0x0

    .line 134
    invoke-interface {p1, v2, p2, v1, v0}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const-string p1, "onCompletion invalid"

    .line 139
    .line 140
    invoke-static {v1, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_3

    .line 148
    .line 149
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$100(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$200(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const/4 v1, -0x1

    .line 162
    invoke-interface {p1, v1, p2, v0, v2}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_0
    return-void

    .line 166
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 167
    .line 168
    iget p1, p2, Lcom/ss/ttvideoengine/utils/Error;->code:I

    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    const/16 p1, -0x270d

    .line 172
    .line 173
    :goto_2
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    if-eqz p2, :cond_6

    .line 178
    .line 179
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$100(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    invoke-static {v0}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$200(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-interface {p2, p1, v1, v0, v2}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    :cond_6
    return-void
.end method

.method public onLog(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRetry(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onStatusException(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/ss/ttvideoengine/fetcher/MDLFetcher$MyFetcherListener;->mFetcherRef:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const-string p1, "MDLFetcher"

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
    invoke-static {p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-static {p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$000(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$100(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {p2}, Lcom/ss/ttvideoengine/fetcher/MDLFetcher;->access$200(Lcom/ss/ttvideoengine/fetcher/MDLFetcher;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const/4 v2, 0x0

    .line 38
    invoke-interface {v0, p1, v1, p2, v2}, Lcom/ss/mediakit/fetcher/AVMDLURLFetcherListener;->onCompletion(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    return-void
.end method
