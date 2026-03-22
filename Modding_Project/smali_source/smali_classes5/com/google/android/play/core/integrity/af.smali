.class final Lcom/google/android/play/core/integrity/af;
.super Lcom/google/android/play/integrity/internal/p0;
.source "com.google.android.play:integrity@@1.4.0"


# instance fields
.field final synthetic a:[B

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Landroid/os/Parcelable;

.field final synthetic d:Lcom/google/android/gms/tasks/TaskCompletionSource;

.field final synthetic e:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

.field final synthetic f:Lcom/google/android/play/core/integrity/aj;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/integrity/aj;Lcom/google/android/gms/tasks/TaskCompletionSource;[BLjava/lang/Long;Landroid/os/Parcelable;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/play/core/integrity/IntegrityTokenRequest;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lcom/google/android/play/core/integrity/af;->a:[B

    .line 2
    .line 3
    iput-object p4, p0, Lcom/google/android/play/core/integrity/af;->b:Ljava/lang/Long;

    .line 4
    .line 5
    iput-object p5, p0, Lcom/google/android/play/core/integrity/af;->c:Landroid/os/Parcelable;

    .line 6
    .line 7
    iput-object p6, p0, Lcom/google/android/play/core/integrity/af;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 8
    .line 9
    iput-object p7, p0, Lcom/google/android/play/core/integrity/af;->e:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/play/core/integrity/af;->f:Lcom/google/android/play/core/integrity/aj;

    .line 12
    .line 13
    invoke-direct {p0, p2}, Lcom/google/android/play/integrity/internal/p0;-><init>(Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/google/android/play/integrity/internal/af;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    .line 6
    .line 7
    const/16 v1, -0x9

    .line 8
    .line 9
    invoke-direct {v0, v1, p1}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    .line 10
    .line 11
    .line 12
    invoke-super {p0, v0}, Lcom/google/android/play/integrity/internal/p0;->a(Ljava/lang/Exception;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-super {p0, p1}, Lcom/google/android/play/integrity/internal/p0;->a(Ljava/lang/Exception;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method protected final b()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/play/core/integrity/af;->f:Lcom/google/android/play/core/integrity/aj;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/google/android/play/core/integrity/aj;->a:Lcom/google/android/play/integrity/internal/f;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/play/integrity/internal/f;->e()Landroid/os/IInterface;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/google/android/play/integrity/internal/j0;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/google/android/play/core/integrity/af;->f:Lcom/google/android/play/core/integrity/aj;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/google/android/play/core/integrity/af;->a:[B

    .line 14
    .line 15
    iget-object v3, p0, Lcom/google/android/play/core/integrity/af;->b:Ljava/lang/Long;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/google/android/play/core/integrity/af;->c:Landroid/os/Parcelable;

    .line 18
    .line 19
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/play/core/integrity/aj;->a(Lcom/google/android/play/core/integrity/aj;[BLjava/lang/Long;Landroid/os/Parcelable;)Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    new-instance v2, Lcom/google/android/play/core/integrity/ai;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/play/core/integrity/af;->f:Lcom/google/android/play/core/integrity/aj;

    .line 26
    .line 27
    iget-object v4, p0, Lcom/google/android/play/core/integrity/af;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 28
    .line 29
    invoke-direct {v2, v3, v4}, Lcom/google/android/play/core/integrity/ai;-><init>(Lcom/google/android/play/core/integrity/aj;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0, v1, v2}, Lcom/google/android/play/integrity/internal/j0;->f(Landroid/os/Bundle;Lcom/google/android/play/integrity/internal/l0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    iget-object v1, p0, Lcom/google/android/play/core/integrity/af;->f:Lcom/google/android/play/core/integrity/aj;

    .line 38
    .line 39
    iget-object v2, p0, Lcom/google/android/play/core/integrity/af;->e:Lcom/google/android/play/core/integrity/IntegrityTokenRequest;

    .line 40
    .line 41
    invoke-static {v1}, Lcom/google/android/play/core/integrity/aj;->f(Lcom/google/android/play/core/integrity/aj;)Lcom/google/android/play/integrity/internal/o0;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    const-string v3, "requestIntegrityToken(%s)"

    .line 50
    .line 51
    invoke-virtual {v1, v0, v3, v2}, Lcom/google/android/play/integrity/internal/o0;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/google/android/play/core/integrity/af;->d:Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 55
    .line 56
    new-instance v2, Lcom/google/android/play/core/integrity/IntegrityServiceException;

    .line 57
    .line 58
    const/16 v3, -0x64

    .line 59
    .line 60
    invoke-direct {v2, v3, v0}, Lcom/google/android/play/core/integrity/IntegrityServiceException;-><init>(ILjava/lang/Throwable;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
