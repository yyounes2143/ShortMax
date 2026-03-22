.class public Lcom/bytedance/sdk/openadsdk/utils/HyG;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/utils/HyG$tB;,
        Lcom/bytedance/sdk/openadsdk/utils/HyG$oJ;,
        Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;
    }
.end annotation


# static fields
.field private static final BTZ:[B

.field private static volatile Pfn:Ljava/lang/String;

.field private static final PiB:[B

.field private static WcQ:Ljava/lang/String;

.field private static final ZYk:Ljava/util/concurrent/ExecutorService;

.field private static awB:Ljava/lang/String;

.field private static final ba:Ljava/util/concurrent/locks/ReentrantLock;

.field private static cFZ:Ljava/lang/String;

.field private static final dLZ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static jFA:Ljava/lang/String;

.field private static final kkU:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static oJ:Ljava/lang/Integer;

.field private static so:Ljava/lang/String;

.field private static volatile tB:Z


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk:Ljava/util/concurrent/ExecutorService;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB:Z

    .line 9
    .line 10
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    const-string v0, ""

    .line 18
    .line 19
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba:Ljava/util/concurrent/locks/ReentrantLock;

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ:Ljava/lang/String;

    .line 30
    .line 31
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so:Ljava/lang/String;

    .line 32
    .line 33
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v1, Ljava/util/HashSet;

    .line 36
    .line 37
    const-string v2, "Asia/Harbin"

    .line 38
    .line 39
    const-string v3, "Asia/Kashgar"

    .line 40
    .line 41
    const-string v4, "Asia/Shanghai"

    .line 42
    .line 43
    const-string v5, "Asia/Urumqi"

    .line 44
    .line 45
    const-string v6, "Asia/Chongqing"

    .line 46
    .line 47
    filled-new-array {v4, v5, v6, v2, v3}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 56
    .line 57
    .line 58
    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->kkU:Ljava/util/HashSet;

    .line 59
    .line 60
    new-instance v1, Ljava/util/HashSet;

    .line 61
    .line 62
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 63
    .line 64
    .line 65
    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->dLZ:Ljava/util/HashSet;

    .line 66
    .line 67
    const-string v16, "America/Sao_Paulo"

    .line 68
    .line 69
    const-string v17, "America/Noronha"

    .line 70
    .line 71
    const-string v2, "America/Eirunepe"

    .line 72
    .line 73
    const-string v3, "America/Rio_Branco"

    .line 74
    .line 75
    const-string v4, "America/Boa_Vista"

    .line 76
    .line 77
    const-string v5, "America/Campo_Grande"

    .line 78
    .line 79
    const-string v6, "America/Cuiaba"

    .line 80
    .line 81
    const-string v7, "America/Manaus"

    .line 82
    .line 83
    const-string v8, "America/Porto_Velho"

    .line 84
    .line 85
    const-string v9, "America/Araguaina"

    .line 86
    .line 87
    const-string v10, "America/Bahia"

    .line 88
    .line 89
    const-string v11, "America/Belem"

    .line 90
    .line 91
    const-string v12, "America/Fortaleza"

    .line 92
    .line 93
    const-string v13, "America/Maceio"

    .line 94
    .line 95
    const-string v14, "America/Recife"

    .line 96
    .line 97
    const-string v15, "America/Santarem"

    .line 98
    .line 99
    filled-new-array/range {v2 .. v17}, [Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 108
    .line 109
    .line 110
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ:Ljava/lang/Integer;

    .line 111
    .line 112
    const/4 v0, 0x7

    .line 113
    new-array v0, v0, [B

    .line 114
    .line 115
    fill-array-data v0, :array_0

    .line 116
    .line 117
    .line 118
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->BTZ:[B

    .line 119
    .line 120
    const/16 v0, 0x9

    .line 121
    .line 122
    new-array v0, v0, [B

    .line 123
    .line 124
    fill-array-data v0, :array_1

    .line 125
    .line 126
    .line 127
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->PiB:[B

    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :array_0
    .array-data 1
        0x6ct
        0x6ft
        0x61t
        0x64t
        0x69t
        0x6et
        0x67t
    .end array-data

    .line 132
    .line 133
    .line 134
    .line 135
    .line 136
    .line 137
    .line 138
    .line 139
    :array_1
    .array-data 1
        0x61t
        0x72t
        0x62t
        0x69t
        0x74t
        0x72t
        0x61t
        0x67t
        0x65t
    .end array-data
.end method

.method public static BTZ()J
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 4
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    mul-long/2addr v0, v2

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static BTZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 5
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "aid"

    const-string v2, "1371"

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "device_platform"

    const-string v2, "android"

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "version_code"

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    .line 10
    const-string v1, "TTAD.ToolUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static HL()Z
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public static IUZ()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->WcQ:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->BTZ:[B

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->WcQ:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public static Id()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/renderer/package_tx.json"

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic Jc()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->mu()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static Ln()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->awB:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/String;

    .line 10
    .line 11
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->PiB:[B

    .line 12
    .line 13
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 14
    .line 15
    .line 16
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->awB:Ljava/lang/String;

    .line 17
    .line 18
    :cond_0
    return-object v0
.end method

.method public static LpP()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG$tB;->oJ()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public static Pfn()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/Xe;->oJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Pfn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p0

    invoke-interface {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->LpP()Ljava/lang/String;

    move-result-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string p0, "https://api16-access-ttp.tiktokpangle.us/service/2/app_log/"

    return-object p0

    .line 6
    :cond_1
    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    const-string v0, "https://"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static Pfn(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static Pfn(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_1
    return v0
.end method

.method public static PiB()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "free_internal_storage"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method public static QSm()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oo()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Ln()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :cond_1
    return-object v0
.end method

.method public static RZ()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->VJm()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v2, "https://"

    .line 28
    .line 29
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string v1, "/service/2/dual_events/"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    :cond_0
    return-object v0
.end method

.method public static Ry()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->IUZ()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    return-object v0
.end method

.method static synthetic UN()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB:Z

    .line 2
    .line 3
    return v0
.end method

.method public static WcQ()J
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "total_sdcard_storage"

    .line 6
    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    return-wide v0
.end method

.method private static XAo()Z
    .locals 2

    .line 1
    :try_start_0
    const-string v0, "mounted"

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return v0

    .line 12
    :catchall_0
    const/4 v0, 0x0

    .line 13
    return v0
.end method

.method public static Xe()I
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const v1, 0x36ee80

    .line 10
    .line 11
    .line 12
    div-int/2addr v0, v1

    .line 13
    const/16 v1, -0xc

    .line 14
    .line 15
    if-ge v0, v1, :cond_0

    .line 16
    .line 17
    move v0, v1

    .line 18
    :cond_0
    const/16 v1, 0xc

    .line 19
    .line 20
    if-le v0, v1, :cond_1

    .line 21
    .line 22
    move v0, v1

    .line 23
    :cond_1
    return v0
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_4

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v2, 0x5

    if-eq p0, v2, :cond_2

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x4

    return p0

    :cond_4
    const/4 p0, 0x2

    return p0
.end method

.method public static ZYk(Landroid/content/Context;)J
    .locals 3

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    move-result-object p0

    const-string v0, "total_internal_storage"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static ZYk(Ljava/lang/String;)J
    .locals 2

    .line 25
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static ZYk()Ljava/lang/String;
    .locals 5

    .line 15
    const-string v0, "unKnow"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/tB;->oJ(Landroid/content/Context;)V

    .line 16
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "android_system_ua"

    if-eqz v1, :cond_0

    .line 17
    :try_start_1
    const-string v1, "sp_multi_ua_data"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 18
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 20
    :cond_1
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/HyG$oJ;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/HyG$oJ;-><init>(I)V

    .line 21
    new-instance v2, Ljava/util/concurrent/FutureTask;

    invoke-direct {v2, v1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 22
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 23
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    .line 24
    :catch_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " getAndroidSystemUA userAgent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getUA"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static ZYk(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    .line 7
    const-string p0, "unknow"

    return-object p0

    .line 8
    :cond_0
    const-string p0, "rewarded_video_landingpage"

    return-object p0

    .line 9
    :cond_1
    const-string p0, "fullscreen_interstitial_ad"

    return-object p0

    .line 10
    :cond_2
    const-string p0, "splash_ad_landingpage"

    return-object p0

    .line 11
    :cond_3
    const-string p0, "interaction_landingpage"

    return-object p0

    .line 12
    :cond_4
    const-string p0, "banner_ad_landingpage"

    return-object p0

    .line 13
    :cond_5
    const-string p0, "embeded_ad_landingpage"

    return-object p0
.end method

.method public static ZYk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4
    instance-of p1, p0, Landroid/app/Activity;

    if-nez p1, :cond_1

    const/high16 p1, 0x10000000

    .line 5
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-static {p0, v1, p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_2
    :goto_0
    return v0
.end method

.method public static awB()J
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->XAo()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/os/StatFs;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-long v2, v0

    .line 25
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    .line 26
    .line 27
    .line 28
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    int-to-long v0, v0

    .line 30
    mul-long/2addr v0, v2

    .line 31
    return-wide v0

    .line 32
    :catchall_0
    move-exception v0

    .line 33
    const-string v1, "TTAD.ToolUtils"

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    const-wide/16 v0, 0x0

    .line 43
    .line 44
    return-wide v0
.end method

.method public static ba(Landroid/content/Context;)I
    .locals 1

    .line 10
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 11
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 12
    const-string v0, "TTAD.ToolUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method public static declared-synchronized ba()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    :try_start_2
    const-string v2, "TTAD.ToolUtils"

    const-string v3, "ToolUtils getPackageName throws exception :"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static ba(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x6

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ba(Ljava/lang/String;)Z
    .locals 1

    .line 7
    :try_start_0
    const-string v0, "[\u4e00-\u9fa5]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static cFZ(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x4

    if-eq p0, v1, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    return p0

    :cond_0
    return v0

    :cond_1
    return v1

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public static cFZ(Landroid/content/Context;)J
    .locals 2

    .line 16
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 17
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 18
    const-string v0, "TTAD.ToolUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    :goto_0
    int-to-long v0, p0

    return-wide v0
.end method

.method public static declared-synchronized cFZ()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 4
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 6
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 7
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so:Ljava/lang/String;

    .line 8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 9
    :try_start_2
    const-string v2, "TTAD.ToolUtils"

    const-string v3, "ToolUtils getVersionCode throws exception :"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 10
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static cFZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 11
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 12
    :cond_0
    const-string v0, "KLLK"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    const-string v1, "OPPO"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_1
    const-string v0, "kllk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    const-string v1, "oppo"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static cY()Ljava/lang/String;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    const-string v1, "TTAD.ToolUtils"

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :goto_0
    return-object v0
.end method

.method public static dLZ()Ljava/lang/String;
    .locals 1

    .line 2
    const-string v0, "MemTotal"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic dLZ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    return-object p0
.end method

.method public static eZI()I
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "is_root"

    .line 6
    .line 7
    const/4 v2, -0x1

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public static ex()Ljava/lang/String;
    .locals 5

    .line 3
    const-string v0, ""

    const-string v1, "TTAD.ToolUtils"

    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/multipro/tB;->oJ(Landroid/content/Context;)V

    const-wide/32 v2, 0x5265c00

    .line 6
    const-string v4, "sdk_local_web_ua"

    invoke-static {v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 7
    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    sget-object v2, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    :try_start_0
    sget-object v3, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_3

    .line 11
    :cond_1
    :goto_0
    sget-object v3, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_5

    .line 13
    :goto_1
    :try_start_1
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_5

    .line 15
    :goto_3
    :try_start_2
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 16
    :goto_4
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    .line 17
    :cond_2
    :goto_5
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    return-object v0
.end method

.method public static ex(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 18
    invoke-static {p0, v0, v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static ex(I)Z
    .locals 1

    .line 1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static ex(Landroid/content/Context;)Z
    .locals 0

    .line 2
    const/4 p0, 0x0

    return p0
.end method

.method public static ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 19
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rg()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NX()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NX()I

    move-result p0

    const/4 v1, 0x5

    if-ne p0, v1, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static jFA()Ljava/lang/String;
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 5
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-wide/16 v2, 0x400

    .line 6
    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static jFA(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x2

    .line 9
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 10
    :cond_0
    const-string v2, "accessibility"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 11
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    .line 12
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    .line 13
    invoke-virtual {v1, p0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->tB()V

    return-void

    .line 15
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 16
    :catch_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public static jFA(Ljava/lang/String;)Z
    .locals 2

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "You must use method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' after initialization, please check."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public static jr()I
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->kkU:Ljava/util/HashSet;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    if-eqz v0, :cond_1

    .line 20
    .line 21
    const-string v1, "Asia/"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    if-eqz v0, :cond_2

    .line 33
    .line 34
    const-string v1, "Europe/"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const/4 v2, 0x4

    .line 43
    goto :goto_1

    .line 44
    :cond_2
    if-eqz v0, :cond_3

    .line 45
    .line 46
    const-string v1, "America/"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->dLZ:Ljava/util/HashSet;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    const/4 v2, 0x5

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    const/4 v2, 0x3

    .line 65
    goto :goto_1

    .line 66
    :goto_0
    const-string v1, "TTAD.ToolUtils"

    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    :goto_1
    return v2
.end method

.method public static kkU(Landroid/content/Context;)I
    .locals 4

    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    return v0

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 7
    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://www.example.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 8
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 10
    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ:Ljava/lang/Integer;

    return p0

    :cond_2
    return v0
.end method

.method public static kkU()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    move-result-object v0

    const-string v1, "total_memory"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static kkU(Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "You should use method \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' on the asynchronous thread,it may cause anr, please check."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static mu()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, "unKnow"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Landroid/webkit/WebView;

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-direct {v1, v2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Lcom/bytedance/sdk/component/jFA/ba$oJ;

    .line 13
    .line 14
    invoke-direct {v2}, Lcom/bytedance/sdk/component/jFA/ba$oJ;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 37
    .line 38
    .line 39
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    const-string v3, "webview_ua"

    .line 41
    .line 42
    if-eqz v2, :cond_0

    .line 43
    .line 44
    :try_start_1
    const-string v2, "sp_multi_ua_data"

    .line 45
    .line 46
    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/multipro/ex/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catchall_0
    move-exception v1

    .line 51
    goto :goto_1

    .line 52
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    .line 58
    .line 59
    :cond_1
    :goto_0
    move-object v0, v1

    .line 60
    goto :goto_2

    .line 61
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    const-string v3, "e:"

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v2, "getUA"

    .line 80
    .line 81
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :goto_2
    return-object v0
.end method

.method static synthetic nke()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static oJ(Landroid/webkit/WebView;)I
    .locals 7

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    .line 94
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 96
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 97
    invoke-virtual {v1, v4}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 98
    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    .line 99
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 100
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v3, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 p0, p0, 0x1

    return p0

    .line 102
    :goto_2
    const-string v1, "TTAD.ToolUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static oJ(Ljava/lang/String;)I
    .locals 7

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 19
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v5, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "interaction"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v5, v0

    goto :goto_0

    :sswitch_1
    const-string v6, "cache_splash_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v1

    goto :goto_0

    :sswitch_2
    const-string v6, "fullscreen_interstitial_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    :sswitch_3
    const-string v6, "open_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v3

    goto :goto_0

    :sswitch_4
    const-string v6, "rewarded_video"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v5, v4

    goto :goto_0

    :sswitch_5
    const-string v6, "banner_ad"

    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    return v4

    :pswitch_0
    return v2

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    const/4 p0, 0x7

    return p0

    :pswitch_4
    return v3

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_5
        -0x514cfef6 -> :sswitch_4
        -0x4b4ad1c8 -> :sswitch_3
        -0x2d935a6e -> :sswitch_2
        0x21a3887e -> :sswitch_1
        0x6deace12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    .line 4
    :cond_0
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x200000

    .line 7
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 8
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/ex;
    .locals 3

    .line 69
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NX()I

    move-result v0

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rg()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 71
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/common/tB;

    invoke-direct {v0, p2}, Lcom/bytedance/sdk/openadsdk/common/tB;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(ZLandroid/view/View;)V

    .line 72
    new-instance p2, Lcom/bytedance/sdk/openadsdk/common/ex;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, p3, v0}, Lcom/bytedance/sdk/openadsdk/common/ex;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public static oJ(Landroid/content/Context;Landroid/content/Intent;)Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    new-instance p0, Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;

    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;-><init>(Landroid/content/ComponentName;I)V

    return-object p0
.end method

.method public static oJ(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 11
    :cond_0
    const-string p0, "rewarded_video"

    return-object p0

    .line 12
    :cond_1
    const-string p0, "fullscreen_interstitial_ad"

    return-object p0

    .line 13
    :cond_2
    const-string p0, "open_ad"

    return-object p0

    .line 14
    :cond_3
    const-string p0, "interaction"

    return-object p0

    .line 15
    :cond_4
    const-string p0, "banner_ad"

    return-object p0

    .line 16
    :cond_5
    const-string p0, "embeded_ad"

    return-object p0
.end method

.method public static oJ(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "total_memory"

    invoke-virtual {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-wide/16 v2, 0x0

    if-eqz p0, :cond_0

    .line 21
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_2

    .line 22
    :cond_0
    const-string p0, "MemTotal"

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 23
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gtz v0, :cond_1

    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA()Ljava/lang/String;

    move-result-object p0

    .line 25
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    move-result-object v0

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result p0

    .line 18
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    return-object v0
.end method

.method public static oJ(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-eqz p0, :cond_0

    .line 26
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    if-eqz p2, :cond_1

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->QSm()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 29
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Ry()Ljava/lang/String;

    move-result-object p2

    .line 30
    :goto_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 31
    const-string p2, "api16-access-ttp.tiktokpangle.us"

    .line 32
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/XAo;->oJ()Z

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_3

    .line 34
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/XAo;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_3
    if-eqz p1, :cond_4

    .line 35
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->BTZ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;)Lorg/json/JSONObject;
    .locals 2

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    .line 104
    :try_start_0
    const-string v1, "is_sb"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;JLcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)Lorg/json/JSONObject;
    .locals 3

    if-nez p0, :cond_0

    .line 36
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    return-object p0

    .line 37
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    :try_start_0
    const-string v1, "creative_id"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v1, "buffers_time"

    invoke-virtual {v0, v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 41
    const-string p1, "video_size"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Pfn()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 42
    const-string p1, "video_resolution"

    invoke-virtual {p0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->jFA()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    .line 43
    :cond_1
    :goto_0
    invoke-static {v0, p3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lorg/json/JSONObject;Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 44
    :goto_1
    const-string p1, "TTAD.ToolUtils"

    const-string p2, "getVideoAction json error"

    invoke-static {p1, p2, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    return-object v0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/view/View;)V
    .locals 0
    .param p0    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;)V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Z)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/jFA/ba;Z)V
    .locals 12

    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NX()I

    move-result v0

    .line 82
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rg()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v0, v2, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->QSm()Lcom/bytedance/sdk/openadsdk/core/model/so;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 84
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->Pfn()Ljava/util/List;

    move-result-object v1

    .line 85
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 86
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge p2, v5, :cond_2

    .line 87
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    move-object v9, v4

    goto :goto_1

    :cond_3
    move-object v9, v1

    .line 88
    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->tB()I

    move-result v7

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ex()I

    move-result v8

    .line 89
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ba()I

    move-result v10

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/so;->ZYk()Ljava/util/List;

    move-result-object v11

    const/4 v6, 0x1

    move-object v5, p1

    .line 90
    invoke-virtual/range {v5 .. v11}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(ZIILjava/util/List;ILjava/util/List;)V

    .line 91
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->rD()I

    move-result p2

    .line 92
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Sb()J

    move-result-wide v0

    if-eq p2, v3, :cond_5

    if-ne p2, v2, :cond_6

    :cond_5
    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_6

    .line 93
    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/component/jFA/ba;->oJ(IJ)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 7

    if-eqz p0, :cond_1

    .line 49
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->tB()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ZYk()Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v2, v0

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    .line 56
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    move-result v4

    const/4 v6, 0x0

    move-object v3, p0

    move-object v5, p1

    .line 57
    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :catchall_0
    :cond_1
    return-void
.end method

.method public static oJ(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 8

    .line 58
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_2

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 60
    rem-int/lit16 v0, p2, 0xdf4

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 61
    div-int/lit16 v0, p2, 0xdf4

    goto :goto_0

    .line 62
    :cond_1
    div-int/lit16 v0, p2, 0xdf4

    add-int/2addr v0, v1

    :goto_0
    const/16 v2, 0xdf4

    const/4 v3, 0x0

    :goto_1
    if-gt v1, v0, :cond_3

    .line 63
    const-string v4, ":"

    const-string v5, "-"

    if-ge v2, p2, :cond_2

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit16 v3, v2, 0xdf4

    add-int/lit8 v1, v1, 0x1

    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1

    .line 65
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method public static oJ(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 66
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p1, v0

    invoke-virtual {p0, v0, p1, p2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_0
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;)V
    .locals 8

    .line 73
    const-string v0, "oem_store"

    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 74
    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, -0x2

    if-ne v3, v4, :cond_0

    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 77
    const-string v1, "oem_store_state_time"

    const v6, 0xf731400

    invoke-static {v1, v6}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v1

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-ltz v1, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    move v2, v3

    .line 78
    :cond_1
    :goto_0
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 79
    :goto_1
    const-string v0, "TTAD.ToolUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static oJ(Lorg/json/JSONObject;Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;)V
    .locals 4

    .line 45
    const-string v0, "video_resolution"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 46
    :try_start_0
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->ex()I

    move-result v1

    .line 47
    invoke-interface {p1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ;->Pfn()I

    move-result p1

    .line 48
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d\u00d7%d"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static oJ()Z
    .locals 1

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/awB;->oJ()Lcom/bytedance/sdk/openadsdk/core/awB;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/awB;->oJ()Lcom/bytedance/sdk/openadsdk/core/awB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/awB;->ex()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic oJ(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/utils/HyG;->tB:Z

    return p0
.end method

.method public static oq()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "https://%s"

    .line 2
    .line 3
    const-string v1, "log.byteoversea.com/service/2/app_log_test/"

    .line 4
    .line 5
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public static si()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 3
    .line 4
    const-string v2, "/system/bin/su"

    .line 5
    .line 6
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    new-instance v1, Ljava/io/File;

    .line 16
    .line 17
    const-string v2, "/system/xbin/su"

    .line 18
    .line 19
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 23
    .line 24
    .line 25
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    :cond_0
    const/4 v0, 0x1

    .line 29
    :catchall_0
    :cond_1
    return v0
.end method

.method public static so(Landroid/content/Context;)I
    .locals 2

    const-wide/16 v0, 0x0

    .line 11
    invoke-static {p0, v0, v1}, Lcom/bytedance/sdk/component/utils/HL;->oJ(Landroid/content/Context;J)I

    move-result p0

    .line 12
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->cFZ(I)I

    move-result p0

    return p0
.end method

.method public static declared-synchronized so()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/HyG;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 3
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 5
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 6
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/bytedance/sdk/openadsdk/utils/HyG;->so:Ljava/lang/String;

    .line 7
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 8
    :try_start_2
    const-string v2, "TTAD.ToolUtils"

    const-string v3, "ToolUtils getVersionName throws exception :"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v1

    goto :goto_1

    .line 9
    :cond_0
    :goto_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jFA:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public static so(Ljava/lang/String;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ()Lcom/bytedance/sdk/openadsdk/awB/tB;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/HyG$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG$3;-><init>(Ljava/lang/String;)V

    const-string p0, "reportMultiLog"

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    return-void
.end method

.method public static so(I)Z
    .locals 6

    const/4 v0, 0x0

    if-gtz p0, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x64

    const/4 v2, 0x1

    if-lt p0, v1, :cond_1

    return v2

    .line 13
    :cond_1
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v1, v2

    if-gt v1, p0, :cond_2

    return v2

    :cond_2
    return v0
.end method

.method public static tB(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    .line 1
    const-string p0, "embeded_ad"

    return-object p0

    .line 2
    :cond_0
    const-string p0, "fullscreen_interstitial_ad"

    return-object p0

    .line 3
    :cond_1
    const-string p0, "rewarded_video"

    return-object p0

    .line 4
    :cond_2
    const-string p0, "open_ad"

    return-object p0

    .line 5
    :cond_3
    const-string p0, "interaction"

    return-object p0

    .line 6
    :cond_4
    const-string p0, "banner_ad"

    return-object p0
.end method

.method public static tB(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p0

    .line 25
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 26
    const-string v0, "TTAD.ToolUtils"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static tB(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 8
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/meminfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 9
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v3, 0x1000

    invoke-direct {v2, v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 10
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 11
    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 12
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 13
    :catch_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    .line 14
    :cond_2
    :try_start_5
    const-string p0, "\\s+"

    invoke-virtual {v3, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x1

    .line 15
    aget-object p0, p0, v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 16
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 17
    :catch_2
    :try_start_7
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :catch_3
    return-object p0

    :catchall_1
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 18
    :goto_1
    :try_start_8
    const-string v3, "TTAD.ToolUtils"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v2, :cond_3

    .line 19
    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :catch_4
    :cond_3
    if-eqz v1, :cond_4

    .line 20
    :try_start_a
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :catch_5
    :cond_4
    return-object v0

    :catchall_3
    move-exception p0

    if-eqz v2, :cond_5

    .line 21
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_6

    :catch_6
    :cond_5
    if-eqz v1, :cond_6

    .line 22
    :try_start_c
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 23
    :catch_7
    :cond_6
    throw p0
.end method

.method public static tB()V
    .locals 3

    .line 7
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/HyG$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG$1;-><init>()V

    const-string v1, "recycle_version_not_valid"

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/awB/tB;->oJ(Ljava/lang/String;ZLcom/bytedance/sdk/openadsdk/awB/ZYk;)V

    return-void
.end method

.method public static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result p0

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(I)I

    move-result p0

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    move-result v1

    if-eq p0, v0, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq p0, v2, :cond_5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_4

    const/4 v2, 0x5

    if-eq p0, v2, :cond_1

    return v0

    .line 30
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v0

    :cond_4
    return v3

    .line 31
    :cond_5
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Pfn(I)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result p0

    if-nez p0, :cond_7

    .line 32
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ba(I)Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v0

    .line 33
    :cond_8
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ex(I)Z

    move-result p0

    return p0
.end method

.method public static tb()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Xe()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    neg-int v0, v0

    .line 6
    if-ltz v0, :cond_0

    .line 7
    .line 8
    const-string v1, "Etc/GMT+"

    .line 9
    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    return-object v0

    .line 19
    :cond_0
    const-string v1, "Etc/GMT"

    .line 20
    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method
