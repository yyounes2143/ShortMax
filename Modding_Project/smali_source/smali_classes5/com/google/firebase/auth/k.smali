.class public final Lcom/google/firebase/auth/k;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/auth/k$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/firebase/auth/FirebaseAuth;

.field private b:Ljava/lang/Long;

.field private c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

.field private d:Ljava/util/concurrent/Executor;

.field private e:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private f:Landroid/app/Activity;

.field private g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/google/firebase/auth/MultiFactorSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method private constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Z)V
    .locals 0
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/google/firebase/auth/MultiFactorSession;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/google/firebase/auth/PhoneMultiFactorInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/firebase/auth/k;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 4
    iput-object p5, p0, Lcom/google/firebase/auth/k;->e:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/firebase/auth/k;->b:Ljava/lang/Long;

    .line 6
    iput-object p3, p0, Lcom/google/firebase/auth/k;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 7
    iput-object p6, p0, Lcom/google/firebase/auth/k;->f:Landroid/app/Activity;

    .line 8
    iput-object p4, p0, Lcom/google/firebase/auth/k;->d:Ljava/util/concurrent/Executor;

    .line 9
    iput-object p7, p0, Lcom/google/firebase/auth/k;->g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 10
    iput-object p8, p0, Lcom/google/firebase/auth/k;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 11
    iput-object p9, p0, Lcom/google/firebase/auth/k;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 12
    iput-boolean p10, p0, Lcom/google/firebase/auth/k;->j:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;ZLcom/google/firebase/auth/x;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/google/firebase/auth/k;-><init>(Lcom/google/firebase/auth/FirebaseAuth;Ljava/lang/Long;Lcom/google/firebase/auth/PhoneAuthProvider$a;Ljava/util/concurrent/Executor;Ljava/lang/String;Landroid/app/Activity;Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;Lcom/google/firebase/auth/MultiFactorSession;Lcom/google/firebase/auth/PhoneMultiFactorInfo;Z)V

    return-void
.end method

.method public static a()Lcom/google/firebase/auth/k$a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/firebase/auth/k$a;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/firebase/auth/FirebaseAuth;->getInstance()Lcom/google/firebase/auth/FirebaseAuth;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/google/firebase/auth/k$a;-><init>(Lcom/google/firebase/auth/FirebaseAuth;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method


# virtual methods
.method public final b()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->f:Landroid/app/Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/firebase/auth/k;->k:Z

    .line 3
    .line 4
    return-void
.end method

.method public final d()Lcom/google/firebase/auth/FirebaseAuth;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->a:Lcom/google/firebase/auth/FirebaseAuth;

    .line 2
    .line 3
    return-object v0
.end method

.method public final e(Z)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/firebase/auth/k;->l:Z

    .line 3
    .line 4
    return-void
.end method

.method public final f()Lcom/google/firebase/auth/MultiFactorSession;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g()Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->g:Lcom/google/firebase/auth/PhoneAuthProvider$ForceResendingToken;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/google/firebase/auth/PhoneAuthProvider$a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->c:Lcom/google/firebase/auth/PhoneAuthProvider$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/google/firebase/auth/PhoneMultiFactorInfo;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->i:Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Ljava/lang/Long;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->b:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final l()Ljava/util/concurrent/Executor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->d:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/auth/k;->k:Z

    .line 2
    .line 3
    return v0
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/auth/k;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/auth/k;->l:Z

    .line 2
    .line 3
    return v0
.end method

.method public final p()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/k;->h:Lcom/google/firebase/auth/MultiFactorSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
