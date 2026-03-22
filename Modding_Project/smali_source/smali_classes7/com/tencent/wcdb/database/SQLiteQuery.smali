.class public final Lcom/tencent/wcdb/database/SQLiteQuery;
.super Lcom/tencent/wcdb/database/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteQuery"


# instance fields
.field private final mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;


# direct methods
.method constructor <init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/wcdb/database/SQLiteProgram;-><init>(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/support/CancellationSignal;)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/tencent/wcdb/database/SQLiteQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method fillWindow(Lcom/tencent/wcdb/CursorWindow;IIZ)I
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteClosable;->acquireReference()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    :try_start_1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSession()Lcom/tencent/wcdb/database/SQLiteSession;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getBindArgs()[Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getConnectionFlags()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    iget-object v8, p0, Lcom/tencent/wcdb/database/SQLiteQuery;->mCancellationSignal:Lcom/tencent/wcdb/support/CancellationSignal;

    .line 24
    .line 25
    move-object v3, p1

    .line 26
    move v4, p2

    .line 27
    move v5, p3

    .line 28
    move v6, p4

    .line 29
    invoke-virtual/range {v0 .. v8}, Lcom/tencent/wcdb/database/SQLiteSession;->executeForCursorWindow(Ljava/lang/String;[Ljava/lang/Object;Lcom/tencent/wcdb/CursorWindow;IIZILcom/tencent/wcdb/support/CancellationSignal;)I

    .line 30
    .line 31
    .line 32
    move-result p2
    :try_end_1
    .catch Lcom/tencent/wcdb/database/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    :try_start_2
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 37
    .line 38
    .line 39
    return p2

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    goto :goto_1

    .line 42
    :catchall_1
    move-exception p2

    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p2

    .line 45
    :try_start_3
    const-string p3, "WCDB.SQLiteQuery"

    .line 46
    .line 47
    new-instance p4, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v0, "exception: "

    .line 53
    .line 54
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "; query: "

    .line 65
    .line 66
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    invoke-static {p3, p4}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, p2}, Lcom/tencent/wcdb/database/SQLiteProgram;->checkCorruption(Lcom/tencent/wcdb/database/SQLiteException;)V

    .line 84
    .line 85
    .line 86
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 87
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 88
    .line 89
    .line 90
    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteClosable;->releaseReference()V

    .line 92
    .line 93
    .line 94
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "SQLiteQuery: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/tencent/wcdb/database/SQLiteProgram;->getSql()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
