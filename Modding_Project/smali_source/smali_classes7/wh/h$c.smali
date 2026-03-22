.class Lwh/h$c;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "DownloadTaskDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh/h;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwh/h;


# direct methods
.method constructor <init>(Lwh/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwh/h$c;->a:Lwh/h;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .locals 4
    .param p1    # Landroidx/sqlite/SQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-long v0, v0

    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaId()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    int-to-long v0, v0

    .line 15
    const/4 v2, 0x2

    .line 16
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaNum()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    int-to-long v0, v0

    .line 24
    const/4 v2, 0x3

    .line 25
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getUrl()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x4

    .line 33
    if-nez v0, :cond_0

    .line 34
    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getUrl()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getSolution()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    int-to-long v0, v0

    .line 51
    const/4 v2, 0x5

    .line 52
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 53
    .line 54
    .line 55
    const/4 v0, 0x6

    .line 56
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getFileSize()J

    .line 57
    .line 58
    .line 59
    move-result-wide v1

    .line 60
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadState()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    int-to-long v0, v0

    .line 68
    const/4 v2, 0x7

    .line 69
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/16 v1, 0x8

    .line 77
    .line 78
    if-nez v0, :cond_1

    .line 79
    .line 80
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 89
    .line 90
    .line 91
    :goto_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortCoverUrl()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const/16 v1, 0x9

    .line 96
    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortCoverUrl()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaCoverUrl()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/16 v1, 0xa

    .line 115
    .line 116
    if-nez v0, :cond_3

    .line 117
    .line 118
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaCoverUrl()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 127
    .line 128
    .line 129
    :goto_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaName()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    const/16 v1, 0xb

    .line 134
    .line 135
    if-nez v0, :cond_4

    .line 136
    .line 137
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 138
    .line 139
    .line 140
    goto :goto_4

    .line 141
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDramaName()Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 146
    .line 147
    .line 148
    :goto_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getContent()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    const/16 v1, 0xc

    .line 153
    .line 154
    if-nez v0, :cond_5

    .line 155
    .line 156
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 157
    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getContent()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 165
    .line 166
    .line 167
    :goto_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayCode()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    const/16 v1, 0xd

    .line 172
    .line 173
    if-nez v0, :cond_6

    .line 174
    .line 175
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 176
    .line 177
    .line 178
    goto :goto_6

    .line 179
    :cond_6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getShortPlayCode()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :goto_6
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getUpack()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    const/16 v1, 0xe

    .line 191
    .line 192
    if-nez v0, :cond_7

    .line 193
    .line 194
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 195
    .line 196
    .line 197
    goto :goto_7

    .line 198
    :cond_7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getUpack()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v0

    .line 202
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :goto_7
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getLock()Ljava/lang/Integer;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const/16 v1, 0xf

    .line 210
    .line 211
    if-nez v0, :cond_8

    .line 212
    .line 213
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 214
    .line 215
    .line 216
    goto :goto_8

    .line 217
    :cond_8
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getLock()Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    int-to-long v2, v0

    .line 226
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 227
    .line 228
    .line 229
    :goto_8
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getDownloadProgress()F

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    float-to-double v0, v0

    .line 234
    const/16 v2, 0x10

    .line 235
    .line 236
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindDouble(ID)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    const/16 v1, 0x11

    .line 244
    .line 245
    if-nez v0, :cond_9

    .line 246
    .line 247
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 248
    .line 249
    .line 250
    goto :goto_9

    .line 251
    :cond_9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    invoke-interface {p1, v1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :goto_9
    return-void
.end method

.method protected bridge synthetic bind(Landroidx/sqlite/SQLiteStatement;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Landroidx/sqlite/SQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwh/h$c;->a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected createQuery()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-string v0, "UPDATE OR ABORT `download_tasks` SET `shortPlayId` = ?,`dramaId` = ?,`dramaNum` = ?,`url` = ?,`solution` = ?,`fileSize` = ?,`downloadState` = ?,`cacheKey` = ?,`shortCoverUrl` = ?,`dramaCoverUrl` = ?,`dramaName` = ?,`content` = ?,`shortPlayCode` = ?,`upack` = ?,`lock` = ?,`downloadProgress` = ? WHERE `cacheKey` = ?"

    .line 2
    .line 3
    return-object v0
.end method
