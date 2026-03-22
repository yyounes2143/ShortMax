.class final Lcom/google/android/gms/auth/api/signin/internal/zbf;
.super Lcom/google/android/gms/auth/api/signin/internal/zba;
.source "com.google.android.gms:play-services-auth@@21.4.0"


# instance fields
.field final synthetic zba:Landroid/content/Context;

.field final synthetic zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

.field final synthetic zbc:Lcom/google/android/gms/auth/api/signin/internal/zbg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/auth/api/signin/internal/zbg;Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zba:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zbc:Lcom/google/android/gms/auth/api/signin/internal/zbg;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/zba;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final zbb(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zba:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zbb:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zba(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/zbn;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/zbn;->zbc(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/zbf;->zbc:Lcom/google/android/gms/auth/api/signin/internal/zbg;

    .line 15
    .line 16
    new-instance v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;

    .line 17
    .line 18
    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInResult;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->setResult(Lcom/google/android/gms/common/api/Result;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method
