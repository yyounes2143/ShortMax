.class public final Lcom/google/android/gms/internal/ads/zzpj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzpj;

.field static final zzb:Lcom/google/android/gms/internal/ads/zzfyt;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzfyq;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field


# instance fields
.field private final zzd:Landroid/util/SparseArray;

.field private final zze:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpj;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzpi;->zza:Lcom/google/android/gms/internal/ads/zzpi;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzfyq;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzpj;

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const/4 v2, 0x6

    .line 25
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfyq;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/google/android/gms/internal/ads/zzpj;->zzc:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 34
    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfys;

    .line 36
    .line 37
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfys;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 41
    .line 42
    .line 43
    const/16 v1, 0x11

    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 50
    .line 51
    .line 52
    const/4 v1, 0x7

    .line 53
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x1e

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/16 v3, 0xa

    .line 67
    .line 68
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x12

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 82
    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v1}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 94
    .line 95
    .line 96
    const/16 v2, 0xe

    .line 97
    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzfys;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfys;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfys;->zzc()Lcom/google/android/gms/internal/ads/zzfyt;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    sput-object v0, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Lcom/google/android/gms/internal/ads/zzfyt;

    .line 110
    .line 111
    return-void
.end method

.method private constructor <init>(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    move v1, v0

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-ge v1, v2, :cond_0

    .line 18
    .line 19
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/google/android/gms/internal/ads/zzpi;

    .line 24
    .line 25
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 26
    .line 27
    iget v4, v2, Lcom/google/android/gms/internal/ads/zzpi;->zzb:I

    .line 28
    .line 29
    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move p1, v0

    .line 36
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-ge v0, v1, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/google/android/gms/internal/ads/zzpi;

    .line 51
    .line 52
    iget v1, v1, Lcom/google/android/gms/internal/ads/zzpi;->zzc:I

    .line 53
    .line 54
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    add-int/lit8 v0, v0, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zze:I

    .line 62
    .line 63
    return-void
.end method

.method static zza()Landroid/net/Uri;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpj;->zzf()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "external_surround_sound_enabled"

    .line 8
    .line 9
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return-object v0
.end method

.method static zzc(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzpp;)Lcom/google/android/gms/internal/ads/zzpj;
    .locals 2
    .param p2    # Lcom/google/android/gms/internal/ads/zzpp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnprotectedReceiver"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "android.media.action.HDMI_AUDIO_PLUG"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p0, v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpj;->zzd(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzpp;)Lcom/google/android/gms/internal/ads/zzpj;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method static zzd(Landroid/content/Context;Landroid/content/Intent;Lcom/google/android/gms/internal/ads/zze;Lcom/google/android/gms/internal/ads/zzpp;)Lcom/google/android/gms/internal/ads/zzpj;
    .locals 9
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/android/gms/internal/ads/zzpp;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzcj;->zzc(Landroid/content/Context;)Landroid/media/AudioManager;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/16 v2, 0x21

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz p3, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/4 v4, 0x0

    .line 15
    if-lt p3, v2, :cond_1

    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 22
    .line 23
    invoke-static {v1, p3}, Lcom/google/android/gms/internal/ads/a0;->a(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_2

    .line 32
    .line 33
    :cond_1
    :goto_0
    move-object p3, v4

    .line 34
    goto :goto_1

    .line 35
    :cond_2
    new-instance v4, Lcom/google/android/gms/internal/ads/zzpp;

    .line 36
    .line 37
    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    check-cast p3, Landroid/media/AudioDeviceInfo;

    .line 42
    .line 43
    invoke-direct {v4, p3}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :goto_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 48
    .line 49
    const/16 v5, 0xc

    .line 50
    .line 51
    const/4 v6, 0x2

    .line 52
    if-lt v4, v2, :cond_a

    .line 53
    .line 54
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzN(Landroid/content/Context;)Z

    .line 55
    .line 56
    .line 57
    move-result v7

    .line 58
    if-nez v7, :cond_3

    .line 59
    .line 60
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzJ(Landroid/content/Context;)Z

    .line 61
    .line 62
    .line 63
    move-result v7

    .line 64
    if-eqz v7, :cond_a

    .line 65
    .line 66
    :cond_3
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 71
    .line 72
    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/v;->a(Landroid/media/AudioManager;Landroid/media/AudioAttributes;)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    new-instance p1, Lcom/google/android/gms/internal/ads/zzpj;

    .line 77
    .line 78
    new-instance p2, Ljava/util/HashMap;

    .line 79
    .line 80
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    new-instance v1, Ljava/util/HashSet;

    .line 88
    .line 89
    filled-new-array {v5}, [I

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzh([I)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {p2, p3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    if-ge v3, p3, :cond_8

    .line 108
    .line 109
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p3

    .line 113
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/w;->a(Ljava/lang/Object;)Landroid/media/AudioProfile;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/x;->a(Landroid/media/AudioProfile;)I

    .line 118
    .line 119
    .line 120
    move-result v1

    .line 121
    if-ne v1, v0, :cond_4

    .line 122
    .line 123
    goto :goto_3

    .line 124
    :cond_4
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/y;->a(Landroid/media/AudioProfile;)I

    .line 125
    .line 126
    .line 127
    move-result v1

    .line 128
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzex;->zzK(I)Z

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-nez v2, :cond_5

    .line 133
    .line 134
    sget-object v2, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Lcom/google/android/gms/internal/ads/zzfyt;

    .line 135
    .line 136
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzfyt;->containsKey(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-eqz v2, :cond_7

    .line 145
    .line 146
    :cond_5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-eqz v2, :cond_6

    .line 155
    .line 156
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    check-cast v1, Ljava/util/Set;

    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 163
    .line 164
    .line 165
    check-cast v1, Ljava/util/Set;

    .line 166
    .line 167
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/z;->a(Landroid/media/AudioProfile;)[I

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgbt;->zzh([I)Ljava/util/List;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    invoke-interface {v1, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 176
    .line 177
    .line 178
    goto :goto_3

    .line 179
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    .line 180
    .line 181
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/z;->a(Landroid/media/AudioProfile;)[I

    .line 182
    .line 183
    .line 184
    move-result-object p3

    .line 185
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzgbt;->zzh([I)Ljava/util/List;

    .line 186
    .line 187
    .line 188
    move-result-object p3

    .line 189
    invoke-direct {v2, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 190
    .line 191
    .line 192
    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    :cond_7
    :goto_3
    add-int/2addr v3, v0

    .line 196
    goto :goto_2

    .line 197
    :cond_8
    sget p0, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 198
    .line 199
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 200
    .line 201
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 202
    .line 203
    .line 204
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 205
    .line 206
    .line 207
    move-result-object p2

    .line 208
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object p2

    .line 212
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result p3

    .line 216
    if-eqz p3, :cond_9

    .line 217
    .line 218
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object p3

    .line 222
    check-cast p3, Ljava/util/Map$Entry;

    .line 223
    .line 224
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpi;

    .line 225
    .line 226
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    check-cast v1, Ljava/lang/Integer;

    .line 231
    .line 232
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object p3

    .line 240
    check-cast p3, Ljava/util/Set;

    .line 241
    .line 242
    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(ILjava/util/Set;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 250
    .line 251
    .line 252
    move-result-object p0

    .line 253
    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Ljava/util/List;)V

    .line 254
    .line 255
    .line 256
    return-object p1

    .line 257
    :cond_a
    if-nez p3, :cond_b

    .line 258
    .line 259
    invoke-virtual {v1, v6}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    .line 260
    .line 261
    .line 262
    move-result-object p3

    .line 263
    goto :goto_5

    .line 264
    :cond_b
    new-array v1, v0, [Landroid/media/AudioDeviceInfo;

    .line 265
    .line 266
    iget-object p3, p3, Lcom/google/android/gms/internal/ads/zzpp;->zza:Landroid/media/AudioDeviceInfo;

    .line 267
    .line 268
    aput-object p3, v1, v3

    .line 269
    .line 270
    move-object p3, v1

    .line 271
    :goto_5
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfyu;

    .line 272
    .line 273
    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfyu;-><init>()V

    .line 274
    .line 275
    .line 276
    const/16 v7, 0x8

    .line 277
    .line 278
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 279
    .line 280
    .line 281
    move-result-object v7

    .line 282
    const/4 v8, 0x7

    .line 283
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 284
    .line 285
    .line 286
    move-result-object v8

    .line 287
    filled-new-array {v7, v8}, [Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfyu;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 292
    .line 293
    .line 294
    const/16 v7, 0x1f

    .line 295
    .line 296
    if-lt v4, v7, :cond_c

    .line 297
    .line 298
    const/16 v7, 0x1a

    .line 299
    .line 300
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v7

    .line 304
    const/16 v8, 0x1b

    .line 305
    .line 306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    filled-new-array {v7, v8}, [Ljava/lang/Integer;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfyu;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 315
    .line 316
    .line 317
    :cond_c
    if-lt v4, v2, :cond_d

    .line 318
    .line 319
    const/16 v2, 0x1e

    .line 320
    .line 321
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzfyu;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 326
    .line 327
    .line 328
    :cond_d
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfyu;->zzi()Lcom/google/android/gms/internal/ads/zzfyv;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    array-length v2, p3

    .line 333
    move v4, v3

    .line 334
    :goto_6
    if-ge v4, v2, :cond_f

    .line 335
    .line 336
    aget-object v7, p3, v4

    .line 337
    .line 338
    invoke-virtual {v7}, Landroid/media/AudioDeviceInfo;->getType()I

    .line 339
    .line 340
    .line 341
    move-result v7

    .line 342
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 343
    .line 344
    .line 345
    move-result-object v7

    .line 346
    invoke-virtual {v1, v7}, Lcom/google/android/gms/internal/ads/zzfyl;->contains(Ljava/lang/Object;)Z

    .line 347
    .line 348
    .line 349
    move-result v7

    .line 350
    if-eqz v7, :cond_e

    .line 351
    .line 352
    sget-object p0, Lcom/google/android/gms/internal/ads/zzpj;->zza:Lcom/google/android/gms/internal/ads/zzpj;

    .line 353
    .line 354
    return-object p0

    .line 355
    :cond_e
    add-int/2addr v4, v0

    .line 356
    goto :goto_6

    .line 357
    :cond_f
    new-instance p3, Lcom/google/android/gms/internal/ads/zzfyu;

    .line 358
    .line 359
    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/zzfyu;-><init>()V

    .line 360
    .line 361
    .line 362
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 363
    .line 364
    .line 365
    move-result-object v1

    .line 366
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/zzfyu;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 367
    .line 368
    .line 369
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 370
    .line 371
    const/16 v2, 0x1d

    .line 372
    .line 373
    const/16 v4, 0xa

    .line 374
    .line 375
    if-lt v1, v2, :cond_13

    .line 376
    .line 377
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzN(Landroid/content/Context;)Z

    .line 378
    .line 379
    .line 380
    move-result v1

    .line 381
    if-nez v1, :cond_10

    .line 382
    .line 383
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzex;->zzJ(Landroid/content/Context;)Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    if-eqz v1, :cond_13

    .line 388
    .line 389
    :cond_10
    sget p0, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 390
    .line 391
    new-instance p0, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 392
    .line 393
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 394
    .line 395
    .line 396
    sget-object p1, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Lcom/google/android/gms/internal/ads/zzfyt;

    .line 397
    .line 398
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyt;->zzi()Lcom/google/android/gms/internal/ads/zzfyv;

    .line 399
    .line 400
    .line 401
    move-result-object p1

    .line 402
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfyv;->zze()Lcom/google/android/gms/internal/ads/zzgaw;

    .line 403
    .line 404
    .line 405
    move-result-object p1

    .line 406
    :cond_11
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-eqz v0, :cond_12

    .line 411
    .line 412
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    check-cast v0, Ljava/lang/Integer;

    .line 417
    .line 418
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzex;->zzh(I)I

    .line 423
    .line 424
    .line 425
    move-result v2

    .line 426
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 427
    .line 428
    if-lt v3, v2, :cond_11

    .line 429
    .line 430
    new-instance v2, Landroid/media/AudioFormat$Builder;

    .line 431
    .line 432
    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    .line 436
    .line 437
    .line 438
    move-result-object v2

    .line 439
    invoke-virtual {v2, v1}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    const v2, 0xbb80

    .line 444
    .line 445
    .line 446
    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    .line 447
    .line 448
    .line 449
    move-result-object v1

    .line 450
    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    .line 451
    .line 452
    .line 453
    move-result-object v1

    .line 454
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zze;->zza()Lcom/google/android/gms/internal/ads/zzc;

    .line 455
    .line 456
    .line 457
    move-result-object v2

    .line 458
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzc;->zza:Landroid/media/AudioAttributes;

    .line 459
    .line 460
    invoke-static {v1, v2}, Lq5/g;->a(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    .line 461
    .line 462
    .line 463
    move-result v1

    .line 464
    if-eqz v1, :cond_11

    .line 465
    .line 466
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 467
    .line 468
    .line 469
    goto :goto_7

    .line 470
    :cond_12
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 471
    .line 472
    .line 473
    move-result-object p1

    .line 474
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 475
    .line 476
    .line 477
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 478
    .line 479
    .line 480
    move-result-object p0

    .line 481
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfyu;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 482
    .line 483
    .line 484
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpj;

    .line 485
    .line 486
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfyu;->zzi()Lcom/google/android/gms/internal/ads/zzfyv;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzi(Ljava/util/Collection;)[I

    .line 491
    .line 492
    .line 493
    move-result-object p1

    .line 494
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzpj;->zze([II)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 495
    .line 496
    .line 497
    move-result-object p1

    .line 498
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Ljava/util/List;)V

    .line 499
    .line 500
    .line 501
    return-object p0

    .line 502
    :cond_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 503
    .line 504
    .line 505
    move-result-object p0

    .line 506
    const-string p2, "use_external_surround_sound_flag"

    .line 507
    .line 508
    invoke-static {p0, p2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 509
    .line 510
    .line 511
    move-result p2

    .line 512
    if-ne p2, v0, :cond_14

    .line 513
    .line 514
    move p2, v0

    .line 515
    goto :goto_8

    .line 516
    :cond_14
    move p2, v3

    .line 517
    :goto_8
    if-nez p2, :cond_15

    .line 518
    .line 519
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzpj;->zzf()Z

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    if-eqz v1, :cond_16

    .line 524
    .line 525
    :cond_15
    const-string v1, "external_surround_sound_enabled"

    .line 526
    .line 527
    invoke-static {p0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 528
    .line 529
    .line 530
    move-result p0

    .line 531
    if-ne p0, v0, :cond_16

    .line 532
    .line 533
    sget-object p0, Lcom/google/android/gms/internal/ads/zzpj;->zzc:Lcom/google/android/gms/internal/ads/zzfyq;

    .line 534
    .line 535
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfyu;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 536
    .line 537
    .line 538
    :cond_16
    if-eqz p1, :cond_18

    .line 539
    .line 540
    if-nez p2, :cond_18

    .line 541
    .line 542
    const-string p0, "android.media.extra.AUDIO_PLUG_STATE"

    .line 543
    .line 544
    invoke-virtual {p1, p0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 545
    .line 546
    .line 547
    move-result p0

    .line 548
    if-ne p0, v0, :cond_18

    .line 549
    .line 550
    const-string p0, "android.media.extra.ENCODINGS"

    .line 551
    .line 552
    invoke-virtual {p1, p0}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    .line 553
    .line 554
    .line 555
    move-result-object p0

    .line 556
    if-eqz p0, :cond_17

    .line 557
    .line 558
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgbt;->zzh([I)Ljava/util/List;

    .line 559
    .line 560
    .line 561
    move-result-object p0

    .line 562
    invoke-virtual {p3, p0}, Lcom/google/android/gms/internal/ads/zzfyu;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfyu;

    .line 563
    .line 564
    .line 565
    :cond_17
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpj;

    .line 566
    .line 567
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfyu;->zzi()Lcom/google/android/gms/internal/ads/zzfyv;

    .line 568
    .line 569
    .line 570
    move-result-object p2

    .line 571
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgbt;->zzi(Ljava/util/Collection;)[I

    .line 572
    .line 573
    .line 574
    move-result-object p2

    .line 575
    const-string p3, "android.media.extra.MAX_CHANNEL_COUNT"

    .line 576
    .line 577
    invoke-virtual {p1, p3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 578
    .line 579
    .line 580
    move-result p1

    .line 581
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzpj;->zze([II)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 582
    .line 583
    .line 584
    move-result-object p1

    .line 585
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Ljava/util/List;)V

    .line 586
    .line 587
    .line 588
    return-object p0

    .line 589
    :cond_18
    new-instance p0, Lcom/google/android/gms/internal/ads/zzpj;

    .line 590
    .line 591
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzfyu;->zzi()Lcom/google/android/gms/internal/ads/zzfyv;

    .line 592
    .line 593
    .line 594
    move-result-object p1

    .line 595
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgbt;->zzi(Ljava/util/Collection;)[I

    .line 596
    .line 597
    .line 598
    move-result-object p1

    .line 599
    invoke-static {p1, v4}, Lcom/google/android/gms/internal/ads/zzpj;->zze([II)Lcom/google/android/gms/internal/ads/zzfyq;

    .line 600
    .line 601
    .line 602
    move-result-object p1

    .line 603
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzpj;-><init>(Ljava/util/List;)V

    .line 604
    .line 605
    .line 606
    return-object p0
.end method

.method private static zze([II)Lcom/google/android/gms/internal/ads/zzfyq;
    .locals 4
    .param p0    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzfyq;->zzd:I

    .line 2
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfyn;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfyn;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_0

    .line 11
    .line 12
    aget v2, p0, v1

    .line 13
    .line 14
    new-instance v3, Lcom/google/android/gms/internal/ads/zzpi;

    .line 15
    .line 16
    invoke-direct {v3, v2, p1}, Lcom/google/android/gms/internal/ads/zzpi;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzfyn;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfyn;

    .line 20
    .line 21
    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfyn;->zzi()Lcom/google/android/gms/internal/ads/zzfyq;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method private static zzf()Z
    .locals 2

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "Amazon"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_1

    .line 10
    .line 11
    const-string v1, "Xiaomi"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 23
    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzpj;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzpj;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 16
    .line 17
    sget-object v4, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 18
    .line 19
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 20
    .line 21
    const/16 v5, 0x1f

    .line 22
    .line 23
    if-lt v4, v5, :cond_2

    .line 24
    .line 25
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/u;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_4

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-ne v4, v5, :cond_4

    .line 41
    .line 42
    move v5, v2

    .line 43
    :goto_0
    if-ge v5, v4, :cond_3

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->keyAt(I)I

    .line 46
    .line 47
    .line 48
    move-result v6

    .line 49
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v7, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-eqz v6, :cond_4

    .line 62
    .line 63
    add-int/2addr v5, v0

    .line 64
    goto :goto_0

    .line 65
    :cond_3
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zze:I

    .line 66
    .line 67
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzpj;->zze:I

    .line 68
    .line 69
    if-ne v1, p1, :cond_4

    .line 70
    .line 71
    return v0

    .line 72
    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzex;->zza:Ljava/lang/String;

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 6
    .line 7
    const/16 v2, 0x1f

    .line 8
    .line 9
    if-lt v0, v2, :cond_0

    .line 10
    .line 11
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/t;->a(Landroid/util/SparseArray;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    const/16 v3, 0x11

    .line 18
    .line 19
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-ge v0, v4, :cond_1

    .line 24
    .line 25
    mul-int/2addr v3, v2

    .line 26
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 27
    .line 28
    .line 29
    move-result v4

    .line 30
    add-int/2addr v3, v4

    .line 31
    mul-int/2addr v3, v2

    .line 32
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-static {v4}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    add-int/2addr v3, v4

    .line 41
    add-int/lit8 v0, v0, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    move v0, v3

    .line 45
    :goto_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zze:I

    .line 46
    .line 47
    mul-int/2addr v0, v2

    .line 48
    add-int/2addr v1, v0

    .line 49
    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "AudioCapabilities[maxChannelCount="

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget v2, p0, Lcom/google/android/gms/internal/ads/zzpj;->zze:I

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ", audioProfiles="

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, "]"

    .line 31
    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zze;)Landroid/util/Pair;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzz;->zzo:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzk:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzay;->zza(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    sget-object v2, Lcom/google/android/gms/internal/ads/zzpj;->zzb:Lcom/google/android/gms/internal/ads/zzfyt;

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzfyt;->containsKey(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    goto/16 :goto_5

    .line 25
    .line 26
    :cond_0
    const/4 v2, 0x7

    .line 27
    const/16 v3, 0x8

    .line 28
    .line 29
    const/4 v4, 0x6

    .line 30
    const/16 v5, 0x12

    .line 31
    .line 32
    if-ne v1, v5, :cond_2

    .line 33
    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 35
    .line 36
    invoke-static {v1, v5}, Lcom/google/android/gms/internal/ads/zzex;->zzH(Landroid/util/SparseArray;I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_1

    .line 41
    .line 42
    move v1, v4

    .line 43
    goto :goto_2

    .line 44
    :cond_1
    move v1, v5

    .line 45
    :cond_2
    if-ne v1, v3, :cond_4

    .line 46
    .line 47
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/ads/zzex;->zzH(Landroid/util/SparseArray;I)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    move v1, v3

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    :goto_0
    move v1, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_4
    :goto_1
    const/16 v6, 0x1e

    .line 60
    .line 61
    if-ne v1, v6, :cond_5

    .line 62
    .line 63
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 64
    .line 65
    invoke-static {v7, v6}, Lcom/google/android/gms/internal/ads/zzex;->zzH(Landroid/util/SparseArray;I)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_5

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzpj;->zzd:Landroid/util/SparseArray;

    .line 73
    .line 74
    invoke-static {v6, v1}, Lcom/google/android/gms/internal/ads/zzex;->zzH(Landroid/util/SparseArray;I)Z

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    if-eqz v7, :cond_f

    .line 79
    .line 80
    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v6

    .line 84
    check-cast v6, Lcom/google/android/gms/internal/ads/zzpi;

    .line 85
    .line 86
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 87
    .line 88
    .line 89
    iget v7, p1, Lcom/google/android/gms/internal/ads/zzz;->zzG:I

    .line 90
    .line 91
    const/4 v8, -0x1

    .line 92
    if-eq v7, v8, :cond_8

    .line 93
    .line 94
    if-ne v1, v5, :cond_6

    .line 95
    .line 96
    goto :goto_3

    .line 97
    :cond_6
    const-string p1, "audio/vnd.dts.uhd;profile=p2"

    .line 98
    .line 99
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    if-eqz p1, :cond_7

    .line 104
    .line 105
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 106
    .line 107
    const/16 p2, 0x21

    .line 108
    .line 109
    if-ge p1, p2, :cond_7

    .line 110
    .line 111
    const/16 p1, 0xa

    .line 112
    .line 113
    if-le v7, p1, :cond_a

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_7
    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzpi;->zzb(I)Z

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    if-nez p1, :cond_a

    .line 121
    .line 122
    goto :goto_5

    .line 123
    :cond_8
    :goto_3
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzH:I

    .line 124
    .line 125
    if-ne p1, v8, :cond_9

    .line 126
    .line 127
    const p1, 0xbb80

    .line 128
    .line 129
    .line 130
    :cond_9
    invoke-virtual {v6, p1, p2}, Lcom/google/android/gms/internal/ads/zzpi;->zza(ILcom/google/android/gms/internal/ads/zze;)I

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    :cond_a
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 p2, 0x1c

    .line 137
    .line 138
    if-gt p1, p2, :cond_d

    .line 139
    .line 140
    if-ne v7, v2, :cond_b

    .line 141
    .line 142
    goto :goto_4

    .line 143
    :cond_b
    const/4 p2, 0x3

    .line 144
    if-eq v7, p2, :cond_c

    .line 145
    .line 146
    const/4 p2, 0x4

    .line 147
    if-eq v7, p2, :cond_c

    .line 148
    .line 149
    const/4 p2, 0x5

    .line 150
    if-ne v7, p2, :cond_d

    .line 151
    .line 152
    :cond_c
    move v3, v4

    .line 153
    goto :goto_4

    .line 154
    :cond_d
    move v3, v7

    .line 155
    :goto_4
    const/16 p2, 0x1a

    .line 156
    .line 157
    if-gt p1, p2, :cond_e

    .line 158
    .line 159
    const-string p1, "fugu"

    .line 160
    .line 161
    sget-object p2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-eqz p1, :cond_e

    .line 168
    .line 169
    const/4 p1, 0x1

    .line 170
    if-ne v3, p1, :cond_e

    .line 171
    .line 172
    const/4 v3, 0x2

    .line 173
    :cond_e
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzex;->zzi(I)I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_f

    .line 178
    .line 179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-static {p2, p1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    return-object p1

    .line 192
    :cond_f
    :goto_5
    const/4 p1, 0x0

    .line 193
    return-object p1
.end method
