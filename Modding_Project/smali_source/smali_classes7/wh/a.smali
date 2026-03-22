.class public interface abstract Lwh/a;
.super Ljava/lang/Object;
.source "DownloadTaskDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a()V
    .annotation build Landroidx/room/Query;
        value = "DELETE  FROM download_tasks"
    .end annotation
.end method

.method public abstract b(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Delete;
    .end annotation
.end method

.method public abstract c(Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;)V
    .param p1    # Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract d()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM download_tasks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract e(I)I
    .annotation build Landroidx/room/Query;
        value = "DELETE FROM download_tasks WHERE downloadState = :downloadState"
    .end annotation
.end method

.method public abstract f(Ljava/util/List;)V
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;",
            ">;)V"
        }
    .end annotation
.end method
