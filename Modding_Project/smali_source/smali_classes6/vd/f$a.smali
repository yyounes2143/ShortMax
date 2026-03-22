.class Lvd/f$a;
.super Landroidx/room/EntityInsertAdapter;
.source "EventDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvd/f;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/room/EntityInsertAdapter<",
        "Lcom/startshorts/androidplayer/db/model/DbEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lvd/f;


# direct methods
.method constructor <init>(Lvd/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvd/f$a;->a:Lvd/f;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/room/EntityInsertAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/db/model/DbEvent;)V
    .locals 3
    .param p1    # Landroidx/sqlite/SQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/db/model/DbEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-interface {p1, v2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getUid()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getUid()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getAppVersion()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const/4 v1, 0x3

    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getAppVersion()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :goto_1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const/4 v1, 0x4

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventId()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_2
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const/4 v1, 0x5

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 71
    .line 72
    .line 73
    goto :goto_3

    .line 74
    :cond_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_3
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventExtra()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const/4 v1, 0x6

    .line 86
    if-nez v0, :cond_4

    .line 87
    .line 88
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 89
    .line 90
    .line 91
    goto :goto_4

    .line 92
    :cond_4
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventExtra()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {p1, v1, v0}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 97
    .line 98
    .line 99
    :goto_4
    const/4 v0, 0x7

    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getEventTime()J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 105
    .line 106
    .line 107
    const/16 v0, 0x8

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getLocalTime()J

    .line 110
    .line 111
    .line 112
    move-result-wide v1

    .line 113
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 114
    .line 115
    .line 116
    const/16 v0, 0x9

    .line 117
    .line 118
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getCheckTime()J

    .line 119
    .line 120
    .line 121
    move-result-wide v1

    .line 122
    invoke-interface {p1, v0, v1, v2}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/db/model/DbEvent;->getStatus()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    int-to-long v0, p2

    .line 130
    const/16 p2, 0xa

    .line 131
    .line 132
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 133
    .line 134
    .line 135
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
    check-cast p2, Lcom/startshorts/androidplayer/db/model/DbEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lvd/f$a;->a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/db/model/DbEvent;)V

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
    const-string v0, "INSERT OR REPLACE INTO `DbEvent` (`localId`,`uid`,`app_version`,`event_id`,`event_name`,`event_extra`,`event_time`,`local_time`,`check_time`,`status`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    .line 2
    .line 3
    return-object v0
.end method
