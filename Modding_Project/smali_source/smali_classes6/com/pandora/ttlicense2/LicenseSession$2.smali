.class Lcom/pandora/ttlicense2/LicenseSession$2;
.super Ljava/lang/Object;
.source "LicenseSession.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseSession;->startReadOfflineLicense()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/LicenseSession;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseSession;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReadCanceled(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onReadCanceled"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startRead"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 24
    .line 25
    return-void
.end method

.method public onReadComplete(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V
    .locals 4
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseReader$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "onReadComplete"

    .line 10
    .line 11
    filled-new-array {v3, p1, v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string/jumbo v1, "startRead"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 27
    .line 28
    const/4 v0, 0x2

    .line 29
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 30
    .line 31
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 32
    .line 33
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 34
    .line 35
    invoke-interface {p1, p2}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseSession;->access$000(Lcom/pandora/ttlicense2/LicenseSession;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 47
    .line 48
    iget-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 49
    .line 50
    sget-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->FILE:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 51
    .line 52
    if-eq p2, v0, :cond_1

    .line 53
    .line 54
    sget-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->ASSETS:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 55
    .line 56
    if-ne p2, v0, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    new-instance p2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v0, "Unsupported scheme: "

    .line 67
    .line 68
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseSession;->access$100(Lcom/pandora/ttlicense2/LicenseSession;)V

    .line 87
    .line 88
    .line 89
    :cond_2
    return-void
.end method

.method public onReadCompleteSync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseReader$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onReadCompleteSync"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startRead"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 18
    .line 19
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 22
    .line 23
    invoke-interface {p1, p2}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V

    .line 24
    .line 25
    .line 26
    return-void
.end method

.method public onReadError(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onReadError"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startRead"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p2, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadException:Ljava/lang/Exception;

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 26
    .line 27
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 28
    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    invoke-interface {p1, p2, v0}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseError(Ljava/lang/Exception;Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public onReadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;F)V
    .locals 0
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onReadStart(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onReadStart"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startRead"

    .line 12
    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$2;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 24
    .line 25
    return-void
.end method
