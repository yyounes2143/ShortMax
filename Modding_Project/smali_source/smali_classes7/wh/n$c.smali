.class Lwh/n$c;
.super Landroidx/room/EntityDeleteOrUpdateAdapter;
.source "ShortTaskDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwh/n;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityDeleteOrUpdateAdapter<",
        "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lwh/n;


# direct methods
.method constructor <init>(Lwh/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lwh/n$c;->a:Lwh/n;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityDeleteOrUpdateAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V
    .locals 4
    .param p1    # Landroidx/sqlite/SQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

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
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayCode()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const/4 v1, 0x2

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayCode()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getDramaName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x3

    .line 33
    if-nez v0, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getDramaName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :goto_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortCoverUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const/4 v1, 0x4

    .line 51
    if-nez v0, :cond_2

    .line 52
    .line 53
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortCoverUrl()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getContent()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const/4 v1, 0x5

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getContent()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_3
    const/4 v0, 0x6

    .line 83
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getAddTaskTime()J

    .line 84
    .line 85
    .line 86
    move-result-wide v1

    .line 87
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getHasUnfinishedJob()Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v1, 0x7

    .line 95
    int-to-long v2, v0

    .line 96
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;->getShortPlayId()I

    .line 100
    .line 101
    .line 102
    move-result p2

    .line 103
    int-to-long v0, p2

    .line 104
    const/16 p2, 0x8

    .line 105
    .line 106
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 107
    .line 108
    .line 109
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
    check-cast p2, Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lwh/n$c;->a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

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
    const-string v0, "UPDATE OR ABORT `short_tasks` SET `shortPlayId` = ?,`shortPlayCode` = ?,`dramaName` = ?,`shortCoverUrl` = ?,`content` = ?,`addTaskTime` = ?,`hasUnfinishedJob` = ? WHERE `shortPlayId` = ?"

    .line 2
    .line 3
    return-object v0
.end method
