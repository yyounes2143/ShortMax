.class Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
.super Ljava/lang/Object;
.source "TransferRecord.java"


# static fields
.field private static final M:Lcom/amazonaws/logging/Log;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/String;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:Ljava/lang/String;

.field public I:Ljava/lang/String;

.field public J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

.field private K:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private L:Lcom/google/gson/Gson;

.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:J

.field public m:J

.field public n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

.field public o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->M:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/google/gson/Gson;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->L:Lcom/google/gson/Gson;

    .line 10
    .line 11
    iput p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a()Lcom/amazonaws/logging/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->M:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    return-object v0
.end method

.method private c()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private e(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 29
    :goto_1
    return p1
.end method


# virtual methods
.method public b(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->e(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_3

    .line 8
    .line 9
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 10
    .line 11
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 12
    .line 13
    invoke-virtual {p2, v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    .line 24
    .line 25
    invoke-interface {p2, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->UPLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 31
    .line 32
    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_1

    .line 37
    .line 38
    iget p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d:I

    .line 39
    .line 40
    if-ne p2, v0, :cond_1

    .line 41
    .line 42
    new-instance p2, Ljava/lang/Thread;

    .line 43
    .line 44
    new-instance v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;

    .line 45
    .line 46
    invoke-direct {v1, p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord$1;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {p2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 59
    .line 60
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    new-instance p1, Ljava/io/File;

    .line 67
    .line 68
    iget-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    .line 69
    .line 70
    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return v0

    .line 77
    :cond_3
    const/4 p1, 0x0

    .line 78
    return p1
.end method

.method protected d(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->g()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->g()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;->isConnected(Landroid/net/ConnectivityManager;)Z

    .line 22
    .line 23
    .line 24
    move-result p2

    .line 25
    if-nez p2, :cond_1

    .line 26
    .line 27
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->M:Lcom/amazonaws/logging/Log;

    .line 28
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "Network Connection "

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;->g()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, " is not available."

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {p2, v0}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 61
    .line 62
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 63
    .line 64
    invoke-virtual {p1, p2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 65
    .line 66
    .line 67
    const/4 p1, 0x0

    .line 68
    return p1

    .line 69
    :cond_1
    return v0
.end method

.method f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public g(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->e(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_1

    .line 18
    .line 19
    sget-object p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 20
    .line 21
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 30
    .line 31
    invoke-virtual {p2, v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 p2, 0x1

    .line 39
    if-eqz p1, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    .line 42
    .line 43
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return p2

    .line 47
    :cond_1
    const/4 p1, 0x0

    .line 48
    return p1
.end method

.method h(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 9
    .line 10
    invoke-direct {p0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->e(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f()Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const/4 p2, 0x1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    .line 24
    .line 25
    invoke-interface {p1, p2}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 26
    .line 27
    .line 28
    :cond_0
    return p2
.end method

.method public i(Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, p3, p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;Landroid/net/ConnectivityManager;)Z

    .line 14
    .line 15
    .line 16
    move-result p4

    .line 17
    if-eqz p4, :cond_1

    .line 18
    .line 19
    iget-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 20
    .line 21
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->DOWNLOAD:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 22
    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-eqz p4, :cond_0

    .line 28
    .line 29
    new-instance p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;

    .line 30
    .line 31
    invoke-direct {p2, p0, p1, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 42
    .line 43
    invoke-direct {p4, p0, p1, p2, p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V

    .line 44
    .line 45
    .line 46
    invoke-static {p4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->K:Ljava/util/concurrent/Future;

    .line 51
    .line 52
    :goto_0
    const/4 p1, 0x1

    .line 53
    return p1

    .line 54
    :cond_1
    const/4 p1, 0x0

    .line 55
    return p1
.end method

.method public j(Landroid/database/Cursor;)V
    .locals 3

    .line 1
    const-string v0, "_id"

    .line 2
    .line 3
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 12
    .line 13
    const-string v0, "main_upload_id"

    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->b:I

    .line 24
    .line 25
    const-string/jumbo v0, "type"

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;->getType(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 41
    .line 42
    const-string v0, "state"

    .line 43
    .line 44
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->getState(Ljava/lang/String;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 57
    .line 58
    const-string v0, "bucket_name"

    .line 59
    .line 60
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 69
    .line 70
    const-string v0, "key"

    .line 71
    .line 72
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 81
    .line 82
    const-string/jumbo v0, "version_id"

    .line 83
    .line 84
    .line 85
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->r:Ljava/lang/String;

    .line 94
    .line 95
    const-string v0, "bytes_total"

    .line 96
    .line 97
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 102
    .line 103
    .line 104
    move-result-wide v0

    .line 105
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 106
    .line 107
    const-string v0, "bytes_current"

    .line 108
    .line 109
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 114
    .line 115
    .line 116
    move-result-wide v0

    .line 117
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 118
    .line 119
    const-string v0, "speed"

    .line 120
    .line 121
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 126
    .line 127
    .line 128
    move-result-wide v0

    .line 129
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->j:J

    .line 130
    .line 131
    const-string v0, "is_requester_pays"

    .line 132
    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->c:I

    .line 142
    .line 143
    const-string v0, "is_multipart"

    .line 144
    .line 145
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d:I

    .line 154
    .line 155
    const-string v0, "is_last_part"

    .line 156
    .line 157
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result v0

    .line 161
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->e:I

    .line 166
    .line 167
    const-string v0, "is_encrypted"

    .line 168
    .line 169
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->f:I

    .line 178
    .line 179
    const-string v0, "part_num"

    .line 180
    .line 181
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 186
    .line 187
    .line 188
    move-result v0

    .line 189
    iput v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    .line 190
    .line 191
    const-string v0, "etag"

    .line 192
    .line 193
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->u:Ljava/lang/String;

    .line 202
    .line 203
    const-string v0, "file"

    .line 204
    .line 205
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 206
    .line 207
    .line 208
    move-result v0

    .line 209
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v0

    .line 213
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    .line 214
    .line 215
    const-string v0, "multipart_id"

    .line 216
    .line 217
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 218
    .line 219
    .line 220
    move-result v0

    .line 221
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 226
    .line 227
    const-string v0, "range_start"

    .line 228
    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 234
    .line 235
    .line 236
    move-result-wide v0

    .line 237
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->k:J

    .line 238
    .line 239
    const-string v0, "range_last"

    .line 240
    .line 241
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 246
    .line 247
    .line 248
    move-result-wide v0

    .line 249
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->l:J

    .line 250
    .line 251
    const-string v0, "file_offset"

    .line 252
    .line 253
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 258
    .line 259
    .line 260
    move-result-wide v0

    .line 261
    iput-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->m:J

    .line 262
    .line 263
    const-string v0, "header_content_type"

    .line 264
    .line 265
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->v:Ljava/lang/String;

    .line 274
    .line 275
    const-string v0, "header_content_language"

    .line 276
    .line 277
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v0

    .line 285
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->w:Ljava/lang/String;

    .line 286
    .line 287
    const-string v0, "header_content_disposition"

    .line 288
    .line 289
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->x:Ljava/lang/String;

    .line 298
    .line 299
    const-string v0, "header_content_encoding"

    .line 300
    .line 301
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->y:Ljava/lang/String;

    .line 310
    .line 311
    const-string v0, "header_cache_control"

    .line 312
    .line 313
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 314
    .line 315
    .line 316
    move-result v0

    .line 317
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->z:Ljava/lang/String;

    .line 322
    .line 323
    const-string v0, "header_expire"

    .line 324
    .line 325
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->A:Ljava/lang/String;

    .line 334
    .line 335
    const-string/jumbo v0, "user_metadata"

    .line 336
    .line 337
    .line 338
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    invoke-static {v0}, Lcom/amazonaws/util/json/JsonUtils;->d(Ljava/lang/String;)Ljava/util/Map;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 351
    .line 352
    const-string v0, "expiration_time_rule_id"

    .line 353
    .line 354
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 359
    .line 360
    .line 361
    move-result-object v0

    .line 362
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->D:Ljava/lang/String;

    .line 363
    .line 364
    const-string v0, "http_expires_date"

    .line 365
    .line 366
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    .line 375
    .line 376
    const-string v0, "sse_algorithm"

    .line 377
    .line 378
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 383
    .line 384
    .line 385
    move-result-object v0

    .line 386
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->F:Ljava/lang/String;

    .line 387
    .line 388
    const-string v0, "kms_key"

    .line 389
    .line 390
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->G:Ljava/lang/String;

    .line 399
    .line 400
    const-string v0, "content_md5"

    .line 401
    .line 402
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 403
    .line 404
    .line 405
    move-result v0

    .line 406
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->H:Ljava/lang/String;

    .line 411
    .line 412
    const-string v0, "canned_acl"

    .line 413
    .line 414
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    move-result v0

    .line 418
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v0

    .line 422
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->I:Ljava/lang/String;

    .line 423
    .line 424
    const-string v0, "header_storage_class"

    .line 425
    .line 426
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    move-result v0

    .line 430
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v0

    .line 434
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->B:Ljava/lang/String;

    .line 435
    .line 436
    const-string/jumbo v0, "transfer_utility_options"

    .line 437
    .line 438
    .line 439
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 440
    .line 441
    .line 442
    move-result v0

    .line 443
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p1

    .line 447
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->L:Lcom/google/gson/Gson;

    .line 448
    .line 449
    const-class v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 450
    .line 451
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    move-result-object v0

    .line 455
    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 456
    .line 457
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 458
    .line 459
    goto :goto_0

    .line 460
    :catch_0
    move-exception v0

    .line 461
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->M:Lcom/amazonaws/logging/Log;

    .line 462
    .line 463
    const-string v2, "Failed to deserialize: %s, setting to default"

    .line 464
    .line 465
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object p1

    .line 469
    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object p1

    .line 473
    invoke-interface {v1, p1, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 474
    .line 475
    .line 476
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 477
    .line 478
    invoke-direct {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    .line 479
    .line 480
    .line 481
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 482
    .line 483
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "["

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "id:"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ","

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "bucketName:"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v2, "key:"

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "file:"

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string/jumbo v2, "type:"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->n:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferType;

    .line 72
    .line 73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v2, "bytesTotal:"

    .line 80
    .line 81
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 85
    .line 86
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v2, "bytesCurrent:"

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->i:J

    .line 98
    .line 99
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string v2, "fileOffset:"

    .line 106
    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    iget-wide v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->m:J

    .line 111
    .line 112
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v2, "state:"

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string v2, "cannedAcl:"

    .line 132
    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->I:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v2, "mainUploadId:"

    .line 145
    .line 146
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->b:I

    .line 150
    .line 151
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    const-string v2, "isMultipart:"

    .line 158
    .line 159
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d:I

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v2, "isLastPart:"

    .line 171
    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->e:I

    .line 176
    .line 177
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v2, "partNumber:"

    .line 184
    .line 185
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    .line 189
    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v2, "multipartId:"

    .line 197
    .line 198
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 202
    .line 203
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    const-string v2, "eTag:"

    .line 210
    .line 211
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->u:Ljava/lang/String;

    .line 215
    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const-string v2, "storageClass:"

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->B:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    .line 234
    .line 235
    const-string/jumbo v2, "userMetadata:"

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 242
    .line 243
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 244
    .line 245
    .line 246
    move-result-object v2

    .line 247
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    const-string/jumbo v1, "transferUtilityOptions:"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->L:Lcom/google/gson/Gson;

    .line 260
    .line 261
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->J:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    const-string v1, "]"

    .line 271
    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    return-object v0
.end method
