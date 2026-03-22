.class public final Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.android.kt"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteOpenHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;,
        Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SupportSQLite"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final allowDataLossOnRecovery:Z

.field private final callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lazyDelegate:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final useNoBackupDirectory:Z

.field private writeAheadLoggingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->Companion:Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x18

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V
    .locals 9
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v8}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 7
    iput-boolean p4, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    .line 8
    iput-boolean p5, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 9
    new-instance p1, Landroidx/sqlite/db/framework/f;

    invoke-direct {p1, p0}, Landroidx/sqlite/db/framework/f;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)V

    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    move-result-object p1

    iput-object p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lms/i;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move v5, v0

    goto :goto_0

    :cond_0
    move v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, p5

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 10
    invoke-direct/range {v1 .. v6}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;ZZ)V

    return-void
.end method

.method public static synthetic a(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate$lambda$0(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 8
    .line 9
    return-object v0
.end method

.method private static getDelegate$delegate(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lms/i;

    .line 2
    .line 3
    return-object p0
.end method

.method private static final lazyDelegate$lambda$0(Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;)Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->useNoBackupDirectory:Z

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Ljava/io/File;

    .line 13
    .line 14
    iget-object v3, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v3}, Landroidx/sqlite/db/SupportSQLiteCompat$Api21Impl;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v4, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 21
    .line 22
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    new-instance v3, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 26
    .line 27
    iget-object v6, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v7

    .line 33
    new-instance v8, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 34
    .line 35
    invoke-direct {v8, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 36
    .line 37
    .line 38
    iget-object v9, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 39
    .line 40
    iget-boolean v10, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 41
    .line 42
    move-object v5, v3

    .line 43
    invoke-direct/range {v5 .. v10}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    new-instance v3, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 48
    .line 49
    iget-object v12, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->context:Landroid/content/Context;

    .line 50
    .line 51
    iget-object v13, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v14, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;

    .line 54
    .line 55
    invoke-direct {v14, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;-><init>(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;)V

    .line 56
    .line 57
    .line 58
    iget-object v15, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->callback:Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;

    .line 59
    .line 60
    iget-boolean v1, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->allowDataLossOnRecovery:Z

    .line 61
    .line 62
    move-object v11, v3

    .line 63
    move/from16 v16, v1

    .line 64
    .line 65
    invoke-direct/range {v11 .. v16}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$DBRefHolder;Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback;Z)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-boolean v0, v0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    .line 69
    .line 70
    invoke-virtual {v3, v0}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 71
    .line 72
    .line 73
    return-object v3
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->close()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getReadableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getSupportDatabase(Z)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public getWritableDatabase()Landroidx/sqlite/db/SupportSQLiteDatabase;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;->getSupportDatabase(Z)Landroidx/sqlite/db/SupportSQLiteDatabase;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->lazyDelegate:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->getDelegate()Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper$OpenHelper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-boolean p1, p0, Landroidx/sqlite/db/framework/FrameworkSQLiteOpenHelper;->writeAheadLoggingEnabled:Z

    .line 17
    .line 18
    return-void
.end method
