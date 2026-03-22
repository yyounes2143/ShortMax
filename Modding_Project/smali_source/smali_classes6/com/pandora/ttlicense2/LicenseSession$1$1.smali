.class Lcom/pandora/ttlicense2/LicenseSession$1$1;
.super Ljava/lang/Object;
.source "LicenseSession.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseSession$1;->onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pandora/ttlicense2/LicenseSession$1;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseSession$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 4
    .line 5
    const-string v1, "onReadCanceled"

    .line 6
    .line 7
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v1, "startRead"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 28
    .line 29
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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 4
    .line 5
    iget-object v1, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "onReadComplete"

    .line 12
    .line 13
    filled-new-array {v3, p1, v1, v2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string/jumbo v1, "startRead"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 29
    .line 30
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 34
    .line 35
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 36
    .line 37
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 38
    .line 39
    invoke-interface {p1, p2}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseSession;->access$000(Lcom/pandora/ttlicense2/LicenseSession;)Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 53
    .line 54
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 55
    .line 56
    iget-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mScheme:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 57
    .line 58
    sget-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->HTTP:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 59
    .line 60
    if-eq p2, v0, :cond_1

    .line 61
    .line 62
    sget-object v0, Lcom/pandora/ttlicense2/utils/Scheme;->HTTPS:Lcom/pandora/ttlicense2/utils/Scheme;

    .line 63
    .line 64
    if-ne p2, v0, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string v0, "Unsupported scheme: "

    .line 75
    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 80
    .line 81
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 82
    .line 83
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession;->mLicenseUri:Ljava/lang/String;

    .line 84
    .line 85
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p2

    .line 92
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    throw p1

    .line 96
    :cond_1
    :goto_0
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/Asserts;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 102
    .line 103
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 104
    .line 105
    iget-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 106
    .line 107
    iget-boolean p2, p2, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;->hintCache:Z

    .line 108
    .line 109
    if-eqz p2, :cond_2

    .line 110
    .line 111
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseSession;->access$100(Lcom/pandora/ttlicense2/LicenseSession;)V

    .line 112
    .line 113
    .line 114
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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 4
    .line 5
    const-string v1, "onReadCompleteSync"

    .line 6
    .line 7
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v1, "startRead"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 24
    .line 25
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 26
    .line 27
    invoke-interface {p1, p2}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V

    .line 28
    .line 29
    .line 30
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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 4
    .line 5
    const-string v1, "onReadError"

    .line 6
    .line 7
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v1, "startRead"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p2, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadException:Ljava/lang/Exception;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 30
    .line 31
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, p2, v0}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseError(Ljava/lang/Exception;Z)V

    .line 37
    .line 38
    .line 39
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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 4
    .line 5
    const-string v1, "onReadStart"

    .line 6
    .line 7
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;->uri:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string/jumbo v1, "startRead"

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$1$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$1;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$1;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReadState:I

    .line 28
    .line 29
    return-void
.end method
