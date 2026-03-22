.class Lcom/pandora/ttlicense2/LicenseSession$3;
.super Ljava/lang/Object;
.source "LicenseSession.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseSession;->startUpdateLoad()V
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
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onLoadCanceled"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startUpdateLoad"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 24
    .line 25
    return-void
.end method

.method public onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;)V
    .locals 4
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "onLoadComplete"

    .line 10
    .line 11
    filled-new-array {v3, p1, v1, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string/jumbo v2, "startUpdateLoad"

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    iput-object p2, v0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadResult:Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;

    .line 27
    .line 28
    const/4 v1, 0x2

    .line 29
    iput v1, v0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 30
    .line 31
    new-instance v1, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 32
    .line 33
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;->path:Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const/4 v2, 0x1

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-direct {v1, p2, v2, p1, v3}, Lcom/pandora/ttlicense2/loader/LicenseReader$Request;-><init>(Ljava/lang/String;ZLjava/lang/Object;Z)V

    .line 51
    .line 52
    .line 53
    iput-object v1, v0, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadRequest:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 54
    .line 55
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 56
    .line 57
    iget-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mReader:Lcom/pandora/ttlicense2/loader/LicenseReader;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadRequest:Lcom/pandora/ttlicense2/loader/LicenseReader$Request;

    .line 60
    .line 61
    new-instance v0, Lcom/pandora/ttlicense2/LicenseSession$3$1;

    .line 62
    .line 63
    invoke-direct {v0, p0}, Lcom/pandora/ttlicense2/LicenseSession$3$1;-><init>(Lcom/pandora/ttlicense2/LicenseSession$3;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p2, p1, v0}, Lcom/pandora/ttlicense2/loader/LicenseReader;->startReadAsync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onLoadError(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Ljava/io/IOException;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onLoadError"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startUpdateLoad"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 21
    .line 22
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadException:Ljava/lang/Exception;

    .line 23
    .line 24
    const/4 v0, 0x3

    .line 25
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 26
    .line 27
    iget-object v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    iget p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mRetryCount:I

    .line 32
    .line 33
    const/16 v1, 0xa

    .line 34
    .line 35
    if-ge p1, v1, :cond_0

    .line 36
    .line 37
    const/4 p1, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    invoke-interface {v0, p2, p1}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseUpdateError(Ljava/lang/Exception;Z)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;F)V
    .locals 0
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 2
    .line 3
    const-string v1, "onLoadStart"

    .line 4
    .line 5
    iget-object v2, p1, Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;->uri:Ljava/lang/String;

    .line 6
    .line 7
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo v1, "startUpdateLoad"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateLoadState:I

    .line 24
    .line 25
    return-void
.end method
