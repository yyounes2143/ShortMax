.class public Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;
.super Ljava/lang/Object;
.source "RepairKit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/wcdb/repair/RepairKit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MasterInfo"
.end annotation


# instance fields
.field private mKDFSalt:[B

.field private mMasterPtr:J


# direct methods
.method private constructor <init>(J[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->mMasterPtr:J

    .line 5
    .line 6
    iput-object p3, p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->mKDFSalt:[B

    .line 7
    .line 8
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->mKDFSalt:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->mMasterPtr:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static load(Ljava/lang/String;[B[Ljava/lang/String;)Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->make([Ljava/lang/String;)Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0

    .line 8
    :cond_0
    const/16 v0, 0x10

    .line 9
    .line 10
    new-array v0, v0, [B

    .line 11
    .line 12
    invoke-static {p0, p1, p2, v0}, Lcom/tencent/wcdb/repair/RepairKit;->access$400(Ljava/lang/String;[B[Ljava/lang/String;[B)J

    .line 13
    .line 14
    .line 15
    move-result-wide p0

    .line 16
    const-wide/16 v1, 0x0

    .line 17
    .line 18
    cmp-long p2, p0, v1

    .line 19
    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    new-instance p2, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    .line 23
    .line 24
    invoke-direct {p2, p0, p1, v0}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;-><init>(J[B)V

    .line 25
    .line 26
    .line 27
    return-object p2

    .line 28
    :cond_1
    new-instance p0, Lcom/tencent/wcdb/database/SQLiteException;

    .line 29
    .line 30
    const-string p1, "Cannot create MasterInfo."

    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p0
.end method

.method public static make([Ljava/lang/String;)Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/tencent/wcdb/repair/RepairKit;->access$300([Ljava/lang/String;)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long p0, v0, v2

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {p0, v0, v1, v2}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;-><init>(J[B)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p0, Lcom/tencent/wcdb/database/SQLiteException;

    .line 19
    .line 20
    const-string v0, "Cannot create MasterInfo."

    .line 21
    .line 22
    invoke-direct {p0, v0}, Lcom/tencent/wcdb/database/SQLiteException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p0
.end method

.method public static save(Lcom/tencent/wcdb/database/SQLiteDatabase;Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const-string v2, "backupMaster"

    .line 4
    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lcom/tencent/wcdb/database/SQLiteDatabase;->acquireNativeConnectionHandle(Ljava/lang/String;ZZ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v0

    .line 9
    invoke-static {v0, v1, p1, p2}, Lcom/tencent/wcdb/repair/RepairKit;->access$500(JLjava/lang/String;[B)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const/4 p2, 0x0

    .line 14
    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/wcdb/database/SQLiteDatabase;->releaseNativeConnection(JLjava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    return p1
.end method


# virtual methods
.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->release()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public release()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->mMasterPtr:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-nez v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {v0, v1}, Lcom/tencent/wcdb/repair/RepairKit;->access$600(J)V

    .line 11
    .line 12
    .line 13
    iput-wide v2, p0, Lcom/tencent/wcdb/repair/RepairKit$MasterInfo;->mMasterPtr:J

    .line 14
    .line 15
    return-void
.end method
