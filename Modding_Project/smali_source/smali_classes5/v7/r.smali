.class public Lv7/r;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# static fields
.field private static final b:Ljava/lang/String; = "r"

.field private static final c:Lv7/r;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv7/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lv7/r;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lv7/r;->c:Lv7/r;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static b()Lv7/r;
    .locals 1

    .line 1
    sget-object v0, Lv7/r;->c:Lv7/r;

    .line 2
    .line 3
    return-object v0
.end method

.method private final c(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "ZZ",
            "Lv7/n0;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lv7/u0;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    if-nez p5, :cond_1

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/f;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    invoke-virtual {p4}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-static {p4}, Lcom/google/android/play/core/integrity/IntegrityManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/integrity/IntegrityManager;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    iget-object p5, p0, Lv7/r;->a:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p5

    .line 23
    if-nez p5, :cond_0

    .line 24
    .line 25
    new-instance p5, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;

    .line 26
    .line 27
    iget-object v0, p0, Lv7/r;->a:Ljava/lang/String;

    .line 28
    .line 29
    invoke-direct {p5, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahr;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {p5}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 33
    .line 34
    .line 35
    move-result-object p5

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->m()Lcom/google/android/gms/tasks/Task;

    .line 38
    .line 39
    .line 40
    move-result-object p5

    .line 41
    :goto_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->N()Ljava/util/concurrent/Executor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    new-instance v1, Lv7/p0;

    .line 46
    .line 47
    invoke-direct {v1, p0, p2, p4}, Lv7/p0;-><init>(Lv7/r;Ljava/lang/String;Lcom/google/android/play/core/integrity/IntegrityManager;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p5, v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    new-instance p4, Lv7/o0;

    .line 55
    .line 56
    move-object v0, p4

    .line 57
    move-object v1, p0

    .line 58
    move-object v2, p7

    .line 59
    move-object v3, p1

    .line 60
    move-object v4, p6

    .line 61
    move-object v5, p3

    .line 62
    invoke-direct/range {v0 .. v5}, Lv7/o0;-><init>(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, p4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, p1, p6, p3, p7}, Lv7/r;->d(Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 70
    .line 71
    .line 72
    return-void
.end method

.method private final d(Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Lv7/n0;",
            "Landroid/app/Activity;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Lv7/u0;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/google/firebase/auth/FirebaseAuthMissingActivityForRecaptchaException;

    .line 4
    .line 5
    invoke-direct {p1}, Lcom/google/firebase/auth/FirebaseAuthMissingActivityForRecaptchaException;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p4, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/f;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {p2}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-static {p2, p1}, Lv7/v;->d(Landroid/content/Context;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 27
    .line 28
    invoke-direct {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lv7/q;->a()Lv7/q;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p3, p2}, Lv7/q;->e(Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 42
    .line 43
    const/16 p2, 0x42a1

    .line 44
    .line 45
    const-string p3, "reCAPTCHA flow already in progress"

    .line 46
    .line 47
    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafz;

    .line 60
    .line 61
    invoke-direct {v0, p1, p3}, Lcom/google/android/gms/internal/firebase-auth-api/zzafz;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Landroid/app/Activity;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzafz;->zza()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    :goto_0
    new-instance p2, Lv7/r0;

    .line 72
    .line 73
    invoke-direct {p2, p0, p4}, Lv7/r0;-><init>(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    new-instance p2, Lv7/s0;

    .line 81
    .line 82
    invoke-direct {p2, p0, p4}, Lv7/s0;-><init>(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method public static synthetic e(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/Task;)V
    .locals 11

    .line 1
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lv7/r;->b:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual/range {p9 .. p9}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "Failed to initialize reCAPTCHA config: "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->E()Lv7/e0;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->E()Lv7/e0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "PHONE_PROVIDER"

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lv7/e0;->e(Ljava/lang/String;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->E()Lv7/e0;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {p2}, Lcom/google/firebase/auth/FirebaseAuth;->g()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 61
    .line 62
    move-object v3, p3

    .line 63
    invoke-virtual {v0, v1, v2, p3}, Lv7/e0;->b(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    new-instance v1, Lv7/q0;

    .line 68
    .line 69
    move-object v3, p0

    .line 70
    move-object v10, p1

    .line 71
    invoke-direct {v1, p0, p1}, Lv7/q0;-><init>(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    new-instance v1, Lv7/h0;

    .line 79
    .line 80
    move-object v2, v1

    .line 81
    move-object v4, p2

    .line 82
    move-object v5, p4

    .line 83
    move-object/from16 v6, p5

    .line 84
    .line 85
    move/from16 v7, p6

    .line 86
    .line 87
    move/from16 v8, p7

    .line 88
    .line 89
    move-object/from16 v9, p8

    .line 90
    .line 91
    invoke-direct/range {v2 .. v10}, Lv7/h0;-><init>(Lv7/r;Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    .line 95
    .line 96
    .line 97
    return-void

    .line 98
    :cond_1
    move-object v3, p0

    .line 99
    move-object v10, p1

    .line 100
    move-object v2, p0

    .line 101
    move-object v3, p2

    .line 102
    move-object v4, p4

    .line 103
    move-object/from16 v5, p5

    .line 104
    .line 105
    move/from16 v6, p6

    .line 106
    .line 107
    move/from16 v7, p7

    .line 108
    .line 109
    move-object/from16 v8, p8

    .line 110
    .line 111
    move-object v9, p1

    .line 112
    invoke-direct/range {v2 .. v9}, Lv7/r;->c(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method

.method public static synthetic f(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    .line 1
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    new-instance p0, Lv7/x0;

    .line 30
    .line 31
    invoke-direct {p0}, Lv7/x0;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    check-cast p2, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/google/android/play/core/integrity/IntegrityTokenResponse;->token()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p0, p2}, Lv7/t0;->a(Ljava/lang/String;)Lv7/t0;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-virtual {p0}, Lv7/t0;->b()Lv7/u0;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-virtual {p1, p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_0
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const-string p5, ""

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {p5}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 66
    .line 67
    .line 68
    move-result-object p5

    .line 69
    invoke-virtual {p5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p5

    .line 73
    :goto_0
    sget-object v0, Lv7/r;->b:Ljava/lang/String;

    .line 74
    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v2, "Play Integrity Token fetch failed, falling back to Recaptcha"

    .line 78
    .line 79
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p5

    .line 89
    invoke-static {v0, p5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    invoke-direct {p0, p2, p3, p4, p1}, Lv7/r;->d(Lcom/google/firebase/auth/FirebaseAuth;Lv7/n0;Landroid/app/Activity;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 93
    .line 94
    .line 95
    return-void
.end method

.method static bridge synthetic g(Lv7/r;Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lv7/r;->c(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic h(Lv7/r;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv7/r;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static i(Ljava/lang/Exception;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/google/firebase/auth/FirebaseAuthMissingActivityForRecaptchaException;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    instance-of v0, p0, Lcom/google/firebase/auth/FirebaseAuthException;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/google/firebase/auth/FirebaseAuthException;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuthException;->b()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "UNAUTHORIZED_DOMAIN"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    if-eqz p0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    return p0

    .line 26
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 27
    return p0
.end method

.method static bridge synthetic j()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lv7/r;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZZLcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;
    .locals 13
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseAuth;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "ZZZ",
            "Lcom/google/android/recaptcha/RecaptchaAction;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lv7/u0;",
            ">;"
        }
    .end annotation

    .line 1
    move/from16 v0, p5

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->e()Lcom/google/firebase/auth/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Lv7/e;

    .line 8
    .line 9
    invoke-static {}, Lv7/n0;->d()Lv7/n0;

    .line 10
    .line 11
    .line 12
    move-result-object v11

    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/f;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzagl;->zza(Lcom/google/firebase/f;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-nez v2, :cond_7

    .line 22
    .line 23
    invoke-virtual {v1}, Lv7/e;->e()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    sget-object v2, Lv7/r;->b:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v1}, Lv7/e;->c()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    new-instance v4, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string v5, "ForceRecaptchaV2Flow from phoneAuthOptions = "

    .line 40
    .line 41
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v5, ", ForceRecaptchav2Flow from firebaseSettings = "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    .line 61
    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {v1}, Lv7/e;->c()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    const/4 v0, 0x0

    .line 72
    :goto_0
    move v7, v0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    :goto_1
    const/4 v0, 0x1

    .line 75
    goto :goto_0

    .line 76
    :goto_2
    new-instance v0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v11}, Lv7/n0;->c()Lcom/google/android/gms/tasks/Task;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    if-eqz v1, :cond_4

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_3

    .line 92
    .line 93
    new-instance v0, Lv7/x0;

    .line 94
    .line 95
    invoke-direct {v0}, Lv7/x0;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Lv7/t0;->d(Ljava/lang/String;)Lv7/t0;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lv7/t0;->b()Lv7/u0;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    return-object v0

    .line 117
    :cond_3
    invoke-virtual {v1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    const-string v4, "Error in previous reCAPTCHAV2 flow: "

    .line 128
    .line 129
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    .line 141
    .line 142
    const-string v1, "Continuing with application verification as normal"

    .line 143
    .line 144
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    :cond_4
    if-nez v7, :cond_6

    .line 148
    .line 149
    if-eqz p6, :cond_5

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->i()Lcom/google/android/gms/tasks/Task;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    new-instance v12, Lv7/c;

    .line 157
    .line 158
    const/4 v10, 0x0

    .line 159
    move-object v2, v12

    .line 160
    move-object v3, p0

    .line 161
    move-object v4, v0

    .line 162
    move-object v5, p1

    .line 163
    move-object/from16 v6, p7

    .line 164
    .line 165
    move-object v7, p2

    .line 166
    move-object/from16 v8, p3

    .line 167
    .line 168
    move/from16 v9, p4

    .line 169
    .line 170
    invoke-direct/range {v2 .. v11}, Lv7/c;-><init>(Lv7/r;Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v12}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 174
    .line 175
    .line 176
    goto :goto_4

    .line 177
    :cond_6
    :goto_3
    move-object v2, p0

    .line 178
    move-object v3, p1

    .line 179
    move-object v4, p2

    .line 180
    move-object/from16 v5, p3

    .line 181
    .line 182
    move/from16 v6, p4

    .line 183
    .line 184
    move-object v8, v11

    .line 185
    move-object v9, v0

    .line 186
    invoke-direct/range {v2 .. v9}, Lv7/r;->c(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZLv7/n0;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 187
    .line 188
    .line 189
    :goto_4
    invoke-virtual {v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    return-object v0

    .line 194
    :cond_7
    :goto_5
    new-instance v0, Lv7/x0;

    .line 195
    .line 196
    invoke-direct {v0}, Lv7/x0;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Lv7/t0;->b()Lv7/u0;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    return-object v0
.end method
