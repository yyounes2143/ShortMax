.class public abstract Landroidx/sqlite/driver/SupportSQLiteStatement;
.super Ljava/lang/Object;
.source "SupportSQLiteStatement.android.kt"

# interfaces
.implements Landroidx/sqlite/SQLiteStatement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$OtherSQLiteStatement;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$RowSQLiteStatement;,
        Landroidx/sqlite/driver/SupportSQLiteStatement$TransactionSQLiteStatement;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final db:Landroidx/sqlite/db/SupportSQLiteDatabase;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isClosed:Z

.field private final sql:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/sqlite/driver/SupportSQLiteStatement;->Companion:Landroidx/sqlite/driver/SupportSQLiteStatement$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 4
    iput-object p2, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->sql:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/sqlite/driver/SupportSQLiteStatement;-><init>(Landroidx/sqlite/db/SupportSQLiteDatabase;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final getDb()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->db:Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final getSql()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->sql:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected final isClosed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed:Z

    .line 2
    .line 3
    return v0
.end method

.method protected final setClosed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed:Z

    .line 2
    .line 3
    return-void
.end method

.method protected final throwIfClosed()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroidx/sqlite/driver/SupportSQLiteStatement;->isClosed:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v0, 0x15

    .line 7
    .line 8
    const-string v1, "statement is closed"

    .line 9
    .line 10
    invoke-static {v0, v1}, Landroidx/sqlite/SQLite;->throwSQLiteException(ILjava/lang/String;)Ljava/lang/Void;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lkotlin/KotlinNothingValueException;

    .line 14
    .line 15
    invoke-direct {v0}, Lkotlin/KotlinNothingValueException;-><init>()V

    .line 16
    .line 17
    .line 18
    throw v0
.end method
