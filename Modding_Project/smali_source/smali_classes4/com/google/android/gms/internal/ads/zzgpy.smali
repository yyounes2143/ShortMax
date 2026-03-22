.class public final Lcom/google/android/gms/internal/ads/zzgpy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgow;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgpy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgpy;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgpy;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/ads/zzgpy;->zza:Lcom/google/android/gms/internal/ads/zzgpy;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static zzc()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnv;->zza()Lcom/google/android/gms/internal/ads/zzgnv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzgpy;->zza:Lcom/google/android/gms/internal/ads/zzgpy;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzgnv;->zzd(Lcom/google/android/gms/internal/ads/zzgow;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgpv;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Ljava/lang/Class;
    .locals 1

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzgpv;

    .line 2
    .line 3
    return-object v0
.end method

.method public final bridge synthetic zze(Lcom/google/android/gms/internal/ads/zzgmy;Lcom/google/android/gms/internal/ads/zzgnh;Lcom/google/android/gms/internal/ads/zzgor;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 3
    .line 4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgfi;->zzc()Lcom/google/android/gms/internal/ads/zzgfg;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgoj;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgoj;-><init>()V

    .line 11
    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgmy;->zza()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_3

    .line 19
    .line 20
    move-object v2, p1

    .line 21
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgfi;

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzgfi;->zzb(I)Lcom/google/android/gms/internal/ads/zzgfg;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfg;->zzc()Lcom/google/android/gms/internal/ads/zzgfb;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    sget-object v4, Lcom/google/android/gms/internal/ads/zzgfb;->zza:Lcom/google/android/gms/internal/ads/zzgfb;

    .line 32
    .line 33
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    invoke-virtual {p3, v2}, Lcom/google/android/gms/internal/ads/zzgor;->zza(Lcom/google/android/gms/internal/ads/zzgfg;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/google/android/gms/internal/ads/zzgpv;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgfg;->zzb()Lcom/google/android/gms/internal/ads/zzgez;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzgqn;

    .line 50
    .line 51
    if-eqz v4, :cond_0

    .line 52
    .line 53
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgqn;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgqn;->zzd()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    goto :goto_1

    .line 60
    :cond_0
    instance-of v4, v2, Lcom/google/android/gms/internal/ads/zzgnd;

    .line 61
    .line 62
    if-eqz v4, :cond_1

    .line 63
    .line 64
    check-cast v2, Lcom/google/android/gms/internal/ads/zzgnd;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgnd;->zzc()Lcom/google/android/gms/internal/ads/zzgxe;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    :goto_1
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzgoj;->zza(Lcom/google/android/gms/internal/ads/zzgxe;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzgoj;

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    new-instance p2, Ljava/security/GeneralSecurityException;

    .line 79
    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgez;->zza()Lcom/google/android/gms/internal/ads/zzgfm;

    .line 85
    .line 86
    .line 87
    move-result-object p3

    .line 88
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p3

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v1, "Cannot get output prefix for key of class "

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p1, " with parameters "

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-direct {p2, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    throw p2

    .line 121
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_3
    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzgor;->zza(Lcom/google/android/gms/internal/ads/zzgfg;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lcom/google/android/gms/internal/ads/zzgpv;

    .line 129
    .line 130
    new-instance p2, Lcom/google/android/gms/internal/ads/zzgpw;

    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgoj;->zzb()Lcom/google/android/gms/internal/ads/zzgom;

    .line 133
    .line 134
    .line 135
    move-result-object p3

    .line 136
    const/4 v0, 0x0

    .line 137
    invoke-direct {p2, p3, p1, v0}, Lcom/google/android/gms/internal/ads/zzgpw;-><init>(Lcom/google/android/gms/internal/ads/zzgom;Lcom/google/android/gms/internal/ads/zzgpv;Lcom/google/android/gms/internal/ads/zzgpx;)V

    .line 138
    .line 139
    .line 140
    return-object p2
.end method
