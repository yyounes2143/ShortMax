.class public final Landroidx/room/support/QueryInterceptorOpenHelper;
.super Ljava/lang/Object;
.source "QueryInterceptorOpenHelper.android.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;
.implements Landroidx/room/DelegatingOpenHelper;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryCallback:Landroidx/room/RoomDatabase$QueryCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final queryCallbackScope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/sqlite/db/SupportSQLiteOpenHelper;Lgt/g0;Landroidx/room/RoomDatabase$QueryCallback;)V
    .locals 1
    .param p1    # Landroidx/sqlite/db/SupportSQLiteOpenHelper;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/room/RoomDatabase$QueryCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "delegate"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "queryCallbackScope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "queryCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 20
    .line 21
    iput-object p2, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->queryCallbackScope:Lgt/g0;

    .line 22
    .line 23
    iput-object p3, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 2
    .line 3
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getDatabaseName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/support/QueryInterceptorDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/support/QueryInterceptorOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->queryCallbackScope:Lgt/g0;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Landroidx/room/support/QueryInterceptorDatabase;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Lgt/g0;Landroidx/room/RoomDatabase$QueryCallback;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Landroidx/room/support/QueryInterceptorDatabase;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/room/support/QueryInterceptorOpenHelper;->getDelegate()Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {v1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->queryCallbackScope:Lgt/g0;

    .line 12
    .line 13
    iget-object v3, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->queryCallback:Landroidx/room/RoomDatabase$QueryCallback;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Landroidx/room/support/QueryInterceptorDatabase;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Lgt/g0;Landroidx/room/RoomDatabase$QueryCallback;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/support/QueryInterceptorOpenHelper;->delegate:Landroidx/sqlite/db/SupportSQLiteOpenHelper;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroidx/sqlite/db/SupportSQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
