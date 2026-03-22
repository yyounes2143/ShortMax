.class Lcom/pandora/ttlicense2/LicenseSession;
.super Ljava/lang/Object;
.source "LicenseSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;
    }
.end annotation


# static fields
.field static final STATE_CANCELED:I = 0x4

.field static final STATE_COMPLETED:I = 0x2

.field static final STATE_ERROR:I = 0x3

.field static final STATE_IDLE:I = 0x0

.field static final STATE_STARTED:I = 0x1


# instance fields
.field final mH:Landroid/os/Handler;

.field final mLicenseUri:Ljava/lang/String;

.field mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

.field mLoadException:Ljava/lang/Exception;

.field mLoadRequest:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

.field mLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

.field mLoadState:I

.field final mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

.field mReadException:Ljava/lang/Exception;

.field mReadRequest:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

.field mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

.field mReadState:I

.field final mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

.field mRetryCount:I

.field final mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

.field mSessionState:I

.field mUpdateLoadException:Ljava/lang/Exception;

.field mUpdateLoadRequest:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

.field mUpdateLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

.field mUpdateLoadState:I

.field mUpdateReadException:Ljava/lang/Exception;

.field mUpdateReadRequest:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

.field mUpdateReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

.field mUpdateReadState:I


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/pandora/ttlicense2/utils/Scheme;Lcom/pandora/ttlicense2/loader/LicenseLoader;Lcom/pandora/ttlicense2/loader/LicenseReader;Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/utils/Scheme;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/pandora/ttlicense2/loader/LicenseLoader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/pandora/ttlicense2/loader/LicenseReader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadState:I

    .line 6
    .line 7
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 8
    .line 9
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 10
    .line 11
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadState:I

    .line 12
    .line 13
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lcom/pandora/ttlicense2/utils/Scheme;

    .line 26
    .line 27
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 28
    .line 29
    invoke-static {p3}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 36
    .line 37
    invoke-static {p4}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 42
    .line 43
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 44
    .line 45
    invoke-static {p5}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 50
    .line 51
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 52
    .line 53
    new-instance p1, Landroid/os/Handler;

    .line 54
    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 60
    .line 61
    .line 62
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mH:Landroid/os/Handler;

    .line 63
    .line 64
    return-void
.end method

.method public static synthetic a(Lcom/pandora/ttlicense2/LicenseSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(Lcom/pandora/ttlicense2/LicenseSession;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->isUpdateAble()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic access$100(Lcom/pandora/ttlicense2/LicenseSession;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startUpdateLoad()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private isUpdateAble()Z
    .locals 2
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 8
    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    return v1

    .line 12
    :cond_1
    invoke-virtual {v0}, Lcom/pandora/ttlicense2/LicenseFile;->isUpdateAble()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method static mapState(I)Ljava/lang/String;
    .locals 3

    .line 1
    if-eqz p0, :cond_4

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_3

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p0, v0, :cond_1

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-ne p0, v0, :cond_0

    .line 14
    .line 15
    const-string p0, "canceled"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Unsupported state: "

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_1
    const-string p0, "error"

    .line 42
    .line 43
    return-object p0

    .line 44
    :cond_2
    const-string p0, "completed"

    .line 45
    .line 46
    return-object p0

    .line 47
    :cond_3
    const-string/jumbo p0, "started"

    .line 48
    .line 49
    .line 50
    return-object p0

    .line 51
    :cond_4
    const-string p0, "idle"

    .line 52
    .line 53
    return-object p0
.end method

.method private resetLoadResult()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadException:Ljava/lang/Exception;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadState:I

    .line 8
    .line 9
    return-void
.end method

.method private resetUpdateLoadResult()V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadException:Ljava/lang/Exception;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 8
    .line 9
    return-void
.end method

.method private retryWithLoadState()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadState:I

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_5

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Unsupported state"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " load "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadState:I

    .line 43
    .line 44
    invoke-static {v2}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    if-ge v0, v2, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->resetLoadResult()V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 69
    .line 70
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseRetry()V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startLoad()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "error"

    .line 89
    .line 90
    const-string v2, "load max retry error!"

    .line 91
    .line 92
    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const-string v1, "retryWithLoadState"

    .line 97
    .line 98
    invoke-static {p0, v1, v0}, Lcom/pandora/ttlicense2/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void

    .line 102
    :cond_4
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->retryWithReadState()V

    .line 103
    .line 104
    .line 105
    :cond_5
    return-void
.end method

.method private retryWithReadState()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_7

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/4 v1, 0x3

    .line 12
    if-eq v0, v1, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Unsupported state"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " read "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 43
    .line 44
    invoke-static {v2}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    return-void

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 61
    .line 62
    sget-object v1, Lcom/pandora/ttlicense2/utils/Scheme;->FILE:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 63
    .line 64
    if-eq v0, v1, :cond_6

    .line 65
    .line 66
    sget-object v1, Lcom/pandora/ttlicense2/utils/Scheme;->ASSETS:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 67
    .line 68
    if-ne v0, v1, :cond_3

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    sget-object v1, Lcom/pandora/ttlicense2/utils/Scheme;->HTTP:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 72
    .line 73
    if-eq v0, v1, :cond_5

    .line 74
    .line 75
    sget-object v1, Lcom/pandora/ttlicense2/utils/Scheme;->HTTPS:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 76
    .line 77
    if-ne v0, v1, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v2, "Unsupported scheme: "

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw v0

    .line 105
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 111
    .line 112
    iget-boolean v0, v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;->hintCache:Z

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->retryWithUpdateLoadState()V

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->isUpdateAble()Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_7

    .line 125
    .line 126
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->retryWithUpdateLoadState()V

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_2
    return-void
.end method

.method private retryWithUpdateLoadState()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_4

    .line 10
    .line 11
    const/4 v2, 0x3

    .line 12
    if-eq v0, v2, :cond_1

    .line 13
    .line 14
    const/4 v1, 0x4

    .line 15
    if-eq v0, v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v1, "Unsupported state"

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " updateLoad "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 43
    .line 44
    invoke-static {v2}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0

    .line 59
    :cond_1
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 60
    .line 61
    const/16 v2, 0xa

    .line 62
    .line 63
    if-ge v0, v2, :cond_3

    .line 64
    .line 65
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->resetUpdateLoadResult()V

    .line 66
    .line 67
    .line 68
    iget v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 69
    .line 70
    add-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    invoke-interface {v0}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseUpdateRetry()V

    .line 78
    .line 79
    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startUpdateLoad()V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    const-string v1, "error"

    .line 89
    .line 90
    const-string/jumbo v2, "update max retry error!"

    .line 91
    .line 92
    .line 93
    filled-new-array {v1, v2, v0}, [Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const-string v1, "retryWithUpdateLoadState"

    .line 98
    .line 99
    invoke-static {p0, v1, v0}, Lcom/pandora/ttlicense2/utils/L;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    :goto_0
    return-void
.end method

.method private startLoad()V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    new-instance v7, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;

    .line 5
    .line 6
    const/4 v4, 0x3

    .line 7
    const-wide/16 v5, 0x3e8

    .line 8
    .line 9
    const/4 v1, 0x5

    .line 10
    const-wide/16 v2, 0x3e8

    .line 11
    .line 12
    move-object v0, v7

    .line 13
    invoke-direct/range {v0 .. v6}, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;-><init>(IJIJ)V

    .line 14
    .line 15
    .line 16
    new-instance v8, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 17
    .line 18
    iget-object v3, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v4, 0x0

    .line 22
    move-object v0, v8

    .line 23
    move-object v1, v3

    .line 24
    move-object v5, v7

    .line 25
    move-object v6, p0

    .line 26
    invoke-direct/range {v0 .. v6}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object v8, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadRequest:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 32
    .line 33
    new-instance v1, Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 34
    .line 35
    invoke-direct {v1, p0}, Lcom/pandora/ttlicense2/LicenseSession$1;-><init>(Lcom/pandora/ttlicense2/LicenseSession;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v8, v1}, Lcom/pandora/ttlicense2/loader/LicenseLoader;->startLoad(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private startLoadOnLineLicense()V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongThread"
        }
    .end annotation

    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startLoad()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mH:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lcom/pandora/ttlicense2/a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/pandora/ttlicense2/a;-><init>(Lcom/pandora/ttlicense2/LicenseSession;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method private startReadOfflineLicense()V
    .locals 4
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    invoke-direct {v0, v1, v2, p0, v3}, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadRequest:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 13
    .line 14
    new-instance v2, Lcom/pandora/ttlicense2/LicenseSession$2;

    .line 15
    .line 16
    invoke-direct {v2, p0}, Lcom/pandora/ttlicense2/LicenseSession$2;-><init>(Lcom/pandora/ttlicense2/LicenseSession;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, v0, v2}, Lcom/pandora/ttlicense2/loader/LicenseReader;->startReadSync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private startUpdateLoad()V
    .locals 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;

    .line 17
    .line 18
    const/4 v5, 0x3

    .line 19
    const-wide/16 v6, 0x3e8

    .line 20
    .line 21
    const/4 v2, 0x5

    .line 22
    const-wide/16 v3, 0x3e8

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    invoke-direct/range {v1 .. v7}, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;-><init>(IJIJ)V

    .line 26
    .line 27
    .line 28
    new-instance v8, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 31
    .line 32
    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 33
    .line 34
    invoke-virtual {v1}, Lcom/pandora/ttlicense2/LicenseFile;->cacheKey()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 39
    .line 40
    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/pandora/ttlicense2/LicenseFile;->getMainUrl()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/pandora/ttlicense2/LicenseFile;->getBackupUrl()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    const/4 v3, 0x1

    .line 55
    move-object v1, v8

    .line 56
    move-object v6, v0

    .line 57
    move-object v7, p0

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;-><init>(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iput-object v8, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadRequest:Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoader:Lcom/pandora/ttlicense2/loader/LicenseLoader;

    .line 64
    .line 65
    new-instance v1, Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 66
    .line 67
    invoke-direct {v1, p0}, Lcom/pandora/ttlicense2/LicenseSession$3;-><init>(Lcom/pandora/ttlicense2/LicenseSession;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v8, v1}, Lcom/pandora/ttlicense2/loader/LicenseLoader;->startLoad(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method


# virtual methods
.method retry()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/pandora/ttlicense2/LicenseSession$4;->$SwitchMap$com$pandora$ttlicense2$utils$Scheme:[I

    .line 5
    .line 6
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    aget v0, v0, v1

    .line 13
    .line 14
    const/4 v1, 0x1

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x4

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Unsupported scheme: "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->retryWithLoadState()V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->retryWithReadState()V

    .line 57
    .line 58
    .line 59
    :goto_1
    return-void
.end method

.method start()V
    .locals 3
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    sget-object v0, Lcom/pandora/ttlicense2/LicenseSession$4;->$SwitchMap$com$pandora$ttlicense2$utils$Scheme:[I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x3

    .line 18
    if-eq v0, v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x4

    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    const/4 v1, 0x5

    .line 24
    if-eq v0, v1, :cond_0

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v2, "Unsupported uri type! "

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startLoadOnLineLicense()V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseSession;->startReadOfflineLicense()V

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "LicenseSession{mScheme="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", mLicenseUri=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", mLoadState="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mLoadState:I

    .line 37
    .line 38
    invoke-static {v1}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v1, ", mReadState="

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 51
    .line 52
    invoke-static {v1}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, ", mUpdateLoadState="

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 65
    .line 66
    invoke-static {v1}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", mUpdateReadState="

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadState:I

    .line 79
    .line 80
    invoke-static {v1}, Lcom/pandora/ttlicense2/LicenseSession;->mapState(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v1, ", mRetryCount="

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    iget v1, p0, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const/16 v1, 0x7d

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    return-object v0
.end method
