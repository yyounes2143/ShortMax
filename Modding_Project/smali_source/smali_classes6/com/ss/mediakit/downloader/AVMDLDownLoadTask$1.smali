.class Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;
.super Ljava/lang/Object;
.source "AVMDLDownLoadTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->open(JLjava/lang/Object;Ljava/lang/Object;III)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;


# direct methods
.method constructor <init>(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "request start:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$000(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    aget-object v1, v1, v2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$000(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iget-object v0, v0, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 38
    .line 39
    aget-object v0, v0, v2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const-string/jumbo v0, "url is null"

    .line 43
    .line 44
    .line 45
    :goto_0
    const-string v1, "AVMDLDownLoadTask"

    .line 46
    .line 47
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    new-instance v0, Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 51
    .line 52
    iget-object v3, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 53
    .line 54
    invoke-static {v3}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$000(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    const/4 v4, 0x0

    .line 59
    invoke-direct {v0, v3, v4, v4}, Lcom/ss/mediakit/downloader/AVMDLResponse;-><init>(Lcom/ss/mediakit/downloader/AVMDLRequest;Lokhttp3/Response;Lokhttp3/Call;)V

    .line 60
    .line 61
    .line 62
    const v3, 0x8000

    .line 63
    .line 64
    .line 65
    new-array v3, v3, [B

    .line 66
    .line 67
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 68
    .line 69
    invoke-static {v4}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$100(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_7

    .line 74
    .line 75
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 76
    .line 77
    invoke-static {v4}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$200(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    const/4 v5, 0x1

    .line 82
    if-eqz v4, :cond_4

    .line 83
    .line 84
    if-eq v4, v5, :cond_2

    .line 85
    .line 86
    goto :goto_1

    .line 87
    :cond_2
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 88
    .line 89
    invoke-static {v4, v0, v3}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$400(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;Lcom/ss/mediakit/downloader/AVMDLResponse;[B)Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/ss/mediakit/downloader/AVMDLResponse;->isReadSuccessful()Z

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    if-nez v4, :cond_3

    .line 98
    .line 99
    const-string v4, "read fail try http open"

    .line 100
    .line 101
    invoke-static {v1, v4}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 105
    .line 106
    invoke-static {v4, v2}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$202(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;I)I

    .line 107
    .line 108
    .line 109
    goto :goto_1

    .line 110
    :cond_3
    invoke-virtual {v0}, Lcom/ss/mediakit/downloader/AVMDLResponse;->isFinish()Z

    .line 111
    .line 112
    .line 113
    move-result v4

    .line 114
    if-eqz v4, :cond_1

    .line 115
    .line 116
    iget-object v5, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 117
    .line 118
    iget-wide v9, v0, Lcom/ss/mediakit/downloader/AVMDLResponse;->contentlength:J

    .line 119
    .line 120
    const/4 v11, 0x0

    .line 121
    const/4 v6, 0x3

    .line 122
    const-wide/16 v7, 0x0

    .line 123
    .line 124
    invoke-virtual/range {v5 .. v11}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->notifyToNative(IJJLjava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "request is finish"

    .line 128
    .line 129
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_4
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 134
    .line 135
    iget-object v0, v0, Lcom/ss/mediakit/downloader/AVMDLResponse;->request:Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 136
    .line 137
    invoke-static {v4, v0}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$300(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;Lcom/ss/mediakit/downloader/AVMDLRequest;)Lcom/ss/mediakit/downloader/AVMDLResponse;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    if-eqz v0, :cond_6

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/ss/mediakit/downloader/AVMDLResponse;->isOpenSuccessful()Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-nez v4, :cond_5

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_5
    iget-object v4, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 151
    .line 152
    invoke-static {v4, v5}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$202(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;I)I

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    :goto_2
    iget-object v6, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 157
    .line 158
    const-wide/16 v10, 0x0

    .line 159
    .line 160
    const/4 v12, 0x0

    .line 161
    const/4 v7, 0x2

    .line 162
    const-wide/16 v8, -0x309

    .line 163
    .line 164
    invoke-virtual/range {v6 .. v12}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->notifyToNative(IJJLjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    const-string v0, "request is error http open fail"

    .line 168
    .line 169
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 176
    .line 177
    .line 178
    const-string v3, "request is interrupt end url:"

    .line 179
    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object v3, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 184
    .line 185
    invoke-static {v3}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->access$000(Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;)Lcom/ss/mediakit/downloader/AVMDLRequest;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    iget-object v3, v3, Lcom/ss/mediakit/downloader/AVMDLRequest;->urls:[Ljava/lang/String;

    .line 190
    .line 191
    aget-object v2, v3, v2

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    invoke-static {v1, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    iget-object v2, p0, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask$1;->this$0:Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;

    .line 204
    .line 205
    const-wide/16 v6, 0x0

    .line 206
    .line 207
    const/4 v8, 0x0

    .line 208
    const/4 v3, 0x5

    .line 209
    const-wide/16 v4, 0x0

    .line 210
    .line 211
    invoke-virtual/range {v2 .. v8}, Lcom/ss/mediakit/downloader/AVMDLDownLoadTask;->notifyToNative(IJJLjava/lang/String;)V

    .line 212
    .line 213
    .line 214
    return-void
.end method
