.class final Lcom/google/android/gms/internal/play_billing/zzbs;
.super Lcom/google/android/gms/internal/play_billing/zzbt;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field final transient zza:I

.field final transient zzb:I

.field final synthetic zzc:Lcom/google/android/gms/internal/play_billing/zzbt;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/play_billing/zzbt;II)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzc:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 5
    .line 6
    invoke-direct {p0}, Lcom/google/android/gms/internal/play_billing/zzbt;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p2, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zza:I

    .line 10
    .line 11
    iput p3, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzb:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzb:I

    .line 2
    .line 3
    const-string v1, "index"

    .line 4
    .line 5
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/play_billing/zzbg;->zza(IILjava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzc:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 9
    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zza:I

    .line 11
    .line 12
    add-int/2addr p1, v1

    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzb:I

    .line 2
    .line 3
    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzh(II)Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method final zzb()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzc:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zza:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzb:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    return v0
.end method

.method final zzc()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzc:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzc()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget v1, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zza:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method final zzf()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method final zzg()[Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzc:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzbq;->zzg()[Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzh(II)Lcom/google/android/gms/internal/play_billing/zzbt;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzb:I

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/play_billing/zzbg;->zzd(III)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zza:I

    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/play_billing/zzbs;->zzc:Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 9
    .line 10
    add-int/2addr p1, v0

    .line 11
    add-int/2addr p2, v0

    .line 12
    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzh(II)Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
