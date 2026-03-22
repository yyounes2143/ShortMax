.class public final Lv7/e0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Lcom/google/android/gms/internal/firebase-auth-api/zzahs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field d:Lcom/google/firebase/f;

.field private e:Lcom/google/firebase/auth/FirebaseAuth;

.field f:Lv7/a0;


# direct methods
.method public constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseAuth;)V
    .locals 1

    .line 1
    new-instance v0, Lv7/c0;

    invoke-direct {v0}, Lv7/c0;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lv7/e0;-><init>(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseAuth;Lv7/a0;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/f;Lcom/google/firebase/auth/FirebaseAuth;Lv7/a0;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lv7/e0;->a:Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv7/e0;->b:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lv7/e0;->d:Lcom/google/firebase/f;

    .line 6
    iput-object p2, p0, Lv7/e0;->e:Lcom/google/firebase/auth/FirebaseAuth;

    .line 7
    iput-object p3, p0, Lv7/e0;->f:Lv7/a0;

    return-void
.end method

.method static synthetic c(Lv7/e0;Lcom/google/android/gms/internal/firebase-auth-api/zzahs;Lcom/google/android/gms/tasks/Task;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lv7/e0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lv7/e0;->c:Lcom/google/android/gms/internal/firebase-auth-api/zzahs;

    .line 5
    .line 6
    iget-object p0, p0, Lv7/e0;->b:Ljava/util/Map;

    .line 7
    .line 8
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method private final f(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lv7/e0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lv7/e0;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/google/android/gms/tasks/Task;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzac;->zzc(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "*"

    .line 8
    .line 9
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/android/recaptcha/RecaptchaTasksClient;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv7/e0;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lv7/e0;->f(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    return-object p2

    .line 18
    :cond_0
    iget-object p2, p0, Lv7/e0;->e:Lcom/google/firebase/auth/FirebaseAuth;

    .line 19
    .line 20
    const-string v0, "RECAPTCHA_ENTERPRISE"

    .line 21
    .line 22
    invoke-virtual {p2, v0}, Lcom/google/firebase/auth/FirebaseAuth;->q(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    new-instance v0, Lv7/d0;

    .line 27
    .line 28
    invoke-direct {v0, p0, p1}, Lv7/d0;-><init>(Lv7/e0;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/android/recaptcha/RecaptchaAction;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/android/recaptcha/RecaptchaAction;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lv7/e0;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lv7/e0;->f(Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0, p1, p2}, Lv7/e0;->a(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/google/android/gms/tasks/Task;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    :cond_1
    new-instance p1, Lv7/g0;

    .line 22
    .line 23
    invoke-direct {p1, p0, p3}, Lv7/g0;-><init>(Lv7/e0;Lcom/google/android/recaptcha/RecaptchaAction;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p1}, Lcom/google/android/gms/tasks/Task;->continueWithTask(Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method public final d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv7/e0;->c:Lcom/google/android/gms/internal/firebase-auth-api/zzahs;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-nez p1, :cond_1

    .line 15
    .line 16
    return v1

    .line 17
    :cond_1
    const-string v0, "AUDIT"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    return p1
.end method

.method public final e(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lv7/e0;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lv7/e0;->c:Lcom/google/android/gms/internal/firebase-auth-api/zzahs;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahs;->zzc(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    monitor-exit v0

    .line 20
    return p1

    .line 21
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p1
.end method
