.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzkg;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzlg;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzd;,
        Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zza;
    }
.end annotation


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

.field private final zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

.field private final zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

.field private final zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzlg;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

    .line 4
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

    .line 5
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

    .line 6
    iput-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;Lcom/google/android/gms/internal/firebase-auth-api/zzkj;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzd;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzd;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzd;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzkj;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

    .line 10
    .line 11
    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

    .line 16
    .line 17
    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

    .line 18
    .line 19
    if-ne v0, v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

    .line 22
    .line 23
    iget-object v2, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

    .line 24
    .line 25
    if-ne v0, v2, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 30
    .line 31
    if-ne v0, p1, :cond_1

    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 8
    .line 9
    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;

    .line 10
    .line 11
    filled-new-array {v4, v0, v1, v2, v3}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

    .line 8
    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v5, "HPKE Parameters (Variant: "

    .line 28
    .line 29
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v0, ", KemId: "

    .line 36
    .line 37
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v0, ", KdfId: "

    .line 44
    .line 45
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    const-string v0, ", AeadId: "

    .line 52
    .line 53
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v0, ")"

    .line 60
    .line 61
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    return-object v0
.end method

.method public final zza()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 4
    .line 5
    if-eq v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    return v0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzc:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzb;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzc;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zzf;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzkg;->zzd:Lcom/google/android/gms/internal/firebase-auth-api/zzkg$zze;

    .line 2
    .line 3
    return-object v0
.end method
