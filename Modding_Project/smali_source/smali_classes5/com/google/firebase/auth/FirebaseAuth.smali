.class public Lcom/google/firebase/auth/FirebaseAuth;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Lv7/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/FirebaseAuth$b;,
        Lcom/google/firebase/auth/FirebaseAuth$a;,
        Lcom/google/firebase/auth/FirebaseAuth$c;,
        Lcom/google/firebase/auth/FirebaseAuth$d;
    }
.end annotation


# instance fields
.field protected final A:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private B:Ljava/lang/String;

.field private final a:Lcom/google/firebase/f;

.field protected final b:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$b;",
            ">;"
        }
    .end annotation
.end field

.field protected final c:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/FirebaseAuth$a;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Ljava/util/List;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lv7/a;",
            ">;"
        }
    .end annotation
.end field

.field protected final e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

.field private f:Lcom/google/firebase/auth/FirebaseUser;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lv7/e;

.field private final h:Ljava/lang/Object;

.field private i:Ljava/lang/String;

.field private final j:Ljava/lang/Object;

.field private k:Ljava/lang/String;

.field private l:Lv7/e0;

.field private final m:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final n:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final o:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final p:Lcom/google/android/recaptcha/RecaptchaAction;

.field private final q:Lcom/google/android/recaptcha/RecaptchaAction;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final r:Lcom/google/android/recaptcha/RecaptchaAction;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final s:Lv7/j0;

.field private final t:Lv7/n0;

.field private final u:Lv7/r;

.field private final v:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "Ls7/b;",
            ">;"
        }
    .end annotation
.end field

.field private final w:Lw8/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lw8/b<",
            "Lu8/h;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lv7/i0;

.field private final y:Ljava/util/concurrent/Executor;

.field private final z:Ljava/util/concurrent/Executor;


# direct methods
.method private constructor <init>(Lcom/google/firebase/f;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lv7/j0;Lv7/n0;Lv7/r;Lw8/b;Lw8/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/a;
        .end annotation
    .end param
    .param p9    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/b;
        .end annotation
    .end param
    .param p10    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p11    # Ljava/util/concurrent/Executor;
        .annotation build Lo7/d;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzacq;",
            "Lv7/j0;",
            "Lv7/n0;",
            "Lv7/r;",
            "Lw8/b<",
            "Ls7/b;",
            ">;",
            "Lw8/b<",
            "Lu8/h;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->b:Ljava/util/List;

    .line 9
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->c:Ljava/util/List;

    .line 10
    new-instance p8, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p8}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->d:Ljava/util/List;

    .line 11
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 12
    new-instance p8, Ljava/lang/Object;

    invoke-direct {p8}, Ljava/lang/Object;-><init>()V

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 13
    const-string p8, "getOobCode"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 14
    const-string p8, "signInWithPassword"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 15
    const-string p8, "signUpPassword"

    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 16
    const-string p8, "sendVerificationCode"

    .line 17
    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 18
    const-string p8, "mfaSmsEnrollment"

    .line 19
    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->q:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 20
    const-string p8, "mfaSmsSignIn"

    .line 21
    invoke-static {p8}, Lcom/google/android/recaptcha/RecaptchaAction;->custom(Ljava/lang/String;)Lcom/google/android/recaptcha/RecaptchaAction;

    move-result-object p8

    iput-object p8, p0, Lcom/google/firebase/auth/FirebaseAuth;->r:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 22
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/f;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 23
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 24
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv7/j0;

    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lv7/j0;

    .line 25
    new-instance p2, Lv7/e;

    invoke-direct {p2}, Lv7/e;-><init>()V

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lv7/e;

    .line 26
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lv7/n0;

    iput-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->t:Lv7/n0;

    .line 27
    invoke-static {p5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lv7/r;

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->u:Lv7/r;

    .line 28
    iput-object p6, p0, Lcom/google/firebase/auth/FirebaseAuth;->v:Lw8/b;

    .line 29
    iput-object p7, p0, Lcom/google/firebase/auth/FirebaseAuth;->w:Lw8/b;

    .line 30
    iput-object p9, p0, Lcom/google/firebase/auth/FirebaseAuth;->y:Ljava/util/concurrent/Executor;

    .line 31
    iput-object p10, p0, Lcom/google/firebase/auth/FirebaseAuth;->z:Ljava/util/concurrent/Executor;

    .line 32
    iput-object p11, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 33
    invoke-virtual {p1}, Lv7/j0;->b()Lcom/google/firebase/auth/FirebaseUser;

    move-result-object p3

    iput-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    if-eqz p3, :cond_0

    .line 34
    invoke-virtual {p1, p3}, Lv7/j0;->a(Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    const/4 p4, 0x0

    invoke-static {p0, p3, p1, p4, p4}, Lcom/google/firebase/auth/FirebaseAuth;->y(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 36
    :cond_0
    invoke-virtual {p2, p0}, Lv7/n0;->b(Lcom/google/firebase/auth/FirebaseAuth;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Lw8/b;Lw8/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 12
    .param p1    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lw8/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lw8/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lo7/a;
        .end annotation
    .end param
    .param p5    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lo7/b;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ScheduledExecutorService;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lo7/c;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation

        .annotation build Lo7/d;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Lw8/b<",
            "Ls7/b;",
            ">;",
            "Lw8/b<",
            "Lu8/h;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    move-object v1, p1

    move-object/from16 v9, p5

    move-object/from16 v0, p7

    invoke-direct {v2, p1, v9, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;-><init>(Lcom/google/firebase/f;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 2
    new-instance v3, Lv7/j0;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/firebase/f;->q()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lv7/j0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lv7/n0;->d()Lv7/n0;

    move-result-object v4

    .line 5
    invoke-static {}, Lv7/r;->b()Lv7/r;

    move-result-object v5

    move-object v0, p0

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p8

    .line 6
    invoke-direct/range {v0 .. v11}, Lcom/google/firebase/auth/FirebaseAuth;-><init>(Lcom/google/firebase/f;Lcom/google/android/gms/internal/firebase-auth-api/zzacq;Lv7/j0;Lv7/n0;Lv7/r;Lw8/b;Lw8/b;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static B(Lcom/google/firebase/auth/k;)V
    .locals 19
    .param p0    # Lcom/google/firebase/auth/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->p()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->d()Lcom/google/firebase/auth/FirebaseAuth;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->f()Lcom/google/firebase/auth/MultiFactorSession;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/google/firebase/auth/internal/zzam;

    .line 22
    .line 23
    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    move-object v4, v3

    .line 38
    move-object v10, v4

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->i()Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-static {v3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    check-cast v3, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/google/firebase/auth/MultiFactorInfo;->p()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-static {v4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-virtual {v3}, Lcom/google/firebase/auth/PhoneMultiFactorInfo;->getPhoneNumber()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    move-object v10, v4

    .line 63
    move-object v4, v3

    .line 64
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->g()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    if-eqz v3, :cond_1

    .line 69
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->h()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->b()Landroid/app/Activity;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->l()Ljava/util/concurrent/Executor;

    .line 79
    .line 80
    .line 81
    move-result-object v6

    .line 82
    invoke-static {v10, v3, v5, v6}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    :cond_1
    invoke-virtual {v2}, Lcom/google/firebase/auth/internal/zzam;->zzd()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_2

    .line 93
    .line 94
    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->q:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 95
    .line 96
    :goto_1
    move-object v9, v2

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->r:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :goto_2
    iget-object v2, v1, Lcom/google/firebase/auth/FirebaseAuth;->u:Lv7/r;

    .line 102
    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->b()Landroid/app/Activity;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->Q()Z

    .line 108
    .line 109
    .line 110
    move-result v6

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->m()Z

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->o()Z

    .line 116
    .line 117
    .line 118
    move-result v8

    .line 119
    move-object v3, v1

    .line 120
    invoke-virtual/range {v2 .. v9}, Lv7/r;->a(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZZLcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    new-instance v3, Lcom/google/firebase/auth/i0;

    .line 125
    .line 126
    invoke-direct {v3, v1, v0, v10}, Lcom/google/firebase/auth/i0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/k;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v2, v3}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 130
    .line 131
    .line 132
    :cond_3
    return-void

    .line 133
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->d()Lcom/google/firebase/auth/FirebaseAuth;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-static {v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->g()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    if-eqz v3, :cond_5

    .line 150
    .line 151
    goto :goto_3

    .line 152
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->h()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->b()Landroid/app/Activity;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->l()Ljava/util/concurrent/Executor;

    .line 161
    .line 162
    .line 163
    move-result-object v5

    .line 164
    invoke-static {v2, v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;Landroid/app/Activity;Ljava/util/concurrent/Executor;)Z

    .line 165
    .line 166
    .line 167
    move-result v3

    .line 168
    if-nez v3, :cond_6

    .line 169
    .line 170
    :goto_3
    iget-object v11, v1, Lcom/google/firebase/auth/FirebaseAuth;->u:Lv7/r;

    .line 171
    .line 172
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->b()Landroid/app/Activity;

    .line 173
    .line 174
    .line 175
    move-result-object v14

    .line 176
    invoke-virtual {v1}, Lcom/google/firebase/auth/FirebaseAuth;->Q()Z

    .line 177
    .line 178
    .line 179
    move-result v15

    .line 180
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->m()Z

    .line 181
    .line 182
    .line 183
    move-result v16

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/k;->o()Z

    .line 185
    .line 186
    .line 187
    move-result v17

    .line 188
    iget-object v3, v1, Lcom/google/firebase/auth/FirebaseAuth;->p:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 189
    .line 190
    move-object v12, v1

    .line 191
    move-object v13, v2

    .line 192
    move-object/from16 v18, v3

    .line 193
    .line 194
    invoke-virtual/range {v11 .. v18}, Lv7/r;->a(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Landroid/app/Activity;ZZZLcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    new-instance v4, Lcom/google/firebase/auth/j0;

    .line 199
    .line 200
    invoke-direct {v4, v1, v0, v2}, Lcom/google/firebase/auth/j0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/k;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v3, v4}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    .line 204
    .line 205
    .line 206
    :cond_6
    return-void
.end method

.method private static F(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 4
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "FirebaseAuth"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v3, "Notifying id token listeners about user ( "

    .line 12
    .line 13
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " )."

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v1, "Notifying id token listeners about a sign-out event."

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    if-eqz p1, :cond_1

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->zzd()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    goto :goto_1

    .line 44
    :cond_1
    const/4 p1, 0x0

    .line 45
    :goto_1
    new-instance v0, Lb9/b;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lb9/b;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 51
    .line 52
    new-instance v1, Lcom/google/firebase/auth/n0;

    .line 53
    .line 54
    invoke-direct {v1, p0, v0}, Lcom/google/firebase/auth/n0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lb9/b;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private final G(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/d;->b(Ljava/lang/String;)Lcom/google/firebase/auth/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/firebase/auth/d;->c()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    return p1
.end method

.method static bridge synthetic I(Lcom/google/firebase/auth/FirebaseAuth;)Lv7/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lv7/e;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic K(Lcom/google/firebase/auth/FirebaseAuth;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private static O(Lcom/google/firebase/auth/FirebaseAuth;)Lv7/i0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lv7/i0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/google/firebase/f;

    .line 12
    .line 13
    new-instance v1, Lv7/i0;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Lv7/i0;-><init>(Lcom/google/firebase/f;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lv7/i0;

    .line 19
    .line 20
    :cond_0
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lv7/i0;

    .line 21
    .line 22
    return-object p0
.end method

.method public static getInstance()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/firebase/f;->m()Lcom/google/firebase/f;

    move-result-object v0

    .line 2
    const-class v1, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {v0, v1}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object v0
.end method

.method public static getInstance(Lcom/google/firebase/f;)Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .param p0    # Lcom/google/firebase/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    const-class v0, Lcom/google/firebase/auth/FirebaseAuth;

    invoke-virtual {p0, v0}, Lcom/google/firebase/f;->j(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/auth/FirebaseAuth;

    return-object p0
.end method

.method private final n(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/EmailAuthCredential;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/auth/r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p3, p2, p1}, Lcom/google/firebase/auth/r;-><init>(Lcom/google/firebase/auth/FirebaseAuth;ZLcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->m:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 7
    .line 8
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 9
    .line 10
    const-string p3, "EMAIL_PASSWORD_PROVIDER"

    .line 11
    .line 12
    invoke-virtual {v0, p0, p2, p1, p3}, Lv7/x;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method private final r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 8
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/google/firebase/auth/q0;

    .line 2
    .line 3
    move-object v0, v7

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p5

    .line 7
    move-object v4, p4

    .line 8
    move-object v5, p2

    .line 9
    move-object v6, p3

    .line 10
    invoke-direct/range {v0 .. v6}, Lcom/google/firebase/auth/q0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;ZLcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->n:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 14
    .line 15
    const-string p2, "EMAIL_PASSWORD_PROVIDER"

    .line 16
    .line 17
    invoke-virtual {v7, p0, p3, p1, p2}, Lv7/x;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method static bridge synthetic s(Lcom/google/firebase/auth/FirebaseAuth;)Lcom/google/firebase/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic t(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->v(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final v(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lv7/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lv7/e;->d()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lv7/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lv7/e;->a()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    new-instance p1, Lcom/google/firebase/auth/l0;

    .line 24
    .line 25
    invoke-direct {p1, p0, p2}, Lcom/google/firebase/auth/l0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V

    .line 26
    .line 27
    .line 28
    move-object p2, p1

    .line 29
    :cond_0
    return-object p2
.end method

.method public static w(Lcom/google/firebase/FirebaseException;Lcom/google/firebase/auth/k;Ljava/lang/String;)V
    .locals 2
    .param p0    # Lcom/google/firebase/FirebaseException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/firebase/auth/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Invoking verification failure callback for phone number/uid - "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "FirebaseAuth"

    .line 16
    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/auth/k;->h()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-static {p2, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzagb;->zza(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lcom/google/android/gms/internal/firebase-auth-api/zzaff;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-virtual {p1}, Lcom/google/firebase/auth/k;->l()Ljava/util/concurrent/Executor;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    new-instance v0, Lcom/google/firebase/auth/h0;

    .line 34
    .line 35
    invoke-direct {v0, p2, p0}, Lcom/google/firebase/auth/h0;-><init>(Lcom/google/firebase/auth/PhoneAuthProvider$a;Lcom/google/firebase/FirebaseException;)V

    .line 36
    .line 37
    .line 38
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private static x(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "FirebaseAuth"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    const-string v2, "Notifying auth state listeners about user ( "

    .line 12
    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p1, " )."

    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string p1, "Notifying auth state listeners about a sign-out event."

    .line 33
    .line 34
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :goto_0
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->A:Ljava/util/concurrent/Executor;

    .line 38
    .line 39
    new-instance v0, Lcom/google/firebase/auth/p0;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/google/firebase/auth/p0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 42
    .line 43
    .line 44
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private static y(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V
    .locals 4
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x1

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    move v0, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v0, v1

    .line 32
    :goto_0
    if-nez v0, :cond_1

    .line 33
    .line 34
    if-eqz p4, :cond_1

    .line 35
    .line 36
    return-void

    .line 37
    :cond_1
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 38
    .line 39
    if-nez p4, :cond_2

    .line 40
    .line 41
    move v1, v2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->f0()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 44
    .line 45
    .line 46
    move-result-object p4

    .line 47
    invoke-virtual {p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p4

    .line 51
    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p4

    .line 59
    if-eqz v0, :cond_3

    .line 60
    .line 61
    if-eqz p4, :cond_3

    .line 62
    .line 63
    move p4, v1

    .line 64
    goto :goto_1

    .line 65
    :cond_3
    move p4, v2

    .line 66
    :goto_1
    if-nez v0, :cond_4

    .line 67
    .line 68
    move v1, v2

    .line 69
    :cond_4
    move v2, p4

    .line 70
    :goto_2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 74
    .line 75
    if-eqz p4, :cond_7

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p4

    .line 81
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->h()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result p4

    .line 89
    if-nez p4, :cond_5

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_5
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->p()Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p4, v0}, Lcom/google/firebase/auth/FirebaseUser;->b0(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->R()Z

    .line 102
    .line 103
    .line 104
    move-result p4

    .line 105
    if-nez p4, :cond_6

    .line 106
    .line 107
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 108
    .line 109
    invoke-virtual {p4}, Lcom/google/firebase/auth/FirebaseUser;->d0()Lcom/google/firebase/auth/FirebaseUser;

    .line 110
    .line 111
    .line 112
    :cond_6
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->o()Lcom/google/firebase/auth/i;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    invoke-virtual {p4}, Lcom/google/firebase/auth/i;->a()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object p4

    .line 120
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->h0()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    iget-object v3, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 125
    .line 126
    invoke-virtual {v3, p4}, Lcom/google/firebase/auth/FirebaseUser;->g0(Ljava/util/List;)V

    .line 127
    .line 128
    .line 129
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 130
    .line 131
    invoke-virtual {p4, v0}, Lcom/google/firebase/auth/FirebaseUser;->e0(Ljava/util/List;)V

    .line 132
    .line 133
    .line 134
    goto :goto_4

    .line 135
    :cond_7
    :goto_3
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 136
    .line 137
    :goto_4
    if-eqz p3, :cond_8

    .line 138
    .line 139
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lv7/j0;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 142
    .line 143
    invoke-virtual {p4, v0}, Lv7/j0;->j(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 144
    .line 145
    .line 146
    :cond_8
    if-eqz v2, :cond_a

    .line 147
    .line 148
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 149
    .line 150
    if-eqz p4, :cond_9

    .line 151
    .line 152
    invoke-virtual {p4, p2}, Lcom/google/firebase/auth/FirebaseUser;->c0(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 153
    .line 154
    .line 155
    :cond_9
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 156
    .line 157
    invoke-static {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->F(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 158
    .line 159
    .line 160
    :cond_a
    if-eqz v1, :cond_b

    .line 161
    .line 162
    iget-object p4, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 163
    .line 164
    invoke-static {p0, p4}, Lcom/google/firebase/auth/FirebaseAuth;->x(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 165
    .line 166
    .line 167
    :cond_b
    if-eqz p3, :cond_c

    .line 168
    .line 169
    iget-object p3, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lv7/j0;

    .line 170
    .line 171
    invoke-virtual {p3, p1, p2}, Lv7/j0;->e(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 172
    .line 173
    .line 174
    :cond_c
    iget-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 175
    .line 176
    if-eqz p1, :cond_d

    .line 177
    .line 178
    invoke-static {p0}, Lcom/google/firebase/auth/FirebaseAuth;->O(Lcom/google/firebase/auth/FirebaseAuth;)Lv7/i0;

    .line 179
    .line 180
    .line 181
    move-result-object p0

    .line 182
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->f0()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lv7/i0;->c(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V

    .line 187
    .line 188
    .line 189
    :cond_d
    return-void
.end method


# virtual methods
.method final A(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const/4 p3, 0x1

    .line 2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/firebase/auth/FirebaseAuth;->y(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public final C(Lcom/google/firebase/auth/k;Lv7/u0;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/k;->j()Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v4

    .line 11
    const-wide/16 v1, 0x0

    .line 12
    .line 13
    cmp-long v1, v4, v1

    .line 14
    .line 15
    if-ltz v1, :cond_3

    .line 16
    .line 17
    const-wide/16 v1, 0x78

    .line 18
    .line 19
    cmp-long v1, v4, v1

    .line 20
    .line 21
    if-gtz v1, :cond_3

    .line 22
    .line 23
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/k;->k()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual/range {p2 .. p2}, Lv7/u0;->c()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual/range {p2 .. p2}, Lv7/u0;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v13

    .line 39
    invoke-virtual/range {p2 .. p2}, Lv7/u0;->d()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v14

    .line 43
    invoke-static {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zzc(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    if-eqz v3, :cond_0

    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/FirebaseAuth;->E()Lv7/e0;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    if-eqz v3, :cond_0

    .line 54
    .line 55
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/FirebaseAuth;->E()Lv7/e0;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    const-string v6, "PHONE_PROVIDER"

    .line 60
    .line 61
    invoke-virtual {v3, v6}, Lv7/e0;->d(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_0

    .line 66
    .line 67
    const-string v2, "NO_RECAPTCHA"

    .line 68
    .line 69
    :cond_0
    move-object v15, v2

    .line 70
    new-instance v16, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;

    .line 71
    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/k;->g()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    if-eqz v2, :cond_1

    .line 77
    .line 78
    const/4 v2, 0x1

    .line 79
    :goto_0
    move v6, v2

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v2, 0x0

    .line 82
    goto :goto_0

    .line 83
    :goto_1
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v8, v0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual/range {p0 .. p0}, Lcom/google/firebase/auth/FirebaseAuth;->Q()Z

    .line 88
    .line 89
    .line 90
    move-result v12

    .line 91
    move-object/from16 v2, v16

    .line 92
    .line 93
    move-object v3, v1

    .line 94
    move-object v9, v14

    .line 95
    move-object v10, v13

    .line 96
    move-object v11, v15

    .line 97
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/internal/firebase-auth-api/zzaij;-><init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/k;->h()Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-direct {v0, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->v(Ljava/lang/String;Lcom/google/firebase/auth/PhoneAuthProvider$a;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual/range {p2 .. p2}, Lv7/u0;->d()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-eqz v2, :cond_2

    .line 117
    .line 118
    invoke-static {}, Lv7/u0;->a()Lv7/t0;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    invoke-virtual {v2, v14}, Lv7/t0;->d(Ljava/lang/String;)Lv7/t0;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v2, v15}, Lv7/t0;->c(Ljava/lang/String;)Lv7/t0;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    invoke-virtual {v2, v13}, Lv7/t0;->a(Ljava/lang/String;)Lv7/t0;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    invoke-virtual {v2}, Lv7/t0;->b()Lv7/u0;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object/from16 v3, p1

    .line 139
    .line 140
    invoke-virtual {v0, v3, v1, v2}, Lcom/google/firebase/auth/FirebaseAuth;->u(Lcom/google/firebase/auth/k;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lv7/u0;)Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    :goto_2
    move-object v9, v1

    .line 145
    goto :goto_3

    .line 146
    :cond_2
    move-object/from16 v3, p1

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :goto_3
    iget-object v6, v0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 150
    .line 151
    iget-object v7, v0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 152
    .line 153
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/k;->b()Landroid/app/Activity;

    .line 154
    .line 155
    .line 156
    move-result-object v10

    .line 157
    invoke-virtual/range {p1 .. p1}, Lcom/google/firebase/auth/k;->l()Ljava/util/concurrent/Executor;

    .line 158
    .line 159
    .line 160
    move-result-object v11

    .line 161
    move-object/from16 v8, v16

    .line 162
    .line 163
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/android/gms/internal/firebase-auth-api/zzaij;Lcom/google/firebase/auth/PhoneAuthProvider$a;Landroid/app/Activity;Ljava/util/concurrent/Executor;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 168
    .line 169
    const-string v2, "We only support 0-120 seconds for sms-auto-retrieval timeout"

    .line 170
    .line 171
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw v1
.end method

.method public final declared-synchronized D(Lv7/e0;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lv7/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw p1
.end method

.method public final declared-synchronized E()Lv7/e0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lv7/e0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final H(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 10
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->p()Lcom/google/firebase/auth/AuthCredential;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    instance-of p2, v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 12
    .line 13
    if-eqz p2, :cond_2

    .line 14
    .line 15
    check-cast v3, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 16
    .line 17
    invoke-virtual {v3}, Lcom/google/firebase/auth/AuthCredential;->o()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const-string v0, "password"

    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->w()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    const/4 v9, 0x1

    .line 46
    move-object v4, p0

    .line 47
    move-object v8, p1

    .line 48
    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/auth/FirebaseAuth;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_0
    invoke-virtual {v3}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-direct {p0, p2}, Lcom/google/firebase/auth/FirebaseAuth;->G(Ljava/lang/String;)Z

    .line 62
    .line 63
    .line 64
    move-result p2

    .line 65
    if-eqz p2, :cond_1

    .line 66
    .line 67
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 68
    .line 69
    const/16 p2, 0x42b0

    .line 70
    .line 71
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 72
    .line 73
    .line 74
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    return-object p1

    .line 83
    :cond_1
    const/4 p2, 0x1

    .line 84
    invoke-direct {p0, v3, p1, p2}, Lcom/google/firebase/auth/FirebaseAuth;->n(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    return-object p1

    .line 89
    :cond_2
    instance-of p2, v3, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 90
    .line 91
    if-eqz p2, :cond_3

    .line 92
    .line 93
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 94
    .line 95
    iget-object v5, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 96
    .line 97
    move-object v7, v3

    .line 98
    check-cast v7, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 99
    .line 100
    iget-object v8, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v9, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 103
    .line 104
    invoke-direct {v9, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 105
    .line 106
    .line 107
    move-object v6, p1

    .line 108
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzb(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    return-object p1

    .line 113
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 114
    .line 115
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->w()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 122
    .line 123
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 124
    .line 125
    .line 126
    move-object v2, p1

    .line 127
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zzc(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1
.end method

.method public final J()Lw8/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/b<",
            "Ls7/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->v:Lw8/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final L()Lw8/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lw8/b<",
            "Lu8/h;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->w:Lw8/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final M()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->y:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final N()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->z:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final P()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lv7/j0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lv7/j0;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Lv7/j0;->h(Lcom/google/firebase/auth/FirebaseUser;)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->s:Lv7/j0;

    .line 19
    .line 20
    invoke-virtual {v0}, Lv7/j0;->g()V

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->F(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->x(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method final Q()Z
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/f;->l()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeu;->zza(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public a(Z)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/g;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 2
    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/google/firebase/auth/FirebaseAuth;->p(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public b()Lcom/google/firebase/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Lcom/google/firebase/auth/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->g:Lv7/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->i:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public g()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return-object v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->f:Lcom/google/firebase/auth/FirebaseUser;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/auth/FirebaseUser;->x()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public i()Lcom/google/android/gms/tasks/Task;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lv7/e0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lv7/e0;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 8
    .line 9
    invoke-direct {v0, v1, p0}, Lv7/e0;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lv7/e0;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->l:Lv7/e0;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Lv7/e0;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    new-instance v1, Lcom/google/firebase/auth/q;

    .line 25
    .line 26
    invoke-direct {v1, p0}, Lcom/google/firebase/auth/q;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->j:Ljava/lang/Object;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    iput-object p1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p1
.end method

.method public k(Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 7
    .param p1    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/auth/AuthCredential;->p()Lcom/google/firebase/auth/AuthCredential;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    instance-of v0, p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    check-cast p1, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzf()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzc()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zzd()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    move-object v3, p1

    .line 33
    check-cast v3, Ljava/lang/String;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    const/4 v6, 0x0

    .line 39
    move-object v1, p0

    .line 40
    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/auth/FirebaseAuth;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/EmailAuthCredential;->zze()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-direct {p0, v0}, Lcom/google/firebase/auth/FirebaseAuth;->G(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    if-eqz v0, :cond_1

    .line 58
    .line 59
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 60
    .line 61
    const/16 v0, 0x42b0

    .line 62
    .line 63
    invoke-direct {p1, v0}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    return-object p1

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/auth/FirebaseAuth;->n(Lcom/google/firebase/auth/EmailAuthCredential;Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    return-object p1

    .line 82
    :cond_2
    instance-of v0, p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 83
    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    check-cast p1, Lcom/google/firebase/auth/PhoneAuthCredential;

    .line 87
    .line 88
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 89
    .line 90
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 93
    .line 94
    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 95
    .line 96
    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/firebase/auth/PhoneAuthCredential;Ljava/lang/String;Lv7/w0;)Lcom/google/android/gms/tasks/Task;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    return-object p1

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 107
    .line 108
    iget-object v2, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 109
    .line 110
    new-instance v3, Lcom/google/firebase/auth/FirebaseAuth$c;

    .line 111
    .line 112
    invoke-direct {v3, p0}, Lcom/google/firebase/auth/FirebaseAuth$c;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lv7/w0;)Lcom/google/android/gms/tasks/Task;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseAuth;->P()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->x:Lv7/i0;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lv7/i0;->b()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final m()Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahr;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza()Lcom/google/android/gms/tasks/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final o(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;)Lcom/google/android/gms/tasks/Task;
    .locals 6
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/AuthCredential;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Lcom/google/firebase/auth/AuthCredential;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/AuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    instance-of v0, p2, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->p()Lcom/google/firebase/auth/AuthCredential;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    check-cast p2, Lcom/google/firebase/auth/EmailAuthCredential;

    .line 16
    .line 17
    new-instance v0, Lcom/google/firebase/auth/m0;

    .line 18
    .line 19
    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/auth/m0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/EmailAuthCredential;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->w()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->o:Lcom/google/android/recaptcha/RecaptchaAction;

    .line 27
    .line 28
    const-string v1, "EMAIL_PASSWORD_PROVIDER"

    .line 29
    .line 30
    invoke-virtual {v0, p0, p1, p2, v1}, Lv7/x;->b(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/String;Lcom/google/android/recaptcha/RecaptchaAction;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/google/firebase/auth/AuthCredential;->p()Lcom/google/firebase/auth/AuthCredential;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    new-instance v5, Lcom/google/firebase/auth/FirebaseAuth$d;

    .line 44
    .line 45
    invoke-direct {v5, p0}, Lcom/google/firebase/auth/FirebaseAuth$d;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 46
    .line 47
    .line 48
    const/4 v4, 0x0

    .line 49
    move-object v2, p1

    .line 50
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Lcom/google/firebase/auth/AuthCredential;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    return-object p1
.end method

.method public final p(Lcom/google/firebase/auth/FirebaseUser;Z)Lcom/google/android/gms/tasks/Task;
    .locals 3
    .param p1    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/FirebaseUser;",
            "Z)",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/auth/g;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/common/api/Status;

    .line 4
    .line 5
    const/16 p2, 0x4457

    .line 6
    .line 7
    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzaen;->zza(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseUser;->f0()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzg()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    if-nez p2, :cond_1

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {p1}, Lcom/google/firebase/auth/internal/e;->a(Ljava/lang/String;)Lcom/google/firebase/auth/g;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {p1}, Lcom/google/android/gms/tasks/Tasks;->forResult(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1

    .line 44
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->a:Lcom/google/firebase/f;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzd()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    new-instance v2, Lcom/google/firebase/auth/o0;

    .line 53
    .line 54
    invoke-direct {v2, p0}, Lcom/google/firebase/auth/o0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2, v1, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseUser;Ljava/lang/String;Lv7/m0;)Lcom/google/android/gms/tasks/Task;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    return-object p1
.end method

.method public final q(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahs;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/FirebaseAuth;->e:Lcom/google/android/gms/internal/firebase-auth-api/zzacq;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/firebase/auth/FirebaseAuth;->k:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method final u(Lcom/google/firebase/auth/k;Lcom/google/firebase/auth/PhoneAuthProvider$a;Lv7/u0;)Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/firebase/auth/k;->m()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p2

    .line 8
    :cond_0
    new-instance v0, Lcom/google/firebase/auth/k0;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1, p3, p2}, Lcom/google/firebase/auth/k0;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/k;Lv7/u0;Lcom/google/firebase/auth/PhoneAuthProvider$a;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public final z(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Z)V
    .locals 1

    .line 1
    const/4 p3, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/google/firebase/auth/FirebaseAuth;->A(Lcom/google/firebase/auth/FirebaseUser;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;ZZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
