.class Lwh/n$b;
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
    iput-object p1, p0, Lwh/n$b;->a:Lwh/n;

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
    .locals 2
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
    move-result p2

    .line 5
    int-to-long v0, p2

    .line 6
    const/4 p2, 0x1

    .line 7
    invoke-interface {p1, p2, v0, v1}, Landroidx/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lwh/n$b;->a(Landroidx/sqlite/SQLiteStatement;Lcom/startshorts/androidplayer/bean/download/ShortTaskInfo;)V

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
    const-string v0, "DELETE FROM `short_tasks` WHERE `shortPlayId` = ?"

    .line 2
    .line 3
    return-object v0
.end method
