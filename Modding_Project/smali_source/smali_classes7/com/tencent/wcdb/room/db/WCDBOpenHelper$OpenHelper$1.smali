.class Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;
.super Ljava/lang/Object;
.source "WCDBOpenHelper.java"

# interfaces
.implements Lcom/tencent/wcdb/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;[Lcom/tencent/wcdb/room/db/WCDBDatabase;[BLcom/tencent/wcdb/database/SQLiteCipherSpec;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

.field final synthetic val$dbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;


# direct methods
.method constructor <init>([Lcom/tencent/wcdb/room/db/WCDBDatabase;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;->val$dbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;->val$callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCorruption(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;->val$dbRef:[Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget-object p1, p1, v0

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBOpenHelper$OpenHelper$1;->val$callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;->onCorruption(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method
