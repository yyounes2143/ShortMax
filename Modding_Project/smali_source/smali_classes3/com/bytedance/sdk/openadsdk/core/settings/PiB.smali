.class public Lcom/bytedance/sdk/openadsdk/core/settings/PiB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/ba;
.implements Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/PiB$oJ;
    }
.end annotation


# static fields
.field private static BTZ:Z

.field private static IUZ:Ljava/lang/String;

.field public static Pfn:Ljava/lang/String;

.field private static final QSm:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;",
            ">;"
        }
    .end annotation
.end field

.field public static final ZYk:Ljava/lang/String;

.field static final ba:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final dLZ:Lcom/bytedance/sdk/component/so/so;

.field public static ex:Ljava/lang/String;

.field private static final jFA:Ljava/lang/String;

.field public static final oJ:Ljava/lang/String;

.field private static final oq:Lcom/bytedance/sdk/openadsdk/core/settings/so;

.field public static final tB:Ljava/lang/String;


# instance fields
.field private HL:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final Id:Landroid/content/BroadcastReceiver;

.field private final PiB:Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

.field private RZ:Z

.field private Ry:I

.field private final WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

.field private final Xe:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final awB:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final cFZ:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk<",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final cY:Ljava/lang/Runnable;

.field private volatile eZI:Z

.field private final jr:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private kkU:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private si:I

.field so:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk<",
            "Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;",
            ">;"
        }
    .end annotation
.end field

.field private final tb:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Ln()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 7
    .line 8
    const-string v3, "bus_con_collect"

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    aput-object v3, v2, v4

    .line 12
    .line 13
    const/4 v3, 0x1

    .line 14
    aput-object v0, v2, v3

    .line 15
    .line 16
    const-string v0, "_"

    .line 17
    .line 18
    invoke-static {v0, v2}, Lcom/applovin/impl/sb;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oJ:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Ln()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->IUZ()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    const-string v6, "bus_con"

    .line 33
    .line 34
    const/4 v7, 0x4

    .line 35
    new-array v8, v7, [Ljava/lang/CharSequence;

    .line 36
    .line 37
    aput-object v6, v8, v4

    .line 38
    .line 39
    aput-object v2, v8, v3

    .line 40
    .line 41
    aput-object v5, v8, v1

    .line 42
    .line 43
    const-string v2, "timeout"

    .line 44
    .line 45
    const/4 v5, 0x3

    .line 46
    aput-object v2, v8, v5

    .line 47
    .line 48
    invoke-static {v0, v8}, Lcom/applovin/impl/sb;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ZYk:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Ln()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->IUZ()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v8

    .line 62
    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 63
    .line 64
    aput-object v6, v7, v4

    .line 65
    .line 66
    aput-object v2, v7, v3

    .line 67
    .line 68
    aput-object v8, v7, v1

    .line 69
    .line 70
    const-string v1, "alpha"

    .line 71
    .line 72
    aput-object v1, v7, v5

    .line 73
    .line 74
    invoke-static {v0, v7}, Lcom/applovin/impl/sb;->a(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Id()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->jFA:Ljava/lang/String;

    .line 85
    .line 86
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$1;

    .line 87
    .line 88
    const-string v1, "TemplateReInitTask"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$1;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->dLZ:Lcom/bytedance/sdk/component/so/so;

    .line 94
    .line 95
    const-string v0, ""

    .line 96
    .line 97
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ex:Ljava/lang/String;

    .line 98
    .line 99
    const-string v0, "IABTCF_TCString"

    .line 100
    .line 101
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Pfn:Ljava/lang/String;

    .line 102
    .line 103
    sput-boolean v4, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->BTZ:Z

    .line 104
    .line 105
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 108
    .line 109
    .line 110
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->QSm:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 111
    .line 112
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/so;

    .line 113
    .line 114
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/so;-><init>()V

    .line 115
    .line 116
    .line 117
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oq:Lcom/bytedance/sdk/openadsdk/core/settings/so;

    .line 118
    .line 119
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 120
    .line 121
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 122
    .line 123
    .line 124
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ba:Ljava/util/concurrent/ConcurrentHashMap;

    .line 125
    .line 126
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->kkU:Ljava/util/Set;

    .line 4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/oJ;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->PiB:Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 6
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->eZI:Z

    const/16 v0, 0x1388

    .line 8
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->si:I

    const/16 v0, 0xa

    .line 9
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Ry:I

    .line 10
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Id:Landroid/content/BroadcastReceiver;

    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$10;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->cY:Ljava/lang/Runnable;

    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$11;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->cFZ:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 13
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$12;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$12;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->jr:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 14
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe:Ljava/util/Set;

    .line 15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tb:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 16
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->HL:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$4;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->so:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 18
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    .line 19
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 20
    const-string v3, "_dataChanged"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 21
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x21

    if-lt v3, v4, :cond_0

    const/4 v3, 0x4

    .line 22
    invoke-static {v1, v0, v2, v3}, Lcom/android/billingclient/api/x;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 24
    :goto_0
    const-string v1, "TTAD.SdkSettings"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;-><init>()V

    return-void
.end method

.method public static Ln(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    .line 2
    const-string p0, ""

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 5
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    move-result-object v0

    const-string v1, "settings_host_from_meta"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->IUZ:Ljava/lang/String;

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p0

    const/16 v0, 0x8

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(IZ)V

    return-void
.end method

.method private NX()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "force_language"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method static synthetic ZMY()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->jFA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static ZYk(Landroid/content/Context;)I
    .locals 3

    if-eqz p0, :cond_1

    .line 10
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ex(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 11
    const-string v0, "IABTCF_CmpSdkID"

    const/high16 v1, -0x80000000

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 12
    const-string v2, "IABTCF_CmpSdkVersion"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v0, v1, :cond_0

    if-eq v2, v1, :cond_1

    .line 13
    :cond_0
    const-string v0, "IABTCF_gdprApplies"

    const/4 v1, -0x1

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->si:I

    return p1
.end method

.method private static ZYk(IZ)V
    .locals 3

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6
    const-string v2, "_tryFetRemoDat"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    const-string v2, "_force"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 8
    const-string p1, "_source"

    invoke-virtual {v1, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic ZYk(Z)Z
    .locals 0

    .line 2
    sput-boolean p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->BTZ:Z

    return p0
.end method

.method private Zjw()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe:Ljava/util/Set;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tb:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 6
    .line 7
    const-string v3, "perf_con_applog_send"

    .line 8
    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/util/Set;

    .line 14
    .line 15
    return-object v0
.end method

.method public static Zzm()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->BTZ:Z

    .line 2
    .line 3
    return v0
.end method

.method private static ex(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static hwh()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 15
    .line 16
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    const-string v2, "_dataChanged"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    const-string v1, "TTAD.SdkSettings"

    .line 37
    .line 38
    const-string v2, ""

    .line 39
    .line 40
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 8
    .line 9
    const-string v1, "context is null"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-string v2, "TTAD.SdkSettings"

    .line 15
    .line 16
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oq:Lcom/bytedance/sdk/openadsdk/core/settings/so;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/PiB;

    .line 26
    .line 27
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Ry:I

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)Lcom/bytedance/sdk/openadsdk/core/settings/kkU;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/settings/BTZ$oJ;)V
    .locals 2

    .line 71
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->QSm:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static oo()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->IUZ:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/tB;->oJ()Lcom/bytedance/sdk/openadsdk/core/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "settings_host_from_meta"

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/tB;->ZYk(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->IUZ:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sput-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->IUZ:Ljava/lang/String;

    .line 22
    .line 23
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->IUZ:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method static synthetic rg()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->QSm:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 2
    .line 3
    return-object v0
.end method

.method private static tB(Z)I
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    const/16 p0, 0x14

    return p0

    :cond_0
    const/4 p0, 0x5

    return p0
.end method

.method public static tB(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    const-string v0, ""

    if-eqz p0, :cond_0

    .line 3
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ex(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Pfn:Ljava/lang/String;

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public BHY()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public BTZ()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Zjw()Ljava/util/Set;

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Ry:I

    return v0
.end method

.method public BTZ(Ljava/lang/String;)I
    .locals 0

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->so:I

    return p1
.end method

.method public BWx()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "token_enable"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public Dex()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_thread_stack_size"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public EP()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_drawable_code"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public HL(Ljava/lang/String;)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->jr:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    const-string v3, "perf_con_applog_rate"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt v0, v1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public HL()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->ZYk()Z

    move-result v0

    return v0
.end method

.method public HyG()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "privacy_personalized_ad"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eq v0, v2, :cond_0

    .line 13
    .line 14
    return v0

    .line 15
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jr()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v0, v1, :cond_2

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/4 v2, 0x3

    .line 26
    if-eq v0, v2, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    return v0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    return v2
.end method

.method public IUZ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "ads_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public IUZ(Ljava/lang/String;)Z
    .locals 5

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    const-string v4, "token_adx_ids"

    invoke-virtual {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public Id(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->IUZ:I

    return p1
.end method

.method public Id()Lcom/bytedance/sdk/openadsdk/core/settings/cFZ;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/cFZ;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/cFZ;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$8;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    const-string v3, "insert_js_config"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/settings/cFZ;

    return-object v0
.end method

.method public JJ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "target_region"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public Jc()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "ivrv_downward"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public Jm()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_dislike_report_raw"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public LS()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "blank_detect_rate"

    .line 4
    .line 5
    const/16 v2, 0x1e

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public Ln()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "settings_url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public LpP()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "app_log_url"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public MVA()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "last_req_time"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public MoK()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_adlog_expire_time"

    .line 4
    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    return-wide v0
.end method

.method public NO()Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 5
    .line 6
    const-string v3, "video_cache_config"

    .line 7
    .line 8
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method

.method public PdF()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "settings_url"

    .line 8
    .line 9
    const-string v2, ""

    .line 10
    .line 11
    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ()V

    .line 15
    .line 16
    .line 17
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Ln(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public Pfn()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const/4 v1, 0x0

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->oJ:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    const-string v3, "digest"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public Pfn(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cFZ:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public PiB()I
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Zjw()Ljava/util/Set;

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->si:I

    return v0
.end method

.method public PiB(Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->BTZ(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public QSm(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tb:I

    return p1
.end method

.method public QSm()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "duration"

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public Qu()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "privacy_debug_unlock"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public Qzd()J
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "req_inter_min"

    .line 4
    .line 5
    const-wide/32 v2, 0x927c0

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;J)J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v4, v0, v4

    .line 15
    .line 16
    if-ltz v4, :cond_1

    .line 17
    .line 18
    const-wide/32 v4, 0x5265c00

    .line 19
    .line 20
    .line 21
    cmp-long v4, v0, v4

    .line 22
    .line 23
    if-lez v4, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    move-wide v2, v0

    .line 27
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public RZ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "landingpage_new_style"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public RZ(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->oq:Z

    return p1
.end method

.method public Rl()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_sec_type"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return v0
.end method

.method public Ry(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->QSm:I

    return p1
.end method

.method public Ry()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "ab_test_param"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public SCr()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_url_check"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public SWT()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    const/16 v2, 0x2710

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public TA()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_adlog_turn_off_retry_ad"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public UF()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_use_new_thread_pool"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public UK()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_adlog_turn_off_retry_stats"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public UN()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "dyn_draw_engine_url"

    .line 4
    .line 5
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->jFA:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public Uf()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_check_clz"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public VJm()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "dual_event_url"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public VSB()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_token_thread_count"

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-lez v0, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x1e

    .line 13
    .line 14
    if-le v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v2, v0

    .line 18
    :cond_1
    :goto_0
    return v2
.end method

.method public WcQ(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->kkU:I

    return p1
.end method

.method public WcQ()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "allow_blind_mode_request_ad"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public Wek()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_close_button_delay_check_time"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public XAo()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "isGdprUser"

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public XQY()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 8
    .line 9
    const-string v3, "privacy_fields_allowed"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Set;

    .line 16
    .line 17
    return-object v0
.end method

.method public Xe()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "fetch_tpl_second"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/tB;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    return-object p1
.end method

.method public YF()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "privacy_app_reg"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public YQ()Lorg/json/JSONObject;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    new-instance v1, Lorg/json/JSONObject;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    .line 7
    .line 8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->HL:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 9
    .line 10
    const-string v3, "perf_con_thread_pool_config"

    .line 11
    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lorg/json/JSONObject;

    .line 17
    .line 18
    return-object v0
.end method

.method public Yg()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "read_video_from_cache"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public ZYk(I)I
    .locals 0

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 29
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ZYk:I

    return p1
.end method

.method public declared-synchronized ZYk()V
    .locals 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 15
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->eZI:Z

    const/4 v1, 0x1

    xor-int/lit8 v2, v0, 0x1

    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->PiB:Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->eZI:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Z)V

    .line 17
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->eZI:Z

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Z)V

    .line 18
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/tB;->oJ(Z)V

    .line 19
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->eZI:Z

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    if-nez v0, :cond_0

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$6;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public ZYk(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;)V
    .locals 2

    .line 23
    const-string v0, "is_gdpr_user"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, -0x1

    .line 24
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 25
    :goto_0
    const-string p1, "isGdprUser"

    invoke-interface {p2, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    return-void
.end method

.method public ZYk(Ljava/lang/String;)Z
    .locals 1

    .line 26
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 27
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->tB:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public awB()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "support_gzip"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public awB(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Id:I

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public bD()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_auto_click_delay"

    .line 4
    .line 5
    const/16 v2, 0xbb8

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v2, v0

    .line 15
    :goto_0
    return v2
.end method

.method public ba(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ry:I

    return p1
.end method

.method public ba()J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "data_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public bgF()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "global_rate"

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    cmpl-float v0, v0, v2

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    return v0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method public cFZ()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object v0

    const-string v1, "tt_sdk_settings"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object v0

    const-string v1, "ab_test_param"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ()V

    return-void
.end method

.method public cFZ(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->WcQ:I

    if-ne p1, v0, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public cY()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "playableLoadH5Url"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cY(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->nke:Z

    return p1
.end method

.method public cdg()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->PiB:Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

    .line 2
    .line 3
    const-string v1, "perf_con_apm"

    .line 4
    .line 5
    const/16 v2, 0x64

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    const/4 v3, 0x1

    .line 16
    if-ltz v0, :cond_3

    .line 17
    .line 18
    if-lt v0, v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 22
    .line 23
    .line 24
    move-result-wide v4

    .line 25
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 26
    .line 27
    mul-double/2addr v4, v6

    .line 28
    double-to-int v2, v4

    .line 29
    if-le v0, v2, :cond_2

    .line 30
    .line 31
    return v3

    .line 32
    :cond_2
    return v1

    .line 33
    :cond_3
    :goto_0
    return v3
.end method

.method public dLZ()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Zjw()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public dLZ(Ljava/lang/String;)Z
    .locals 0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->cY:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public eXp()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_video_keep_screen_on"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v2, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    return v0
.end method

.method public eZI()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "ad_revenue_enable"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public eZI(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->kkU(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->PiB:I

    if-ne p1, v0, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public ex()I
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "max_tpl_cnts"

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public ex(I)V
    .locals 1
    .param p1    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/core/settings/TTSdkSettings$FETCH_REQUEST_SOURCE;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->oJ(IZ)V

    return-void
.end method

.method public ex(Ljava/lang/String;)Z
    .locals 3

    .line 3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 4
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Pfn:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->tB(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    .line 6
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->ex(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public jB()Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/ex/ZYk;->oJ(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 14
    .line 15
    const-string v2, "support_rtl"

    .line 16
    .line 17
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public jFA(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->dLZ:I

    return p1
.end method

.method public jFA()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "ab_test_version"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jXJ()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_express_host"

    .line 4
    .line 5
    const-string v2, "https://lf-static.tiktokpangle-cdn-us.com/obj/ad-pattern-tx/"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public jr()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "fetch_tpl_timeout_ctrl"

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    return v2
.end method

.method public jr(Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->awB:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public kkU()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "splash_video_load_strategy"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public kkU(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->BTZ:I

    return p1
.end method

.method public lY()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_webview_cache_count"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    return v0
.end method

.method public mu()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "dc"

    .line 4
    .line 5
    const-string v2, "TX"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public mwH()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_webview_cache_count_v3"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-gez v0, :cond_0

    .line 11
    .line 12
    return v2

    .line 13
    :cond_0
    return v0
.end method

.method public nQI()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->eZI:Z

    .line 2
    .line 3
    return v0
.end method

.method public nke()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "policy_url"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public oCU()Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;->oJ:Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->so:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 6
    .line 7
    const-string v3, "perf_con_track_url_strategy"

    .line 8
    .line 9
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/bytedance/sdk/openadsdk/ex/oJ/WcQ;

    .line 14
    .line 15
    return-object v0
.end method

.method public oG()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    .line 8
    .line 9
    const-string v3, "perf_con_drop2rt_skip_label_list"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/util/Set;

    .line 16
    .line 17
    return-object v0
.end method

.method public oIC()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_adshow_check_enable"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public oJ(I)I
    .locals 0

    .line 28
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 29
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Jc:I

    return p1
.end method

.method public oJ(Ljava/lang/String;)I
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 19
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 20
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->RZ:I

    return p1
.end method

.method public oJ(Ljava/lang/String;I)I
    .locals 4

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ba:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->cFZ:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    const-string v3, "perf_con_stats_rate"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method public oJ(Ljava/lang/String;Z)I
    .locals 1

    if-nez p1, :cond_0

    .line 25
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB(Z)I

    move-result p1

    return p1

    .line 26
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 27
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Xe:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    return p1

    :cond_1
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB(Z)I

    move-result p1

    return p1
.end method

.method public oJ()V
    .locals 4

    .line 3
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/tB;->oJ()V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB()V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->PiB:Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->tB()V

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "shared_prefs"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    new-instance v2, Ljava/io/File;

    const-string v3, "tt_sdk_settings.xml"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 11
    const-string v2, ".xml"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public oJ(IZ)V
    .locals 9
    .param p1    # I
        .annotation build Lcom/bytedance/sdk/openadsdk/core/settings/TTSdkSettings$FETCH_REQUEST_SOURCE;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->Pfn()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-eqz p2, :cond_0

    .line 32
    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->RZ:Z

    :cond_0
    return-void

    .line 33
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 34
    :cond_2
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->RZ:Z

    if-eqz v1, :cond_3

    .line 35
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->RZ:Z

    if-nez p2, :cond_3

    move p2, v2

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 36
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->MVA()J

    move-result-wide v3

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 38
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Qzd()J

    move-result-wide v7

    sub-long/2addr v5, v3

    if-nez p2, :cond_4

    cmp-long v1, v5, v7

    if-gez v1, :cond_4

    return-void

    .line 39
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ()Z

    move-result v1

    if-nez v1, :cond_5

    .line 40
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ZYk(IZ)V

    return-void

    .line 41
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 42
    :cond_6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->PiB:Lcom/bytedance/sdk/openadsdk/core/settings/oJ;

    new-array v2, v2, [Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;

    aput-object v1, v2, v0

    invoke-direct {p1, p0, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/dLZ$oJ;Lcom/bytedance/sdk/openadsdk/core/settings/kkU;[Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->cY:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 44
    :goto_1
    const-string p2, "settings request error"

    const-string v0, "settings"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public oJ(J)V
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ()Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object v0

    const-string v1, "last_req_time"

    invoke-interface {v0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ()V

    return-void
.end method

.method public oJ(Landroid/content/Context;)V
    .locals 3

    .line 57
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 58
    const-string v1, "_tryFetRemoDat"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_0

    .line 60
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Id:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x4

    invoke-static {p1, v1, v0, v2}, Lcom/android/billingclient/api/x;->a(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Id:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 62
    :goto_0
    const-string v0, "TTAD.SdkSettings"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->nQI()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 64
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ex(I)V

    .line 65
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->sQ()V

    :cond_1
    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 13
    const-string v0, "dyn_draw_engine_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->jFA:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$7;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/settings/PiB;Ljava/lang/String;)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 18
    :cond_1
    invoke-interface {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$oJ;

    :cond_2
    :goto_0
    return-void
.end method

.method public oJ(Z)V
    .locals 2

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->awB:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 46
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->sQ()V

    if-eqz p1, :cond_2

    .line 47
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 48
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->XQY()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    const-string v1, "fields_allowed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->Ry()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    const-string v1, "key_transfer_host"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    const-string v0, "target-idc"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->JJ()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ(Ljava/util/Map;)V

    .line 56
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->hwh()V

    :cond_2
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)Z
    .locals 2

    .line 66
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->GET_ADS:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->BIDDING_TOKEN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->APP_LOG:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    if-ne p1, v0, :cond_1

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v0, "perf_con_crypt_V4_applog"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 69
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v0, "perf_con_crypt_V4"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 70
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v0, "perf_con_crypt_V4_get_ad"

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public oTd()[Ljava/lang/String;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->kkU:Ljava/util/Set;

    .line 3
    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_2

    .line 12
    .line 13
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 16
    .line 17
    const-string v4, "gecko_hosts"

    .line 18
    .line 19
    invoke-virtual {v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-direct {v1, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    if-eqz v3, :cond_1

    .line 31
    .line 32
    move v3, v2

    .line 33
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v3, v4, :cond_1

    .line 38
    .line 39
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->kkU:Ljava/util/Set;

    .line 40
    .line 41
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    add-int/lit8 v3, v3, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->kkU:Ljava/util/Set;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/kkU;->oJ(Ljava/util/Set;)Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->kkU:Ljava/util/Set;

    .line 58
    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Set;->size()I

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->kkU:Ljava/util/Set;

    .line 69
    .line 70
    new-array v2, v2, [Ljava/lang/String;

    .line 71
    .line 72
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    return-object v1

    .line 79
    :catchall_0
    :cond_3
    :goto_1
    return-object v0
.end method

.method public ofl()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "vbtt"

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public oq()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "max"

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public oq(Ljava/lang/String;)I
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->HL:I

    return p1
.end method

.method public sH()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_apm_native"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    return v0
.end method

.method sQ()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/dLZ;->oJ()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->cY:Ljava/lang/Runnable;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Qzd()J

    .line 18
    .line 19
    .line 20
    move-result-wide v0

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/WcQ;->ZYk()Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->cY:Ljava/lang/Runnable;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public si()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "loadedCallbackOpportunity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public si(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "core_settings"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->UN:Lorg/json/JSONObject;

    .line 6
    const-string v0, "ad_slot_setting"

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_0

    :catch_1
    move-exception p1

    .line 7
    :goto_0
    const-string v0, "getCoreSettingJsonObj"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "TTAD.SdkSettings"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v1

    :goto_1
    return-object v2
.end method

.method public so(Ljava/lang/String;)I
    .locals 0

    if-nez p1, :cond_0

    const/16 p1, 0x5dc

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 3
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->eZI:I

    return p1
.end method

.method public so()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "if_both_open"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    return v2
.end method

.method public tB(I)I
    .locals 0

    .line 8
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 9
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->jFA:I

    return p1
.end method

.method public tB()Ljava/lang/String;
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    const-string v1, "aes_key"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tB(Ljava/lang/String;)Z
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object p1

    .line 7
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->Ln:Z

    return p1
.end method

.method public tb()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->NX()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    const-string v1, "zh-Hant"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    const-string v1, "zh"

    const-string v2, "tw"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/BTZ;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/component/utils/BTZ;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->onResourceUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 7
    const-string v1, "TTAD.SdkSettings"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public tb(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/settings/Pfn;->ZYk:Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;

    const-string v3, "privacy_fields_allowed"

    invoke-virtual {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;Ljava/lang/Object;Lcom/bytedance/sdk/openadsdk/core/settings/Pfn$ZYk;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jr()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v3

    .line 11
    :cond_0
    const-string v0, "mcc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "mnc"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v3

    :cond_2
    :goto_0
    return v1

    .line 12
    :cond_3
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public uvK()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_behavior_count"

    .line 4
    .line 5
    const/16 v2, 0x12c

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public wd()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "privacy_ad_enable"

    .line 4
    .line 5
    const v2, 0x7fffffff

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return v1

    .line 16
    :cond_0
    const/4 v2, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->jr()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eq v0, v1, :cond_2

    .line 25
    .line 26
    const/4 v3, 0x2

    .line 27
    if-eq v0, v3, :cond_2

    .line 28
    .line 29
    const/4 v3, 0x3

    .line 30
    if-eq v0, v3, :cond_2

    .line 31
    .line 32
    return v2

    .line 33
    :cond_2
    return v1
.end method

.method public yQF()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "perf_con_is_new_net_thread"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    return v2
.end method

.method public yz()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    const-string v1, "bus_con_send_log_type"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public zGT()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->WcQ:Lcom/bytedance/sdk/openadsdk/core/settings/kkU;

    .line 2
    .line 3
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->tB:Ljava/lang/String;

    .line 4
    .line 5
    const/high16 v2, 0x3f800000    # 1.0f

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/BTZ;->oJ(Ljava/lang/String;F)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method
