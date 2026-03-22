.class public Lcom/moloco/sdk/acm/db/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/db/e;->d(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/acm/db/e;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/db/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()Lkotlin/Unit;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/acm/db/e;->h(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/SharedSQLiteStatement;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 18
    .line 19
    .line 20
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    iget-object v2, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 35
    .line 36
    invoke-static {v2}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/moloco/sdk/acm/db/e;->h(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/SharedSQLiteStatement;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 50
    .line 51
    .line 52
    return-object v1

    .line 53
    :catchall_0
    move-exception v1

    .line 54
    iget-object v2, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 61
    .line 62
    .line 63
    iget-object v2, p0, Lcom/moloco/sdk/acm/db/e$e;->a:Lcom/moloco/sdk/acm/db/e;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/moloco/sdk/acm/db/e;->h(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/SharedSQLiteStatement;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 70
    .line 71
    .line 72
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/acm/db/e$e;->a()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
