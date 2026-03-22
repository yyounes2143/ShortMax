.class final Lcom/google/firebase/auth/q0;
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
.field private final synthetic a:Ljava/lang/String;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/firebase/auth/FirebaseUser;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Lcom/google/firebase/auth/FirebaseAuth;


# direct methods
.method constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/firebase/auth/q0;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-boolean p3, p0, Lcom/google/firebase/auth/q0;->b:Z

    .line 4
    .line 5
    iput-object p4, p0, Lcom/google/firebase/auth/q0;->c:Lcom/google/firebase/auth/FirebaseUser;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/firebase/auth/q0;->d:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/google/firebase/auth/q0;->e:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/google/firebase/auth/q0;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 15
    .line 16
    invoke-direct {p0}, Lv7/x;-><init>()V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 9
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
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->a:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v3, "Logging in as "

    .line 14
    .line 15
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v0, " with empty reCAPTCHA token"

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->a:Ljava/lang/String;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    const-string v3, "Got reCAPTCHA token for login with email "

    .line 39
    .line 40
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-boolean v0, p0, Lcom/google/firebase/auth/q0;->b:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 58
    .line 59
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/f;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->c:Lcom/google/firebase/auth/FirebaseUser;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    move-object v3, v0

    .line 72
    check-cast v3, Lcom/google/firebase/auth/FirebaseUser;

    .line 73
    .line 74
    iget-object v4, p0, Lcom/google/firebase/auth/q0;->a:Ljava/lang/String;

    .line 75
    .line 76
    iget-object v5, p0, Lcom/google/firebase/auth/q0;->d:Ljava/lang/String;

    .line 77
    .line 78
    iget-object v6, p0, Lcom/google/firebase/auth/q0;->e:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v8, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 81
    .line 82
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 83
    .line 84
    invoke-direct {v8, v0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 85
    .line 86
    .line 87
    move-object v7, p1

    .line 88
    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    return-object p1

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 94
    .line 95
    iget-object v1, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 96
    .line 97
    invoke-static {v0}, Lcom/google/firebase/auth/FirebaseAuth;->s(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/f;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    iget-object v3, p0, Lcom/google/firebase/auth/q0;->a:Ljava/lang/String;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/google/firebase/auth/q0;->d:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v5, p0, Lcom/google/firebase/auth/q0;->e:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v7, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 108
    .line 109
    iget-object v0, p0, Lcom/google/firebase/auth/q0;->f:Lcom/google/firebase/auth/FirebaseAuth;

    .line 110
    .line 111
    invoke-direct {v7, v0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 112
    .line 113
    .line 114
    move-object v6, p1

    .line 115
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lcom/google/firebase/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lv7/w0;)Lcom/google/android/gms/tasks/Task;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1
.end method
