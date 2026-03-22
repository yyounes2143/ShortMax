.class public final Lcom/google/android/gms/dynamite/DynamiteModule;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@18.8.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;,
        Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;,
        Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;
    }
.end annotation


# static fields
.field public static final LOCAL:I = -0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final NONE:I = 0x0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final NO_SELECTION:I = 0x0
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final REMOTE:I = 0x1
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation
.end field

.field public static final zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public static final zzb:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private static zzc:Ljava/lang/Boolean; = null

.field private static zzd:Ljava/lang/String; = null

.field private static zze:Z = false

.field private static zzf:I = -0x1

.field private static zzg:Ljava/lang/Boolean;

.field private static final zzh:Ljava/lang/ThreadLocal;

.field private static final zzi:Ljava/lang/ThreadLocal;

.field private static final zzj:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

.field private static zzl:Lcom/google/android/gms/dynamite/zzp;

.field private static zzm:Lcom/google/android/gms/dynamite/zzq;


# instance fields
.field private final zzk:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 7
    .line 8
    new-instance v0, Lcom/google/android/gms/dynamite/zze;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zze;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 14
    .line 15
    new-instance v0, Lcom/google/android/gms/dynamite/zzf;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzf;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 21
    .line 22
    new-instance v0, Lcom/google/android/gms/dynamite/zzg;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzg;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 28
    .line 29
    new-instance v0, Lcom/google/android/gms/dynamite/zzh;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzh;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_LOCAL:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 35
    .line 36
    new-instance v0, Lcom/google/android/gms/dynamite/zzi;

    .line 37
    .line 38
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzi;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_REMOTE_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 42
    .line 43
    new-instance v0, Lcom/google/android/gms/dynamite/zzj;

    .line 44
    .line 45
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzj;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 49
    .line 50
    new-instance v0, Lcom/google/android/gms/dynamite/zzk;

    .line 51
    .line 52
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzk;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_LOCAL_VERSION_NO_FORCE_STAGING:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 56
    .line 57
    new-instance v0, Lcom/google/android/gms/dynamite/zzl;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzl;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->PREFER_HIGHEST_OR_REMOTE_VERSION:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 63
    .line 64
    new-instance v0, Lcom/google/android/gms/dynamite/zzm;

    .line 65
    .line 66
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzm;-><init>()V

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zza:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 70
    .line 71
    new-instance v0, Lcom/google/android/gms/dynamite/zzc;

    .line 72
    .line 73
    invoke-direct {v0}, Lcom/google/android/gms/dynamite/zzc;-><init>()V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 77
    .line 78
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Landroid/content/Context;

    .line 8
    .line 9
    return-void
.end method

.method public static getLocalVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 9
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const-string v0, "DynamiteModule"

    .line 2
    .line 3
    const-string v1, "\'"

    .line 4
    .line 5
    const-string v2, "\' didn\'t match expected id \'"

    .line 6
    .line 7
    const-string v3, "Module descriptor id \'"

    .line 8
    .line 9
    const-string v4, ".ModuleDescriptor"

    .line 10
    .line 11
    const-string v5, "com.google.android.gms.dynamite.descriptors."

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v7

    .line 26
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 27
    .line 28
    .line 29
    move-result v7

    .line 30
    add-int/lit8 v7, v7, 0x3d

    .line 31
    .line 32
    new-instance v8, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-virtual {p0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    const-string v4, "MODULE_ID"

    .line 55
    .line 56
    invoke-virtual {p0, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    const-string v5, "MODULE_VERSION"

    .line 61
    .line 62
    invoke-virtual {p0, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v7

    .line 71
    invoke-static {v7, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_0

    .line 76
    .line 77
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    add-int/lit8 v4, v4, 0x32

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v5

    .line 95
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 96
    .line 97
    .line 98
    move-result v5

    .line 99
    add-int/2addr v4, v5

    .line 100
    add-int/lit8 v4, v4, 0x1

    .line 101
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .line 128
    .line 129
    return v6

    .line 130
    :catch_0
    move-exception p0

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 133
    .line 134
    .line 135
    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    return p0

    .line 137
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p0

    .line 141
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    const-string p1, "Failed to load module descriptor class: "

    .line 146
    .line 147
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p0

    .line 151
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :catch_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p0

    .line 159
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    add-int/lit8 p0, p0, 0x2d

    .line 166
    .line 167
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .line 169
    .line 170
    const-string p0, "Local module descriptor class for "

    .line 171
    .line 172
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p0, " not found."

    .line 179
    .line 180
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p0

    .line 187
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    .line 189
    .line 190
    :goto_1
    return v6
.end method

.method public static getRemoteVersion(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zza(Landroid/content/Context;Ljava/lang/String;Z)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method public static load(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 29
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    const-string v0, " and remote module "

    .line 8
    .line 9
    const-string v4, ":"

    .line 10
    .line 11
    const-string v5, "Considering local module "

    .line 12
    .line 13
    const-string v6, "VersionPolicy returned invalid code:"

    .line 14
    .line 15
    const-string v7, "."

    .line 16
    .line 17
    const-string v8, " and remote version is "

    .line 18
    .line 19
    const-string v9, " found. Local version is "

    .line 20
    .line 21
    const-string v10, "No acceptable module "

    .line 22
    .line 23
    const-string v11, "Failed to load remote module: "

    .line 24
    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v12

    .line 29
    const/4 v13, 0x0

    .line 30
    if-eqz v12, :cond_19

    .line 31
    .line 32
    sget-object v14, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 33
    .line 34
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v15

    .line 38
    check-cast v15, Lcom/google/android/gms/dynamite/zzn;

    .line 39
    .line 40
    move-object/from16 v16, v7

    .line 41
    .line 42
    new-instance v7, Lcom/google/android/gms/dynamite/zzn;

    .line 43
    .line 44
    invoke-direct {v7, v13}, Lcom/google/android/gms/dynamite/zzn;-><init>([B)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v14, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    sget-object v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 51
    .line 52
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v17

    .line 56
    move-object/from16 v18, v8

    .line 57
    .line 58
    move-object/from16 v8, v17

    .line 59
    .line 60
    check-cast v8, Ljava/lang/Long;

    .line 61
    .line 62
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    .line 63
    .line 64
    .line 65
    move-result-wide v19

    .line 66
    const-wide/16 v21, 0x0

    .line 67
    .line 68
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 69
    .line 70
    .line 71
    move-result-wide v23

    .line 72
    move-object/from16 v17, v9

    .line 73
    .line 74
    invoke-static/range {v23 .. v24}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-virtual {v13, v9}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzj:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;

    .line 82
    .line 83
    invoke-interface {v2, v1, v3, v9}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    move-object/from16 v23, v10

    .line 88
    .line 89
    const-string v10, "DynamiteModule"

    .line 90
    .line 91
    move-object/from16 v24, v6

    .line 92
    .line 93
    iget v6, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 94
    .line 95
    iget v2, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    .line 96
    .line 97
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v25

    .line 101
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    .line 102
    .line 103
    .line 104
    move-result v25

    .line 105
    add-int/lit8 v25, v25, 0x1a

    .line 106
    .line 107
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v26

    .line 111
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    .line 112
    .line 113
    .line 114
    move-result v26

    .line 115
    add-int v25, v25, v26

    .line 116
    .line 117
    add-int/lit8 v25, v25, 0x13

    .line 118
    .line 119
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v26

    .line 123
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    .line 124
    .line 125
    .line 126
    move-result v26

    .line 127
    add-int v25, v25, v26

    .line 128
    .line 129
    move-object/from16 v26, v11

    .line 130
    .line 131
    const/4 v11, 0x1

    .line 132
    add-int/lit8 v25, v25, 0x1

    .line 133
    .line 134
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v27

    .line 138
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v27

    .line 142
    add-int v11, v25, v27

    .line 143
    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .line 179
    .line 180
    iget v0, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    .line 181
    .line 182
    if-eqz v0, :cond_16

    .line 183
    .line 184
    const/4 v1, -0x1

    .line 185
    if-ne v0, v1, :cond_0

    .line 186
    .line 187
    iget v0, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 188
    .line 189
    if-eqz v0, :cond_16

    .line 190
    .line 191
    move v0, v1

    .line 192
    :cond_0
    const/4 v2, 0x1

    .line 193
    goto :goto_0

    .line 194
    :catchall_0
    move-exception v0

    .line 195
    goto/16 :goto_c

    .line 196
    .line 197
    :goto_0
    if-ne v0, v2, :cond_1

    .line 198
    .line 199
    iget v2, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    .line 200
    .line 201
    if-eqz v2, :cond_16

    .line 202
    .line 203
    :cond_1
    if-ne v0, v1, :cond_4

    .line 204
    .line 205
    invoke-static {v12, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 206
    .line 207
    .line 208
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    cmp-long v1, v19, v21

    .line 210
    .line 211
    if-nez v1, :cond_2

    .line 212
    .line 213
    invoke-virtual {v13}, Ljava/lang/ThreadLocal;->remove()V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_2
    invoke-virtual {v13, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 218
    .line 219
    .line 220
    :goto_1
    iget-object v1, v7, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 221
    .line 222
    if-eqz v1, :cond_3

    .line 223
    .line 224
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 225
    .line 226
    .line 227
    :cond_3
    invoke-virtual {v14, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    return-object v0

    .line 231
    :cond_4
    const/4 v2, 0x1

    .line 232
    if-ne v0, v2, :cond_15

    .line 233
    .line 234
    const/4 v2, 0x0

    .line 235
    :try_start_1
    iget v0, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    .line 237
    :try_start_2
    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 238
    .line 239
    monitor-enter v4
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    :try_start_3
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;)Z

    .line 241
    .line 242
    .line 243
    move-result v5

    .line 244
    if-eqz v5, :cond_11

    .line 245
    .line 246
    sget-object v5, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;

    .line 247
    .line 248
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 249
    if-eqz v5, :cond_10

    .line 250
    .line 251
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 252
    .line 253
    .line 254
    move-result v4

    .line 255
    const/4 v5, 0x2

    .line 256
    if-eqz v4, :cond_a

    .line 257
    .line 258
    const-string v4, "DynamiteModule"

    .line 259
    .line 260
    const-string v6, "Selected remote version of "

    .line 261
    .line 262
    const-string v10, ", version >= "

    .line 263
    .line 264
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v11

    .line 268
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 269
    .line 270
    .line 271
    move-result v11

    .line 272
    add-int/lit8 v11, v11, 0x28

    .line 273
    .line 274
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v13

    .line 278
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 279
    .line 280
    .line 281
    move-result v13

    .line 282
    add-int/2addr v11, v13

    .line 283
    new-instance v13, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 286
    .line 287
    .line 288
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v6

    .line 304
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    const-class v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 308
    .line 309
    monitor-enter v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 310
    :try_start_5
    sget-object v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zzm:Lcom/google/android/gms/dynamite/zzq;

    .line 311
    .line 312
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 313
    if-eqz v6, :cond_9

    .line 314
    .line 315
    :try_start_6
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 316
    .line 317
    .line 318
    move-result-object v4

    .line 319
    check-cast v4, Lcom/google/android/gms/dynamite/zzn;

    .line 320
    .line 321
    if-eqz v4, :cond_8

    .line 322
    .line 323
    iget-object v10, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 324
    .line 325
    if-eqz v10, :cond_8

    .line 326
    .line 327
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    iget-object v4, v4, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 332
    .line 333
    const/4 v11, 0x0

    .line 334
    invoke-static {v11}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 335
    .line 336
    .line 337
    const-class v11, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 338
    .line 339
    monitor-enter v11
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 340
    :try_start_7
    sget v13, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:I

    .line 341
    .line 342
    if-lt v13, v5, :cond_5

    .line 343
    .line 344
    const/16 v28, 0x1

    .line 345
    .line 346
    goto :goto_2

    .line 347
    :cond_5
    move/from16 v28, v2

    .line 348
    .line 349
    :goto_2
    monitor-exit v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 350
    if-eqz v28, :cond_6

    .line 351
    .line 352
    :try_start_8
    const-string v5, "DynamiteModule"

    .line 353
    .line 354
    const-string v11, "Dynamite loader version >= 2, using loadModule2NoCrashUtils"

    .line 355
    .line 356
    invoke-static {v5, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    .line 358
    .line 359
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 360
    .line 361
    .line 362
    move-result-object v5

    .line 363
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 364
    .line 365
    .line 366
    move-result-object v4

    .line 367
    invoke-virtual {v6, v5, v3, v0, v4}, Lcom/google/android/gms/dynamite/zzq;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 368
    .line 369
    .line 370
    move-result-object v0

    .line 371
    goto :goto_3

    .line 372
    :catchall_1
    move-exception v0

    .line 373
    move-object/from16 v4, p0

    .line 374
    .line 375
    goto/16 :goto_6

    .line 376
    .line 377
    :catch_0
    move-exception v0

    .line 378
    move-object/from16 v4, p0

    .line 379
    .line 380
    goto/16 :goto_7

    .line 381
    .line 382
    :catch_1
    move-exception v0

    .line 383
    move-object/from16 v4, p0

    .line 384
    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :cond_6
    const-string v5, "DynamiteModule"

    .line 388
    .line 389
    const-string v11, "Dynamite loader version < 2, falling back to loadModule2"

    .line 390
    .line 391
    invoke-static {v5, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    invoke-static {v10}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 395
    .line 396
    .line 397
    move-result-object v5

    .line 398
    invoke-static {v4}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 399
    .line 400
    .line 401
    move-result-object v4

    .line 402
    invoke-virtual {v6, v5, v3, v0, v4}, Lcom/google/android/gms/dynamite/zzq;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    check-cast v0, Landroid/content/Context;

    .line 411
    .line 412
    if-eqz v0, :cond_7

    .line 413
    .line 414
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 415
    .line 416
    invoke-direct {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 417
    .line 418
    .line 419
    goto/16 :goto_a

    .line 420
    .line 421
    :cond_7
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 422
    .line 423
    const-string v4, "Failed to get module context"

    .line 424
    .line 425
    const/4 v5, 0x0

    .line 426
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 427
    .line 428
    .line 429
    throw v0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 430
    :catchall_2
    move-exception v0

    .line 431
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 432
    :try_start_a
    throw v0

    .line 433
    :cond_8
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 434
    .line 435
    const-string v4, "No result cursor"

    .line 436
    .line 437
    const/4 v5, 0x0

    .line 438
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 439
    .line 440
    .line 441
    throw v0

    .line 442
    :cond_9
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 443
    .line 444
    const-string v4, "DynamiteLoaderV2 was not cached."

    .line 445
    .line 446
    const/4 v5, 0x0

    .line 447
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 448
    .line 449
    .line 450
    throw v0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 451
    :catchall_3
    move-exception v0

    .line 452
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 453
    :try_start_c
    throw v0

    .line 454
    :cond_a
    const-string v4, "DynamiteModule"

    .line 455
    .line 456
    const-string v6, "Selected remote version of "

    .line 457
    .line 458
    const-string v10, ", version >= "

    .line 459
    .line 460
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v11

    .line 464
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    .line 465
    .line 466
    .line 467
    move-result v11

    .line 468
    add-int/lit8 v11, v11, 0x28

    .line 469
    .line 470
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 471
    .line 472
    .line 473
    move-result-object v13

    .line 474
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    .line 475
    .line 476
    .line 477
    move-result v13

    .line 478
    add-int/2addr v11, v13

    .line 479
    new-instance v13, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v13, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    .line 492
    .line 493
    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 494
    .line 495
    .line 496
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 497
    .line 498
    .line 499
    move-result-object v6

    .line 500
    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    .line 502
    .line 503
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;

    .line 504
    .line 505
    .line 506
    move-result-object v4

    .line 507
    if-eqz v4, :cond_f

    .line 508
    .line 509
    invoke-virtual {v4}, Lcom/google/android/gms/dynamite/zzp;->zzi()I

    .line 510
    .line 511
    .line 512
    move-result v6

    .line 513
    const/4 v10, 0x3

    .line 514
    if-lt v6, v10, :cond_c

    .line 515
    .line 516
    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 517
    .line 518
    .line 519
    move-result-object v5

    .line 520
    check-cast v5, Lcom/google/android/gms/dynamite/zzn;

    .line 521
    .line 522
    if-eqz v5, :cond_b

    .line 523
    .line 524
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 525
    .line 526
    .line 527
    move-result-object v6

    .line 528
    iget-object v5, v5, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 529
    .line 530
    invoke-static {v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 531
    .line 532
    .line 533
    move-result-object v5

    .line 534
    invoke-virtual {v4, v6, v3, v0, v5}, Lcom/google/android/gms/dynamite/zzp;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ILcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 535
    .line 536
    .line 537
    move-result-object v0

    .line 538
    goto :goto_4

    .line 539
    :cond_b
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 540
    .line 541
    const-string v4, "No cached result cursor holder"

    .line 542
    .line 543
    const/4 v5, 0x0

    .line 544
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 545
    .line 546
    .line 547
    throw v0

    .line 548
    :cond_c
    if-ne v6, v5, :cond_d

    .line 549
    .line 550
    const-string v5, "DynamiteModule"

    .line 551
    .line 552
    const-string v6, "IDynamite loader version = 2"

    .line 553
    .line 554
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    .line 556
    .line 557
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 558
    .line 559
    .line 560
    move-result-object v5

    .line 561
    invoke-virtual {v4, v5, v3, v0}, Lcom/google/android/gms/dynamite/zzp;->zzg(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 562
    .line 563
    .line 564
    move-result-object v0

    .line 565
    goto :goto_4

    .line 566
    :cond_d
    const-string v5, "DynamiteModule"

    .line 567
    .line 568
    const-string v6, "Dynamite loader version < 2, falling back to createModuleContext"

    .line 569
    .line 570
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .line 572
    .line 573
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 574
    .line 575
    .line 576
    move-result-object v5

    .line 577
    invoke-virtual {v4, v5, v3, v0}, Lcom/google/android/gms/dynamite/zzp;->zze(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;I)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    :goto_4
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    if-eqz v0, :cond_e

    .line 586
    .line 587
    new-instance v4, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 588
    .line 589
    check-cast v0, Landroid/content/Context;

    .line 590
    .line 591
    invoke-direct {v4, v0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 592
    .line 593
    .line 594
    goto/16 :goto_a

    .line 595
    .line 596
    :cond_e
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 597
    .line 598
    const-string v4, "Failed to load remote module."

    .line 599
    .line 600
    const/4 v5, 0x0

    .line 601
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 602
    .line 603
    .line 604
    throw v0

    .line 605
    :cond_f
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 606
    .line 607
    const-string v4, "Failed to create IDynamiteLoader."

    .line 608
    .line 609
    const/4 v5, 0x0

    .line 610
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 611
    .line 612
    .line 613
    throw v0

    .line 614
    :cond_10
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 615
    .line 616
    const-string v4, "Failed to determine which loading route to use."

    .line 617
    .line 618
    const/4 v5, 0x0

    .line 619
    invoke-direct {v0, v4, v5}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 620
    .line 621
    .line 622
    throw v0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 623
    :catchall_4
    move-exception v0

    .line 624
    goto :goto_5

    .line 625
    :cond_11
    :try_start_d
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 626
    .line 627
    const-string v5, "Remote loading disabled"

    .line 628
    .line 629
    const/4 v6, 0x0

    .line 630
    invoke-direct {v0, v5, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 631
    .line 632
    .line 633
    throw v0

    .line 634
    :goto_5
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 635
    :try_start_e
    throw v0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 636
    :goto_6
    :try_start_f
    invoke-static {v4, v0}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 637
    .line 638
    .line 639
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 640
    .line 641
    const-string v6, "Failed to load remote module."

    .line 642
    .line 643
    const/4 v10, 0x0

    .line 644
    invoke-direct {v5, v6, v0, v10}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    .line 645
    .line 646
    .line 647
    throw v5

    .line 648
    :catch_2
    move-exception v0

    .line 649
    goto :goto_9

    .line 650
    :goto_7
    throw v0

    .line 651
    :goto_8
    new-instance v5, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 652
    .line 653
    const-string v6, "Failed to load remote module."

    .line 654
    .line 655
    const/4 v10, 0x0

    .line 656
    invoke-direct {v5, v6, v0, v10}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    .line 657
    .line 658
    .line 659
    throw v5
    :try_end_f
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 660
    :catch_3
    move-exception v0

    .line 661
    move-object/from16 v4, p0

    .line 662
    .line 663
    :goto_9
    :try_start_10
    const-string v5, "DynamiteModule"

    .line 664
    .line 665
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 666
    .line 667
    .line 668
    move-result-object v6

    .line 669
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v10

    .line 673
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    .line 674
    .line 675
    .line 676
    move-result v10

    .line 677
    add-int/lit8 v10, v10, 0x1e

    .line 678
    .line 679
    new-instance v11, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 682
    .line 683
    .line 684
    move-object/from16 v10, v26

    .line 685
    .line 686
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v6

    .line 696
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    .line 698
    .line 699
    iget v5, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 700
    .line 701
    if-eqz v5, :cond_14

    .line 702
    .line 703
    new-instance v6, Lcom/google/android/gms/dynamite/zzo;

    .line 704
    .line 705
    invoke-direct {v6, v5, v2}, Lcom/google/android/gms/dynamite/zzo;-><init>(II)V

    .line 706
    .line 707
    .line 708
    move-object/from16 v2, p1

    .line 709
    .line 710
    invoke-interface {v2, v4, v3, v6}, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;->selectModule(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$IVersions;)Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;

    .line 711
    .line 712
    .line 713
    move-result-object v2

    .line 714
    iget v2, v2, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->selection:I

    .line 715
    .line 716
    if-ne v2, v1, :cond_14

    .line 717
    .line 718
    invoke-static {v12, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 719
    .line 720
    .line 721
    move-result-object v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 722
    :goto_a
    cmp-long v0, v19, v21

    .line 723
    .line 724
    if-nez v0, :cond_12

    .line 725
    .line 726
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 727
    .line 728
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 729
    .line 730
    .line 731
    goto :goto_b

    .line 732
    :cond_12
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 733
    .line 734
    invoke-virtual {v0, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 735
    .line 736
    .line 737
    :goto_b
    iget-object v0, v7, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 738
    .line 739
    if-eqz v0, :cond_13

    .line 740
    .line 741
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 742
    .line 743
    .line 744
    :cond_13
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 745
    .line 746
    invoke-virtual {v0, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 747
    .line 748
    .line 749
    return-object v4

    .line 750
    :cond_14
    :try_start_11
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 751
    .line 752
    const-string v2, "Remote load failed. No local fallback found."

    .line 753
    .line 754
    const/4 v3, 0x0

    .line 755
    invoke-direct {v1, v2, v0, v3}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    .line 756
    .line 757
    .line 758
    throw v1

    .line 759
    :cond_15
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 760
    .line 761
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 762
    .line 763
    .line 764
    move-result-object v2

    .line 765
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 766
    .line 767
    .line 768
    move-result v2

    .line 769
    add-int/lit8 v2, v2, 0x24

    .line 770
    .line 771
    new-instance v3, Ljava/lang/StringBuilder;

    .line 772
    .line 773
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 774
    .line 775
    .line 776
    move-object/from16 v2, v24

    .line 777
    .line 778
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    .line 780
    .line 781
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 782
    .line 783
    .line 784
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 785
    .line 786
    .line 787
    move-result-object v0

    .line 788
    const/4 v2, 0x0

    .line 789
    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 790
    .line 791
    .line 792
    throw v1

    .line 793
    :cond_16
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 794
    .line 795
    iget v1, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->localVersion:I

    .line 796
    .line 797
    iget v2, v9, Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy$SelectionResult;->remoteVersion:I

    .line 798
    .line 799
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 800
    .line 801
    .line 802
    move-result-object v4

    .line 803
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 804
    .line 805
    .line 806
    move-result v4

    .line 807
    add-int/lit8 v4, v4, 0x2e

    .line 808
    .line 809
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v5

    .line 813
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 814
    .line 815
    .line 816
    move-result v5

    .line 817
    add-int/2addr v4, v5

    .line 818
    add-int/lit8 v4, v4, 0x17

    .line 819
    .line 820
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 821
    .line 822
    .line 823
    move-result-object v5

    .line 824
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 825
    .line 826
    .line 827
    move-result v5

    .line 828
    add-int/2addr v4, v5

    .line 829
    const/4 v5, 0x1

    .line 830
    add-int/2addr v4, v5

    .line 831
    new-instance v5, Ljava/lang/StringBuilder;

    .line 832
    .line 833
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 834
    .line 835
    .line 836
    move-object/from16 v4, v23

    .line 837
    .line 838
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    .line 840
    .line 841
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    move-object/from16 v3, v17

    .line 845
    .line 846
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    move-object/from16 v1, v18

    .line 853
    .line 854
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 858
    .line 859
    .line 860
    move-object/from16 v1, v16

    .line 861
    .line 862
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    const/4 v2, 0x0

    .line 870
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 871
    .line 872
    .line 873
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 874
    :goto_c
    cmp-long v1, v19, v21

    .line 875
    .line 876
    if-nez v1, :cond_17

    .line 877
    .line 878
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 879
    .line 880
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    .line 881
    .line 882
    .line 883
    goto :goto_d

    .line 884
    :cond_17
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 885
    .line 886
    invoke-virtual {v1, v8}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 887
    .line 888
    .line 889
    :goto_d
    iget-object v1, v7, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 890
    .line 891
    if-eqz v1, :cond_18

    .line 892
    .line 893
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 894
    .line 895
    .line 896
    :cond_18
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 897
    .line 898
    invoke-virtual {v1, v15}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 899
    .line 900
    .line 901
    throw v0

    .line 902
    :cond_19
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 903
    .line 904
    const-string v1, "null application Context"

    .line 905
    .line 906
    const/4 v2, 0x0

    .line 907
    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 908
    .line 909
    .line 910
    throw v0
.end method

.method public static zza(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 12
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "Failed to retrieve remote module version: "

    .line 2
    .line 3
    const-string v1, "Failed to load module via V2: "

    .line 4
    .line 5
    :try_start_0
    const-class v2, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 6
    .line 7
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 8
    :try_start_1
    sget-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    if-nez v3, :cond_9

    .line 13
    .line 14
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-class v6, Lcom/google/android/gms/dynamite/DynamiteModule$DynamiteLoaderClassLoader;

    .line 23
    .line 24
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v6

    .line 28
    invoke-virtual {v3, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    const-string v6, "sClassLoader"

    .line 33
    .line 34
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 43
    :try_start_3
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    check-cast v7, Ljava/lang/ClassLoader;

    .line 48
    .line 49
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 50
    .line 51
    .line 52
    move-result-object v8

    .line 53
    if-ne v7, v8, :cond_0

    .line 54
    .line 55
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :catchall_0
    move-exception v3

    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_0
    if-eqz v7, :cond_1

    .line 63
    .line 64
    :try_start_4
    invoke-static {v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Ljava/lang/ClassLoader;)V
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 65
    .line 66
    .line 67
    :catch_0
    :try_start_5
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 68
    .line 69
    goto/16 :goto_3

    .line 70
    .line 71
    :cond_1
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzb(Landroid/content/Context;)Z

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    if-nez v7, :cond_2

    .line 76
    .line 77
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 79
    return v5

    .line 80
    :catchall_1
    move-exception p1

    .line 81
    goto/16 :goto_10

    .line 82
    .line 83
    :cond_2
    :try_start_7
    sget-boolean v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Z

    .line 84
    .line 85
    if-nez v7, :cond_8

    .line 86
    .line 87
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v7, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 93
    if-eqz v8, :cond_3

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const/4 v8, 0x1

    .line 97
    :try_start_8
    invoke-static {p0, p1, p2, v8}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;ZZ)I

    .line 98
    .line 99
    .line 100
    move-result v8

    .line 101
    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    .line 102
    .line 103
    if-eqz v9, :cond_7

    .line 104
    .line 105
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-eqz v9, :cond_4

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_4
    invoke-static {}, Lcom/google/android/gms/dynamite/zzb;->zza()Ljava/lang/ClassLoader;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    if-eqz v9, :cond_5

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 120
    .line 121
    const/16 v10, 0x1d

    .line 122
    .line 123
    if-lt v9, v10, :cond_6

    .line 124
    .line 125
    invoke-static {}, Lcom/google/android/gms/dynamite/b;->a()V

    .line 126
    .line 127
    .line 128
    sget-object v9, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v9}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 134
    .line 135
    .line 136
    move-result-object v10

    .line 137
    invoke-static {v9, v10}, Lcom/google/android/gms/dynamite/a;->a(Ljava/lang/String;Ljava/lang/ClassLoader;)Ldalvik/system/DelegateLastClassLoader;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    goto :goto_0

    .line 142
    :cond_6
    new-instance v9, Lcom/google/android/gms/dynamite/zzd;

    .line 143
    .line 144
    sget-object v10, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    .line 145
    .line 146
    invoke-static {v10}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 150
    .line 151
    .line 152
    move-result-object v11

    .line 153
    invoke-direct {v9, v10, v11}, Lcom/google/android/gms/dynamite/zzd;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 154
    .line 155
    .line 156
    :goto_0
    invoke-static {v9}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf(Ljava/lang/ClassLoader;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, v4, v9}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    sput-object v7, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;
    :try_end_8
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 163
    .line 164
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 165
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 166
    return v8

    .line 167
    :cond_7
    :goto_1
    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 168
    :try_start_c
    monitor-exit v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 169
    return v8

    .line 170
    :catch_1
    :try_start_d
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_8
    :goto_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 181
    .line 182
    .line 183
    move-result-object v7

    .line 184
    invoke-virtual {v3, v4, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 185
    .line 186
    .line 187
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 188
    .line 189
    :goto_3
    monitor-exit v6

    .line 190
    goto :goto_6

    .line 191
    :goto_4
    monitor-exit v6
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 192
    :try_start_e
    throw v3
    :try_end_e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/lang/NoSuchFieldException; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 193
    :catch_2
    move-exception v3

    .line 194
    goto :goto_5

    .line 195
    :catch_3
    move-exception v3

    .line 196
    goto :goto_5

    .line 197
    :catch_4
    move-exception v3

    .line 198
    :goto_5
    :try_start_f
    const-string v6, "DynamiteModule"

    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 205
    .line 206
    .line 207
    move-result v7

    .line 208
    add-int/lit8 v7, v7, 0x1e

    .line 209
    .line 210
    new-instance v8, Ljava/lang/StringBuilder;

    .line 211
    .line 212
    invoke-direct {v8, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-static {v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 229
    .line 230
    move-object v3, v1

    .line 231
    :goto_6
    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc:Ljava/lang/Boolean;

    .line 232
    .line 233
    :cond_9
    monitor-exit v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 234
    :try_start_10
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 235
    .line 236
    .line 237
    move-result v1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    .line 238
    if-eqz v1, :cond_a

    .line 239
    .line 240
    :try_start_11
    invoke-static {p0, p1, p2, v5}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzc(Landroid/content/Context;Ljava/lang/String;ZZ)I

    .line 241
    .line 242
    .line 243
    move-result p0
    :try_end_11
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 244
    return p0

    .line 245
    :catchall_2
    move-exception p1

    .line 246
    goto/16 :goto_11

    .line 247
    .line 248
    :catch_5
    move-exception p1

    .line 249
    :try_start_12
    const-string p2, "DynamiteModule"

    .line 250
    .line 251
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p1

    .line 255
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    add-int/lit8 v1, v1, 0x2a

    .line 264
    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    return v5

    .line 284
    :cond_a
    const-string v0, "Failed to retrieve remote module version: "

    .line 285
    .line 286
    invoke-static {p0}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;

    .line 287
    .line 288
    .line 289
    move-result-object v6
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    .line 290
    if-nez v6, :cond_b

    .line 291
    .line 292
    goto/16 :goto_e

    .line 293
    .line 294
    :cond_b
    :try_start_13
    invoke-virtual {v6}, Lcom/google/android/gms/dynamite/zzp;->zzi()I

    .line 295
    .line 296
    .line 297
    move-result v1

    .line 298
    const/4 v2, 0x3

    .line 299
    if-lt v1, v2, :cond_11

    .line 300
    .line 301
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 302
    .line 303
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v1

    .line 307
    check-cast v1, Lcom/google/android/gms/dynamite/zzn;

    .line 308
    .line 309
    if-eqz v1, :cond_c

    .line 310
    .line 311
    iget-object v1, v1, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 312
    .line 313
    if-eqz v1, :cond_c

    .line 314
    .line 315
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    goto/16 :goto_e

    .line 320
    .line 321
    :catch_6
    move-exception p1

    .line 322
    goto/16 :goto_c

    .line 323
    .line 324
    :cond_c
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 325
    .line 326
    .line 327
    move-result-object v7

    .line 328
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 329
    .line 330
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    check-cast v1, Ljava/lang/Long;

    .line 335
    .line 336
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 337
    .line 338
    .line 339
    move-result-wide v10

    .line 340
    move-object v8, p1

    .line 341
    move v9, p2

    .line 342
    invoke-virtual/range {v6 .. v11}, Lcom/google/android/gms/dynamite/zzp;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;ZJ)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    check-cast p1, Landroid/database/Cursor;
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_6
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    .line 351
    .line 352
    if-eqz p1, :cond_10

    .line 353
    .line 354
    :try_start_14
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 355
    .line 356
    .line 357
    move-result p2

    .line 358
    if-nez p2, :cond_d

    .line 359
    .line 360
    goto :goto_8

    .line 361
    :cond_d
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 362
    .line 363
    .line 364
    move-result p2

    .line 365
    if-lez p2, :cond_e

    .line 366
    .line 367
    invoke-static {p1}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/database/Cursor;)Z

    .line 368
    .line 369
    .line 370
    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 371
    if-eqz v0, :cond_e

    .line 372
    .line 373
    goto :goto_7

    .line 374
    :catchall_3
    move-exception p2

    .line 375
    goto :goto_9

    .line 376
    :catch_7
    move-exception p2

    .line 377
    goto :goto_a

    .line 378
    :cond_e
    move-object v4, p1

    .line 379
    :goto_7
    if-eqz v4, :cond_f

    .line 380
    .line 381
    :try_start_15
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    .line 382
    .line 383
    .line 384
    :cond_f
    move v5, p2

    .line 385
    goto :goto_e

    .line 386
    :cond_10
    :goto_8
    :try_start_16
    const-string p2, "DynamiteModule"

    .line 387
    .line 388
    const-string v1, "Failed to retrieve remote module version."

    .line 389
    .line 390
    invoke-static {p2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_7
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 391
    .line 392
    .line 393
    if-eqz p1, :cond_13

    .line 394
    .line 395
    :try_start_17
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    .line 396
    .line 397
    .line 398
    goto :goto_e

    .line 399
    :goto_9
    move-object v4, p1

    .line 400
    goto :goto_f

    .line 401
    :goto_a
    move-object v4, p1

    .line 402
    goto :goto_d

    .line 403
    :cond_11
    const/4 v2, 0x2

    .line 404
    if-ne v1, v2, :cond_12

    .line 405
    .line 406
    :try_start_18
    const-string v1, "DynamiteModule"

    .line 407
    .line 408
    const-string v2, "IDynamite loader version = 2, no high precision latency measurement."

    .line 409
    .line 410
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .line 412
    .line 413
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 414
    .line 415
    .line 416
    move-result-object v1

    .line 417
    invoke-virtual {v6, v1, p1, p2}, Lcom/google/android/gms/dynamite/zzp;->zzh(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    .line 418
    .line 419
    .line 420
    move-result v5

    .line 421
    goto :goto_e

    .line 422
    :cond_12
    const-string v1, "DynamiteModule"

    .line 423
    .line 424
    const-string v2, "IDynamite loader version < 2, falling back to getModuleVersion2"

    .line 425
    .line 426
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    .line 428
    .line 429
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v6, v1, p1, p2}, Lcom/google/android/gms/dynamite/zzp;->zzf(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Z)I

    .line 434
    .line 435
    .line 436
    move-result v5
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_6
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    .line 437
    goto :goto_e

    .line 438
    :goto_b
    move-object p2, p1

    .line 439
    goto :goto_f

    .line 440
    :goto_c
    move-object p2, p1

    .line 441
    :goto_d
    :try_start_19
    const-string p1, "DynamiteModule"

    .line 442
    .line 443
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object p2

    .line 447
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 452
    .line 453
    .line 454
    move-result v1

    .line 455
    add-int/lit8 v1, v1, 0x2a

    .line 456
    .line 457
    new-instance v2, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    .line 467
    .line 468
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object p2

    .line 472
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 473
    .line 474
    .line 475
    if-eqz v4, :cond_13

    .line 476
    .line 477
    :try_start_1a
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 478
    .line 479
    .line 480
    :cond_13
    :goto_e
    return v5

    .line 481
    :catchall_4
    move-exception p1

    .line 482
    goto :goto_b

    .line 483
    :goto_f
    if-eqz v4, :cond_14

    .line 484
    .line 485
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 486
    .line 487
    .line 488
    :cond_14
    throw p2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 489
    :goto_10
    :try_start_1b
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    .line 490
    :try_start_1c
    throw p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_2

    .line 491
    :goto_11
    invoke-static {p0, p1}, Lcom/google/android/gms/common/util/CrashUtils;->addDynamiteErrorToDropBox(Landroid/content/Context;Ljava/lang/Throwable;)Z

    .line 492
    .line 493
    .line 494
    throw p1
.end method

.method private static zzb(Landroid/content/Context;)Z
    .locals 6

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return v2

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/Boolean;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    return v2

    .line 21
    :cond_1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/Boolean;

    .line 22
    .line 23
    const-string v1, "DynamiteModule"

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    if-nez v0, :cond_4

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {}, Lcom/google/android/gms/common/util/PlatformVersion;->isAtLeastQ()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eq v2, v4, :cond_2

    .line 37
    .line 38
    move v4, v3

    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/high16 v4, 0x10000000

    .line 41
    .line 42
    :goto_0
    const-string v5, "com.google.android.gms.chimera"

    .line 43
    .line 44
    invoke-virtual {v0, v5, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailabilityLight;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    const v5, 0x989680

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, p0, v5}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;I)I

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    if-eqz v0, :cond_3

    .line 62
    .line 63
    const-string p0, "com.google.android.gms"

    .line 64
    .line 65
    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p0

    .line 71
    if-eqz p0, :cond_3

    .line 72
    .line 73
    move v3, v2

    .line 74
    :cond_3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    sput-object p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzg:Ljava/lang/Boolean;

    .line 79
    .line 80
    if-eqz v3, :cond_4

    .line 81
    .line 82
    iget-object p0, v0, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 83
    .line 84
    if-eqz p0, :cond_4

    .line 85
    .line 86
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 87
    .line 88
    and-int/lit16 p0, p0, 0x81

    .line 89
    .line 90
    if-nez p0, :cond_4

    .line 91
    .line 92
    const-string p0, "Non-system-image GmsCore APK, forcing V1"

    .line 93
    .line 94
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    sput-boolean v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Z

    .line 98
    .line 99
    :cond_4
    if-nez v3, :cond_5

    .line 100
    .line 101
    const-string p0, "Invalid GmsCore APK, remote loading disabled."

    .line 102
    .line 103
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    :cond_5
    return v3
.end method

.method private static zzc(Landroid/content/Context;Ljava/lang/String;ZZ)I
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const-string v1, "V2 version check failed: "

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzi:Ljava/lang/ThreadLocal;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/Long;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 13
    .line 14
    .line 15
    move-result-wide v3

    .line 16
    const-string v0, "api_force_staging"

    .line 17
    .line 18
    const-string v5, "api"

    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    move/from16 v7, p2

    .line 22
    .line 23
    if-eq v6, v7, :cond_0

    .line 24
    .line 25
    move-object v0, v5

    .line 26
    :cond_0
    new-instance v5, Landroid/net/Uri$Builder;

    .line 27
    .line 28
    invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v7, "content"

    .line 32
    .line 33
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v7, "com.google.android.gms.chimera"

    .line 38
    .line 39
    invoke-virtual {v5, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v5

    .line 43
    invoke-virtual {v5, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    move-object/from16 v5, p1

    .line 48
    .line 49
    invoke-virtual {v0, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v5, "requestStartUptime"

    .line 54
    .line 55
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-virtual {v0, v5, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v8

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v8}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    .line 72
    .line 73
    .line 74
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    const/4 v4, 0x2

    .line 76
    const/4 v5, 0x0

    .line 77
    if-nez v3, :cond_1

    .line 78
    .line 79
    :goto_0
    move-object v9, v2

    .line 80
    goto/16 :goto_7

    .line 81
    .line 82
    :cond_1
    const/4 v11, 0x0

    .line 83
    const/4 v12, 0x0

    .line 84
    const/4 v9, 0x0

    .line 85
    const/4 v10, 0x0

    .line 86
    move-object v7, v3

    .line 87
    :try_start_1
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 88
    .line 89
    .line 90
    move-result-object v7
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 91
    if-nez v7, :cond_2

    .line 92
    .line 93
    :catch_0
    :try_start_2
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :catchall_0
    move-exception v0

    .line 98
    goto/16 :goto_10

    .line 99
    .line 100
    :catch_1
    move-exception v0

    .line 101
    goto/16 :goto_e

    .line 102
    .line 103
    :cond_2
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    new-instance v9, Landroid/database/MatrixCursor;

    .line 112
    .line 113
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v10

    .line 117
    invoke-direct {v9, v10, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 118
    .line 119
    .line 120
    move v10, v5

    .line 121
    :goto_1
    if-ge v10, v0, :cond_a

    .line 122
    .line 123
    invoke-interface {v7, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 124
    .line 125
    .line 126
    move-result v11

    .line 127
    if-eqz v11, :cond_9

    .line 128
    .line 129
    new-array v11, v8, [Ljava/lang/Object;

    .line 130
    .line 131
    move v12, v5

    .line 132
    :goto_2
    if-ge v12, v8, :cond_8

    .line 133
    .line 134
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getType(I)I

    .line 135
    .line 136
    .line 137
    move-result v13

    .line 138
    if-eqz v13, :cond_7

    .line 139
    .line 140
    if-eq v13, v6, :cond_6

    .line 141
    .line 142
    if-eq v13, v4, :cond_5

    .line 143
    .line 144
    const/4 v14, 0x3

    .line 145
    if-eq v13, v14, :cond_4

    .line 146
    .line 147
    const/4 v14, 0x4

    .line 148
    if-ne v13, v14, :cond_3

    .line 149
    .line 150
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getBlob(I)[B

    .line 151
    .line 152
    .line 153
    move-result-object v13

    .line 154
    aput-object v13, v11, v12

    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catchall_1
    move-exception v0

    .line 158
    move-object v8, v0

    .line 159
    goto :goto_4

    .line 160
    :cond_3
    new-instance v0, Landroid/os/RemoteException;

    .line 161
    .line 162
    const-string v8, "Unknown column type"

    .line 163
    .line 164
    invoke-direct {v0, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0

    .line 168
    :cond_4
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v13

    .line 172
    aput-object v13, v11, v12

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_5
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getDouble(I)D

    .line 176
    .line 177
    .line 178
    move-result-wide v13

    .line 179
    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 180
    .line 181
    .line 182
    move-result-object v13

    .line 183
    aput-object v13, v11, v12

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_6
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 187
    .line 188
    .line 189
    move-result-wide v13

    .line 190
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    aput-object v13, v11, v12

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_7
    aput-object v2, v11, v12

    .line 198
    .line 199
    :goto_3
    add-int/lit8 v12, v12, 0x1

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_8
    invoke-virtual {v9, v11}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    add-int/lit8 v10, v10, 0x1

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_9
    new-instance v0, Landroid/os/RemoteException;

    .line 209
    .line 210
    const-string v8, "Cursor read incomplete (ContentProvider dead?)"

    .line 211
    .line 212
    invoke-direct {v0, v8}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 216
    :cond_a
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 217
    .line 218
    .line 219
    :try_start_5
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 220
    .line 221
    .line 222
    goto :goto_7

    .line 223
    :catchall_2
    move-exception v0

    .line 224
    goto :goto_6

    .line 225
    :goto_4
    :try_start_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 226
    .line 227
    .line 228
    goto :goto_5

    .line 229
    :catchall_3
    move-exception v0

    .line 230
    move-object v7, v0

    .line 231
    :try_start_7
    invoke-virtual {v8, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 232
    .line 233
    .line 234
    :goto_5
    throw v8
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 235
    :goto_6
    :try_start_8
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    .line 236
    .line 237
    .line 238
    throw v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 239
    :goto_7
    if-eqz v9, :cond_12

    .line 240
    .line 241
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_12

    .line 246
    .line 247
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    if-lez v0, :cond_e

    .line 252
    .line 253
    const-class v3, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 254
    .line 255
    monitor-enter v3
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    .line 256
    :try_start_a
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v4

    .line 260
    sput-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd:Ljava/lang/String;

    .line 261
    .line 262
    const-string v4, "loaderVersion"

    .line 263
    .line 264
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    move-result v4

    .line 268
    if-ltz v4, :cond_b

    .line 269
    .line 270
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    sput v4, Lcom/google/android/gms/dynamite/DynamiteModule;->zzf:I

    .line 275
    .line 276
    goto :goto_8

    .line 277
    :catchall_4
    move-exception v0

    .line 278
    goto :goto_a

    .line 279
    :cond_b
    :goto_8
    const-string v4, "disableStandaloneDynamiteLoader2"

    .line 280
    .line 281
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 282
    .line 283
    .line 284
    move-result v4

    .line 285
    if-ltz v4, :cond_d

    .line 286
    .line 287
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 288
    .line 289
    .line 290
    move-result v4

    .line 291
    if-eqz v4, :cond_c

    .line 292
    .line 293
    goto :goto_9

    .line 294
    :cond_c
    move v6, v5

    .line 295
    :goto_9
    sput-boolean v6, Lcom/google/android/gms/dynamite/DynamiteModule;->zze:Z

    .line 296
    .line 297
    move v5, v6

    .line 298
    :cond_d
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 299
    :try_start_b
    invoke-static {v9}, Lcom/google/android/gms/dynamite/DynamiteModule;->zzd(Landroid/database/Cursor;)Z

    .line 300
    .line 301
    .line 302
    move-result v3
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    .line 303
    if-eqz v3, :cond_e

    .line 304
    .line 305
    move-object v9, v2

    .line 306
    goto :goto_b

    .line 307
    :goto_a
    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 308
    :try_start_d
    throw v0

    .line 309
    :cond_e
    :goto_b
    if-eqz p3, :cond_10

    .line 310
    .line 311
    if-nez v5, :cond_f

    .line 312
    .line 313
    goto :goto_d

    .line 314
    :cond_f
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 315
    .line 316
    const-string v3, "forcing fallback to container DynamiteLoader impl"

    .line 317
    .line 318
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 319
    .line 320
    .line 321
    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    .line 322
    :catchall_5
    move-exception v0

    .line 323
    goto :goto_c

    .line 324
    :catch_2
    move-exception v0

    .line 325
    goto :goto_f

    .line 326
    :goto_c
    move-object v2, v9

    .line 327
    goto :goto_10

    .line 328
    :cond_10
    :goto_d
    if-eqz v9, :cond_11

    .line 329
    .line 330
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 331
    .line 332
    .line 333
    :cond_11
    return v0

    .line 334
    :cond_12
    :try_start_e
    const-string v0, "DynamiteModule"

    .line 335
    .line 336
    const-string v3, "Failed to retrieve remote module version."

    .line 337
    .line 338
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    .line 340
    .line 341
    new-instance v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 342
    .line 343
    const-string v3, "Failed to connect to dynamite module ContentResolver."

    .line 344
    .line 345
    invoke-direct {v0, v3, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;[B)V

    .line 346
    .line 347
    .line 348
    throw v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    .line 349
    :goto_e
    move-object v9, v2

    .line 350
    :goto_f
    :try_start_f
    instance-of v3, v0, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 351
    .line 352
    if-nez v3, :cond_13

    .line 353
    .line 354
    new-instance v3, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v4

    .line 360
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 365
    .line 366
    .line 367
    move-result v5

    .line 368
    add-int/lit8 v5, v5, 0x19

    .line 369
    .line 370
    new-instance v6, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    invoke-direct {v3, v1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    .line 386
    .line 387
    .line 388
    throw v3

    .line 389
    :cond_13
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    .line 390
    :goto_10
    if-eqz v2, :cond_14

    .line 391
    .line 392
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 393
    .line 394
    .line 395
    :cond_14
    throw v0
.end method

.method private static zzd(Landroid/database/Cursor;)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzh:Ljava/lang/ThreadLocal;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/google/android/gms/dynamite/zzn;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    iput-object p0, v0, Lcom/google/android/gms/dynamite/zzn;->zza:Landroid/database/Cursor;

    .line 16
    .line 17
    const/4 p0, 0x1

    .line 18
    return p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return p0
.end method

.method private static zze(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;
    .locals 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "DynamiteModule"

    .line 6
    .line 7
    const-string v1, "Selected local version of "

    .line 8
    .line 9
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    new-instance p1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 17
    .line 18
    invoke-direct {p1, p0}, Lcom/google/android/gms/dynamite/DynamiteModule;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method private static zzf(Ljava/lang/ClassLoader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "com.google.android.gms.dynamiteloader.DynamiteLoaderV2"

    .line 3
    .line 4
    invoke-virtual {p0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    const/4 v1, 0x0

    .line 9
    new-array v2, v1, [Ljava/lang/Class;

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    new-array v1, v1, [Ljava/lang/Object;

    .line 16
    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Landroid/os/IBinder;

    .line 22
    .line 23
    if-nez p0, :cond_0

    .line 24
    .line 25
    move-object v1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const-string v1, "com.google.android.gms.dynamite.IDynamiteLoaderV2"

    .line 28
    .line 29
    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    instance-of v2, v1, Lcom/google/android/gms/dynamite/zzq;

    .line 34
    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    check-cast v1, Lcom/google/android/gms/dynamite/zzq;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_1

    .line 42
    :catch_1
    move-exception p0

    .line 43
    goto :goto_1

    .line 44
    :catch_2
    move-exception p0

    .line 45
    goto :goto_1

    .line 46
    :catch_3
    move-exception p0

    .line 47
    goto :goto_1

    .line 48
    :catch_4
    move-exception p0

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    new-instance v1, Lcom/google/android/gms/dynamite/zzq;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/google/android/gms/dynamite/zzq;-><init>(Landroid/os/IBinder;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    sput-object v1, Lcom/google/android/gms/dynamite/DynamiteModule;->zzm:Lcom/google/android/gms/dynamite/zzq;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 59
    .line 60
    const-string v2, "Failed to instantiate dynamite loader"

    .line 61
    .line 62
    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    .line 63
    .line 64
    .line 65
    throw v1
.end method

.method private static zzg(Landroid/content/Context;)Lcom/google/android/gms/dynamite/zzp;
    .locals 6

    .line 1
    const-string v0, "Failed to load IDynamiteLoader from GmsCore: "

    .line 2
    .line 3
    const-class v1, Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 4
    .line 5
    monitor-enter v1

    .line 6
    :try_start_0
    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzp;

    .line 7
    .line 8
    if-eqz v2, :cond_0

    .line 9
    .line 10
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object v2

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    goto :goto_2

    .line 14
    :cond_0
    const/4 v2, 0x0

    .line 15
    :try_start_1
    const-string v3, "com.google.android.gms"

    .line 16
    .line 17
    const/4 v4, 0x3

    .line 18
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    const-string v3, "com.google.android.gms.chimera.container.DynamiteLoaderImpl"

    .line 27
    .line 28
    invoke-virtual {p0, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Landroid/os/IBinder;

    .line 37
    .line 38
    if-nez p0, :cond_1

    .line 39
    .line 40
    move-object v3, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const-string v3, "com.google.android.gms.dynamite.IDynamiteLoader"

    .line 43
    .line 44
    invoke-interface {p0, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    instance-of v4, v3, Lcom/google/android/gms/dynamite/zzp;

    .line 49
    .line 50
    if-eqz v4, :cond_2

    .line 51
    .line 52
    check-cast v3, Lcom/google/android/gms/dynamite/zzp;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    new-instance v3, Lcom/google/android/gms/dynamite/zzp;

    .line 58
    .line 59
    invoke-direct {v3, p0}, Lcom/google/android/gms/dynamite/zzp;-><init>(Landroid/os/IBinder;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    if-eqz v3, :cond_3

    .line 63
    .line 64
    sput-object v3, Lcom/google/android/gms/dynamite/DynamiteModule;->zzl:Lcom/google/android/gms/dynamite/zzp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 65
    .line 66
    :try_start_2
    monitor-exit v1

    .line 67
    return-object v3

    .line 68
    :goto_1
    const-string v3, "DynamiteModule"

    .line 69
    .line 70
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 79
    .line 80
    .line 81
    move-result v4

    .line 82
    add-int/lit8 v4, v4, 0x2d

    .line 83
    .line 84
    new-instance v5, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p0

    .line 99
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    .line 101
    .line 102
    :cond_3
    monitor-exit v1

    .line 103
    return-object v2

    .line 104
    :goto_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    throw p0
.end method


# virtual methods
.method public getModuleContext()Landroid/content/Context;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public instantiate(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Lcom/google/android/gms/common/annotation/KeepForSdk;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/dynamite/DynamiteModule;->zzk:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    return-object v0

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_0

    .line 22
    :catch_2
    move-exception v0

    .line 23
    :goto_0
    new-instance v1, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v2, "Failed to instantiate module class: "

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-direct {v1, p1, v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;[B)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method
