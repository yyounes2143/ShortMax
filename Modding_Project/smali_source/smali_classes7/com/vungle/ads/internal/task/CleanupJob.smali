.class public final Lcom/vungle/ads/internal/task/CleanupJob;
.super Ljava/lang/Object;
.source "CleanupJob.kt"

# interfaces
.implements Lcom/vungle/ads/internal/task/Job;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/CleanupJob$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final AD_ID_KEY:Ljava/lang/String; = "AD_ID_KEY"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/vungle/ads/internal/task/CleanupJob$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "CleanupJob"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pathProvider:Lcom/vungle/ads/internal/util/PathProvider;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/vungle/ads/internal/task/CleanupJob$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/vungle/ads/internal/task/CleanupJob$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/vungle/ads/internal/task/CleanupJob;->Companion:Lcom/vungle/ads/internal/task/CleanupJob$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/vungle/ads/internal/util/PathProvider;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/util/PathProvider;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "pathProvider"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 17
    .line 18
    return-void
.end method

.method private final checkIfSdkUpgraded()V
    .locals 5

    .line 1
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 4
    .line 5
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 6
    .line 7
    new-instance v2, Lcom/vungle/ads/internal/task/CleanupJob$checkIfSdkUpgraded$$inlined$inject$1;

    .line 8
    .line 9
    invoke-direct {v2, v0}, Lcom/vungle/ads/internal/task/CleanupJob$checkIfSdkUpgraded$$inlined$inject$1;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Lcom/vungle/ads/internal/task/CleanupJob;->checkIfSdkUpgraded$lambda-3(Lms/i;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, -0x1

    .line 21
    const-string v3, "VERSION_CODE"

    .line 22
    .line 23
    invoke-virtual {v1, v3, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->getInt(Ljava/lang/String;I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const v2, 0x11365

    .line 28
    .line 29
    .line 30
    if-ge v1, v2, :cond_4

    .line 31
    .line 32
    const v4, 0x11170

    .line 33
    .line 34
    .line 35
    if-ge v1, v4, :cond_0

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV6Data()V

    .line 38
    .line 39
    .line 40
    :cond_0
    const v4, 0x111d4

    .line 41
    .line 42
    .line 43
    if-ge v1, v4, :cond_1

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV700Data()V

    .line 46
    .line 47
    .line 48
    :cond_1
    const v4, 0x1129d

    .line 49
    .line 50
    .line 51
    if-ge v1, v4, :cond_2

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV730TempData()V

    .line 54
    .line 55
    .line 56
    :cond_2
    const v4, 0x11364

    .line 57
    .line 58
    .line 59
    if-ge v1, v4, :cond_3

    .line 60
    .line 61
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->dropV742TpatData()V

    .line 62
    .line 63
    .line 64
    :cond_3
    invoke-static {v0}, Lcom/vungle/ads/internal/task/CleanupJob;->checkIfSdkUpgraded$lambda-3(Lms/i;)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0, v3, v2}, Lcom/vungle/ads/internal/persistence/FilePreferences;->put(Ljava/lang/String;I)Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/vungle/ads/internal/persistence/FilePreferences;->apply()V

    .line 73
    .line 74
    .line 75
    :cond_4
    return-void
.end method

.method private static final checkIfSdkUpgraded$lambda-3(Lms/i;)Lcom/vungle/ads/internal/persistence/FilePreferences;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lms/i<",
            "Lcom/vungle/ads/internal/persistence/FilePreferences;",
            ">;)",
            "Lcom/vungle/ads/internal/persistence/FilePreferences;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/vungle/ads/internal/persistence/FilePreferences;

    .line 6
    .line 7
    return-object p0
.end method

.method private final dropV6Data()V
    .locals 4

    .line 1
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 2
    .line 3
    const-string v1, "CleanupJob"

    .line 4
    .line 5
    const-string v2, "CleanupJob: drop old files data"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    new-instance v0, Ljava/io/File;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "vungle_db"

    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/io/File;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, "-journal"

    .line 47
    .line 48
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {v1}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    :goto_0
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    const-string v2, "com.vungle.sdk"

    .line 71
    .line 72
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const-string v1, "cache_path"

    .line 77
    .line 78
    const/4 v3, 0x0

    .line 79
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 89
    .line 90
    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "{\n            context.noBackupFilesDir\n        }"

    .line 95
    .line 96
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Ljava/io/File;

    .line 100
    .line 101
    const-string v3, "vungle_settings"

    .line 102
    .line 103
    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-static {v2}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 107
    .line 108
    .line 109
    if-eqz v0, :cond_1

    .line 110
    .line 111
    new-instance v1, Ljava/io/File;

    .line 112
    .line 113
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 117
    .line 118
    .line 119
    :cond_1
    return-void
.end method

.method private final dropV700Data()V
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "vungle"

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private final dropV730TempData()V
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/vungle/ads/internal/util/PathProvider;->getSharedPrefsDir()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "vungleSettings"

    .line 10
    .line 11
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/vungle/ads/internal/util/PathProvider;->getSharedPrefsDir()Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "failedTpatSet"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    .line 35
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 36
    .line 37
    const-string v2, "CleanupJob"

    .line 38
    .line 39
    const-string v3, "Failed to delete temp data"

    .line 40
    .line 41
    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private final dropV742TpatData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 8
    .line 9
    const-string v2, "failedTpats"

    .line 10
    .line 11
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    new-instance v1, Ljava/io/File;

    .line 18
    .line 19
    const-string v2, "failedGenericTpats"

    .line 20
    .line 21
    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {v1}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v0

    .line 29
    sget-object v1, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 30
    .line 31
    const-string v2, "CleanupJob"

    .line 32
    .line 33
    const-string v3, "Failed to delete 742 tpat data"

    .line 34
    .line 35
    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/ads/internal/util/Logger$Companion;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPathProvider()Lcom/vungle/ads/internal/util/PathProvider;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 2
    .line 3
    return-object v0
.end method

.method public onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/JobRunner;)I
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/task/JobRunner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bundle"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "jobRunner"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/vungle/ads/internal/util/PathProvider;->getDownloadDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "AD_ID_KEY"

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/vungle/ads/internal/task/CleanupJob;->pathProvider:Lcom/vungle/ads/internal/util/PathProvider;

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lcom/vungle/ads/internal/util/PathProvider;->getDownloadsDirForAd(Ljava/lang/String;)Ljava/io/File;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move-object p1, p2

    .line 35
    :goto_0
    sget-object v0, Lcom/vungle/ads/internal/util/Logger;->Companion:Lcom/vungle/ads/internal/util/Logger$Companion;

    .line 36
    .line 37
    const-string v1, "CleanupJob"

    .line 38
    .line 39
    const-string v2, "CleanupJob: Current directory snapshot"

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/vungle/ads/internal/util/Logger$Companion;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    :try_start_0
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/vungle/ads/internal/task/CleanupJob;->checkIfSdkUpgraded()V

    .line 51
    .line 52
    .line 53
    invoke-static {p1}, Lcom/vungle/ads/internal/util/FileUtility;->deleteContents(Ljava/io/File;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-static {p1}, Lcom/vungle/ads/internal/util/FileUtility;->delete(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :goto_1
    const/4 p1, 0x0

    .line 61
    return p1

    .line 62
    :catch_0
    const/4 p1, 0x1

    .line 63
    return p1
.end method
