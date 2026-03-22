.class final Lcom/google/android/gms/internal/ads/zzebd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgdj;


# instance fields
.field final synthetic zza:Z

.field final synthetic zzb:Lcom/google/android/gms/internal/ads/zzebe;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzebe;Z)V
    .locals 0

    .line 1
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzebd;->zza:Z

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebd;->zzb:Lcom/google/android/gms/internal/ads/zzebe;

    .line 7
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 2
    .line 3
    const-string p1, "Failed to get signals bundle"

    .line 4
    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzg(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzebd;->zzb:Lcom/google/android/gms/internal/ads/zzebe;

    .line 2
    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcva;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzebf;->zzf()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcva;->zza:Landroid/os/Bundle;

    .line 13
    .line 14
    const-string v1, "ad_types"

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    instance-of v2, v1, Ljava/util/List;

    .line 21
    .line 22
    if-eqz v2, :cond_1

    .line 23
    .line 24
    check-cast v1, Ljava/util/List;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    instance-of v2, v1, [Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_4

    .line 30
    .line 31
    check-cast v1, [Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-eqz v3, :cond_3

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    instance-of v4, v3, Ljava/lang/String;

    .line 61
    .line 62
    if-eqz v4, :cond_2

    .line 63
    .line 64
    check-cast v3, Ljava/lang/String;

    .line 65
    .line 66
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    goto :goto_2

    .line 75
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_2
    new-instance v5, Ljava/util/ArrayList;

    .line 80
    .line 81
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_a

    .line 93
    .line 94
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Ljava/lang/String;

    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    const/4 v4, 0x2

    .line 105
    const/4 v6, 0x3

    .line 106
    const/4 v7, 0x1

    .line 107
    sparse-switch v3, :sswitch_data_0

    .line 108
    .line 109
    .line 110
    goto :goto_4

    .line 111
    :sswitch_0
    const-string v3, "interstitial"

    .line 112
    .line 113
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_5

    .line 118
    .line 119
    move v2, v7

    .line 120
    goto :goto_5

    .line 121
    :sswitch_1
    const-string v3, "rewarded"

    .line 122
    .line 123
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    move v2, v6

    .line 130
    goto :goto_5

    .line 131
    :sswitch_2
    const-string v3, "native"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_5

    .line 138
    .line 139
    move v2, v4

    .line 140
    goto :goto_5

    .line 141
    :sswitch_3
    const-string v3, "banner"

    .line 142
    .line 143
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_5

    .line 148
    .line 149
    const/4 v2, 0x0

    .line 150
    goto :goto_5

    .line 151
    :cond_5
    :goto_4
    const/4 v2, -0x1

    .line 152
    :goto_5
    if-eqz v2, :cond_9

    .line 153
    .line 154
    if-eq v2, v7, :cond_8

    .line 155
    .line 156
    if-eq v2, v4, :cond_7

    .line 157
    .line 158
    if-eq v2, v6, :cond_6

    .line 159
    .line 160
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;->zza:Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;

    .line 161
    .line 162
    goto :goto_6

    .line 163
    :cond_6
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;->zzj:Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;

    .line 164
    .line 165
    goto :goto_6

    .line 166
    :cond_7
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;->zzf:Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;

    .line 167
    .line 168
    goto :goto_6

    .line 169
    :cond_8
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;->zzc:Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;

    .line 170
    .line 171
    goto :goto_6

    .line 172
    :cond_9
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;->zzb:Lcom/google/android/gms/internal/ads/zzbcj$zzd$zza;

    .line 173
    .line 174
    :goto_6
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_a
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzebe;->zzb(Lcom/google/android/gms/internal/ads/zzebe;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzebe;->zza(Lcom/google/android/gms/internal/ads/zzebe;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/zzbcj$zzab;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzebd;->zza:Z

    .line 187
    .line 188
    new-instance p1, Lcom/google/android/gms/internal/ads/zzebc;

    .line 189
    .line 190
    move-object v2, p1

    .line 191
    move-object v3, p0

    .line 192
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzebc;-><init>(Lcom/google/android/gms/internal/ads/zzebd;ZLjava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzbcj$zzab;Lcom/google/android/gms/internal/ads/zzbcj$zzaf$zzd;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzebf;->zza:Lcom/google/android/gms/internal/ads/zzeas;

    .line 196
    .line 197
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzeas;->zza(Lcom/google/android/gms/internal/ads/zzfge;)V

    .line 198
    .line 199
    .line 200
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x533a80d4 -> :sswitch_3
        -0x3ebdafe9 -> :sswitch_2
        -0xe47b3f2 -> :sswitch_1
        0x240b672c -> :sswitch_0
    .end sparse-switch
.end method
