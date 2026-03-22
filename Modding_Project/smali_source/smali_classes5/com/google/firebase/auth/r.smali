.class final Lcom/google/firebase/auth/r;
.super Lv7/x;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lv7/x<",
        "Lcom/google/firebase/auth/AuthResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Lcom/google/firebase/auth/FirebaseUser;

.field private final synthetic c:Lcom/google/firebase/auth/EmailAuthCredential;

.field private final synthetic d:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/firebase/auth/r;->a:Z

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/firebase/auth/r;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/firebase/auth/r;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 6
    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/auth/r;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 11
    .line 12
    invoke-direct {p0}, Lv7/x;-><init>()V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "FirebaseAuth"

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "Email link login/reauth with empty reCAPTCHA token"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "Got reCAPTCHA token for login/reauth with email link"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-boolean v0, p0, Lcom/google/firebase/auth/r;->a:Z

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/firebase/auth/r;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/f;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iget-object v0, p0, Lcom/google/firebase/auth/r;->b:Lcom/google/firebase/auth/FirebaseUser;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v3, v0

    .line 39
    check-cast v3, Lcom/google/firebase/auth/FirebaseUser;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/google/firebase/auth/r;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 42
    .line 43
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 44
    .line 45
    iget-object v0, p0, Lcom/google/firebase/auth/r;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 46
    .line 47
    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 48
    .line 49
    .line 50
    move-object v5, p1

    .line 51
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/r;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 57
    .line 58
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/f;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/google/firebase/auth/r;->c:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 65
    .line 66
    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 67
    .line 68
    iget-object v4, p0, Lcom/google/firebase/auth/r;->d:Lcom/google/firebase/auth/FirebaseAuth;

    .line 69
    .line 70
    invoke-direct {v3, v4}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, v0, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/firebase/auth/EmailAuthCredential;Ljava/lang/String;Lv7/w0;)Lcom/google/android/gms/tasks/Task;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    return-object p1
.end method
