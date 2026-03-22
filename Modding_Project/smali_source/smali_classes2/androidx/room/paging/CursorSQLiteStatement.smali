.class public final Landroidx/room/paging/CursorSQLiteStatement;
.super Ljava/lang/Object;
.source "CursorSQLiteStatement.android.kt"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/room/paging/CursorSQLiteStatement$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/room/paging/CursorSQLiteStatement$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cursor:Landroid/database/Cursor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/paging/CursorSQLiteStatement$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/room/paging/CursorSQLiteStatement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/room/paging/CursorSQLiteStatement;->Companion:Landroidx/room/paging/CursorSQLiteStatement$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1    # Landroid/database/Cursor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "cursor"

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
    iput-object p1, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bindBlob(I[B)Ljava/lang/Void;
    .locals 0
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string p2, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindBlob(I[B)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/paging/CursorSQLiteStatement;->bindBlob(I[B)Ljava/lang/Void;

    return-void
.end method

.method public bindDouble(ID)Ljava/lang/Void;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string p2, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindDouble(ID)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/paging/CursorSQLiteStatement;->bindDouble(ID)Ljava/lang/Void;

    return-void
.end method

.method public bindLong(IJ)Ljava/lang/Void;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string p2, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindLong(IJ)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Landroidx/room/paging/CursorSQLiteStatement;->bindLong(IJ)Ljava/lang/Void;

    return-void
.end method

.method public bindNull(I)Ljava/lang/Void;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string v0, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindNull(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/room/paging/CursorSQLiteStatement;->bindNull(I)Ljava/lang/Void;

    return-void
.end method

.method public bindText(ILjava/lang/String;)Ljava/lang/Void;
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string/jumbo p1, "value"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/IllegalStateException;

    .line 2
    const-string p2, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic bindText(ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Landroidx/room/paging/CursorSQLiteStatement;->bindText(ILjava/lang/String;)Ljava/lang/Void;

    return-void
.end method

.method public clearBindings()Ljava/lang/Void;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    .line 2
    const-string v1, "Only get*() calls are allowed on a Cursor backed SQLiteStatement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic clearBindings()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/room/paging/CursorSQLiteStatement;->clearBindings()Ljava/lang/Void;

    return-void
.end method

.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "getBlob(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public getColumnCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "getColumnName(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public getColumnType(I)I
    .locals 2

    .line 1
    sget-object v0, Landroidx/room/paging/CursorSQLiteStatement;->Companion:Landroidx/room/paging/CursorSQLiteStatement$Companion;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Landroidx/room/paging/CursorSQLiteStatement$Companion;->access$getDataType(Landroidx/room/paging/CursorSQLiteStatement$Companion;Landroid/database/Cursor;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    const-string v0, "getString(...)"

    .line 8
    .line 9
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public step()Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/room/paging/CursorSQLiteStatement;->cursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
