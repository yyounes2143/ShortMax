.class public final Lcom/google/android/gms/internal/ads/zzfcu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# instance fields
.field private zza:Lcom/google/android/gms/ads/internal/client/zzm;

.field private zzb:Lcom/google/android/gms/ads/internal/client/zzr;

.field private zzc:Ljava/lang/String;

.field private zzd:Lcom/google/android/gms/ads/internal/client/zzgc;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zze:Z

.field private zzf:Ljava/util/ArrayList;

.field private zzg:Ljava/util/ArrayList;

.field private zzh:Lcom/google/android/gms/internal/ads/zzbge;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzi:Lcom/google/android/gms/ads/internal/client/zzx;

.field private zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

.field private zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzco;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzm:I

.field private zzn:Lcom/google/android/gms/internal/ads/zzbmp;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzo:Lcom/google/android/gms/internal/ads/zzfch;

.field private zzp:Z

.field private zzq:Z

.field private zzr:Lcom/google/android/gms/internal/ads/zzeky;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private zzs:Z

.field private zzt:Landroid/os/Bundle;

.field private final zzu:Ljava/util/concurrent/atomic/AtomicLong;

.field private zzv:Lcom/google/android/gms/ads/internal/client/zzcs;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzm:I

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfch;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfch;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 27
    .line 28
    return-void
.end method

.method static bridge synthetic zzM(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzO(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzf:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzP(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzg:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzQ(Lcom/google/android/gms/internal/ads/zzfcu;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzR(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzS(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzT(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzU(Lcom/google/android/gms/internal/ads/zzfcu;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzX(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzcs;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfcu;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzm:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzfcu;)Landroid/os/Bundle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzt:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzd(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzf(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzh(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzj(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzx;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzk(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzco;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzl(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/ads/internal/client/zzgc;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzm(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzbge;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzn(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzbmp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzn:Lcom/google/android/gms/internal/ads/zzbmp;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzo(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzeky;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzr:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic zzp(Lcom/google/android/gms/internal/ads/zzfcu;)Lcom/google/android/gms/internal/ads/zzfch;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final zzA(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    .line 3
    .line 4
    return-object p0
.end method

.method public final zzB(Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzt:Landroid/os/Bundle;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzC(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzD(I)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzm:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzE(Lcom/google/android/gms/internal/ads/zzbge;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzbge;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzF(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzf:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzG(Ljava/util/ArrayList;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzg:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzH(J)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final zzI(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzk:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zzb()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;->zza()Lcom/google/android/gms/ads/internal/client/zzco;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzl:Lcom/google/android/gms/ads/internal/client/zzco;

    .line 16
    .line 17
    :cond_0
    return-object p0
.end method

.method public final zzJ(Lcom/google/android/gms/ads/internal/client/zzm;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzK(Lcom/google/android/gms/ads/internal/client/zzgc;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/internal/client/zzgc;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzL()Lcom/google/android/gms/internal/ads/zzfcw;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "ad unit must not be null"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 9
    .line 10
    const-string v1, "ad size must not be null"

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 16
    .line 17
    const-string v1, "ad request must not be null"

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcw;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzfcw;-><init>(Lcom/google/android/gms/internal/ads/zzfcu;Lcom/google/android/gms/internal/ads/zzfcv;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method

.method public final zzN()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzV()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zzW()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zzY(Lcom/google/android/gms/ads/internal/client/zzcs;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/internal/client/zzcs;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzb()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public final zzg()Lcom/google/android/gms/ads/internal/client/zzm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/ads/internal/client/zzr;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzfch;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzr(Lcom/google/android/gms/internal/ads/zzfcw;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzo:Lcom/google/android/gms/internal/ads/zzfch;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzo:Lcom/google/android/gms/internal/ads/zzfcj;

    .line 4
    .line 5
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfcj;->zza:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzfch;->zza(I)Lcom/google/android/gms/internal/ads/zzfch;

    .line 8
    .line 9
    .line 10
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zza:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zze:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzu:Lcom/google/android/gms/ads/internal/client/zzcs;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzv:Lcom/google/android/gms/ads/internal/client/zzcs;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzf:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    .line 25
    .line 26
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zza:Lcom/google/android/gms/ads/internal/client/zzgc;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    .line 29
    .line 30
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzg:Ljava/util/ArrayList;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzf:Ljava/util/ArrayList;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzh:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzg:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzi:Lcom/google/android/gms/internal/ads/zzbge;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzh:Lcom/google/android/gms/internal/ads/zzbge;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzj:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 45
    .line 46
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzl:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfcu;->zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 49
    .line 50
    .line 51
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzm:Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfcu;->zzI(Lcom/google/android/gms/ads/formats/PublisherAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;

    .line 54
    .line 55
    .line 56
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzp:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    .line 59
    .line 60
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzq:Z

    .line 61
    .line 62
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    .line 63
    .line 64
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzc:Lcom/google/android/gms/internal/ads/zzeky;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzr:Lcom/google/android/gms/internal/ads/zzeky;

    .line 67
    .line 68
    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzr:Z

    .line 69
    .line 70
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzs:Z

    .line 71
    .line 72
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzs:Landroid/os/Bundle;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzt:Landroid/os/Bundle;

    .line 75
    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzu:Ljava/util/concurrent/atomic/AtomicLong;

    .line 77
    .line 78
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfcw;->zzt:Ljava/util/concurrent/atomic/AtomicLong;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 81
    .line 82
    .line 83
    move-result-wide v1

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 85
    .line 86
    .line 87
    return-object p0
.end method

.method public final zzs(Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzj:Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/ads/formats/AdManagerAdViewOptions;->getManualImpressionsEnabled()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zze:Z

    .line 10
    .line 11
    :cond_0
    return-object p0
.end method

.method public final zzt(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzb:Lcom/google/android/gms/ads/internal/client/zzr;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzu(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzc:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzv(Lcom/google/android/gms/ads/internal/client/zzx;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzi:Lcom/google/android/gms/ads/internal/client/zzx;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzeky;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/zzeky;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzr:Lcom/google/android/gms/internal/ads/zzeky;

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzx(Lcom/google/android/gms/internal/ads/zzbmp;)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 2
    .param p1    # Lcom/google/android/gms/internal/ads/zzbmp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzn:Lcom/google/android/gms/internal/ads/zzbmp;

    .line 2
    .line 3
    new-instance p1, Lcom/google/android/gms/ads/internal/client/zzgc;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-direct {p1, v0, v1, v0}, Lcom/google/android/gms/ads/internal/client/zzgc;-><init>(ZZZ)V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzd:Lcom/google/android/gms/ads/internal/client/zzgc;

    .line 11
    .line 12
    return-object p0
.end method

.method public final zzy(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzp:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public final zzz(Z)Lcom/google/android/gms/internal/ads/zzfcu;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzfcu;->zzq:Z

    .line 2
    .line 3
    return-object p0
.end method
