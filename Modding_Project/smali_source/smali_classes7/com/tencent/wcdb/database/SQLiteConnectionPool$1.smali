.class Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;
.super Ljava/lang/Object;
.source "SQLiteConnectionPool.java"

# interfaces
.implements Lcom/tencent/wcdb/support/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/wcdb/database/SQLiteConnectionPool;->waitForConnection(Ljava/lang/String;ILcom/tencent/wcdb/support/CancellationSignal;)Lcom/tencent/wcdb/database/SQLiteConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

.field final synthetic val$nonce:I

.field final synthetic val$waiter:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->this$0:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->val$waiter:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 4
    .line 5
    iput p3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->val$nonce:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->this$0:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->access$000(Lcom/tencent/wcdb/database/SQLiteConnectionPool;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->val$waiter:Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;

    .line 9
    .line 10
    iget v2, v1, Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;->mNonce:I

    .line 11
    .line 12
    iget v3, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->val$nonce:I

    .line 13
    .line 14
    if-ne v2, v3, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/tencent/wcdb/database/SQLiteConnectionPool$1;->this$0:Lcom/tencent/wcdb/database/SQLiteConnectionPool;

    .line 17
    .line 18
    invoke-static {v2, v1}, Lcom/tencent/wcdb/database/SQLiteConnectionPool;->access$100(Lcom/tencent/wcdb/database/SQLiteConnectionPool;Lcom/tencent/wcdb/database/SQLiteConnectionPool$ConnectionWaiter;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    :goto_0
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw v1
.end method
