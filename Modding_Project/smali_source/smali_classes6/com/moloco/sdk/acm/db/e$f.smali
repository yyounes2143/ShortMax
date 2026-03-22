.class public Lcom/moloco/sdk/acm/db/e$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/acm/db/e;->c(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
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
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lcom/moloco/sdk/acm/db/e;


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/db/e;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/acm/db/e$f;->b:Lcom/moloco/sdk/acm/db/e;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/acm/db/e$f;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Lkotlin/Unit;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroidx/room/util/StringUtil;->newStringBuilder()Ljava/lang/StringBuilder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "DELETE FROM events WHERE id IN ("

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$f;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v0, v1}, Landroidx/room/util/StringUtil;->appendPlaceholders(Ljava/lang/StringBuilder;I)V

    .line 17
    .line 18
    .line 19
    const-string v1, ")"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$f;->b:Lcom/moloco/sdk/acm/db/e;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v1, v0}, Landroidx/room/RoomDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$f;->a:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    move v3, v2

    .line 46
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    if-eqz v4, :cond_0

    .line 51
    .line 52
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Long;

    .line 57
    .line 58
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 59
    .line 60
    .line 61
    move-result-wide v4

    .line 62
    invoke-interface {v0, v3, v4, v5}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 63
    .line 64
    .line 65
    add-int/2addr v3, v2

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$f;->b:Lcom/moloco/sdk/acm/db/e;

    .line 68
    .line 69
    invoke-static {v1}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V

    .line 74
    .line 75
    .line 76
    :try_start_0
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/moloco/sdk/acm/db/e$f;->b:Lcom/moloco/sdk/acm/db/e;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 86
    .line 87
    .line 88
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .line 90
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$f;->b:Lcom/moloco/sdk/acm/db/e;

    .line 91
    .line 92
    invoke-static {v1}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 97
    .line 98
    .line 99
    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    .line 101
    iget-object v1, p0, Lcom/moloco/sdk/acm/db/e$f;->b:Lcom/moloco/sdk/acm/db/e;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/moloco/sdk/acm/db/e;->f(Lcom/moloco/sdk/acm/db/e;)Landroidx/room/RoomDatabase;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 108
    .line 109
    .line 110
    throw v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/acm/db/e$f;->a()Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
