.class final Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;
.super Landroidx/sqlite/driver/SupportSQLiteStatement;
.source "SupportSQLiteStatement.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransactionSQLiteStatement"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final operation:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "db"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sql"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "operation"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;->operation:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 0
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo p1, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x19

    .line 11
    .line 12
    const-string p2, "column index out of range"

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 18
    .line 19
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public bindDouble(ID)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x19

    .line 5
    .line 6
    const-string p2, "column index out of range"

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public bindLong(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x19

    .line 5
    .line 6
    const-string p2, "column index out of range"

    .line 7
    .line 8
    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x19

    .line 5
    .line 6
    const-string v0, "column index out of range"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo p1, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 8
    .line 9
    .line 10
    const/16 p1, 0x19

    .line 11
    .line 12
    const-string p2, "column index out of range"

    .line 13
    .line 14
    invoke-static {p1, p2}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 15
    .line 16
    .line 17
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 18
    .line 19
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p1
.end method

.method public clearBindings()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->setClosed(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getColumnType(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getDouble(I)D
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public getLong(I)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public final getOperation()Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;->operation:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 2
    .line 3
    return-object v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x15

    .line 5
    .line 6
    const-string v0, "no row"

    .line 7
    .line 8
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 9
    .line 10
    .line 11
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 12
    .line 13
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 14
    .line 15
    .line 16
    throw p1
.end method

.method public reset()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public step()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;->operation:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion$TransactionOperation;

    .line 2
    .line 3
    sget-object v1, Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_4

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_3

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionReadOnly()V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 35
    .line 36
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransactionNonExclusive()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->beginTransaction()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_4
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->setTransactionSuccessful()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteDatabase;->endTransaction()V

    .line 76
    .line 77
    .line 78
    :goto_0
    const/4 v0, 0x0

    .line 79
    return v0
.end method
