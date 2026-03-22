.class public final Lcom/tencent/wcdb/database/SQLiteDebug;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;,
        Lcom/tencent/wcdb/database/SQLiteDebug$DbStats;,
        Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WCDB.SQLiteDebug"

.field private static volatile sLastErrorLine:I

.field private static volatile sLastIOTraceStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteGlobal;->loadLib()V

    .line 2
    .line 3
    .line 4
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

.method static collectLastIOTraceStats(Lcom/tencent/wcdb/database/SQLiteConnection;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteDebug;->nativeGetLastErrorLine()I

    move-result v0

    sput v0, Lcom/tencent/wcdb/database/SQLiteDebug;->sLastErrorLine:I

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->getNativeHandle(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    .line 4
    invoke-static {v2, v3, v0}, Lcom/tencent/wcdb/database/SQLiteDebug;->nativeGetIOTraceStats(JLjava/util/ArrayList;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/tencent/wcdb/database/SQLiteConnection;->endNativeHandle(Ljava/lang/Exception;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteDebug;->sLastIOTraceStats:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot collect I/O trace statistics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WCDB.SQLiteDebug"

    invoke-static {v0, p0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method static collectLastIOTraceStats(Lcom/tencent/wcdb/database/SQLiteDatabase;)V
    .locals 5

    .line 8
    :try_start_0
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteDebug;->nativeGetLastErrorLine()I

    move-result v0

    sput v0, Lcom/tencent/wcdb/database/SQLiteDebug;->sLastErrorLine:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    const-string v1, "collectIoStat"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->acquireNativeConnectionHandle(Ljava/lang/String;ZZ)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 11
    invoke-static {v1, v2, v0}, Lcom/tencent/wcdb/database/SQLiteDebug;->nativeGetIOTraceStats(JLjava/util/ArrayList;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, 0x0

    .line 12
    invoke-virtual {p0, v1, v2, v3}, Lcom/tencent/wcdb/database/SQLiteDatabase;->releaseNativeConnection(JLjava/lang/Exception;)V

    .line 13
    sput-object v0, Lcom/tencent/wcdb/database/SQLiteDebug;->sLastIOTraceStats:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot collect I/O trace statistics: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WCDB.SQLiteDebug"

    invoke-static {v0, p0}, Lcom/tencent/wcdb/support/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public static dump(Landroid/util/Printer;[Ljava/lang/String;)V
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    .line 6
    aget-object v3, p1, v1

    .line 7
    .line 8
    const-string v4, "-v"

    .line 9
    .line 10
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    invoke-static {p0, v2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->dumpAll(Landroid/util/Printer;Z)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public static getDatabaseInfo()Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;
    .locals 2

    .line 1
    new-instance v0, Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/tencent/wcdb/database/SQLiteDebug;->nativeGetPagerStats(Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/tencent/wcdb/database/SQLiteDatabase;->getDbStats()Ljava/util/ArrayList;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iput-object v1, v0, Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    .line 14
    .line 15
    return-object v0
.end method

.method public static getLastErrorLine()I
    .locals 1

    .line 1
    sget v0, Lcom/tencent/wcdb/database/SQLiteDebug;->sLastErrorLine:I

    .line 2
    .line 3
    return v0
.end method

.method public static getLastIOTraceStats()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/tencent/wcdb/database/SQLiteDebug;->sLastIOTraceStats:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method private static native nativeGetIOTraceStats(JLjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList<",
            "Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;",
            ">;)V"
        }
    .end annotation
.end method

.method private static native nativeGetLastErrorLine()I
.end method

.method private static native nativeGetPagerStats(Lcom/tencent/wcdb/database/SQLiteDebug$PagerStats;)V
.end method

.method private static native nativeSetIOTraceFlags(I)V
.end method

.method public static setIOTraceFlags(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/tencent/wcdb/database/SQLiteDebug;->nativeSetIOTraceFlags(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final shouldLogSlowQuery(J)Z
    .locals 2

    .line 1
    const-wide/16 v0, 0x12c

    .line 2
    .line 3
    cmp-long p0, p0, v0

    .line 4
    .line 5
    if-lez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method
