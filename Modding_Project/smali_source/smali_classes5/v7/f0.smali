.class public final Lv7/f0;
.super Ljava/lang/Object;
.source "com.google.firebase:firebase-auth@@24.0.1"


# static fields
.field private static c:Lv7/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/android/gms/internal/firebase-auth-api/zzmy;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzmy;)V
    .locals 0
    .param p2    # Lcom/google/android/gms/internal/firebase-auth-api/zzmy;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lv7/f0;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lv7/f0;->b:Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 7
    .line 8
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Lv7/f0;
    .locals 1

    .line 1
    sget-object v0, Lv7/f0;->c:Lv7/f0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lv7/f0;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lv7/f0;

    .line 14
    .line 15
    invoke-static {p0, p1}, Lv7/f0;->e(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p1, p0}, Lv7/f0;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/zzmy;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lv7/f0;->c:Lv7/f0;

    .line 23
    .line 24
    :cond_1
    sget-object p0, Lv7/f0;->c:Lv7/f0;

    .line 25
    .line 26
    return-object p0
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "StorageCryptoKeyset"

    .line 7
    .line 8
    invoke-static {p1}, Lv7/f0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;->zza(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzcv;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzxb;

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzxb;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    const-string v0, "android-keystore://firebear_main_key_id_for_storage_crypto.%s"

    .line 23
    .line 24
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy$zza;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    return-object p0
.end method

.method private static e(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzcl;->zza()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0, p1}, Lv7/f0;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_2

    .line 9
    :catch_0
    move-exception v0

    .line 10
    goto :goto_0

    .line 11
    :catch_1
    move-exception v0

    .line 12
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    const-string v3, "Exception encountered during crypto setup:\n"

    .line 19
    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "FirebearStorageCryptoHelper"

    .line 31
    .line 32
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    instance-of v0, v0, Ljava/security/GeneralSecurityException;

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {p1}, Lv7/f0;->f(Ljava/lang/String;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v1, "StorageCryptoKeyset"

    .line 53
    .line 54
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 59
    .line 60
    .line 61
    :try_start_1
    invoke-static {p0, p1}, Lv7/f0;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 65
    goto :goto_2

    .line 66
    :catch_2
    move-exception p0

    .line 67
    goto :goto_1

    .line 68
    :catch_3
    move-exception p0

    .line 69
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    const-string v0, "Exception encountered during second attempt to crypto setup:\n"

    .line 76
    .line 77
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    :cond_0
    const/4 p0, 0x0

    .line 91
    :goto_2
    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "com.google.firebase.auth.api.crypto.%s"

    .line 2
    .line 3
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv7/f0;->b:Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "FirebearStorageCryptoHelper"

    .line 10
    .line 11
    const-string v0, "KeysetManager failed to initialize - unable to decrypt data"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object v2, p0, Lv7/f0;->b:Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzco;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbb;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbb;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    .line 35
    .line 36
    new-instance v3, Ljava/lang/String;

    .line 37
    .line 38
    const/4 v4, 0x2

    .line 39
    invoke-static {p1, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zza([B[B)[B

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    .line 49
    invoke-direct {v3, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 50
    .line 51
    .line 52
    monitor-exit v0

    .line 53
    return-object v3

    .line 54
    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    goto :goto_0

    .line 59
    :catch_1
    move-exception p1

    .line 60
    :goto_0
    const-string v0, "FirebearStorageCryptoHelper"

    .line 61
    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v3, "Exception encountered while decrypting bytes:\n"

    .line 69
    .line 70
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .line 82
    .line 83
    return-object v1
.end method

.method public final d(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lv7/f0;->b:Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string p1, "FirebearStorageCryptoHelper"

    .line 10
    .line 11
    const-string v0, "KeysetManager failed to initialize - unable to encrypt data"

    .line 12
    .line 13
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :try_start_1
    iget-object v2, p0, Lv7/f0;->b:Lcom/google/android/gms/internal/firebase-auth-api/zzmy;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zzmy;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbm;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/zzco;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzbb;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const-class v4, Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    .line 29
    .line 30
    invoke-virtual {v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/zzbm;->zza(Lcom/google/android/gms/internal/firebase-auth-api/zzbb;Ljava/lang/Class;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    check-cast v2, Lcom/google/android/gms/internal/firebase-auth-api/zzba;

    .line 35
    .line 36
    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-interface {v2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzba;->zzb([B[B)[B

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    const/4 v2, 0x2

    .line 47
    invoke-static {p1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    monitor-exit v0

    .line 52
    return-object p1

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    const-string v0, "FirebearStorageCryptoHelper"

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string v3, "Exception encountered while encrypting bytes:\n"

    .line 66
    .line 67
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .line 79
    .line 80
    return-object v1
.end method
