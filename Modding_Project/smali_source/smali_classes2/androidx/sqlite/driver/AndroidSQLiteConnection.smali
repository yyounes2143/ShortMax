.class public final Landroidx/sqlite/driver/AndroidSQLiteConnection;
.super Ljava/lang/Object;
.source "AndroidSQLiteConnection.android.kt"

# interfaces
.implements Landroidx/sqlite/SQLiteConnection;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP_PREFIX:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final db:Landroid/database/sqlite/SQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .param p1    # Landroid/database/sqlite/SQLiteDatabase;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/sqlite/driver/AndroidSQLiteConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method public inTransaction()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public prepare(Ljava/lang/String;)Landroidx/sqlite/SQLiteStatement;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sql"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/sqlite/driver/AndroidSQLiteConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement;->Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;

    .line 15
    .line 16
    new-instance v1, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;

    .line 17
    .line 18
    iget-object v2, p0, Landroidx/sqlite/driver/AndroidSQLiteConnection;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;->create(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteStatement;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_0
    const/16 p1, 0x15

    .line 29
    .line 30
    const-string v0, "connection is closed"

    .line 31
    .line 32
    invoke-static {p1, v0}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 33
    .line 34
    .line 35
    new-instance p1, Lkotlin/KotlinNothingValueException;

    .line 36
    .line 37
    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 38
    .line 39
    .line 40
    throw p1
.end method
