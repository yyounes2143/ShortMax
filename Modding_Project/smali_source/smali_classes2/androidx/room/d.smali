.class public final synthetic Landroidx/room/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Landroidx/room/BaseRoomConnectionManager;

.field public final synthetic b:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroidx/room/BaseRoomConnectionManager;Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/room/d;->a:Landroidx/room/BaseRoomConnectionManager;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/room/d;->b:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/room/d;->c:Ljava/lang/String;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/room/d;->a:Landroidx/room/BaseRoomConnectionManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/d;->b:Landroidx/room/BaseRoomConnectionManager$DriverWrapper;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/room/d;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Landroidx/room/BaseRoomConnectionManager$DriverWrapper;->a(Landroidx/room/BaseRoomConnectionManager;Landroidx/room/BaseRoomConnectionManager$DriverWrapper;Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
