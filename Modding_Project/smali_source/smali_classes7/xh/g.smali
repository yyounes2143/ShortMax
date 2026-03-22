.class public final Lxh/g;
.super Ljava/lang/Object;
.source "DownloadEpisodesProvide.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Lxh/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lxh/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lxh/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lxh/g;->a:Lxh/g;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lxh/g;->b:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-class v0, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 11
    .line 12
    const-string v1, "app_download_episodes"

    .line 13
    .line 14
    invoke-static {p1, v0, v1}, Landroidx/room/Room;->databaseBuilder(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroidx/room/RoomDatabase$Builder;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1}, Landroidx/room/RoomDatabase$Builder;->build()Landroidx/room/RoomDatabase;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 23
    .line 24
    sput-object p1, Lxh/g;->b:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 25
    .line 26
    :cond_0
    sget-object p1, Lxh/g;->b:Lcom/startshorts/androidplayer/ui/activity/download/data/episodes/DownloadEpisodesDB;

    .line 27
    .line 28
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object p1
.end method
