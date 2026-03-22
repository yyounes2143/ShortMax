.class public interface abstract Lxh/a;
.super Ljava/lang/Object;
.source "DownloadEpisodesDao.kt"


# annotations
.annotation build Landroidx/room/Dao;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract a()V
    .annotation build Landroidx/room/Query;
        value = "DELETE  FROM download_episodes"
    .end annotation
.end method

.method public abstract b(Lxh/f;)V
    .param p1    # Lxh/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Insert;
        onConflict = 0x1
    .end annotation
.end method

.method public abstract c(I)Lxh/f;
    .annotation build Landroidx/room/Query;
        value = "SELECT * FROM download_episodes WHERE shortPlayId = :shortPlayId"
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
