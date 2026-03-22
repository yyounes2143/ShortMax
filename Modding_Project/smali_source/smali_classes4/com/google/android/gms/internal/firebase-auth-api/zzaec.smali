.class final Lcom/google/android/gms/internal/firebase-auth-api/zzaec;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaff;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaff<",
        "Ljava/lang/Void;",
        "Lv7/w0;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzv:Ljava/lang/String;

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;-><init>(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzv:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzw:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzx:Ljava/lang/String;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "unenrollMfa"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;)V
    .locals 3

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    iput-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafg;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzv:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzw:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaec;->zzx:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafh;

    invoke-virtual {p2, p1, v0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzaem;)V

    return-void
.end method

.method public final zzb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zze:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lv7/w0;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzj:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzc:Lcom/google/firebase/f;

    .line 8
    .line 9
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzk:Lcom/google/android/gms/internal/firebase-auth-api/zzahk;

    .line 10
    .line 11
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/zzacq;->zza(Lcom/google/firebase/f;Lcom/google/android/gms/internal/firebase-auth-api/zzahk;)Lcom/google/firebase/auth/internal/zzaf;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-interface {v0, v1, v2}, Lv7/w0;->a(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Lcom/google/firebase/auth/FirebaseUser;)V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
