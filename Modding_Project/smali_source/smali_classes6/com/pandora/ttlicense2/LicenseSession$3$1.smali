.class Lcom/pandora/ttlicense2/LicenseSession$3$1;
.super Ljava/lang/Object;
.source "LicenseSession.java"

# interfaces
.implements Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseSession$3;->onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/pandora/ttlicense2/LicenseSession$3;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseSession$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

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
    const-string/jumbo v1, "startUpdateRead"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    const/4 v0, 0x4

    .line 27
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadState:I

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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

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
    const-string/jumbo v1, "startUpdateRead"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 27
    .line 28
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 29
    .line 30
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadResult:Lcom/pandora/ttlicense2/loader/LicenseReader$Result;

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadState:I

    .line 34
    .line 35
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 36
    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 40
    .line 41
    invoke-interface {p1, p2}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseUpdateSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public onReadCompleteSync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V
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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

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
    const-string v3, "onReadCompleteSync"

    .line 12
    .line 13
    filled-new-array {v3, p1, v1, v2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string/jumbo v1, "startUpdateRead"

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession;->mListener:Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;

    .line 28
    .line 29
    iget-object p2, p2, Lcom/pandora/ttlicense2/loader/LicenseReader$Result;->licenseFile:Lcom/pandora/ttlicense2/LicenseFile;

    .line 30
    .line 31
    invoke-interface {p1, p2}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseUpdateSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V

    .line 32
    .line 33
    .line 34
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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

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
    const-string/jumbo v1, "startUpdateRead"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    iput-object p2, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadException:Ljava/lang/Exception;

    .line 27
    .line 28
    const/4 v0, 0x3

    .line 29
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadState:I

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
    invoke-interface {p1, p2, v0}, Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;->onLicenseUpdateError(Ljava/lang/Exception;Z)V

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
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

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
    const-string/jumbo v1, "startUpdateRead"

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
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseSession$3$1;->this$1:Lcom/pandora/ttlicense2/LicenseSession$3;

    .line 23
    .line 24
    iget-object p1, p1, Lcom/pandora/ttlicense2/LicenseSession$3;->this$0:Lcom/pandora/ttlicense2/LicenseSession;

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    iput v0, p1, Lcom/pandora/ttlicense2/LicenseSession;->mUpdateReadState:I

    .line 28
    .line 29
    return-void
.end method
