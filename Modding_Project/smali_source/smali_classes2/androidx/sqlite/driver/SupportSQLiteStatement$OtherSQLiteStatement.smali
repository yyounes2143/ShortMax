.class final Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;
.super Landroidx/sqlite/driver/SupportSQLiteStatement;
.source "SupportSQLiteStatement.android.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/sqlite/driver/SupportSQLiteStatement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OtherSQLiteStatement"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteStatement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, p2}, Landroidx/sqlite/db/SupportSQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public bindDouble(ID)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(ID)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bindLong(IJ)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {v0, p1, p2, p3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bindNull(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public bindText(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "value"

    .line 2
    .line 3
    .line 4
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 11
    .line 12
    invoke-interface {v0, p1, p2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public clearBindings()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteProgram;->clearBindings()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->setClosed(Z)V

    .line 8
    .line 9
    .line 10
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
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/sqlite/driver/SupportSQLiteStatement;->throwIfClosed()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;->delegate:Landroidx/sqlite/db/SupportSQLiteStatement;

    .line 5
    .line 6
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->execute()V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return v0
.end method
