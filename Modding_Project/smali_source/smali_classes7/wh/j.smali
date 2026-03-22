.class public interface abstract Lwh/j;
.super Ljava/lang/Object;
.source "ShortTaskDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a()V
    .annotation build Landroidx/room/Query;
        value = "DELETE  FROM short_tasks"
    .end annotation
.end method

.method public abstract b(Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V
    .param p1    # Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract c()Ljava/util/List;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM short_tasks"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
