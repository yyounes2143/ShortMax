.class Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;
.super Ljava/lang/Thread;
.source "SQLiteAsyncCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/database/SQLiteAsyncCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# instance fields
.field private mFetchPos:I

.field private mMinPos:I

.field private volatile mRequestPos:I

.field final synthetic this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 2
    .line 3
    const-string p1, "SQLiteAsyncCursor.QueryThread"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mRequestPos:I

    .line 10
    .line 11
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mMinPos:I

    .line 12
    .line 13
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method quit()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method requestPos(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mRequestPos:I

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p1
.end method

.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$000(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->getCount()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$100(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    :try_start_1
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 19
    .line 20
    invoke-static {v2, v0}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$202(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;I)I

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$100(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 30
    .line 31
    .line 32
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 33
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_5

    .line 38
    .line 39
    monitor-enter p0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 40
    :goto_1
    :try_start_3
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mRequestPos:I

    .line 41
    .line 42
    add-int/lit16 v0, v0, 0x100

    .line 43
    .line 44
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 45
    .line 46
    if-gt v0, v1, :cond_1

    .line 47
    .line 48
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mRequestPos:I

    .line 49
    .line 50
    iget v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mMinPos:I

    .line 51
    .line 52
    if-lt v0, v1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception v0

    .line 59
    goto/16 :goto_5

    .line 60
    .line 61
    :cond_1
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mRequestPos:I

    .line 62
    .line 63
    add-int/lit16 v1, v0, 0x100

    .line 64
    .line 65
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 66
    :try_start_4
    iget v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mMinPos:I

    .line 67
    .line 68
    if-ge v0, v2, :cond_2

    .line 69
    .line 70
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$000(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->reset()V

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    iput v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 81
    .line 82
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 83
    .line 84
    invoke-static {v3}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$300(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/ChunkedCursorWindow;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-virtual {v3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->clear()V

    .line 89
    .line 90
    .line 91
    iput v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mMinPos:I

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :catchall_1
    move-exception v0

    .line 95
    goto :goto_6

    .line 96
    :cond_2
    :goto_2
    iget v2, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 97
    .line 98
    if-ge v2, v1, :cond_0

    .line 99
    .line 100
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$300(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/ChunkedCursorWindow;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->getNumChunks()I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/16 v2, 0x20

    .line 111
    .line 112
    if-le v1, v2, :cond_3

    .line 113
    .line 114
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$300(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/ChunkedCursorWindow;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget v3, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mMinPos:I

    .line 121
    .line 122
    invoke-virtual {v1, v3}, Lcom/tencent/wcdb/database/ChunkedCursorWindow;->removeChunk(I)J

    .line 123
    .line 124
    .line 125
    move-result-wide v3

    .line 126
    const-wide/16 v5, -0x1

    .line 127
    .line 128
    cmp-long v1, v3, v5

    .line 129
    .line 130
    if-eqz v1, :cond_3

    .line 131
    .line 132
    long-to-int v1, v3

    .line 133
    iput v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mMinPos:I

    .line 134
    .line 135
    :cond_3
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$100(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    monitor-enter v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 142
    :try_start_5
    iget-object v3, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 143
    .line 144
    invoke-static {v3}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$000(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 149
    .line 150
    invoke-static {v4}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$300(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/ChunkedCursorWindow;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget v5, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 155
    .line 156
    invoke-virtual {v3, v4, v5, v2}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->fillRows(Lcom/tencent/wcdb/database/ChunkedCursorWindow;II)I

    .line 157
    .line 158
    .line 159
    move-result v2

    .line 160
    iget v3, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 161
    .line 162
    if-gt v3, v0, :cond_4

    .line 163
    .line 164
    add-int/2addr v3, v2

    .line 165
    if-le v3, v0, :cond_4

    .line 166
    .line 167
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$100(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 174
    .line 175
    .line 176
    goto :goto_3

    .line 177
    :catchall_2
    move-exception v0

    .line 178
    goto :goto_4

    .line 179
    :cond_4
    :goto_3
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 180
    :try_start_6
    iget v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I

    .line 181
    .line 182
    add-int/2addr v0, v2

    .line 183
    iput v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->mFetchPos:I
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :goto_4
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 188
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 189
    :goto_5
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 190
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 191
    :catch_0
    :cond_5
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$000(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v0}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->release()V

    .line 198
    .line 199
    .line 200
    goto :goto_7

    .line 201
    :catchall_3
    move-exception v0

    .line 202
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 203
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 204
    :goto_6
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteAsyncCursor$QueryThread;->this$0:Lcom/tencent/wcdb/database/SQLiteAsyncCursor;

    .line 205
    .line 206
    invoke-static {v1}, Lcom/tencent/wcdb/database/SQLiteAsyncCursor;->access$000(Lcom/tencent/wcdb/database/SQLiteAsyncCursor;)Lcom/tencent/wcdb/database/SQLiteAsyncQuery;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/tencent/wcdb/database/SQLiteAsyncQuery;->release()V

    .line 211
    .line 212
    .line 213
    throw v0

    .line 214
    :goto_7
    return-void
.end method
