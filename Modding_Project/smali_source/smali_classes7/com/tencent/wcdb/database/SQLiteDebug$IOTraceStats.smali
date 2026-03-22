.class public Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/database/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IOTraceStats"
.end annotation


# instance fields
.field public dbName:Ljava/lang/String;

.field public journalMode:Ljava/lang/String;

.field public lastJournalReadOffset:J

.field public lastJournalReadPage:[B

.field public lastJournalWriteOffset:J

.field public lastJournalWritePage:[B

.field public lastReadOffset:J

.field public lastReadPage:[B

.field public lastWriteOffset:J

.field public lastWritePage:[B

.field public pageCount:J

.field public pageSize:J

.field public path:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->dbName:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->path:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->pageSize:J

    .line 6
    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-wide v3, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->pageCount:J

    .line 12
    .line 13
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v4, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->journalMode:Ljava/lang/String;

    .line 18
    .line 19
    iget-wide v5, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->lastReadOffset:J

    .line 20
    .line 21
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-wide v6, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->lastWriteOffset:J

    .line 26
    .line 27
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-wide v7, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->lastJournalReadOffset:J

    .line 32
    .line 33
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-wide v8, p0, Lcom/tencent/wcdb/database/SQLiteDebug$IOTraceStats;->lastJournalWriteOffset:J

    .line 38
    .line 39
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "[%s | %s] pageSize: %d, pageCount: %d, journal: %s, lastRead: %d, lastWrite: %d, lastJournalRead: %d, lastJournalWrite: %d"

    .line 48
    .line 49
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    return-object v0
.end method
