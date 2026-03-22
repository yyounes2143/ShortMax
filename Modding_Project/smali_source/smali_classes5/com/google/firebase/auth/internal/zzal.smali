.class public final Lcom/google/firebase/auth/internal/zzal;
.super Lcom/google/firebase/auth/MultiFactorResolver;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DefaultMultiFactorResolverCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzal;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getPhoneMultiFactorInfoList"
        id = 0x1
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/firebase/auth/internal/zzam;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getSession"
        id = 0x2
    .end annotation
.end field

.field private final c:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFirebaseAppName"
        id = 0x3
    .end annotation
.end field

.field private final d:Lcom/google/firebase/auth/zze;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDefaultOAuthCredential"
        id = 0x4
    .end annotation
.end field

.field private final e:Lcom/google/firebase/auth/internal/zzaf;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getReauthUser"
        id = 0x5
    .end annotation
.end field

.field private final f:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getTotpMultiFactorInfoList"
        id = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/TotpMultiFactorInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lv7/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lv7/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/auth/internal/zzal;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/firebase/auth/internal/zzam;Ljava/lang/String;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/internal/zzaf;Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zzam;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Lcom/google/firebase/auth/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Lcom/google/firebase/auth/internal/zzaf;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/PhoneMultiFactorInfo;",
            ">;",
            "Lcom/google/firebase/auth/internal/zzam;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/zze;",
            "Lcom/google/firebase/auth/internal/zzaf;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/TotpMultiFactorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/MultiFactorResolver;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Ljava/util/List;

    .line 9
    .line 10
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzal;->a:Ljava/util/List;

    .line 11
    .line 12
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Lcom/google/firebase/auth/internal/zzam;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzal;->b:Lcom/google/firebase/auth/internal/zzam;

    .line 19
    .line 20
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzal;->c:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzal;->d:Lcom/google/firebase/auth/zze;

    .line 27
    .line 28
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzal;->e:Lcom/google/firebase/auth/internal/zzaf;

    .line 29
    .line 30
    invoke-static {p6}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/util/List;

    .line 35
    .line 36
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzal;->f:Ljava/util/List;

    .line 37
    .line 38
    return-void
.end method

.method public static o(Lcom/google/android/gms/internal/firebase-auth-api/zzaas;Lcom/google/firebase/auth/FirebaseAuth;Lcom/google/firebase/auth/FirebaseUser;)Lcom/google/firebase/auth/internal/zzal;
    .locals 8
    .param p2    # Lcom/google/firebase/auth/FirebaseUser;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzc()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 25
    .line 26
    instance-of v3, v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 27
    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    check-cast v1, Lcom/google/firebase/auth/PhoneMultiFactorInfo;

    .line 31
    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzc()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v7, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Lcom/google/firebase/auth/MultiFactorInfo;

    .line 60
    .line 61
    instance-of v3, v1, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    .line 62
    .line 63
    if-eqz v3, :cond_2

    .line 64
    .line 65
    check-cast v1, Lcom/google/firebase/auth/TotpMultiFactorInfo;

    .line 66
    .line 67
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzc()Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zzb()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-static {v0, v1}, Lcom/google/firebase/auth/internal/zzam;->a(Ljava/util/List;Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzam;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    new-instance v0, Lcom/google/firebase/auth/internal/zzal;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/google/firebase/auth/FirebaseAuth;->b()Lcom/google/firebase/f;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p1}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaas;->zza()Lcom/google/firebase/auth/zze;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    move-object v6, p2

    .line 98
    check-cast v6, Lcom/google/firebase/auth/internal/zzaf;

    .line 99
    .line 100
    move-object v1, v0

    .line 101
    invoke-direct/range {v1 .. v7}, Lcom/google/firebase/auth/internal/zzal;-><init>(Ljava/util/List;Lcom/google/firebase/auth/internal/zzam;Ljava/lang/String;Lcom/google/firebase/auth/zze;Lcom/google/firebase/auth/internal/zzaf;Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    return-object v0
.end method


# virtual methods
.method public final m()Lcom/google/firebase/auth/MultiFactorSession;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzal;->b:Lcom/google/firebase/auth/internal/zzam;

    .line 2
    .line 3
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzal;->a:Ljava/util/List;

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x2

    .line 13
    invoke-virtual {p0}, Lcom/google/firebase/auth/MultiFactorResolver;->m()Lcom/google/firebase/auth/MultiFactorSession;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzal;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzal;->d:Lcom/google/firebase/auth/zze;

    .line 28
    .line 29
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzal;->e:Lcom/google/firebase/auth/internal/zzaf;

    .line 34
    .line 35
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 36
    .line 37
    .line 38
    const/4 p2, 0x6

    .line 39
    iget-object v1, p0, Lcom/google/firebase/auth/internal/zzal;->f:Ljava/util/List;

    .line 40
    .line 41
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 42
    .line 43
    .line 44
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 45
    .line 46
    .line 47
    return-void
.end method
