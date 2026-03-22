.class public final Lcom/google/android/gms/internal/ads/zzdyb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field private static final zza:Ljava/util/regex/Pattern;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzche;

.field private final zzc:Landroid/content/Context;

.field private final zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfcw;

.field private final zzf:Ljava/util/concurrent/Executor;

.field private final zzg:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzfhu;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzdsd;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfjy;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzcyy;

.field private final zzm:Ljava/lang/Object;

.field private zzn:Ljava/lang/String;

.field private zzo:Ljava/util/List;

.field private zzp:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzq:Lcom/google/android/gms/internal/ads/zzbvy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\?"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/google/android/gms/internal/ads/zzdyb;->zza:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/ads/zzche;Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfcw;Ljava/util/concurrent/Executor;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzdsd;Lcom/google/android/gms/internal/ads/zzbvy;Lcom/google/android/gms/internal/ads/zzeag;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfjy;Lcom/google/android/gms/internal/ads/zzcyy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p10, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {p10}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzm:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzc:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 16
    .line 17
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 18
    .line 19
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzf:Ljava/util/concurrent/Executor;

    .line 20
    .line 21
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzh:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzi:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzche;->zzw()Lcom/google/android/gms/internal/ads/zzfdl;

    .line 26
    .line 27
    .line 28
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 29
    .line 30
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzq:Lcom/google/android/gms/internal/ads/zzbvy;

    .line 31
    .line 32
    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    .line 33
    .line 34
    iput-object p12, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzk:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 35
    .line 36
    iput-object p13, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzl:Lcom/google/android/gms/internal/ads/zzcyy;

    .line 37
    .line 38
    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzdyb;)Lcom/google/android/gms/internal/ads/zzcyy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzl:Lcom/google/android/gms/internal/ads/zzcyy;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/List;Ljava/lang/Exception;)Lcom/google/common/util/concurrent/e;
    .locals 6

    .line 1
    const-string v0, "PreloadedLoader.getTypeTwoAdResponseString"

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbzs;->zzv(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    instance-of v0, p2, Ljava/util/concurrent/TimeoutException;

    .line 11
    .line 12
    const-string v1, "Timed out waiting for ad response."

    .line 13
    .line 14
    const/4 v2, 0x1

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance p2, Lcom/google/android/gms/internal/ads/zzehf;

    .line 18
    .line 19
    invoke-direct {p2, v2, v1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzehf;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    check-cast p2, Lcom/google/android/gms/internal/ads/zzehf;

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    if-nez v3, :cond_2

    .line 37
    .line 38
    const-string p2, "Fetch failed."

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    :goto_0
    invoke-direct {v0, v2, p2}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    move-object p2, v0

    .line 49
    :goto_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_3

    .line 54
    .line 55
    const-string v0, ""

    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :goto_2
    if-eqz p1, :cond_8

    .line 63
    .line 64
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 65
    .line 66
    .line 67
    move-result v3

    .line 68
    if-eqz v3, :cond_4

    .line 69
    .line 70
    goto :goto_5

    .line 71
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    const-string v4, "0.6.0.0"

    .line 76
    .line 77
    if-nez v3, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    if-eqz v1, :cond_5

    .line 84
    .line 85
    const-string v0, "timeout"

    .line 86
    .line 87
    const-string v4, "0.2.0.0"

    .line 88
    .line 89
    goto :goto_3

    .line 90
    :cond_5
    const-string v1, "Received HTTP error code from ad server:"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    if-eqz v1, :cond_6

    .line 97
    .line 98
    const/16 v1, 0x3a

    .line 99
    .line 100
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfva;->zzc(C)Lcom/google/android/gms/internal/ads/zzfva;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwe;->zzb(Lcom/google/android/gms/internal/ads/zzfva;)Lcom/google/android/gms/internal/ads/zzfwe;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzfwe;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    const/4 v5, 0x2

    .line 117
    if-ne v3, v5, :cond_6

    .line 118
    .line 119
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/String;

    .line 124
    .line 125
    :cond_6
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 126
    .line 127
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .line 129
    .line 130
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    if-eqz v2, :cond_7

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    check-cast v2, Ljava/lang/String;

    .line 145
    .line 146
    const-string v3, "@gw_adnetstatus@"

    .line 147
    .line 148
    invoke-static {v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v3, "@error_code@"

    .line 153
    .line 154
    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzfju;->zzc(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :cond_7
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzk:Lcom/google/android/gms/internal/ads/zzfjy;

    .line 163
    .line 164
    const/4 p1, 0x0

    .line 165
    invoke-virtual {p0, v1, p1}, Lcom/google/android/gms/internal/ads/zzfjy;->zze(Ljava/util/List;Lcom/google/android/gms/ads/internal/util/client/zzv;)V

    .line 166
    .line 167
    .line 168
    :cond_8
    :goto_5
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzdyb;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfcn;

    .line 2
    .line 3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfck;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 6
    .line 7
    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfck;-><init>(Lcom/google/android/gms/internal/ads/zzfcw;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzp:Landroid/os/Bundle;

    .line 15
    .line 16
    new-instance v2, Ljava/io/StringReader;

    .line 17
    .line 18
    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v2, p0}, Lcom/google/android/gms/internal/ads/zzfcm;->zza(Ljava/io/Reader;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzfcm;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-direct {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzfcn;-><init>(Lcom/google/android/gms/internal/ads/zzfck;Lcom/google/android/gms/internal/ads/zzfcm;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzbom;Lorg/json/JSONObject;)Lcom/google/common/util/concurrent/e;
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzp:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 36
    .line 37
    .line 38
    move-result-wide v1

    .line 39
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbom;->zzb(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzead;)Ljava/lang/String;
    .locals 7

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdrr;->zzI:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyb;->zzi(Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, -0x1

    .line 8
    :goto_0
    const/4 v2, 0x1

    .line 9
    :try_start_0
    sget-object v3, Lcom/google/android/gms/internal/ads/zzbde;->zzht:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Ljava/lang/Integer;

    .line 20
    .line 21
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v0, v3, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzc:Landroid/content/Context;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;->afmaVersion:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzq:Lcom/google/android/gms/internal/ads/zzbvy;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    new-instance v6, Lcom/google/android/gms/internal/ads/zzeaf;

    .line 40
    .line 41
    invoke-direct {v6, v1, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzeaf;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbvy;I)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v6, p1}, Lcom/google/android/gms/internal/ads/zzeaf;->zzb(Lcom/google/android/gms/internal/ads/zzead;)Lcom/google/android/gms/internal/ads/zzeae;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iget v3, v1, Lcom/google/android/gms/internal/ads/zzeae;->zza:I

    .line 49
    .line 50
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzhu:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 51
    .line 52
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    check-cast v4, Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    if-eqz v4, :cond_0

    .line 67
    .line 68
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 69
    .line 70
    const-string v5, "fr"

    .line 71
    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :catch_0
    move-exception p0

    .line 81
    goto :goto_2

    .line 82
    :cond_0
    :goto_1
    const/16 v4, 0xc8

    .line 83
    .line 84
    if-ne v3, v4, :cond_1

    .line 85
    .line 86
    sget-object p1, Lcom/google/android/gms/internal/ads/zzdrr;->zzJ:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 87
    .line 88
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzdyb;->zzi(Lcom/google/android/gms/internal/ads/zzdrr;)V

    .line 89
    .line 90
    .line 91
    iget-object p0, v1, Lcom/google/android/gms/internal/ads/zzeae;->zzc:Ljava/lang/String;

    .line 92
    .line 93
    return-object p0

    .line 94
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 95
    .line 96
    move v1, v3

    .line 97
    goto :goto_0

    .line 98
    :cond_2
    new-instance p0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 99
    .line 100
    new-instance p1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v0, "Received HTTP error code from ad server:"

    .line 106
    .line 107
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p0, v2, p1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzehf;

    .line 122
    .line 123
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-nez v0, :cond_3

    .line 128
    .line 129
    const-string v0, "Fetch failed."

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_3
    invoke-direct {p1, v2, v0, p0}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 137
    .line 138
    .line 139
    throw p1
.end method

.method private final zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/e;
    .locals 17
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/zzehf;

    .line 12
    .line 13
    const/16 v2, 0xf

    .line 14
    .line 15
    const-string v3, "Invalid ad string."

    .line 16
    .line 17
    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    return-object v1

    .line 25
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzc:Landroid/content/Context;

    .line 26
    .line 27
    const/16 v3, 0xb

    .line 28
    .line 29
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzfhi;->zza(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/zzfhj;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzfhj;->zzi()Lcom/google/android/gms/internal/ads/zzfhj;

    .line 34
    .line 35
    .line 36
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzd:Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;

    .line 37
    .line 38
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 39
    .line 40
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzg()Lcom/google/android/gms/internal/ads/zzbon;

    .line 41
    .line 42
    .line 43
    move-result-object v6

    .line 44
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzche;->zzy()Lcom/google/android/gms/internal/ads/zzfhx;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-virtual {v6, v2, v4, v5}, Lcom/google/android/gms/internal/ads/zzbon;->zza(Landroid/content/Context;Lcom/google/android/gms/ads/internal/util/client/VersionInfoParcel;Lcom/google/android/gms/internal/ads/zzfhx;)Lcom/google/android/gms/internal/ads/zzbow;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    const-string v4, "google.afma.response.normalize"

    .line 53
    .line 54
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbot;->zza:Lcom/google/android/gms/internal/ads/zzboq;

    .line 55
    .line 56
    invoke-virtual {v2, v4, v5, v5}, Lcom/google/android/gms/internal/ads/zzbow;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbop;Lcom/google/android/gms/internal/ads/zzboo;)Lcom/google/android/gms/internal/ads/zzbom;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzhp:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 61
    .line 62
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    check-cast v4, Ljava/lang/Boolean;

    .line 71
    .line 72
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    const-string v5, "1"

    .line 77
    .line 78
    const-string v6, "sst"

    .line 79
    .line 80
    if-eqz v4, :cond_4

    .line 81
    .line 82
    const/4 v4, 0x0

    .line 83
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    move-object/from16 v8, p1

    .line 86
    .line 87
    :try_start_1
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v9, "fetch_url"

    .line 91
    .line 92
    invoke-virtual {v7, v9, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    iput-object v9, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzn:Ljava/lang/String;

    .line 97
    .line 98
    new-instance v9, Lorg/json/JSONObject;

    .line 99
    .line 100
    const-string v10, "settings"

    .line 101
    .line 102
    invoke-virtual {v7, v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-direct {v9, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const-string v7, "nofill_urls"

    .line 110
    .line 111
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    invoke-static {v7, v4}, Lcom/google/android/gms/ads/internal/util/zzbs;->zzc(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzo:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :catch_0
    move-object/from16 v8, p1

    .line 123
    .line 124
    :catch_1
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 125
    .line 126
    const-string v7, "Invalid ad response."

    .line 127
    .line 128
    invoke-static {v7}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    :goto_0
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzn:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzo:Ljava/util/List;

    .line 134
    .line 135
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 136
    .line 137
    .line 138
    move-result v10

    .line 139
    if-nez v10, :cond_3

    .line 140
    .line 141
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 142
    .line 143
    const-string v8, "2"

    .line 144
    .line 145
    invoke-virtual {v5, v6, v8}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzhr:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 149
    .line 150
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 151
    .line 152
    .line 153
    move-result-object v6

    .line 154
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v5

    .line 158
    move-object v15, v5

    .line 159
    check-cast v15, Ljava/lang/String;

    .line 160
    .line 161
    sget-object v5, Lcom/google/android/gms/internal/ads/zzbde;->zzhq:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 162
    .line 163
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 164
    .line 165
    .line 166
    move-result-object v6

    .line 167
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    check-cast v5, Ljava/lang/Boolean;

    .line 172
    .line 173
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 174
    .line 175
    .line 176
    move-result v5

    .line 177
    if-eqz v5, :cond_2

    .line 178
    .line 179
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdyb;->zza:Ljava/util/regex/Pattern;

    .line 180
    .line 181
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfwe;->zzc(Ljava/util/regex/Pattern;)Lcom/google/android/gms/internal/ads/zzfwe;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfwe;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 190
    .line 191
    .line 192
    move-result v5

    .line 193
    const/4 v6, 0x2

    .line 194
    const/4 v8, 0x1

    .line 195
    if-ge v5, v6, :cond_1

    .line 196
    .line 197
    new-instance v1, Lcom/google/android/gms/internal/ads/zzehf;

    .line 198
    .line 199
    const-string v4, "Invalid fetch URL."

    .line 200
    .line 201
    invoke-direct {v1, v8, v4}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 202
    .line 203
    .line 204
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    goto/16 :goto_1

    .line 209
    .line 210
    :cond_1
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    check-cast v1, Ljava/lang/String;

    .line 215
    .line 216
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzr()Lcom/google/android/gms/ads/internal/util/zzs;

    .line 217
    .line 218
    .line 219
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 220
    .line 221
    .line 222
    move-result-object v5

    .line 223
    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    invoke-virtual {v5, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v7

    .line 239
    :cond_2
    move-object v11, v7

    .line 240
    new-instance v4, Lcom/google/android/gms/internal/ads/zzead;

    .line 241
    .line 242
    new-instance v13, Ljava/util/HashMap;

    .line 243
    .line 244
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 245
    .line 246
    .line 247
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 248
    .line 249
    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 250
    .line 251
    .line 252
    move-result-object v14

    .line 253
    const/16 v16, 0x0

    .line 254
    .line 255
    const v12, 0xea60

    .line 256
    .line 257
    .line 258
    move-object v10, v4

    .line 259
    invoke-direct/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzead;-><init>(Ljava/lang/String;ILjava/util/Map;[BLjava/lang/String;Z)V

    .line 260
    .line 261
    .line 262
    sget-object v1, Lcom/google/android/gms/internal/ads/zzcaf;->zza:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 263
    .line 264
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdxy;

    .line 265
    .line 266
    invoke-direct {v5, v0, v4}, Lcom/google/android/gms/internal/ads/zzdxy;-><init>(Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzead;)V

    .line 267
    .line 268
    .line 269
    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzgdy;->zzb(Ljava/util/concurrent/Callable;)Lcom/google/common/util/concurrent/e;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgde;->zzw(Lcom/google/common/util/concurrent/e;)Lcom/google/android/gms/internal/ads/zzgde;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbde;->zzhs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 278
    .line 279
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v4

    .line 287
    check-cast v4, Ljava/lang/Integer;

    .line 288
    .line 289
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 290
    .line 291
    .line 292
    move-result v4

    .line 293
    int-to-long v4, v4

    .line 294
    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzg:Ljava/util/concurrent/ScheduledExecutorService;

    .line 295
    .line 296
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 297
    .line 298
    invoke-static {v1, v4, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzgdn;->zzo(Lcom/google/common/util/concurrent/e;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/common/util/concurrent/e;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgde;

    .line 303
    .line 304
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdxz;

    .line 305
    .line 306
    invoke-direct {v4, v0, v9}, Lcom/google/android/gms/internal/ads/zzdxz;-><init>(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/util/List;)V

    .line 307
    .line 308
    .line 309
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzf:Ljava/util/concurrent/Executor;

    .line 310
    .line 311
    const-class v6, Ljava/lang/Exception;

    .line 312
    .line 313
    invoke-static {v1, v6, v4, v5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzf(Lcom/google/common/util/concurrent/e;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Lcom/google/android/gms/internal/ads/zzgde;

    .line 318
    .line 319
    goto :goto_1

    .line 320
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 325
    .line 326
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    goto :goto_1

    .line 330
    :cond_4
    move-object/from16 v8, p1

    .line 331
    .line 332
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgdn;->zzh(Ljava/lang/Object;)Lcom/google/common/util/concurrent/e;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 337
    .line 338
    invoke-virtual {v4, v6, v5}, Lcom/google/android/gms/internal/ads/zzdsd;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    :goto_1
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdxv;

    .line 342
    .line 343
    move-object/from16 v5, p2

    .line 344
    .line 345
    invoke-direct {v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzdxv;-><init>(Lcom/google/android/gms/internal/ads/zzdyb;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzf:Ljava/util/concurrent/Executor;

    .line 349
    .line 350
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    new-instance v4, Lcom/google/android/gms/internal/ads/zzdxw;

    .line 355
    .line 356
    invoke-direct {v4, v0, v2}, Lcom/google/android/gms/internal/ads/zzdxw;-><init>(Lcom/google/android/gms/internal/ads/zzdyb;Lcom/google/android/gms/internal/ads/zzbom;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdxx;

    .line 364
    .line 365
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdxx;-><init>(Lcom/google/android/gms/internal/ads/zzdyb;)V

    .line 366
    .line 367
    .line 368
    invoke-static {v1, v2, v5}, Lcom/google/android/gms/internal/ads/zzgdn;->zzn(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgcu;Ljava/util/concurrent/Executor;)Lcom/google/common/util/concurrent/e;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzdyb;->zzi:Lcom/google/android/gms/internal/ads/zzfhu;

    .line 373
    .line 374
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfht;->zza(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzfhu;Lcom/google/android/gms/internal/ads/zzfhj;)V

    .line 375
    .line 376
    .line 377
    new-instance v2, Lcom/google/android/gms/internal/ads/zzdya;

    .line 378
    .line 379
    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdya;-><init>(Lcom/google/android/gms/internal/ads/zzdyb;)V

    .line 380
    .line 381
    .line 382
    sget-object v3, Lcom/google/android/gms/internal/ads/zzcaf;->zzg:Lcom/google/android/gms/internal/ads/zzgdy;

    .line 383
    .line 384
    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzgdn;->zzr(Lcom/google/common/util/concurrent/e;Lcom/google/android/gms/internal/ads/zzgdj;Ljava/util/concurrent/Executor;)V

    .line 385
    .line 386
    .line 387
    return-object v1
.end method

.method private final zzh(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "ad_types"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string v3, "unknown"

    .line 15
    .line 16
    const/4 v4, 0x0

    .line 17
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    new-instance v2, Lorg/json/JSONArray;

    .line 28
    .line 29
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzh:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    return-object p1

    .line 49
    :goto_1
    const-string v1, "Failed to update the ad types for rendering. "

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 60
    .line 61
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-object p1
.end method

.method private final zzi(Lcom/google/android/gms/internal/ads/zzdrr;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhu:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/Boolean;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v1}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    invoke-virtual {v0, p1, v1, v2}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method private static final zzj(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    const-string p0, "request_id"

    .line 9
    .line 10
    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :catch_0
    return-object v0
.end method


# virtual methods
.method public final zze()Lcom/google/common/util/concurrent/e;
    .locals 13

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbde;->zzcs:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzs:Landroid/os/Bundle;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzp:Landroid/os/Bundle;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zza()Landroid/os/Bundle;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/ads/zzdrr;->zzo:Lcom/google/android/gms/internal/ads/zzdrr;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdrr;->zza()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzD()Lcom/google/android/gms/common/util/Clock;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v2}, Lcom/google/android/gms/common/util/Clock;->currentTimeMillis()J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 51
    .line 52
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzx:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_12

    .line 59
    .line 60
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdyb;->zzj(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbde;->zzhl:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 65
    .line 66
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    check-cast v3, Ljava/lang/Boolean;

    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    .line 78
    .line 79
    move-result v3

    .line 80
    const/4 v4, -0x1

    .line 81
    if-eqz v3, :cond_2

    .line 82
    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_2

    .line 88
    .line 89
    const-string v1, "&request_id="

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eq v1, v4, :cond_1

    .line 96
    .line 97
    add-int/lit8 v1, v1, 0xc

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    const-string v1, ""

    .line 105
    .line 106
    :cond_2
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 107
    .line 108
    .line 109
    move-result v3

    .line 110
    if-eqz v3, :cond_3

    .line 111
    .line 112
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 113
    .line 114
    const/16 v1, 0xf

    .line 115
    .line 116
    const-string v2, "Invalid ad string."

    .line 117
    .line 118
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    return-object v0

    .line 126
    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzm:Ljava/lang/Object;

    .line 127
    .line 128
    monitor-enter v3

    .line 129
    :try_start_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzche;->zzn()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 136
    .line 137
    invoke-virtual {v5, v1, v6}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzdsd;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    check-cast v2, Ljava/lang/Boolean;

    .line 150
    .line 151
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 152
    .line 153
    .line 154
    move-result v2

    .line 155
    const/4 v8, 0x0

    .line 156
    const/4 v9, 0x0

    .line 157
    if-eqz v2, :cond_9

    .line 158
    .line 159
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-nez v2, :cond_9

    .line 164
    .line 165
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    .line 166
    .line 167
    invoke-direct {v2, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    const-string v10, "extras"

    .line 171
    .line 172
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-eqz v2, :cond_9

    .line 177
    .line 178
    const-string v10, "query_info_type"

    .line 179
    .line 180
    const-string v11, ""

    .line 181
    .line 182
    invoke-virtual {v2, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbde;->zzhn:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 187
    .line 188
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v10

    .line 196
    check-cast v10, Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 199
    .line 200
    .line 201
    move-result v10

    .line 202
    if-eqz v10, :cond_4

    .line 203
    .line 204
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbde;->zzho:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 205
    .line 206
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 207
    .line 208
    .line 209
    move-result-object v11

    .line 210
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v10

    .line 214
    check-cast v10, Ljava/lang/String;

    .line 215
    .line 216
    const-string v11, ","

    .line 217
    .line 218
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v10

    .line 222
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 223
    .line 224
    .line 225
    move-result-object v10

    .line 226
    goto :goto_1

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    goto/16 :goto_b

    .line 229
    .line 230
    :cond_4
    sget-object v10, Lcom/google/android/gms/internal/ads/zzbde;->zzhm:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 231
    .line 232
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 233
    .line 234
    .line 235
    move-result-object v11

    .line 236
    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v10

    .line 240
    check-cast v10, Ljava/lang/String;

    .line 241
    .line 242
    const-string v11, ","

    .line 243
    .line 244
    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v10

    .line 252
    :goto_1
    invoke-static {v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzaa;->zzb(Ljava/lang/String;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v2

    .line 256
    invoke-interface {v10, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    if-nez v2, :cond_5

    .line 261
    .line 262
    goto/16 :goto_6

    .line 263
    .line 264
    :cond_5
    :try_start_2
    const-string v2, "&"

    .line 265
    .line 266
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eq v2, v4, :cond_6

    .line 271
    .line 272
    invoke-virtual {v0, v9, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    goto :goto_2

    .line 277
    :cond_6
    move-object v2, v8

    .line 278
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 279
    .line 280
    .line 281
    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 282
    if-eqz v4, :cond_7

    .line 283
    .line 284
    goto :goto_6

    .line 285
    :cond_7
    const/16 v4, 0xb

    .line 286
    .line 287
    :try_start_3
    invoke-static {v2, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    const-string v4, "UTF-8"

    .line 292
    .line 293
    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 298
    .line 299
    .line 300
    move-result v10
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 301
    if-eqz v10, :cond_8

    .line 302
    .line 303
    :goto_3
    move-object v10, v8

    .line 304
    goto :goto_4

    .line 305
    :cond_8
    :try_start_4
    new-instance v10, Lorg/json/JSONObject;

    .line 306
    .line 307
    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    const-string v11, "arek"

    .line 311
    .line 312
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v10
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 316
    goto :goto_4

    .line 317
    :catch_0
    move-exception v2

    .line 318
    goto :goto_5

    .line 319
    :catch_1
    move-exception v2

    .line 320
    goto :goto_5

    .line 321
    :catch_2
    move-exception v10

    .line 322
    :try_start_5
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v11

    .line 326
    const-string v12, "Failed to get key from QueryJSONMap"

    .line 327
    .line 328
    invoke-virtual {v12, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v11

    .line 332
    invoke-static {v11}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 333
    .line 334
    .line 335
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    const-string v12, "CryptoUtils.getKeyFromQueryJsonMap"

    .line 340
    .line 341
    invoke-virtual {v11, v10, v12}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 342
    .line 343
    .line 344
    goto :goto_3

    .line 345
    :goto_4
    invoke-static {v2, v4, v10, v6}, Lcom/google/android/gms/internal/ads/zzfdl;->zzb([B[BLjava/lang/String;Lcom/google/android/gms/internal/ads/zzdsd;)Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object v0
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 349
    goto :goto_6

    .line 350
    :goto_5
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    const-string v6, "Failed to decode the adResponse. "

    .line 355
    .line 356
    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    const-string v6, "PreloadedLoader.decryptAdResponseIfNecessary"

    .line 368
    .line 369
    invoke-virtual {v4, v2, v6}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    :catch_3
    :cond_9
    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 373
    .line 374
    .line 375
    move-result v2

    .line 376
    if-eqz v2, :cond_a

    .line 377
    .line 378
    const-string v2, ""
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 379
    .line 380
    goto :goto_7

    .line 381
    :cond_a
    :try_start_7
    new-instance v2, Lorg/json/JSONObject;

    .line 382
    .line 383
    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 384
    .line 385
    .line 386
    :try_start_8
    const-string v4, "render_id"

    .line 387
    .line 388
    const-string v6, ""

    .line 389
    .line 390
    invoke-virtual {v2, v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v2

    .line 394
    goto :goto_7

    .line 395
    :catch_4
    const-string v2, ""

    .line 396
    .line 397
    :goto_7
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 398
    .line 399
    .line 400
    move-result v4

    .line 401
    if-nez v4, :cond_c

    .line 402
    .line 403
    const-string v4, ""
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 404
    .line 405
    :try_start_9
    new-instance v6, Ljava/lang/String;

    .line 406
    .line 407
    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 408
    .line 409
    .line 410
    move-result-object v10

    .line 411
    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 412
    .line 413
    invoke-direct {v6, v10, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 414
    .line 415
    .line 416
    move-object v4, v6

    .line 417
    goto :goto_8

    .line 418
    :catch_5
    move-exception v6

    .line 419
    :try_start_a
    const-string v10, "Ad grouping: Has render_id, but not base64 encoded: "

    .line 420
    .line 421
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object v11

    .line 425
    invoke-virtual {v10, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v10

    .line 429
    invoke-static {v10}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzp()Lcom/google/android/gms/internal/ads/zzbzs;

    .line 433
    .line 434
    .line 435
    move-result-object v10

    .line 436
    const-string v11, "PreloadedLoader.decodeRenderId"

    .line 437
    .line 438
    invoke-virtual {v10, v6, v11}, Lcom/google/android/gms/internal/ads/zzbzs;->zzw(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    :goto_8
    const/16 v6, 0x3a

    .line 442
    .line 443
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfva;->zzc(C)Lcom/google/android/gms/internal/ads/zzfva;

    .line 444
    .line 445
    .line 446
    move-result-object v6

    .line 447
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzfwe;->zzb(Lcom/google/android/gms/internal/ads/zzfva;)Lcom/google/android/gms/internal/ads/zzfwe;

    .line 448
    .line 449
    .line 450
    move-result-object v6

    .line 451
    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzfwe;->zzf(Ljava/lang/CharSequence;)Ljava/util/List;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 456
    .line 457
    .line 458
    move-result v6

    .line 459
    const/4 v10, 0x2

    .line 460
    if-ne v6, v10, :cond_b

    .line 461
    .line 462
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    move-result-object v2

    .line 466
    move-object v8, v2

    .line 467
    check-cast v8, Ljava/lang/String;

    .line 468
    .line 469
    const/4 v2, 0x1

    .line 470
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 471
    .line 472
    .line 473
    move-result-object v2

    .line 474
    check-cast v2, Ljava/lang/String;

    .line 475
    .line 476
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 477
    .line 478
    .line 479
    move-result v2

    .line 480
    goto :goto_9

    .line 481
    :cond_b
    const-string v4, "Ad grouping: Has render_id, but invalid format: "

    .line 482
    .line 483
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v2

    .line 487
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    invoke-static {v2}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 492
    .line 493
    .line 494
    :cond_c
    move v2, v9

    .line 495
    :goto_9
    if-eqz v8, :cond_d

    .line 496
    .line 497
    new-instance v4, Landroid/util/Pair;

    .line 498
    .line 499
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 500
    .line 501
    .line 502
    move-result-object v2

    .line 503
    invoke-direct {v4, v8, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 504
    .line 505
    .line 506
    goto :goto_a

    .line 507
    :cond_d
    new-instance v4, Landroid/util/Pair;

    .line 508
    .line 509
    const-string v2, ""

    .line 510
    .line 511
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    invoke-direct {v4, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 516
    .line 517
    .line 518
    :goto_a
    iget-object v2, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 519
    .line 520
    check-cast v2, Ljava/lang/String;

    .line 521
    .line 522
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 523
    .line 524
    check-cast v4, Ljava/lang/Integer;

    .line 525
    .line 526
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 527
    .line 528
    .line 529
    move-result v4

    .line 530
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 531
    .line 532
    .line 533
    move-result v6

    .line 534
    if-nez v6, :cond_f

    .line 535
    .line 536
    if-lez v4, :cond_f

    .line 537
    .line 538
    invoke-virtual {v5, v1, v2}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzh(Ljava/lang/String;Ljava/lang/String;)Z

    .line 539
    .line 540
    .line 541
    move-result v6

    .line 542
    if-eqz v6, :cond_e

    .line 543
    .line 544
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 545
    .line 546
    const-string v1, "The ad has already been shown."

    .line 547
    .line 548
    const/16 v2, 0xa

    .line 549
    .line 550
    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 551
    .line 552
    .line 553
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 554
    .line 555
    .line 556
    move-result-object v0

    .line 557
    monitor-exit v3

    .line 558
    return-object v0

    .line 559
    :cond_e
    invoke-virtual {v5, v1, v2, v4}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzg(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-nez v2, :cond_10

    .line 564
    .line 565
    :cond_f
    invoke-virtual {v5, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    :cond_10
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 569
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-eqz v1, :cond_11

    .line 574
    .line 575
    goto :goto_c

    .line 576
    :cond_11
    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/ads/zzdyb;->zzh(Ljava/lang/String;)Ljava/lang/String;

    .line 577
    .line 578
    .line 579
    move-result-object v1

    .line 580
    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/zzdyb;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/e;

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    return-object v0

    .line 585
    :goto_b
    :try_start_b
    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 586
    throw v0

    .line 587
    :cond_12
    :goto_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zze:Lcom/google/android/gms/internal/ads/zzfcw;

    .line 588
    .line 589
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfcw;->zzd:Lcom/google/android/gms/ads/internal/client/zzm;

    .line 590
    .line 591
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzm;->zzs:Lcom/google/android/gms/ads/internal/client/zzc;

    .line 592
    .line 593
    if-eqz v0, :cond_15

    .line 594
    .line 595
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbde;->zzhd:Lcom/google/android/gms/internal/ads/zzbcv;

    .line 596
    .line 597
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbdc;

    .line 598
    .line 599
    .line 600
    move-result-object v2

    .line 601
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzb(Lcom/google/android/gms/internal/ads/zzbcv;)Ljava/lang/Object;

    .line 602
    .line 603
    .line 604
    move-result-object v1

    .line 605
    check-cast v1, Ljava/lang/Boolean;

    .line 606
    .line 607
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    if-nez v1, :cond_13

    .line 612
    .line 613
    goto :goto_d

    .line 614
    :cond_13
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zza:Ljava/lang/String;

    .line 615
    .line 616
    iget-object v2, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zzb:Ljava/lang/String;

    .line 617
    .line 618
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdyb;->zzj(Ljava/lang/String;)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdyb;->zzj(Ljava/lang/String;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v2

    .line 626
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 627
    .line 628
    .line 629
    move-result v3

    .line 630
    if-nez v3, :cond_14

    .line 631
    .line 632
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    if-eqz v2, :cond_14

    .line 637
    .line 638
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzb:Lcom/google/android/gms/internal/ads/zzche;

    .line 639
    .line 640
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzche;->zzn()Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-virtual {v2, v1}, Lcom/google/android/gms/ads/nonagon/signalgeneration/zzv;->zzf(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 648
    .line 649
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzdsd;->zzb()Ljava/util/Map;

    .line 650
    .line 651
    .line 652
    move-result-object v2

    .line 653
    const-string v3, "request_id"

    .line 654
    .line 655
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    .line 657
    .line 658
    :goto_d
    iget-object v1, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zza:Ljava/lang/String;

    .line 659
    .line 660
    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzc;->zzb:Ljava/lang/String;

    .line 661
    .line 662
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzdyb;->zzh(Ljava/lang/String;)Ljava/lang/String;

    .line 663
    .line 664
    .line 665
    move-result-object v0

    .line 666
    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/ads/zzdyb;->zzg(Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/util/concurrent/e;

    .line 667
    .line 668
    .line 669
    move-result-object v0

    .line 670
    return-object v0

    .line 671
    :cond_14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdyb;->zzj:Lcom/google/android/gms/internal/ads/zzdsd;

    .line 672
    .line 673
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdsd;->zzb()Ljava/util/Map;

    .line 674
    .line 675
    .line 676
    move-result-object v0

    .line 677
    const-string v1, "ridmm"

    .line 678
    .line 679
    const-string v2, "true"

    .line 680
    .line 681
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    .line 683
    .line 684
    :cond_15
    new-instance v0, Lcom/google/android/gms/internal/ads/zzehf;

    .line 685
    .line 686
    const/16 v1, 0xe

    .line 687
    .line 688
    const-string v2, "Mismatch request IDs."

    .line 689
    .line 690
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzehf;-><init>(ILjava/lang/String;)V

    .line 691
    .line 692
    .line 693
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgdn;->zzg(Ljava/lang/Throwable;)Lcom/google/common/util/concurrent/e;

    .line 694
    .line 695
    .line 696
    move-result-object v0

    .line 697
    return-object v0
.end method
