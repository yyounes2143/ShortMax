.class Lwh/h$b;
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
    iput-object p1, p0, Lwh/h$b;->a:Lwh/h;

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
    .locals 2
    .param p1    # Landroidx/sqlite/SQLiteStatement;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1, v1}, Landroidx/sqlite/SQLiteStatement;->bindNull(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;->getCacheKey()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-interface {p1, v1, p2}, Landroidx/sqlite/SQLiteStatement;->bindText(ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :goto_0
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
    invoke-virtual {p0, p1, p2}, Lwh/h$b;->a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V

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
    const-string v0, "DELETE FROM `download_tasks` WHERE `cacheKey` = ?"

    .line 2
    .line 3
    return-object v0
.end method
