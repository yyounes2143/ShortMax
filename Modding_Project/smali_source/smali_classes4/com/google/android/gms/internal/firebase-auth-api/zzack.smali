.class final Lcom/google/android/gms/internal/firebase-auth-api/zzack;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzafv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzafv<",
        "Lcom/google/android/gms/internal/firebase-auth-api/zzahv;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

.field private final synthetic zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzael;

.field private final synthetic zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaar;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/firebase-auth-api/zzael;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzael;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    .line 9
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)V
    .locals 3

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzail;

    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzail;-><init>()V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzail;->zzd(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzail;

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzb()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzail;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzail;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->zzc()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->m()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zza:Lcom/google/firebase/auth/UserProfileChangeRequest;

    invoke-virtual {v1}, Lcom/google/firebase/auth/UserProfileChangeRequest;->zza()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzail;->zzg(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzail;

    .line 10
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzaar;

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzael;

    invoke-static {v1, v2, p1, v0, p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaar;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzaar;Lcom/google/android/gms/internal/firebase-auth-api/zzael;Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Lcom/google/android/gms/internal/firebase-auth-api/zzail;Lcom/google/android/gms/internal/firebase-auth-api/zzafs;)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lv7/j;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/Status;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzack;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzael;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzael;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method
