.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzahz;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzajg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzajg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzajg;

    .line 15
    .line 16
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzajg;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/firebase-auth-api/zzajg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzajg;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzahz;->zza:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
