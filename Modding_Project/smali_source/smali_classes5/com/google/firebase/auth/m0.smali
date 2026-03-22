.class final Lcom/google/firebase/auth/m0;
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
.field private final synthetic a:Lcom/google/firebase/auth/FirebaseUser;

.field private final synthetic b:Lcom/google/firebase/auth/EmailAuthCredential;

.field private final synthetic c:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/m0;->a:Lcom/google/firebase/auth/FirebaseUser;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/firebase/auth/m0;->b:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/firebase/auth/m0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 9
    .line 10
    invoke-direct {p0}, Lv7/x;-><init>()V

    .line 11
    .line 12
    .line 13
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
    const-string v0, "Linking email account with empty reCAPTCHA token"

    .line 10
    .line 11
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-string v0, "Got reCAPTCHA token for linking email account"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/google/firebase/auth/m0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 21
    .line 22
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/f;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/google/firebase/auth/m0;->a:Lcom/google/firebase/auth/FirebaseUser;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/google/firebase/auth/m0;->b:Lcom/google/firebase/auth/EmailAuthCredential;

    .line 31
    .line 32
    new-instance v6, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/google/firebase/auth/m0;->c:Lcom/google/firebase/auth/FirebaseAuth;

    .line 35
    .line 36
    invoke-direct {v6, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 37
    .line 38
    .line 39
    move-object v5, p1

    .line 40
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method
