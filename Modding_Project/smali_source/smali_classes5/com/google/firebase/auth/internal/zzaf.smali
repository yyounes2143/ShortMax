.class public final Lcom/google/firebase/auth/internal/zzaf;
.super Lcom/google/firebase/auth/FirebaseUser;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "DefaultFirebaseUserCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/auth/internal/zzaf;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCachedTokenState"
        id = 0x1
    .end annotation
.end field

.field private b:Lcom/google/firebase/auth/internal/zzab;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDefaultAuthUserInfo"
        id = 0x2
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getFirebaseAppName"
        id = 0x3
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUserType"
        id = 0x4
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getUserInfos"
        id = 0x5
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzab;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getProviders"
        id = 0x6
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getCurrentVersion"
        id = 0x7
    .end annotation
.end field

.field private h:Ljava/lang/Boolean;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isAnonymous"
        id = 0x8
    .end annotation
.end field

.field private i:Lcom/google/firebase/auth/internal/zzah;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getMetadata"
        id = 0x9
    .end annotation
.end field

.field private j:Z
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "isNewUser"
        id = 0xa
    .end annotation
.end field

.field private k:Lcom/google/firebase/auth/zze;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getDefaultOAuthCredential"
        id = 0xb
    .end annotation
.end field

.field private l:Lcom/google/firebase/auth/internal/zzbj;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getMultiFactorInfoList"
        id = 0xc
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Field;
        getter = "getEnrolledPasskeys"
        id = 0xd
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/zzan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/auth/internal/a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/firebase/auth/internal/a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/firebase/auth/internal/zzaf;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;Lcom/google/firebase/auth/internal/zzab;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/Boolean;Lcom/google/firebase/auth/internal/zzah;ZLcom/google/firebase/auth/zze;Lcom/google/firebase/auth/internal/zzbj;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/firebase-auth-api/zzahv;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x1
        .end annotation
    .end param
    .param p2    # Lcom/google/firebase/auth/internal/zzab;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x2
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x3
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x4
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x5
        .end annotation
    .end param
    .param p6    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x6
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x7
        .end annotation
    .end param
    .param p8    # Ljava/lang/Boolean;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x8
        .end annotation
    .end param
    .param p9    # Lcom/google/firebase/auth/internal/zzah;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0x9
        .end annotation
    .end param
    .param p10    # Z
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xa
        .end annotation
    .end param
    .param p11    # Lcom/google/firebase/auth/zze;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xb
        .end annotation
    .end param
    .param p12    # Lcom/google/firebase/auth/internal/zzbj;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xc
        .end annotation
    .end param
    .param p13    # Ljava/util/List;
        .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Param;
            id = 0xd
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Constructor;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/firebase-auth-api/zzahv;",
            "Lcom/google/firebase/auth/internal/zzab;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzab;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Lcom/google/firebase/auth/internal/zzah;",
            "Z",
            "Lcom/google/firebase/auth/zze;",
            "Lcom/google/firebase/auth/internal/zzbj;",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/zzan;",
            ">;)V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 9
    iput-object p2, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;

    .line 10
    iput-object p3, p0, Lcom/google/firebase/auth/internal/zzaf;->c:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/google/firebase/auth/internal/zzaf;->d:Ljava/lang/String;

    .line 12
    iput-object p5, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

    .line 13
    iput-object p6, p0, Lcom/google/firebase/auth/internal/zzaf;->f:Ljava/util/List;

    .line 14
    iput-object p7, p0, Lcom/google/firebase/auth/internal/zzaf;->g:Ljava/lang/String;

    .line 15
    iput-object p8, p0, Lcom/google/firebase/auth/internal/zzaf;->h:Ljava/lang/Boolean;

    .line 16
    iput-object p9, p0, Lcom/google/firebase/auth/internal/zzaf;->i:Lcom/google/firebase/auth/internal/zzah;

    .line 17
    iput-boolean p10, p0, Lcom/google/firebase/auth/internal/zzaf;->j:Z

    .line 18
    iput-object p11, p0, Lcom/google/firebase/auth/internal/zzaf;->k:Lcom/google/firebase/auth/zze;

    .line 19
    iput-object p12, p0, Lcom/google/firebase/auth/internal/zzaf;->l:Lcom/google/firebase/auth/internal/zzbj;

    .line 20
    iput-object p13, p0, Lcom/google/firebase/auth/internal/zzaf;->m:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/f;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/f;",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/o;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/firebase/auth/FirebaseUser;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/f;->o()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->c:Ljava/lang/String;

    .line 4
    const-string p1, "com.google.firebase.auth.internal.DefaultFirebaseUser"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->d:Ljava/lang/String;

    .line 5
    const-string p1, "2"

    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->g:Ljava/lang/String;

    .line 6
    invoke-virtual {p0, p2}, Lcom/google/firebase/auth/FirebaseUser;->b0(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;

    return-void
.end method


# virtual methods
.method public final R()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->h:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_4

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 12
    .line 13
    const-string v1, ""

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Lcom/google/firebase/auth/internal/e;->a(Ljava/lang/String;)Lcom/google/firebase/auth/g;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->b()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->p()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    const/4 v2, 0x1

    .line 40
    if-gt v0, v2, :cond_2

    .line 41
    .line 42
    if-eqz v1, :cond_3

    .line 43
    .line 44
    const-string v0, "custom"

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x0

    .line 54
    :cond_3
    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->h:Ljava/lang/Boolean;

    .line 59
    .line 60
    :cond_4
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->h:Ljava/lang/Boolean;

    .line 61
    .line 62
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    return v0
.end method

.method public final T()Lcom/google/firebase/f;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/f;->n(Ljava/lang/String;)Lcom/google/firebase/f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final declared-synchronized b0(Ljava/util/List;)Lcom/google/firebase/auth/FirebaseUser;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/o;",
            ">;)",
            "Lcom/google/firebase/auth/FirebaseUser;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

    .line 15
    .line 16
    new-instance v0, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->f:Ljava/util/List;

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    move v1, v0

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-ge v1, v2, :cond_1

    .line 34
    .line 35
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    check-cast v2, Lcom/google/firebase/auth/o;

    .line 40
    .line 41
    invoke-interface {v2}, Lcom/google/firebase/auth/o;->l()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    const-string v4, "firebase"

    .line 46
    .line 47
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    move-object v3, v2

    .line 54
    check-cast v3, Lcom/google/firebase/auth/internal/zzab;

    .line 55
    .line 56
    iput-object v3, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_2

    .line 61
    :cond_0
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzaf;->f:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v2}, Lcom/google/firebase/auth/o;->l()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v3, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

    .line 71
    .line 72
    check-cast v2, Lcom/google/firebase/auth/internal/zzab;

    .line 73
    .line 74
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    add-int/lit8 v1, v1, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;

    .line 81
    .line 82
    if-nez p1, :cond_2

    .line 83
    .line 84
    iget-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lcom/google/firebase/auth/internal/zzab;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    .line 94
    :cond_2
    monitor-exit p0

    .line 95
    return-object p0

    .line 96
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw p1
.end method

.method public final c0(Lcom/google/android/gms/internal/firebase-auth-api/zzahv;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 8
    .line 9
    return-void
.end method

.method public final synthetic d0()Lcom/google/firebase/auth/FirebaseUser;
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->h:Ljava/lang/Boolean;

    .line 4
    .line 5
    return-object p0
.end method

.method public final e0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/zzan;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    new-instance p1, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->m:Ljava/util/List;

    .line 9
    .line 10
    return-void
.end method

.method public final f0()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 2
    .line 3
    return-object v0
.end method

.method public final g0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/firebase/auth/internal/zzbj;->a(Ljava/util/List;)Lcom/google/firebase/auth/internal/zzbj;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->l:Lcom/google/firebase/auth/internal/zzbj;

    .line 6
    .line 7
    return-void
.end method

.method public final h0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/zzan;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i0(Ljava/lang/String;)Lcom/google/firebase/auth/internal/zzaf;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final j0(Lcom/google/firebase/auth/internal/zzah;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->i:Lcom/google/firebase/auth/internal/zzah;

    .line 2
    .line 3
    return-void
.end method

.method public final l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzab;->l()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final m()Lcom/google/firebase/auth/FirebaseUserMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->i:Lcom/google/firebase/auth/internal/zzah;

    .line 2
    .line 3
    return-object v0
.end method

.method public final m0(Lcom/google/firebase/auth/zze;)V
    .locals 0
    .param p1    # Lcom/google/firebase/auth/zze;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/firebase/auth/internal/zzaf;->k:Lcom/google/firebase/auth/zze;

    .line 2
    .line 3
    return-void
.end method

.method public final n0()Lcom/google/firebase/auth/zze;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->k:Lcom/google/firebase/auth/zze;

    .line 2
    .line 3
    return-object v0
.end method

.method public final synthetic o()Lcom/google/firebase/auth/i;
    .locals 1

    .line 1
    new-instance v0, Lv7/h;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lv7/h;-><init>(Lcom/google/firebase/auth/internal/zzaf;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/google/firebase/auth/o;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final t0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/MultiFactorInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->l:Lcom/google/firebase/auth/internal/zzbj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzbj;->zza()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/firebase/auth/internal/e;->a(Ljava/lang/String;)Lcom/google/firebase/auth/g;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/google/firebase/auth/g;->a()Ljava/util/Map;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v2, "firebase"

    .line 27
    .line 28
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    check-cast v0, Ljava/util/Map;

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-string v1, "tenant"

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    move-object v1, v0

    .line 43
    check-cast v1, Ljava/lang/String;

    .line 44
    .line 45
    :cond_0
    return-object v1
.end method

.method public final w0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/auth/internal/zzab;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

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
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->f0()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, v1, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 12
    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;

    .line 16
    .line 17
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 18
    .line 19
    .line 20
    const/4 v1, 0x3

    .line 21
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->c:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->d:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x5

    .line 33
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->e:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 36
    .line 37
    .line 38
    const/4 v1, 0x6

    .line 39
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->zzg()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x7

    .line 47
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->g:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->R()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    const/16 v2, 0x8

    .line 61
    .line 62
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 63
    .line 64
    .line 65
    const/16 v1, 0x9

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->m()Lcom/google/firebase/auth/FirebaseUserMetadata;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 72
    .line 73
    .line 74
    const/16 v1, 0xa

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/google/firebase/auth/internal/zzaf;->j:Z

    .line 77
    .line 78
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 79
    .line 80
    .line 81
    const/16 v1, 0xb

    .line 82
    .line 83
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->k:Lcom/google/firebase/auth/zze;

    .line 84
    .line 85
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 86
    .line 87
    .line 88
    const/16 v1, 0xc

    .line 89
    .line 90
    iget-object v2, p0, Lcom/google/firebase/auth/internal/zzaf;->l:Lcom/google/firebase/auth/internal/zzbj;

    .line 91
    .line 92
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 93
    .line 94
    .line 95
    const/16 p2, 0xd

    .line 96
    .line 97
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->h0()Ljava/util/List;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-static {p1, p2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->b:Lcom/google/firebase/auth/internal/zzab;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/firebase/auth/internal/zzab;->m()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final z0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/firebase/auth/internal/zzaf;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public final zza(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/firebase/auth/internal/zzaf;->j:Z

    .line 2
    .line 3
    return-void
.end method

.method public final zzd()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/firebase/auth/FirebaseUser;->f0()Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzc()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public final zze()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->a:Lcom/google/android/gms/internal/firebase-auth-api/zzahv;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzahv;->zzf()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public final zzg()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/firebase/auth/internal/zzaf;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
