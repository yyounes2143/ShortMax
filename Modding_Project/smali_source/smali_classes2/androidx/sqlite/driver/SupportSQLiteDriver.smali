.class public final Landroidx/sqlite/driver/SupportSQLiteDriver;
.super Ljava/lang/Object;
.source "SupportSQLiteDriver.android.kt"

# interfaces
.implements Landroidx/sqlite/SQLiteDriver;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "openHelper"

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
    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic hasConnectionPool$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public hasConnectionPool()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public bridge synthetic open(Ljava/lang/String;)Landroidx/sqlite/SQLiteConnection;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/sqlite/driver/SupportSQLiteDriver;->open(Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteConnection;

    move-result-object p1

    return-object p1
.end method

.method public open(Ljava/lang/String;)Landroidx/sqlite/driver/SupportSQLiteConnection;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "fileName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "\' was requested."

    if-nez v0, :cond_1

    .line 4
    const-string v0, ":memory:"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This driver is configured to open an in-memory database but a file-based named \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x2

    .line 8
    invoke-static {v0, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->k1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {p1, v2, v3, v4, v3}, Lkotlin/text/StringsKt;->k1(Ljava/lang/String;CLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This driver is configured to open a database named \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/sqlite/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v2}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' but \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_3
    :goto_0
    new-instance p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteDriver;->openHelper:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/sqlite/driver/SupportSQLiteConnection;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    return-object p1
.end method
