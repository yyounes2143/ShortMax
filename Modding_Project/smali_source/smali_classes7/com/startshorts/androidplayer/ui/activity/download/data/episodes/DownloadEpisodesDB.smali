.class public abstract Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;
.super Landroidx/room/RoomDatabase;
.source "DownloadEpisodesDB.kt"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lxh/f;
    }
    version = 0x1
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract e()Lxh/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
