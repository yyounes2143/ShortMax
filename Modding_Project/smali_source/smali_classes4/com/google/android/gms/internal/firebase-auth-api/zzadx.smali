.class final Lcom/google/android/gms/internal/firebase-auth-api/zzadx;
.super Lcom/google/android/gms/internal/firebase-auth-api/zzaff;
.source "com.google.firebase:firebase-auth@@24.0.1"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/firebase-auth-api/zzaff<",
        "Ljava/lang/Void;",
        "Lv7/w0;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzaa:Z

.field private final zzab:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzac:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzad:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzae:Z

.field private final zzv:Ljava/lang/String;

.field private final zzw:Ljava/lang/String;

.field private final zzx:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzy:J

.field private final zzz:Z


# direct methods
.method public constructor <init>(Lcom/google/firebase/auth/internal/zzam;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;-><init>(I)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/google/firebase/auth/internal/zzam;->zzb()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzv:Ljava/lang/String;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzw:Ljava/lang/String;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzx:Ljava/lang/String;

    .line 25
    .line 26
    iput-wide p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzy:J

    .line 27
    .line 28
    iput-boolean p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzz:Z

    .line 29
    .line 30
    iput-boolean p7, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzaa:Z

    .line 31
    .line 32
    iput-object p8, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzab:Ljava/lang/String;

    .line 33
    .line 34
    iput-object p9, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzac:Ljava/lang/String;

    .line 35
    .line 36
    iput-object p10, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzad:Ljava/lang/String;

    .line 37
    .line 38
    iput-boolean p11, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzae:Z

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "startMfaEnrollment"

    return-object v0
.end method

.method public final zza(Lcom/google/android/gms/tasks/TaskCompletionSource;Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;)V
    .locals 15

    move-object v0, p0

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;

    move-object/from16 v2, p1

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzafp;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zzaff;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    .line 3
    iput-object v1, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzg:Lcom/google/android/gms/internal/firebase-auth-api/zzafg;

    .line 4
    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzv:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzw:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzx:Ljava/lang/String;

    iget-wide v6, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzy:J

    iget-boolean v8, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzz:Z

    iget-boolean v9, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzaa:Z

    iget-object v10, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzab:Ljava/lang/String;

    iget-object v11, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzac:Ljava/lang/String;

    iget-object v12, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzad:Ljava/lang/String;

    iget-boolean v13, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzadx;->zzae:Z

    iget-object v14, v0, Lcom/google/android/gms/internal/firebase-auth-api/zzaff;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzafh;

    move-object/from16 v2, p2

    invoke-virtual/range {v2 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/zzaeo;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/google/android/gms/internal/firebase-auth-api/zzaem;)V

    return-void
.end method

.method public final zzb()V
    .locals 0

    .line 1
    return-void
.end method
