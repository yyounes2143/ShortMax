.class public interface abstract Landroidx/room/migration/AutoMigrationSpec;
.super Ljava/lang/Object;
.source "AutoMigrationSpec.android.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public onPostMigrate(Landroidx/sqlite/SQLiteConnection;)V
    .locals 1
    .param p1    # Landroidx/sqlite/SQLiteConnection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "connection"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    instance-of v0, p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroidx/sqlite/driver/SupportSQLiteConnection;

    invoke-virtual {p1}, Landroidx/sqlite/driver/SupportSQLiteConnection;->getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/room/migration/AutoMigrationSpec;->onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V

    :cond_0
    return-void
.end method

.method public onPostMigrate(Landroidx/sqlite/db/SupportSQLiteDatabase;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteDatabase;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
