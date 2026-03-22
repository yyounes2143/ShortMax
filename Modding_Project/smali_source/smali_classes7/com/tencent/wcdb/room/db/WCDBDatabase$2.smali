.class Lcom/tencent/wcdb/room/db/WCDBDatabase$2;
.super Ljava/lang/Object;
.source "WCDBDatabase.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wcdb/room/db/WCDBDatabase;->query(Landroidx/sqlite/db/SupportSQLiteQuery;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wcdb/room/db/WCDBDatabase;

.field final synthetic val$realSignal:Lcom/tencent/wcdb/support/CancellationSignal;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/room/db/WCDBDatabase;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase$2;->this$0:Lcom/tencent/wcdb/room/db/WCDBDatabase;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase$2;->val$realSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/room/db/WCDBDatabase$2;->val$realSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/tencent/wcdb/support/CancellationSignal;->cancel()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
