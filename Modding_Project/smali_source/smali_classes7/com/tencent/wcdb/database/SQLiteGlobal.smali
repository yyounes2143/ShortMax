.class public final Lcom/tencent/wcdb/database/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteGlobal"

.field public static final defaultJournalMode:Ljava/lang/String; = "PERSIST"

.field public static final defaultPageSize:I

.field public static final defaultSyncMode:Ljava/lang/String; = "FULL"

.field public static final journalSizeLimit:I = 0x80000

.field public static final walAutoCheckpoint:I = 0x64

.field public static final walConnectionPoolSize:I = 0x4

.field public static final walSyncMode:Ljava/lang/String; = "FULL"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/tencent/wcdb/database/WCDBInitializationProbe;->libLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "wcdb"

    .line 6
    .line 7
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    new-instance v1, Landroid/os/StatFs;

    .line 19
    .line 20
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 28
    :catch_0
    const/16 v0, 0x1000

    .line 29
    .line 30
    :goto_0
    sput v0, Lcom/tencent/wcdb/database/SQLiteGlobal;->defaultPageSize:I

    .line 31
    .line 32
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteGlobal;->nativeSetDefaultPageSize(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static loadLib()V
    .locals 0

    .line 1
    return-void
.end method

.method private static native nativeReleaseMemory()I
.end method

.method private static native nativeSetDefaultPageSize(I)V
.end method

.method public static releaseMemory()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteGlobal;->nativeReleaseMemory()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
