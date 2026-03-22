.class public abstract Lcom/startshorts/androidplayer/ui/activity/download/data/DownloadTaskDB;
.super Landroidx/room/RoomDatabase;
.source "DownloadTaskDB.kt"


# annotations
.annotation build Landroidx/room/Database;
    entities = {
        Lcom/startshorts/androidplayer/bean/download/DownloadTaskInfo;
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
.method public abstract e()Lwh/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
