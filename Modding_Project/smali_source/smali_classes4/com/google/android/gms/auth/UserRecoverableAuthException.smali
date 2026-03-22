.class public Lcom/google/android/gms/auth/UserRecoverableAuthException;
.super Lcom/google/android/gms/auth/GoogleAuthException;
.source "com.google.android.gms:play-services-auth-base@@18.0.10"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation


# instance fields
.field private final zza:Landroid/content/Intent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzb:Landroid/app/PendingIntent;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final zzc:Lcom/google/android/gms/auth/zzn;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 1
    sget-object v1, Lcom/google/android/gms/auth/zzn;->zza:Lcom/google/android/gms/auth/zzn;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/google/android/gms/auth/zzn;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/google/android/gms/auth/zzn;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zzb:Landroid/app/PendingIntent;

    iput-object p2, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zza:Landroid/content/Intent;

    .line 3
    invoke-static {p4}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/zzn;

    iput-object p1, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zzc:Lcom/google/android/gms/auth/zzn;

    return-void
.end method

.method public static zza(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;)Lcom/google/android/gms/auth/UserRecoverableAuthException;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/PendingIntent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .line 8
    .line 9
    sget-object v1, Lcom/google/android/gms/auth/zzn;->zzb:Lcom/google/android/gms/auth/zzn;

    .line 10
    .line 11
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/auth/UserRecoverableAuthException;-><init>(Ljava/lang/String;Landroid/content/Intent;Landroid/app/PendingIntent;Lcom/google/android/gms/auth/zzn;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zza:Landroid/content/Intent;

    .line 2
    .line 3
    if-nez v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/auth/UserRecoverableAuthException;->zzc:Lcom/google/android/gms/auth/zzn;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const-string v1, "Auth"

    .line 12
    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-eq v0, v2, :cond_1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    if-eq v0, v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "this instantiation of UserRecoverableAuthException doesn\'t support an Intent."

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "This shouldn\'t happen. Gms API throwing this exception should support the recovery Intent."

    .line 29
    .line 30
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    const-string v0, "Make sure that an intent was provided to class instantiation."

    .line 35
    .line 36
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    return-object v0

    .line 41
    :cond_3
    new-instance v1, Landroid/content/Intent;

    .line 42
    .line 43
    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 44
    .line 45
    .line 46
    return-object v1
.end method
