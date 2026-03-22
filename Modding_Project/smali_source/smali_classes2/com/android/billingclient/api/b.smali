.class Lcom/android/billingclient/api/b;
.super Lcom/android/billingclient/api/BillingClient;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Lcom/android/billingclient/api/PendingPurchasesParams;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private E:Z

.field private F:Z

.field private volatile G:Lcom/android/billingclient/api/BillingClientStateListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:Ljava/util/concurrent/ExecutorService;

.field private final I:Ljava/lang/Long;

.field private J:Lcom/google/android/gms/internal/play_billing/zzbl;

.field private final a:Ljava/lang/Object;

.field private volatile b:I

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private volatile f:Lcom/android/billingclient/api/a0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Landroid/content/Context;

.field private h:Lcom/android/billingclient/api/t;

.field private volatile i:Lcom/google/android/gms/internal/play_billing/zzam;

.field private volatile j:Lcom/android/billingclient/api/f;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 9
    .param p6    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    move-object v8, p0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v8, Lcom/android/billingclient/api/b;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v8, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    iput v0, v8, Lcom/android/billingclient/api/b;->m:I

    new-instance v0, Ljava/util/Random;

    .line 2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaz;->zza()Lcom/google/android/gms/internal/play_billing/zzbl;

    move-result-object v0

    iput-object v0, v8, Lcom/android/billingclient/api/b;->J:Lcom/google/android/gms/internal/play_billing/zzbl;

    move-object v5, p4

    iput-object v5, v8, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/android/billingclient/api/b;->z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v4, p6

    move-object/from16 v7, p9

    .line 5
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/b;->a(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Ljava/lang/String;Lcom/android/billingclient/api/t;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 6
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/billingclient/api/b;->b:I

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    iput p1, p0, Lcom/android/billingclient/api/b;->m:I

    new-instance p3, Ljava/util/Random;

    .line 7
    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    invoke-virtual {p3}, Ljava/util/Random;->nextLong()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaz;->zza()Lcom/google/android/gms/internal/play_billing/zzbl;

    move-result-object p4

    iput-object p4, p0, Lcom/android/billingclient/api/b;->J:Lcom/google/android/gms/internal/play_billing/zzbl;

    const-string p4, "8.0.0"

    iput-object p4, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/android/billingclient/api/b;->z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 10
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzis;->zzc()Lcom/google/android/gms/internal/play_billing/zziq;

    move-result-object p2

    .line 12
    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/play_billing/zziq;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/zziq;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    :cond_0
    iget-object p4, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 14
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Lcom/google/android/gms/internal/play_billing/zziq;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 15
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zziq;->zzn(J)Lcom/google/android/gms/internal/play_billing/zziq;

    iget-boolean p3, p5, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 16
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zziq;->zzr(Z)Lcom/google/android/gms/internal/play_billing/zziq;

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 17
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zziq;->zza(I)Lcom/google/android/gms/internal/play_billing/zziq;

    const-wide/32 p3, 0x2e0d0066

    .line 18
    invoke-virtual {p2, p3, p4}, Lcom/google/android/gms/internal/play_billing/zziq;->zzp(J)Lcom/google/android/gms/internal/play_billing/zziq;

    :try_start_0
    iget-object p3, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 19
    invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iget-object p4, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 20
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    .line 21
    invoke-virtual {p3, p4, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 22
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/play_billing/zziq;->zzl(I)Lcom/google/android/gms/internal/play_billing/zziq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 23
    const-string p3, "BillingClient"

    const-string p4, "Error getting app version code."

    .line 24
    invoke-static {p3, p4, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 26
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/play_billing/zzis;

    new-instance p3, Lcom/android/billingclient/api/v;

    .line 27
    invoke-direct {p3, p1, p2}, Lcom/android/billingclient/api/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzis;)V

    iput-object p3, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    iget-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    iget-boolean p1, p5, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->E:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 59
    const-string v4, "8.0.0"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p2

    move-object v3, p4

    move-object v6, p5

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/billingclient/api/b;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/PurchasesUpdatedListener;Ljava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 9
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    move-object v8, p0

    .line 54
    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v8, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, v8, Lcom/android/billingclient/api/b;->b:I

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, v8, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    iput v0, v8, Lcom/android/billingclient/api/b;->m:I

    new-instance v0, Ljava/util/Random;

    .line 55
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v8, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 56
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaz;->zza()Lcom/google/android/gms/internal/play_billing/zzbl;

    move-result-object v0

    iput-object v0, v8, Lcom/android/billingclient/api/b;->J:Lcom/google/android/gms/internal/play_billing/zzbl;

    const-string v5, "8.0.0"

    iput-object v5, v8, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 57
    invoke-static {}, Lcom/android/billingclient/api/b;->z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    move-object v3, p2

    move-object/from16 v7, p8

    .line 58
    invoke-direct/range {v0 .. v7}, Lcom/android/billingclient/api/b;->b(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/android/billingclient/api/t;Lcom/android/billingclient/api/BillingClient$Builder;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/billingclient/api/PendingPurchasesParams;Landroid/content/Context;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/t;Ljava/util/concurrent/ExecutorService;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/ExecutorService;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 29
    const-string p1, "BillingClient"

    invoke-direct {p0}, Lcom/android/billingclient/api/BillingClient;-><init>()V

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    const/4 p4, 0x0

    iput p4, p0, Lcom/android/billingclient/api/b;->b:I

    new-instance p5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p6

    invoke-direct {p5, p6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p5, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    iput p4, p0, Lcom/android/billingclient/api/b;->m:I

    new-instance p5, Ljava/util/Random;

    .line 30
    invoke-direct {p5}, Ljava/util/Random;-><init>()V

    invoke-virtual {p5}, Ljava/util/Random;->nextLong()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    iput-object p5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 31
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzaz;->zza()Lcom/google/android/gms/internal/play_billing/zzbl;

    move-result-object p6

    iput-object p6, p0, Lcom/android/billingclient/api/b;->J:Lcom/google/android/gms/internal/play_billing/zzbl;

    const-string p6, "8.0.0"

    iput-object p6, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 32
    invoke-static {}, Lcom/android/billingclient/api/b;->z0()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 33
    invoke-virtual {p3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    iput-object p3, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 34
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzis;->zzc()Lcom/google/android/gms/internal/play_billing/zziq;

    move-result-object p3

    .line 35
    invoke-virtual {p3, p6}, Lcom/google/android/gms/internal/play_billing/zziq;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p3, v0}, Lcom/google/android/gms/internal/play_billing/zziq;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    :cond_0
    iget-object p6, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 37
    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p3, p6}, Lcom/google/android/gms/internal/play_billing/zziq;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 38
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-virtual {p3, p5, p6}, Lcom/google/android/gms/internal/play_billing/zziq;->zzn(J)Lcom/google/android/gms/internal/play_billing/zziq;

    iget-boolean p5, p7, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 39
    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzr(Z)Lcom/google/android/gms/internal/play_billing/zziq;

    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 40
    invoke-virtual {p3, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zza(I)Lcom/google/android/gms/internal/play_billing/zziq;

    const-wide/32 p5, 0x2e0d0066

    .line 41
    invoke-virtual {p3, p5, p6}, Lcom/google/android/gms/internal/play_billing/zziq;->zzp(J)Lcom/google/android/gms/internal/play_billing/zziq;

    :try_start_0
    iget-object p5, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 42
    invoke-virtual {p5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p5

    iget-object p6, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 43
    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    .line 44
    invoke-virtual {p5, p6, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p4

    iget p4, p4, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 45
    invoke-virtual {p3, p4}, Lcom/google/android/gms/internal/play_billing/zziq;->zzl(I)Lcom/google/android/gms/internal/play_billing/zziq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p4

    .line 46
    const-string p5, "Error getting app version code."

    .line 47
    invoke-static {p1, p5, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    :goto_0
    iget-object p4, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 49
    invoke-virtual {p3}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    move-result-object p3

    check-cast p3, Lcom/google/android/gms/internal/play_billing/zzis;

    new-instance p5, Lcom/android/billingclient/api/v;

    .line 50
    invoke-direct {p5, p4, p3}, Lcom/android/billingclient/api/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzis;)V

    iput-object p5, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    const-string p3, "Billing client should have a valid listener but the provided is null."

    .line 51
    invoke-static {p1, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/android/billingclient/api/a0;

    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    .line 52
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/a0;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;)V

    iput-object p1, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    iput-object p2, p0, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    iget-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    iget-boolean p1, p7, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->E:Z

    return-void
.end method

.method static bridge synthetic A(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/b;->P(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private final synthetic A0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->y:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "BillingClient"

    .line 27
    .line 28
    const-string v1, "Current client doesn\'t support alternative billing only."

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/android/billingclient/api/u;->D:Lcom/android/billingclient/api/BillingResult;

    .line 34
    .line 35
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzan:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 36
    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 50
    .line 51
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 52
    .line 53
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzg(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lcom/android/billingclient/api/g;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 80
    .line 81
    iget v6, p0, Lcom/android/billingclient/api/b;->m:I

    .line 82
    .line 83
    invoke-direct {v4, p1, v5, v6, v2}, Lcom/android/billingclient/api/g;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V

    .line 84
    .line 85
    .line 86
    const/16 v5, 0x15

    .line 87
    .line 88
    invoke-interface {v1, v5, v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzam;->zzk(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzx;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    :goto_0
    sget-object v1, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 96
    .line 97
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzar:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 98
    .line 99
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 104
    .line 105
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzar:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 106
    .line 107
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-object v2
.end method

.method static bridge synthetic B(Lcom/android/billingclient/api/b;Lcom/google/android/gms/internal/play_billing/zzhx;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->R(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final synthetic B0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Ljava/lang/String;)Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 p2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :catch_0
    move-exception v0

    .line 20
    goto :goto_0

    .line 21
    :catch_1
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->z:Z

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    const-string v0, "BillingClient"

    .line 28
    .line 29
    const-string v1, "Current client doesn\'t support external offer."

    .line 30
    .line 31
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    sget-object v0, Lcom/android/billingclient/api/u;->t:Lcom/android/billingclient/api/BillingResult;

    .line 35
    .line 36
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzaE:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 37
    .line 38
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 39
    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 43
    .line 44
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 46
    .line 47
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    if-nez v1, :cond_2

    .line 49
    .line 50
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 51
    .line 52
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 53
    .line 54
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iget-object v3, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 71
    .line 72
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    const/4 v4, 0x0

    .line 77
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-wide v2, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    .line 82
    .line 83
    iget-object v4, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v6, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 88
    .line 89
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    sget v8, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 94
    .line 95
    new-instance v8, Landroid/os/Bundle;

    .line 96
    .line 97
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-static {v8, v4, v5, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 101
    .line 102
    .line 103
    const-string v4, "appInstallTimeMillis"

    .line 104
    .line 105
    invoke-virtual {v8, v4, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 106
    .line 107
    .line 108
    new-instance v2, Lcom/android/billingclient/api/h;

    .line 109
    .line 110
    iget-object v3, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 111
    .line 112
    iget v4, p0, Lcom/android/billingclient/api/b;->m:I

    .line 113
    .line 114
    invoke-direct {v2, p1, v3, v4, p2}, Lcom/android/billingclient/api/h;-><init>(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V

    .line 115
    .line 116
    .line 117
    const/16 v3, 0x16

    .line 118
    .line 119
    invoke-interface {v1, v3, v0, v8, v2}, Lcom/google/android/gms/internal/play_billing/zzam;->zzl(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzz;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_2

    .line 123
    :catchall_0
    move-exception v1

    .line 124
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 125
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 126
    :goto_0
    sget-object v1, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 127
    .line 128
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaF:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 129
    .line 130
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 131
    .line 132
    .line 133
    goto :goto_2

    .line 134
    :goto_1
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 135
    .line 136
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaF:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 137
    .line 138
    invoke-direct {p0, p1, v1, v2, v0}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 139
    .line 140
    .line 141
    :goto_2
    return-object p2
.end method

.method static bridge synthetic C(Lcom/android/billingclient/api/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/b;->b:I

    .line 2
    .line 3
    return p0
.end method

.method private final synthetic C0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->y:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "BillingClient"

    .line 27
    .line 28
    const-string v1, "Current client doesn\'t support alternative billing only."

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/android/billingclient/api/u;->D:Lcom/android/billingclient/api/BillingResult;

    .line 34
    .line 35
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzan:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 36
    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 50
    .line 51
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 52
    .line 53
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzg(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lcom/android/billingclient/api/l;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 80
    .line 81
    iget v6, p0, Lcom/android/billingclient/api/b;->m:I

    .line 82
    .line 83
    invoke-direct {v4, p1, v5, v6, v2}, Lcom/android/billingclient/api/l;-><init>(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V

    .line 84
    .line 85
    .line 86
    const/16 v5, 0x15

    .line 87
    .line 88
    invoke-interface {v1, v5, v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzam;->zzp(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzah;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    :goto_0
    sget-object v1, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 96
    .line 97
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 98
    .line 99
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 104
    .line 105
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 106
    .line 107
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-object v2
.end method

.method private final synthetic D(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 13
    .line 14
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception v0

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->B:Z

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    const-string v0, "BillingClient"

    .line 27
    .line 28
    const-string v1, "Current client doesn\'t support launching external offer flow."

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/android/billingclient/api/u;->A:Lcom/android/billingclient/api/BillingResult;

    .line 34
    .line 35
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 36
    .line 37
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 42
    .line 43
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 45
    .line 46
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 50
    .line 51
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 52
    .line 53
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 66
    .line 67
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 68
    .line 69
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 70
    .line 71
    .line 72
    move-result-wide v5

    .line 73
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzg(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    new-instance v4, Lcom/android/billingclient/api/m;

    .line 78
    .line 79
    iget-object v5, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 80
    .line 81
    iget v6, p0, Lcom/android/billingclient/api/b;->m:I

    .line 82
    .line 83
    invoke-direct {v4, p1, v5, v6, v2}, Lcom/android/billingclient/api/m;-><init>(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V

    .line 84
    .line 85
    .line 86
    const/16 v5, 0x18

    .line 87
    .line 88
    invoke-interface {v1, v5, v0, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzam;->zzq(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzaj;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_2

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 95
    :goto_0
    sget-object v1, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 96
    .line 97
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaC:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 98
    .line 99
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 100
    .line 101
    .line 102
    goto :goto_2

    .line 103
    :goto_1
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 104
    .line 105
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaC:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 106
    .line 107
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 108
    .line 109
    .line 110
    :goto_2
    return-object v2
.end method

.method static bridge synthetic D0(Lcom/android/billingclient/api/b;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/billingclient/api/b;->m:I

    .line 2
    .line 3
    return p0
.end method

.method private final synthetic E(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 6
    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/b;->P(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p2

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzg(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Lcom/android/billingclient/api/i;

    .line 43
    .line 44
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5, p3, v0}, Lcom/android/billingclient/api/i;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbp;)V

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x15

    .line 53
    .line 54
    invoke-interface {v2, p2, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzam;->zzm(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzab;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_0
    sget-object p3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 62
    .line 63
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzav:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 64
    .line 65
    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/b;->P(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    sget-object p3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 70
    .line 71
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzav:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 72
    .line 73
    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/b;->P(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-object v0
.end method

.method private final E0(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcw;
    .locals 1
    .param p5    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 p1, 0x9

    .line 2
    .line 3
    invoke-static {p5}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p3, p1, p2, v0}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string p1, "BillingClient"

    .line 11
    .line 12
    invoke-static {p1, p4, p5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Lcom/android/billingclient/api/zzcw;

    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-direct {p1, p2, p3}, Lcom/android/billingclient/api/zzcw;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method private final synthetic F(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 3
    .line 4
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 6
    .line 7
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 13
    .line 14
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/billingclient/api/b;->N(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 15
    .line 16
    .line 17
    goto :goto_2

    .line 18
    :catch_0
    move-exception p2

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p2

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 31
    .line 32
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v5

    .line 38
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzg(Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    new-instance v4, Lcom/android/billingclient/api/k;

    .line 43
    .line 44
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 45
    .line 46
    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-direct {v4, v5, p3, v0}, Lcom/android/billingclient/api/k;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbp;)V

    .line 50
    .line 51
    .line 52
    const/16 p2, 0x16

    .line 53
    .line 54
    invoke-interface {v2, p2, v1, v3, v4}, Lcom/google/android/gms/internal/play_billing/zzam;->zzo(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzaf;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 60
    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 61
    :goto_0
    sget-object p3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 62
    .line 63
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzaJ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 64
    .line 65
    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/b;->N(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :goto_1
    sget-object p3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 70
    .line 71
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzaJ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 72
    .line 73
    invoke-direct {p0, p1, p3, v1, p2}, Lcom/android/billingclient/api/b;->N(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 74
    .line 75
    .line 76
    :goto_2
    return-object v0
.end method

.method private final F0(Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzcw;
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    const-string v0, "Querying owned items, item type: "

    .line 4
    .line 5
    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "BillingClient"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->p:Z

    .line 24
    .line 25
    iget-boolean v2, v7, Lcom/android/billingclient/api/b;->w:Z

    .line 26
    .line 27
    iget-object v3, v7, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 28
    .line 29
    invoke-virtual {v3}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    iget-object v4, v7, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 34
    .line 35
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    iget-object v5, v7, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 42
    .line 43
    .line 44
    move-result-wide v5

    .line 45
    new-instance v14, Landroid/os/Bundle;

    .line 46
    .line 47
    invoke-direct {v14}, Landroid/os/Bundle;-><init>()V

    .line 48
    .line 49
    .line 50
    iget-object v8, v7, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 51
    .line 52
    iget-object v9, v7, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v14, v8, v9, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 55
    .line 56
    .line 57
    const/4 v5, 0x1

    .line 58
    if-eqz v1, :cond_0

    .line 59
    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    const-string v1, "enablePendingPurchases"

    .line 63
    .line 64
    invoke-virtual {v14, v1, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    .line 66
    .line 67
    :cond_0
    const/4 v1, 0x0

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    if-eqz v4, :cond_1

    .line 71
    .line 72
    const-string v2, "enablePendingPurchaseForSubscriptions"

    .line 73
    .line 74
    invoke-virtual {v14, v2, v5}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 75
    .line 76
    .line 77
    :cond_1
    move-object v12, v1

    .line 78
    :goto_0
    :try_start_0
    iget-object v1, v7, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 79
    .line 80
    monitor-enter v1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :try_start_1
    iget-object v8, v7, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 82
    .line 83
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    if-nez v8, :cond_2

    .line 85
    .line 86
    :try_start_2
    sget-object v3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 87
    .line 88
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 89
    .line 90
    const-string v5, "Service has been reset to null"

    .line 91
    .line 92
    const/4 v6, 0x0

    .line 93
    const/16 v2, 0x9

    .line 94
    .line 95
    move-object/from16 v1, p0

    .line 96
    .line 97
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->E0(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcw;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    return-object v0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    move-object v6, v0

    .line 104
    goto/16 :goto_8

    .line 105
    .line 106
    :catch_1
    move-exception v0

    .line 107
    move-object v6, v0

    .line 108
    goto/16 :goto_9

    .line 109
    .line 110
    :cond_2
    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->p:Z

    .line 111
    .line 112
    if-nez v1, :cond_3

    .line 113
    .line 114
    iget-object v1, v7, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 115
    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const/4 v3, 0x3

    .line 121
    move-object/from16 v4, p1

    .line 122
    .line 123
    invoke-interface {v8, v3, v1, v4, v12}, Lcom/google/android/gms/internal/play_billing/zzam;->zzh(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    goto :goto_3

    .line 128
    :cond_3
    move-object/from16 v4, p1

    .line 129
    .line 130
    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->C:Z

    .line 131
    .line 132
    if-eqz v1, :cond_4

    .line 133
    .line 134
    const/16 v1, 0x1a

    .line 135
    .line 136
    :goto_1
    move v9, v1

    .line 137
    goto :goto_2

    .line 138
    :cond_4
    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->B:Z

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    const/16 v1, 0x18

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_5
    iget-boolean v1, v7, Lcom/android/billingclient/api/b;->w:Z

    .line 146
    .line 147
    if-eqz v1, :cond_6

    .line 148
    .line 149
    const/16 v1, 0x13

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_6
    const/16 v9, 0x9

    .line 153
    .line 154
    :goto_2
    iget-object v1, v7, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 155
    .line 156
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v10

    .line 160
    move-object/from16 v11, p1

    .line 161
    .line 162
    move-object v13, v14

    .line 163
    invoke-interface/range {v8 .. v13}, Lcom/google/android/gms/internal/play_billing/zzam;->zzi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 164
    .line 165
    .line 166
    move-result-object v1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 167
    :goto_3
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 168
    .line 169
    const-string v6, "getPurchase()"

    .line 170
    .line 171
    const-string v8, "BillingClient"

    .line 172
    .line 173
    if-nez v1, :cond_7

    .line 174
    .line 175
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    const-string v9, "%s got null owned items list"

    .line 180
    .line 181
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v6

    .line 185
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzab:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 189
    .line 190
    :goto_4
    move-object v8, v6

    .line 191
    move-object v6, v3

    .line 192
    goto/16 :goto_6

    .line 193
    .line 194
    :cond_7
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v9

    .line 198
    invoke-static {v1, v8}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v10

    .line 202
    invoke-static {}, Lcom/android/billingclient/api/BillingResult;->newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;

    .line 203
    .line 204
    .line 205
    move-result-object v11

    .line 206
    invoke-virtual {v11, v9}, Lcom/android/billingclient/api/BillingResult$Builder;->setResponseCode(I)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v11, v10}, Lcom/android/billingclient/api/BillingResult$Builder;->setDebugMessage(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult$Builder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {v11}, Lcom/android/billingclient/api/BillingResult$Builder;->build()Lcom/android/billingclient/api/BillingResult;

    .line 213
    .line 214
    .line 215
    move-result-object v10

    .line 216
    if-eqz v9, :cond_8

    .line 217
    .line 218
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    filled-new-array {v6, v9}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const-string v9, "%s failed. Response code: %s"

    .line 227
    .line 228
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v6

    .line 232
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 236
    .line 237
    move-object v8, v6

    .line 238
    move-object v6, v10

    .line 239
    goto/16 :goto_6

    .line 240
    .line 241
    :cond_8
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 242
    .line 243
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 244
    .line 245
    .line 246
    move-result v9

    .line 247
    if-eqz v9, :cond_d

    .line 248
    .line 249
    const-string v9, "INAPP_PURCHASE_DATA_LIST"

    .line 250
    .line 251
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 252
    .line 253
    .line 254
    move-result v9

    .line 255
    if-eqz v9, :cond_d

    .line 256
    .line 257
    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    .line 258
    .line 259
    invoke-virtual {v1, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 260
    .line 261
    .line 262
    move-result v9

    .line 263
    if-nez v9, :cond_9

    .line 264
    .line 265
    goto :goto_5

    .line 266
    :cond_9
    const-string v9, "INAPP_PURCHASE_ITEM_LIST"

    .line 267
    .line 268
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 269
    .line 270
    .line 271
    move-result-object v9

    .line 272
    const-string v10, "INAPP_PURCHASE_DATA_LIST"

    .line 273
    .line 274
    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    const-string v11, "INAPP_DATA_SIGNATURE_LIST"

    .line 279
    .line 280
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 281
    .line 282
    .line 283
    move-result-object v11

    .line 284
    if-nez v9, :cond_a

    .line 285
    .line 286
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    const-string v9, "Bundle returned from %s contains null SKUs list."

    .line 291
    .line 292
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v6

    .line 296
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    .line 298
    .line 299
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzad:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 300
    .line 301
    goto :goto_4

    .line 302
    :cond_a
    if-nez v10, :cond_b

    .line 303
    .line 304
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    const-string v9, "Bundle returned from %s contains null purchases list."

    .line 309
    .line 310
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v6

    .line 314
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzae:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 318
    .line 319
    goto/16 :goto_4

    .line 320
    .line 321
    :cond_b
    if-nez v11, :cond_c

    .line 322
    .line 323
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v6

    .line 327
    const-string v9, "Bundle returned from %s contains null signatures list."

    .line 328
    .line 329
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzaf:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 337
    .line 338
    goto/16 :goto_4

    .line 339
    .line 340
    :cond_c
    sget-object v6, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 341
    .line 342
    sget-object v8, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :cond_d
    :goto_5
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    const-string v9, "Bundle returned from %s doesn\'t contain required fields."

    .line 350
    .line 351
    invoke-static {v9, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-static {v8, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    sget-object v6, Lcom/google/android/gms/internal/play_billing/zzie;->zzac:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 359
    .line 360
    goto/16 :goto_4

    .line 361
    .line 362
    :goto_6
    sget-object v9, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 363
    .line 364
    if-eq v6, v9, :cond_e

    .line 365
    .line 366
    const-string v5, "Purchase bundle invalid"

    .line 367
    .line 368
    const/4 v0, 0x0

    .line 369
    const/16 v2, 0x9

    .line 370
    .line 371
    move-object/from16 v1, p0

    .line 372
    .line 373
    move-object v3, v6

    .line 374
    move-object v4, v8

    .line 375
    move-object v6, v0

    .line 376
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->E0(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcw;

    .line 377
    .line 378
    .line 379
    move-result-object v0

    .line 380
    return-object v0

    .line 381
    :cond_e
    const-string v6, "INAPP_PURCHASE_ITEM_LIST"

    .line 382
    .line 383
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 384
    .line 385
    .line 386
    move-result-object v6

    .line 387
    const-string v8, "INAPP_PURCHASE_DATA_LIST"

    .line 388
    .line 389
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 390
    .line 391
    .line 392
    move-result-object v8

    .line 393
    const-string v9, "INAPP_DATA_SIGNATURE_LIST"

    .line 394
    .line 395
    invoke-virtual {v1, v9}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 396
    .line 397
    .line 398
    move-result-object v9

    .line 399
    const/4 v10, 0x0

    .line 400
    move v11, v10

    .line 401
    :goto_7
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 402
    .line 403
    .line 404
    move-result v12

    .line 405
    if-ge v10, v12, :cond_10

    .line 406
    .line 407
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 408
    .line 409
    .line 410
    move-result-object v12

    .line 411
    check-cast v12, Ljava/lang/String;

    .line 412
    .line 413
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 414
    .line 415
    .line 416
    move-result-object v13

    .line 417
    check-cast v13, Ljava/lang/String;

    .line 418
    .line 419
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 420
    .line 421
    .line 422
    move-result-object v15

    .line 423
    check-cast v15, Ljava/lang/String;

    .line 424
    .line 425
    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 426
    .line 427
    .line 428
    move-result-object v15

    .line 429
    const-string v5, "Sku is owned: "

    .line 430
    .line 431
    const-string v2, "BillingClient"

    .line 432
    .line 433
    invoke-virtual {v5, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v5

    .line 437
    invoke-static {v2, v5}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    .line 439
    .line 440
    :try_start_3
    new-instance v2, Lcom/android/billingclient/api/Purchase;

    .line 441
    .line 442
    invoke-direct {v2, v12, v13}, Lcom/android/billingclient/api/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 443
    .line 444
    .line 445
    invoke-virtual {v2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 450
    .line 451
    .line 452
    move-result v5

    .line 453
    if-eqz v5, :cond_f

    .line 454
    .line 455
    const-string v5, "BillingClient"

    .line 456
    .line 457
    const-string v11, "BUG: empty/null token!"

    .line 458
    .line 459
    invoke-static {v5, v11}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    const/4 v11, 0x1

    .line 463
    :cond_f
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    add-int/lit8 v10, v10, 0x1

    .line 467
    .line 468
    const/4 v5, 0x1

    .line 469
    goto :goto_7

    .line 470
    :catch_2
    move-exception v0

    .line 471
    move-object v6, v0

    .line 472
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 473
    .line 474
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzY:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 475
    .line 476
    const-string v5, "Got an exception trying to decode the purchase!"

    .line 477
    .line 478
    const/16 v2, 0x9

    .line 479
    .line 480
    move-object/from16 v1, p0

    .line 481
    .line 482
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->E0(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcw;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    return-object v0

    .line 487
    :cond_10
    if-eqz v11, :cond_11

    .line 488
    .line 489
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzz:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 490
    .line 491
    const/16 v5, 0x9

    .line 492
    .line 493
    invoke-direct {v7, v2, v5, v3}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 494
    .line 495
    .line 496
    :cond_11
    const-string v2, "INAPP_CONTINUATION_TOKEN"

    .line 497
    .line 498
    invoke-virtual {v1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 499
    .line 500
    .line 501
    move-result-object v12

    .line 502
    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v1

    .line 506
    const-string v2, "Continuation token: "

    .line 507
    .line 508
    const-string v3, "BillingClient"

    .line 509
    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v1

    .line 514
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    .line 516
    .line 517
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 518
    .line 519
    .line 520
    move-result v1

    .line 521
    if-eqz v1, :cond_12

    .line 522
    .line 523
    new-instance v1, Lcom/android/billingclient/api/zzcw;

    .line 524
    .line 525
    sget-object v2, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 526
    .line 527
    invoke-direct {v1, v2, v0}, Lcom/android/billingclient/api/zzcw;-><init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 528
    .line 529
    .line 530
    return-object v1

    .line 531
    :cond_12
    const/4 v5, 0x1

    .line 532
    goto/16 :goto_0

    .line 533
    .line 534
    :catchall_0
    move-exception v0

    .line 535
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 536
    :try_start_5
    throw v0
    :try_end_5
    .catch Landroid/os/DeadObjectException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 537
    :goto_8
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 538
    .line 539
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzZ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 540
    .line 541
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 542
    .line 543
    const/16 v2, 0x9

    .line 544
    .line 545
    move-object/from16 v1, p0

    .line 546
    .line 547
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->E0(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcw;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    return-object v0

    .line 552
    :goto_9
    sget-object v3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 553
    .line 554
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzZ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 555
    .line 556
    const-string v5, "Got exception trying to get purchases try to reconnect"

    .line 557
    .line 558
    const/16 v2, 0x9

    .line 559
    .line 560
    move-object/from16 v1, p0

    .line 561
    .line 562
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->E0(ILcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/zzcw;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    return-object v0
.end method

.method private final G(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :try_start_0
    const-string v0, "BillingClient"

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "Consuming purchase with token: "

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 28
    .line 29
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 31
    .line 32
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    if-nez v1, :cond_0

    .line 34
    .line 35
    :try_start_2
    sget-object v3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 36
    .line 37
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 38
    .line 39
    const-string v5, "Service has been reset to null."

    .line 40
    .line 41
    const/4 v6, 0x0

    .line 42
    move-object v0, p0

    .line 43
    move-object v1, p2

    .line 44
    move-object v2, p1

    .line 45
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b;->J(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    move-object v6, v0

    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :catch_1
    move-exception v0

    .line 54
    move-object v6, v0

    .line 55
    goto/16 :goto_2

    .line 56
    .line 57
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->p:Z

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 62
    .line 63
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    iget-boolean v2, p0, Lcom/android/billingclient/api/b;->p:Z

    .line 68
    .line 69
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 74
    .line 75
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 76
    .line 77
    .line 78
    move-result-wide v5

    .line 79
    new-instance v7, Landroid/os/Bundle;

    .line 80
    .line 81
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 82
    .line 83
    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-static {v7, v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    :cond_1
    const/16 v2, 0x9

    .line 90
    .line 91
    invoke-interface {v1, v2, v0, p1, v7}, Lcom/google/android/gms/internal/play_billing/zzam;->zze(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    const-string v1, "RESPONSE_CODE"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    const-string v2, "BillingClient"

    .line 102
    .line 103
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    goto :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 109
    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    const/4 v2, 0x3

    .line 115
    invoke-interface {v1, v2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzam;->zza(ILjava/lang/String;Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    const-string v0, ""

    .line 120
    .line 121
    :goto_0
    invoke-static {v1, v0}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    if-nez v1, :cond_3

    .line 126
    .line 127
    const-string v0, "BillingClient"

    .line 128
    .line 129
    const-string v1, "Successfully consumed purchase."

    .line 130
    .line 131
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    invoke-interface {p2, v3, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void

    .line 138
    :cond_3
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 139
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .line 144
    .line 145
    const-string v2, "Error consuming purchase with token. Response code: "

    .line 146
    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v5

    .line 157
    const/4 v6, 0x0

    .line 158
    move-object v0, p0

    .line 159
    move-object v1, p2

    .line 160
    move-object v2, p1

    .line 161
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b;->J(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :catchall_0
    move-exception v1

    .line 166
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 167
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 168
    :goto_1
    sget-object v3, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 169
    .line 170
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzC:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 171
    .line 172
    const-string v5, "Error consuming purchase!"

    .line 173
    .line 174
    move-object v0, p0

    .line 175
    move-object v1, p2

    .line 176
    move-object v2, p1

    .line 177
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b;->J(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :goto_2
    sget-object v3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 182
    .line 183
    sget-object v4, Lcom/google/android/gms/internal/play_billing/zzie;->zzC:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 184
    .line 185
    const-string v5, "Error consuming purchase!"

    .line 186
    .line 187
    move-object v0, p0

    .line 188
    move-object v1, p2

    .line 189
    move-object v2, p1

    .line 190
    invoke-direct/range {v0 .. v6}, Lcom/android/billingclient/api/b;->J(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 191
    .line 192
    .line 193
    return-void
.end method

.method private final G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Unable to create logging payload"

    .line 7
    .line 8
    const-string v3, "BillingLogger"

    .line 9
    .line 10
    const/4 v4, 0x5

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 14
    .line 15
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzc()Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()Lcom/google/android/gms/internal/play_billing/zzic;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 24
    .line 25
    .line 26
    move-result v6

    .line 27
    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/play_billing/zzic;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v5, p1}, Lcom/google/android/gms/internal/play_billing/zzic;->zzl(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v5, p2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v5}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzl(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v4}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziz;->zzc()Lcom/google/android/gms/internal/play_billing/zziw;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p1, p3}, Lcom/google/android/gms/internal/play_billing/zziw;->zza(I)Lcom/google/android/gms/internal/play_billing/zziw;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zziz;

    .line 58
    .line 59
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzm(Lcom/google/android/gms/internal/play_billing/zziz;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhx;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .line 68
    move-object v1, p1

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    .line 73
    .line 74
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/b;->R(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    .line 75
    .line 76
    .line 77
    return-void

    .line 78
    :cond_0
    sget p1, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 79
    .line 80
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzib;->zzc()Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1, v4}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 85
    .line 86
    .line 87
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zziz;->zzc()Lcom/google/android/gms/internal/play_billing/zziw;

    .line 88
    .line 89
    .line 90
    move-result-object p2

    .line 91
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zziw;->zza(I)Lcom/google/android/gms/internal/play_billing/zziw;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 95
    .line 96
    .line 97
    move-result-object p2

    .line 98
    check-cast p2, Lcom/google/android/gms/internal/play_billing/zziz;

    .line 99
    .line 100
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzl(Lcom/google/android/gms/internal/play_billing/zziz;)Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzib;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 108
    .line 109
    move-object v1, p1

    .line 110
    goto :goto_1

    .line 111
    :catch_1
    move-exception p1

    .line 112
    invoke-static {v3, v2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/b;->T(Lcom/google/android/gms/internal/play_billing/zzib;)V

    .line 116
    .line 117
    .line 118
    return-void
.end method

.method private final H(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 2
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Error in acknowledge purchase!"

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p4

    .line 13
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {p1, p2, p3, v1, v0}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->R(Lcom/google/android/gms/internal/play_billing/zzhx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string p2, "BillingClient"

    .line 16
    .line 17
    const-string p3, "Unable to log."

    .line 18
    .line 19
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0xe

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;->onAlternativeBillingOnlyAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final I0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;J)V
    .locals 4

    .line 1
    const-string p2, "Unable to log."

    .line 2
    .line 3
    const-string v0, "BillingClient"

    .line 4
    .line 5
    :try_start_0
    sget v1, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 6
    .line 7
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v2, p3, v3, v1}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 12
    .line 13
    .line 14
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    iget-object p3, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 16
    .line 17
    iget v1, p0, Lcom/android/billingclient/api/b;->m:I

    .line 18
    .line 19
    invoke-interface {p3, p1, v1, p4, p5}, Lcom/android/billingclient/api/t;->b(Lcom/google/android/gms/internal/play_billing/zzhx;IJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception p1

    .line 24
    :try_start_2
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_1
    move-exception p1

    .line 29
    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final J(Lcom/android/billingclient/api/ConsumeResponseListener;Ljava/lang/String;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p6    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p5, p6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p5, 0x4

    .line 7
    invoke-static {p6}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p6

    .line 11
    invoke-direct {p0, p4, p5, p3, p6}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-interface {p1, p3, p2}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    invoke-static {p1, p2, p3, p4, v0}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->R(Lcom/google/android/gms/internal/play_billing/zzhx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string p2, "BillingClient"

    .line 15
    .line 16
    const-string p3, "Unable to log."

    .line 17
    .line 18
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0xf

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;->onAlternativeBillingOnlyTokenResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetails;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V
    .locals 2

    .line 1
    :try_start_0
    sget p2, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 2
    .line 3
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, p3, v1, p2}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/android/billingclient/api/b;->S(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    const-string p2, "BillingClient"

    .line 17
    .line 18
    const-string p3, "Unable to log."

    .line 19
    .line 20
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private final L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x18

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;->onExternalOfferReportingDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/ExternalOfferReportingDetails;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method private final L0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    sget p2, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 2
    .line 3
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    const/4 v0, 0x2

    .line 6
    invoke-static {p1, v0, p3, p4, p2}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-direct {p0, p1, p5, p6, p7}, Lcom/android/billingclient/api/b;->S(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    const-string p2, "BillingClient"

    .line 16
    .line 17
    const-string p3, "Unable to log."

    .line 18
    .line 19
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private final M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x17

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;->onExternalOfferAvailabilityResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private M0(I)V
    .locals 2

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/android/billingclient/api/zzcg;->zzc(ILcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzib;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->T(Lcom/google/android/gms/internal/play_billing/zzib;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    const-string v0, "BillingClient"

    .line 15
    .line 16
    const-string v1, "Unable to log."

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final N(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x19

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;->onExternalOfferInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static bridge synthetic N0(Lcom/android/billingclient/api/b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private final O(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 2
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "getBillingConfig got an exception."

    .line 4
    .line 5
    invoke-static {v0, v1, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    const/16 v0, 0xd

    .line 9
    .line 10
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p4

    .line 14
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p3, 0x0

    .line 18
    invoke-interface {p1, p2, p3}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public static synthetic O0(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/b;->p0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final P(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    invoke-direct {p0, p3, v0, p2, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;->onAlternativeBillingOnlyInformationDialogResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static synthetic P0(Lcom/android/billingclient/api/b;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/billingclient/api/b;->o0(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final Q(ILcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 2
    .param p3    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "showInAppMessages error."

    .line 4
    .line 5
    invoke-static {v0, v1, p3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 9
    .line 10
    invoke-static {p3}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p3

    .line 14
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzig;->zzc()Lcom/google/android/gms/internal/play_billing/zzic;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzic;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 19
    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/play_billing/zzic;->zzn(Lcom/google/android/gms/internal/play_billing/zzie;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1, p3}, Lcom/google/android/gms/internal/play_billing/zzic;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zzic;

    .line 32
    .line 33
    .line 34
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzhx;->zzc()Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzl(Lcom/google/android/gms/internal/play_billing/zzic;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 39
    .line 40
    .line 41
    const/16 p2, 0x1e

    .line 42
    .line 43
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzp(I)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    const-string p2, "BillingLogger"

    .line 54
    .line 55
    const-string p3, "Unable to create logging payload"

    .line 56
    .line 57
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    .line 59
    .line 60
    const/4 p1, 0x0

    .line 61
    :goto_2
    invoke-interface {v0, p1}, Lcom/android/billingclient/api/t;->h(Lcom/google/android/gms/internal/play_billing/zzhx;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method static bridge synthetic Q0(Lcom/android/billingclient/api/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final R(Lcom/google/android/gms/internal/play_billing/zzhx;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/b;->m:I

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/t;->k(Lcom/google/android/gms/internal/play_billing/zzhx;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private final S(Lcom/google/android/gms/internal/play_billing/zzhx;JZ)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 2
    .line 3
    iget v2, p0, Lcom/android/billingclient/api/b;->m:I

    .line 4
    .line 5
    move-object v1, p1

    .line 6
    move-wide v3, p2

    .line 7
    move v5, p4

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/android/billingclient/api/t;->g(Lcom/google/android/gms/internal/play_billing/zzhx;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :catchall_0
    move-exception p1

    .line 13
    const-string p2, "BillingClient"

    .line 14
    .line 15
    const-string p3, "Unable to log."

    .line 16
    .line 17
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static bridge synthetic S0(Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/BillingClientStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->G:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private final T(Lcom/google/android/gms/internal/play_billing/zzib;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/billingclient/api/b;->m:I

    .line 4
    .line 5
    invoke-interface {v0, p1, v1}, Lcom/android/billingclient/api/t;->d(Lcom/google/android/gms/internal/play_billing/zzib;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p1

    .line 10
    const-string v0, "BillingClient"

    .line 11
    .line 12
    const-string v1, "Unable to log."

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static bridge synthetic T0(Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 2
    .line 3
    return-object p0
.end method

.method private final U(Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 3

    .line 1
    :try_start_0
    sget v0, Lcom/android/billingclient/api/zzcg;->zza:I

    .line 2
    .line 3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzil;->zza:Lcom/google/android/gms/internal/play_billing/zzil;

    .line 4
    .line 5
    const/4 v1, 0x6

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v1, p2, v2, v0}, Lcom/android/billingclient/api/zzcg;->zzb(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zzil;)Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfi;->zzm()Lcom/google/android/gms/internal/play_billing/zzfe;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 16
    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjv;->zzc()Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-lez p3, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzjt;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzhv;->zzo(Lcom/google/android/gms/internal/play_billing/zzjt;)Lcom/google/android/gms/internal/play_billing/zzhv;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzhx;

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->R(Lcom/google/android/gms/internal/play_billing/zzhx;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    const-string p2, "BillingClient"

    .line 47
    .line 48
    const-string p3, "Unable to log."

    .line 49
    .line 50
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final V(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/b;->b:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-ne v1, v2, :cond_0

    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "BillingClient"

    .line 14
    .line 15
    iget v2, p0, Lcom/android/billingclient/api/b;->b:I

    .line 16
    .line 17
    invoke-static {v2}, Lcom/android/billingclient/api/b;->c0(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-static {p1}, Lcom/android/billingclient/api/b;->c0(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    new-instance v4, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v5, "Setting clientState from "

    .line 31
    .line 32
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v2, " to "

    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iput p1, p0, Lcom/android/billingclient/api/b;->b:I

    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return-void

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method

.method static bridge synthetic V0(Lcom/android/billingclient/api/b;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final declared-synchronized W()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->H:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/android/billingclient/api/b;->H:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-void

    .line 18
    :goto_0
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method

.method static bridge synthetic W0(Ljava/lang/Exception;)Lcom/android/billingclient/api/BillingResult;
    .locals 0

    .line 1
    instance-of p0, p0, Landroid/os/DeadObjectException;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    sget-object p0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget-object p0, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 9
    .line 10
    :goto_0
    return-object p0
.end method

.method private final X(Lcom/android/billingclient/api/BillingClientStateListener;I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/b;->s0(I)Lcom/android/billingclient/api/BillingResult;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    monitor-exit v0

    .line 15
    goto/16 :goto_4

    .line 16
    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto/16 :goto_5

    .line 19
    .line 20
    :cond_0
    iget v1, p0, Lcom/android/billingclient/api/b;->b:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    .line 25
    const-string v1, "BillingClient"

    .line 26
    .line 27
    const-string v2, "Client is already in the process of connecting to billing service."

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzK:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 33
    .line 34
    sget-object v2, Lcom/android/billingclient/api/u;->d:Lcom/android/billingclient/api/BillingResult;

    .line 35
    .line 36
    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/b;->U(Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 37
    .line 38
    .line 39
    monitor-exit v0

    .line 40
    :goto_0
    move-object p2, v2

    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_1
    iget v1, p0, Lcom/android/billingclient/api/b;->b:I

    .line 44
    .line 45
    const/4 v3, 0x3

    .line 46
    if-ne v1, v3, :cond_2

    .line 47
    .line 48
    const-string v1, "BillingClient"

    .line 49
    .line 50
    const-string v2, "Client was already closed and can\'t be reused. Please create another instance."

    .line 51
    .line 52
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzL:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 56
    .line 57
    sget-object v2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 58
    .line 59
    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/b;->U(Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/b;->V(I)V

    .line 65
    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    if-nez p2, :cond_3

    .line 69
    .line 70
    iput-object p1, p0, Lcom/android/billingclient/api/b;->G:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 71
    .line 72
    move p2, v1

    .line 73
    :cond_3
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->Y()V

    .line 74
    .line 75
    .line 76
    const-string v3, "BillingClient"

    .line 77
    .line 78
    const-string v4, "Starting in-app billing setup."

    .line 79
    .line 80
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance v3, Lcom/android/billingclient/api/f;

    .line 84
    .line 85
    const/4 v4, 0x0

    .line 86
    invoke-direct {v3, p0, p1, p2, v4}, Lcom/android/billingclient/api/f;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingClientStateListener;ILcom/android/billingclient/api/zzbp;)V

    .line 87
    .line 88
    .line 89
    iput-object v3, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 90
    .line 91
    iget-object v3, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 92
    .line 93
    invoke-virtual {v3}, Lcom/android/billingclient/api/f;->c()V

    .line 94
    .line 95
    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    .line 98
    .line 99
    const-string v3, "com.android.vending.billing.InAppBillingService.BIND"

    .line 100
    .line 101
    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    const-string v3, "com.android.vending"

    .line 105
    .line 106
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    .line 108
    .line 109
    iget-object v3, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 110
    .line 111
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    invoke-virtual {v3, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    if-eqz v3, :cond_a

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-nez v5, :cond_a

    .line 126
    .line 127
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v3

    .line 131
    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 132
    .line 133
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 134
    .line 135
    if-eqz v3, :cond_9

    .line 136
    .line 137
    iget-object v5, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 138
    .line 139
    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 140
    .line 141
    const-string v6, "com.android.vending"

    .line 142
    .line 143
    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_8

    .line 148
    .line 149
    if-eqz v3, :cond_8

    .line 150
    .line 151
    new-instance v6, Landroid/content/ComponentName;

    .line 152
    .line 153
    invoke-direct {v6, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    new-instance v3, Landroid/content/Intent;

    .line 157
    .line 158
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 165
    .line 166
    const-string v5, "playBillingLibraryVersion"

    .line 167
    .line 168
    invoke-virtual {v3, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    .line 170
    .line 171
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 172
    .line 173
    monitor-enter v0

    .line 174
    :try_start_1
    iget v5, p0, Lcom/android/billingclient/api/b;->b:I

    .line 175
    .line 176
    const/4 v6, 0x2

    .line 177
    if-ne v5, v6, :cond_4

    .line 178
    .line 179
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/b;->s0(I)Lcom/android/billingclient/api/BillingResult;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    monitor-exit v0

    .line 184
    goto/16 :goto_4

    .line 185
    .line 186
    :catchall_1
    move-exception p1

    .line 187
    goto :goto_2

    .line 188
    :cond_4
    iget v5, p0, Lcom/android/billingclient/api/b;->b:I

    .line 189
    .line 190
    if-eq v5, v2, :cond_5

    .line 191
    .line 192
    const-string v1, "BillingClient"

    .line 193
    .line 194
    const-string v2, "Client state no longer CONNECTING, returning service disconnected."

    .line 195
    .line 196
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzba:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 200
    .line 201
    sget-object v2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 202
    .line 203
    invoke-direct {p0, v1, v2, p2}, Lcom/android/billingclient/api/b;->U(Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 204
    .line 205
    .line 206
    monitor-exit v0

    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_5
    iget-object v5, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 210
    .line 211
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 212
    if-lez p2, :cond_6

    .line 213
    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 215
    .line 216
    const/16 v6, 0x1d

    .line 217
    .line 218
    if-lt v0, v6, :cond_6

    .line 219
    .line 220
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    invoke-static {v0, v3, v2, v6, v5}, Lcom/android/billingclient/api/a;->a(Landroid/content/Context;Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    goto :goto_1

    .line 231
    :cond_6
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 232
    .line 233
    invoke-virtual {v0, v3, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    :goto_1
    if-eqz v0, :cond_7

    .line 238
    .line 239
    const-string p2, "BillingClient"

    .line 240
    .line 241
    const-string v0, "Service was bonded successfully."

    .line 242
    .line 243
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    move-object p2, v4

    .line 247
    goto :goto_4

    .line 248
    :cond_7
    const-string v0, "BillingClient"

    .line 249
    .line 250
    const-string v2, "Connection to Billing service is blocked."

    .line 251
    .line 252
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzM:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 253
    .line 254
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    goto :goto_3

    .line 258
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 259
    throw p1

    .line 260
    :cond_8
    const-string v0, "BillingClient"

    .line 261
    .line 262
    const-string v2, "The device doesn\'t have valid Play Store."

    .line 263
    .line 264
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzN:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 265
    .line 266
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto :goto_3

    .line 270
    :cond_9
    const-string v0, "BillingClient"

    .line 271
    .line 272
    const-string v2, "The device doesn\'t have valid Play Store."

    .line 273
    .line 274
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzN:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 275
    .line 276
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    goto :goto_3

    .line 280
    :cond_a
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzO:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 281
    .line 282
    :goto_3
    invoke-direct {p0, v1}, Lcom/android/billingclient/api/b;->V(I)V

    .line 283
    .line 284
    .line 285
    const-string v0, "BillingClient"

    .line 286
    .line 287
    const-string v1, "Billing service unavailable on device."

    .line 288
    .line 289
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    sget-object v0, Lcom/android/billingclient/api/u;->b:Lcom/android/billingclient/api/BillingResult;

    .line 293
    .line 294
    invoke-direct {p0, v3, v0, p2}, Lcom/android/billingclient/api/b;->U(Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 295
    .line 296
    .line 297
    move-object p2, v0

    .line 298
    :goto_4
    if-eqz p2, :cond_b

    .line 299
    .line 300
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/BillingClientStateListener;->onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V

    .line 301
    .line 302
    .line 303
    :cond_b
    return-void

    .line 304
    :goto_5
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 305
    throw p1
.end method

.method private final Y()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :try_start_1
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 12
    .line 13
    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 14
    .line 15
    .line 16
    :try_start_2
    iput-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    goto :goto_1

    .line 23
    :catchall_1
    move-exception v2

    .line 24
    :try_start_3
    const-string v3, "BillingClient"

    .line 25
    .line 26
    const-string v4, "There was an exception while unbinding service!"

    .line 27
    .line 28
    invoke-static {v3, v4, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 29
    .line 30
    .line 31
    :try_start_4
    iput-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 32
    .line 33
    iput-object v1, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_2
    move-exception v2

    .line 37
    iput-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 40
    .line 41
    throw v2

    .line 42
    :cond_0
    :goto_0
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 45
    throw v1
.end method

.method static bridge synthetic Y0(Lcom/android/billingclient/api/b;)Lcom/google/android/gms/internal/play_billing/zzam;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 2
    .line 3
    return-object p0
.end method

.method private final Z(J)Z
    .locals 3

    .line 1
    const-string p1, "BillingClient"

    .line 2
    .line 3
    :try_start_0
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v0, 0x1d

    .line 6
    .line 7
    if-ge p2, v0, :cond_0

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-wide/16 v0, 0xbb8

    .line 13
    .line 14
    :goto_0
    const/4 p2, 0x1

    .line 15
    invoke-direct {p0, p2}, Lcom/android/billingclient/api/b;->u0(I)Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 20
    .line 21
    invoke-interface {p2, v0, v1, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/android/billingclient/api/BillingResult;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "Reconnection succeeded with result: "

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_2

    .line 58
    :catch_0
    move-exception p2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {p2}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v1, "Reconnection failed with result: "

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :goto_1
    instance-of v0, p2, Ljava/lang/InterruptedException;

    .line 86
    .line 87
    if-eqz v0, :cond_2

    .line 88
    .line 89
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 94
    .line 95
    .line 96
    :cond_2
    const-string v0, "Error during reconnection attempt: "

    .line 97
    .line 98
    invoke-static {p1, v0, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 99
    .line 100
    .line 101
    :goto_2
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    return p1
.end method

.method static bridge synthetic Z0(Lcom/android/billingclient/api/b;)Lcom/google/android/gms/internal/play_billing/zzbl;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->J:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 2
    .line 3
    return-object p0
.end method

.method private a(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/UserChoiceBillingListener;Ljava/lang/String;Lcom/android/billingclient/api/t;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 8
    .param p4    # Lcom/android/billingclient/api/UserChoiceBillingListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzis;->zzc()Lcom/google/android/gms/internal/play_billing/zziq;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 14
    .line 15
    .line 16
    iget-object p5, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p5, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p5

    .line 29
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 30
    .line 31
    .line 32
    iget-object p5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zziq;->zzn(J)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 39
    .line 40
    .line 41
    iget-boolean p5, p7, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 42
    .line 43
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzr(Z)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 44
    .line 45
    .line 46
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zza(I)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 49
    .line 50
    .line 51
    const-wide/32 v1, 0x2e0d0066

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zziq;->zzp(J)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 55
    .line 56
    .line 57
    const/4 p5, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2, p5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zziq;->zzl(I)Lcom/google/android/gms/internal/play_billing/zziq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    const-string v2, "Error getting app version code."

    .line 82
    .line 83
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    if-eqz p6, :cond_1

    .line 87
    .line 88
    iput-object p6, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object p6, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzis;

    .line 98
    .line 99
    new-instance v1, Lcom/android/billingclient/api/v;

    .line 100
    .line 101
    invoke-direct {v1, p6, p1}, Lcom/android/billingclient/api/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzis;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 105
    .line 106
    :goto_1
    if-nez p2, :cond_2

    .line 107
    .line 108
    const-string p1, "Billing client should have a valid listener but the provided is null."

    .line 109
    .line 110
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    new-instance p1, Lcom/android/billingclient/api/a0;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 116
    .line 117
    const/4 v5, 0x0

    .line 118
    iget-object v7, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    move-object v1, p1

    .line 122
    move-object v3, p2

    .line 123
    move-object v6, p4

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/a0;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 128
    .line 129
    iput-object p3, p0, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 130
    .line 131
    if-eqz p4, :cond_3

    .line 132
    .line 133
    const/4 p5, 0x1

    .line 134
    :cond_3
    iput-boolean p5, p0, Lcom/android/billingclient/api/b;->F:Z

    .line 135
    .line 136
    iget-boolean p1, p7, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 137
    .line 138
    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->E:Z

    .line 139
    .line 140
    return-void
.end method

.method private final a0(J)Z
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    iget-object v0, v1, Lcom/android/billingclient/api/b;->J:Lcom/google/android/gms/internal/play_billing/zzbl;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zzb(Lcom/google/android/gms/internal/play_billing/zzbl;)Lcom/google/android/gms/internal/play_billing/zzbi;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const/4 v0, 0x1

    .line 10
    const-wide/16 v3, 0x7530

    .line 11
    .line 12
    move v5, v0

    .line 13
    move-wide v6, v3

    .line 14
    :goto_0
    const/4 v8, 0x3

    .line 15
    const-string v9, "BillingClient"

    .line 16
    .line 17
    if-gt v5, v8, :cond_5

    .line 18
    .line 19
    const-wide/16 v10, 0x0

    .line 20
    .line 21
    :try_start_0
    invoke-static {v10, v11, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v6

    .line 25
    cmp-long v0, v6, v10

    .line 26
    .line 27
    if-gtz v0, :cond_0

    .line 28
    .line 29
    const-string v0, "No time remaining for reconnection attempt."

    .line 30
    .line 31
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct/range {p0 .. p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :catch_0
    move-exception v0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    invoke-direct {v1, v5}, Lcom/android/billingclient/api/b;->u0(I)Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 46
    .line 47
    invoke-interface {v0, v6, v7, v12}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    check-cast v0, Lcom/android/billingclient/api/BillingResult;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    if-nez v6, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v7, "Reconnection succeeded with result: "

    .line 69
    .line 70
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    return v0

    .line 88
    :cond_1
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v7, "Reconnection failed with result: "

    .line 98
    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :goto_1
    instance-of v6, v0, Ljava/lang/InterruptedException;

    .line 114
    .line 115
    if-eqz v6, :cond_2

    .line 116
    .line 117
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    invoke-virtual {v6}, Ljava/lang/Thread;->interrupt()V

    .line 122
    .line 123
    .line 124
    :cond_2
    const-string v6, "Error during reconnection attempt: "

    .line 125
    .line 126
    invoke-static {v9, v6, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    :goto_2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 130
    .line 131
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zza(Ljava/util/concurrent/TimeUnit;)J

    .line 132
    .line 133
    .line 134
    move-result-wide v6

    .line 135
    sub-long v6, v3, v6

    .line 136
    .line 137
    add-int/lit8 v12, v5, -0x1

    .line 138
    .line 139
    int-to-double v12, v12

    .line 140
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    .line 141
    .line 142
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->pow(DD)D

    .line 143
    .line 144
    .line 145
    move-result-wide v12

    .line 146
    double-to-long v12, v12

    .line 147
    const-wide/16 v14, 0x3e8

    .line 148
    .line 149
    mul-long/2addr v12, v14

    .line 150
    cmp-long v14, v6, v12

    .line 151
    .line 152
    if-gez v14, :cond_3

    .line 153
    .line 154
    const-string v0, "Reconnection failed due to timeout limit reached."

    .line 155
    .line 156
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 160
    .line 161
    .line 162
    move-result v0

    .line 163
    return v0

    .line 164
    :cond_3
    if-ge v5, v8, :cond_4

    .line 165
    .line 166
    cmp-long v8, v12, v10

    .line 167
    .line 168
    if-lez v8, :cond_4

    .line 169
    .line 170
    :try_start_1
    invoke-static {v12, v13}, Ljava/lang/Thread;->sleep(J)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzbi;->zza(Ljava/util/concurrent/TimeUnit;)J

    .line 174
    .line 175
    .line 176
    move-result-wide v6
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 177
    sub-long v6, v3, v6

    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catch_1
    move-exception v0

    .line 181
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 186
    .line 187
    .line 188
    const-string v2, "Error sleeping during reconnection attempt: "

    .line 189
    .line 190
    invoke-static {v9, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    .line 192
    .line 193
    goto :goto_4

    .line 194
    :cond_4
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_5
    :goto_4
    const-string v0, "Max retries reached."

    .line 199
    .line 200
    invoke-static {v9, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    invoke-direct/range {p0 .. p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    return v0
.end method

.method static bridge synthetic a1(Lcom/android/billingclient/api/b;)Ljava/lang/Long;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 2
    .line 3
    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/PendingPurchasesParams;Lcom/android/billingclient/api/zzb;Ljava/lang/String;Lcom/android/billingclient/api/t;Lcom/android/billingclient/api/BillingClient$Builder;)V
    .locals 8
    .param p4    # Lcom/android/billingclient/api/zzb;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/android/billingclient/api/t;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iput-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzis;->zzc()Lcom/google/android/gms/internal/play_billing/zziq;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzs(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 14
    .line 15
    .line 16
    iget-object p5, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz p5, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzt(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object p5, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 24
    .line 25
    invoke-virtual {p5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p5

    .line 29
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzq(Ljava/lang/String;)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 30
    .line 31
    .line 32
    iget-object p5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v1

    .line 38
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zziq;->zzn(J)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 39
    .line 40
    .line 41
    iget-boolean p5, p7, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 42
    .line 43
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zzr(Z)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 44
    .line 45
    .line 46
    sget p5, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 47
    .line 48
    invoke-virtual {p1, p5}, Lcom/google/android/gms/internal/play_billing/zziq;->zza(I)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 49
    .line 50
    .line 51
    const-wide/32 v1, 0x2e0d0066

    .line 52
    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Lcom/google/android/gms/internal/play_billing/zziq;->zzp(J)Lcom/google/android/gms/internal/play_billing/zziq;

    .line 55
    .line 56
    .line 57
    const/4 p5, 0x0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 59
    .line 60
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 65
    .line 66
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-virtual {v1, v2, p5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/play_billing/zziq;->zzl(I)Lcom/google/android/gms/internal/play_billing/zziq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v1

    .line 81
    const-string v2, "Error getting app version code."

    .line 82
    .line 83
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    if-eqz p6, :cond_1

    .line 87
    .line 88
    iput-object p6, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object p6, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzis;

    .line 98
    .line 99
    new-instance v1, Lcom/android/billingclient/api/v;

    .line 100
    .line 101
    invoke-direct {v1, p6, p1}, Lcom/android/billingclient/api/v;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/play_billing/zzis;)V

    .line 102
    .line 103
    .line 104
    iput-object v1, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 105
    .line 106
    :goto_1
    if-nez p2, :cond_2

    .line 107
    .line 108
    const-string p1, "Billing client should have a valid listener but the provided is null."

    .line 109
    .line 110
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :cond_2
    new-instance p1, Lcom/android/billingclient/api/a0;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 116
    .line 117
    const/4 v6, 0x0

    .line 118
    iget-object v7, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 119
    .line 120
    const/4 v4, 0x0

    .line 121
    move-object v1, p1

    .line 122
    move-object v3, p2

    .line 123
    move-object v5, p4

    .line 124
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/a0;-><init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;)V

    .line 125
    .line 126
    .line 127
    iput-object p1, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 128
    .line 129
    iput-object p3, p0, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 130
    .line 131
    if-eqz p4, :cond_3

    .line 132
    .line 133
    const/4 p5, 0x1

    .line 134
    :cond_3
    iput-boolean p5, p0, Lcom/android/billingclient/api/b;->F:Z

    .line 135
    .line 136
    iget-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    iget-boolean p1, p7, Lcom/android/billingclient/api/BillingClient$Builder;->g:Z

    .line 142
    .line 143
    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->E:Z

    .line 144
    .line 145
    return-void
.end method

.method private final b0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/b;->b:I

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    iget-object v1, p0, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    const/4 v3, 0x1

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v0

    .line 23
    return v3

    .line 24
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public static synthetic b1(Lcom/android/billingclient/api/b;ILcom/google/android/gms/internal/play_billing/zzp;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/android/billingclient/api/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/android/billingclient/api/e;-><init>(Lcom/android/billingclient/api/b;Lcom/google/android/gms/internal/play_billing/zzp;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lcom/android/billingclient/api/b;->X(Lcom/android/billingclient/api/BillingClientStateListener;I)V

    .line 7
    .line 8
    .line 9
    const-string p0, "reconnectIfNeeded"

    .line 10
    .line 11
    return-object p0
.end method

.method public static synthetic c(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->D(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method private static final c0(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_2

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    .line 9
    const-string p0, "CLOSED"

    .line 10
    .line 11
    return-object p0

    .line 12
    :cond_0
    const-string p0, "CONNECTED"

    .line 13
    .line 14
    return-object p0

    .line 15
    :cond_1
    const-string p0, "CONNECTING"

    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_2
    const-string p0, "DISCONNECTED"

    .line 19
    .line 20
    return-object p0
.end method

.method public static synthetic c1(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)Ljava/lang/Object;
    .locals 3

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 10
    .line 11
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 12
    .line 13
    const/4 v2, 0x4

    .line 14
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-direct {p0, p2, p1}, Lcom/android/billingclient/api/b;->G(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    const/4 p0, 0x0

    .line 29
    return-object p0
.end method

.method public static synthetic d(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/b;->F(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic d0(Lcom/android/billingclient/api/b;Lcom/google/android/gms/internal/play_billing/zzib;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->T(Lcom/google/android/gms/internal/play_billing/zzib;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d1(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x7

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 11
    .line 12
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 13
    .line 14
    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 15
    .line 16
    .line 17
    new-instance p0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 18
    .line 19
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-direct {p0, p2, v1}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 28
    .line 29
    .line 30
    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->u:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string p2, "BillingClient"

    .line 39
    .line 40
    const-string v0, "Querying product details is not supported."

    .line 41
    .line 42
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzt:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 46
    .line 47
    sget-object v0, Lcom/android/billingclient/api/u;->r:Lcom/android/billingclient/api/BillingResult;

    .line 48
    .line 49
    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 50
    .line 51
    .line 52
    new-instance p0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 53
    .line 54
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-direct {p0, p2, v1}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p1, v0, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/billingclient/api/b;->R0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/android/billingclient/api/o;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lcom/android/billingclient/api/o;->a()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-virtual {p0}, Lcom/android/billingclient/api/o;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {p2, v0}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/android/billingclient/api/o;->c()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/android/billingclient/api/o;->d()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object p0

    .line 95
    invoke-direct {v0, v1, p0}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 96
    .line 97
    .line 98
    invoke-interface {p1, p2, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    const/4 p0, 0x0

    .line 102
    return-object p0
.end method

.method public static synthetic e(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Ljava/lang/String;)Ljava/lang/Void;
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/b;->B0(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Ljava/lang/String;)Ljava/lang/Void;

    .line 3
    .line 4
    .line 5
    return-object p2
.end method

.method static bridge synthetic e0(Lcom/android/billingclient/api/b;Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/b;->U(Lcom/google/android/gms/internal/play_billing/zzie;Lcom/android/billingclient/api/BillingResult;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e1(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/b;->v0(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic f(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->A0(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic f0(Lcom/android/billingclient/api/b;I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/b;->m:I

    .line 2
    .line 3
    const/16 v0, 0x1a

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    move v0, v2

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->C:Z

    .line 13
    .line 14
    const/16 v0, 0x18

    .line 15
    .line 16
    if-lt p1, v0, :cond_1

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_1
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->B:Z

    .line 22
    .line 23
    const/16 v0, 0x17

    .line 24
    .line 25
    if-lt p1, v0, :cond_2

    .line 26
    .line 27
    move v0, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    move v0, v1

    .line 30
    :goto_2
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->A:Z

    .line 31
    .line 32
    const/16 v0, 0x16

    .line 33
    .line 34
    if-lt p1, v0, :cond_3

    .line 35
    .line 36
    move v0, v2

    .line 37
    goto :goto_3

    .line 38
    :cond_3
    move v0, v1

    .line 39
    :goto_3
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->z:Z

    .line 40
    .line 41
    const/16 v0, 0x15

    .line 42
    .line 43
    if-lt p1, v0, :cond_4

    .line 44
    .line 45
    move v0, v2

    .line 46
    goto :goto_4

    .line 47
    :cond_4
    move v0, v1

    .line 48
    :goto_4
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->y:Z

    .line 49
    .line 50
    const/16 v0, 0x14

    .line 51
    .line 52
    if-lt p1, v0, :cond_5

    .line 53
    .line 54
    move v0, v2

    .line 55
    goto :goto_5

    .line 56
    :cond_5
    move v0, v1

    .line 57
    :goto_5
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->x:Z

    .line 58
    .line 59
    const/16 v0, 0x13

    .line 60
    .line 61
    if-lt p1, v0, :cond_6

    .line 62
    .line 63
    move v0, v2

    .line 64
    goto :goto_6

    .line 65
    :cond_6
    move v0, v1

    .line 66
    :goto_6
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->w:Z

    .line 67
    .line 68
    const/16 v0, 0x12

    .line 69
    .line 70
    if-lt p1, v0, :cond_7

    .line 71
    .line 72
    move v0, v2

    .line 73
    goto :goto_7

    .line 74
    :cond_7
    move v0, v1

    .line 75
    :goto_7
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->v:Z

    .line 76
    .line 77
    const/16 v0, 0x11

    .line 78
    .line 79
    if-lt p1, v0, :cond_8

    .line 80
    .line 81
    move v0, v2

    .line 82
    goto :goto_8

    .line 83
    :cond_8
    move v0, v1

    .line 84
    :goto_8
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->u:Z

    .line 85
    .line 86
    const/16 v0, 0x10

    .line 87
    .line 88
    if-lt p1, v0, :cond_9

    .line 89
    .line 90
    move v0, v2

    .line 91
    goto :goto_9

    .line 92
    :cond_9
    move v0, v1

    .line 93
    :goto_9
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->t:Z

    .line 94
    .line 95
    const/16 v0, 0xf

    .line 96
    .line 97
    if-lt p1, v0, :cond_a

    .line 98
    .line 99
    move v0, v2

    .line 100
    goto :goto_a

    .line 101
    :cond_a
    move v0, v1

    .line 102
    :goto_a
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->s:Z

    .line 103
    .line 104
    const/16 v0, 0xe

    .line 105
    .line 106
    if-lt p1, v0, :cond_b

    .line 107
    .line 108
    move v0, v2

    .line 109
    goto :goto_b

    .line 110
    :cond_b
    move v0, v1

    .line 111
    :goto_b
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->r:Z

    .line 112
    .line 113
    const/16 v0, 0xc

    .line 114
    .line 115
    if-lt p1, v0, :cond_c

    .line 116
    .line 117
    move v0, v2

    .line 118
    goto :goto_c

    .line 119
    :cond_c
    move v0, v1

    .line 120
    :goto_c
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->q:Z

    .line 121
    .line 122
    const/16 v0, 0x9

    .line 123
    .line 124
    if-lt p1, v0, :cond_d

    .line 125
    .line 126
    move v0, v2

    .line 127
    goto :goto_d

    .line 128
    :cond_d
    move v0, v1

    .line 129
    :goto_d
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->p:Z

    .line 130
    .line 131
    const/16 v0, 0x8

    .line 132
    .line 133
    if-lt p1, v0, :cond_e

    .line 134
    .line 135
    move v0, v2

    .line 136
    goto :goto_e

    .line 137
    :cond_e
    move v0, v1

    .line 138
    :goto_e
    iput-boolean v0, p0, Lcom/android/billingclient/api/b;->o:Z

    .line 139
    .line 140
    const/4 v0, 0x6

    .line 141
    if-lt p1, v0, :cond_f

    .line 142
    .line 143
    move v1, v2

    .line 144
    :cond_f
    iput-boolean v1, p0, Lcom/android/billingclient/api/b;->n:Z

    .line 145
    .line 146
    return-void
.end method

.method public static synthetic f1(Lcom/android/billingclient/api/b;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/b;->x0(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->C0(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic g0(Lcom/android/billingclient/api/b;I)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->V(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static synthetic g1(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->w0(Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method static bridge synthetic h0(Lcom/android/billingclient/api/b;I)V
    .locals 2

    .line 1
    if-nez p1, :cond_3

    .line 2
    .line 3
    iget-object p1, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget v0, p0, Lcom/android/billingclient/api/b;->b:I

    .line 7
    .line 8
    const/4 v1, 0x3

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    monitor-exit p1

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v0, 0x2

    .line 16
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/b;->V(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const/4 v0, 0x0

    .line 27
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    iget-boolean p0, p0, Lcom/android/billingclient/api/b;->y:Z

    .line 31
    .line 32
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/a0;->g(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    return-void

    .line 36
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0

    .line 38
    :cond_3
    const/4 p1, 0x0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->V(I)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method static bridge synthetic h1(Lcom/android/billingclient/api/b;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;
    .locals 2
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p5, p0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    long-to-double p1, p1

    .line 6
    new-instance p5, Lcom/android/billingclient/api/zzaj;

    .line 7
    .line 8
    invoke-direct {p5, p0, p3}, Lcom/android/billingclient/api/zzaj;-><init>(Ljava/util/concurrent/Future;Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    mul-double/2addr p1, v0

    .line 17
    double-to-long p1, p1

    .line 18
    invoke-virtual {p4, p5, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 19
    .line 20
    .line 21
    return-object p0

    .line 22
    :catch_0
    move-exception p0

    .line 23
    const-string p1, "BillingClient"

    .line 24
    .line 25
    const-string p2, "Async task throws exception!"

    .line 26
    .line 27
    invoke-static {p1, p2, p0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method static bridge synthetic i0(Lcom/android/billingclient/api/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic i1(Lcom/android/billingclient/api/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic j(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method static bridge synthetic j1(Lcom/android/billingclient/api/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic k(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    const/16 v2, 0x9

    .line 6
    .line 7
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 8
    .line 9
    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method static bridge synthetic k0(Lcom/android/billingclient/api/b;J)Z
    .locals 0

    .line 1
    const-wide/16 p1, 0x7530

    .line 2
    .line 3
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public static synthetic k1(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/b;->E(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Void;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    return-object p0
.end method

.method public static synthetic l(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    const/16 v2, 0xd

    .line 6
    .line 7
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 8
    .line 9
    .line 10
    const/4 p0, 0x0

    .line 11
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method static bridge synthetic l0(Lcom/android/billingclient/api/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget p0, p0, Lcom/android/billingclient/api/b;->b:I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    if-ne p0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p0
.end method

.method public static synthetic m(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method static bridge synthetic m0(Lcom/android/billingclient/api/b;Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzcw;
    .locals 0

    .line 1
    const/4 p2, 0x0

    .line 2
    const/16 p3, 0x9

    .line 3
    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/b;->F0(Ljava/lang/String;ZI)Lcom/android/billingclient/api/zzcw;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    return-object p0
.end method

.method public static synthetic n(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method static bridge synthetic n0(Lcom/android/billingclient/api/b;Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V
    .locals 0

    .line 1
    const/16 p2, 0x9

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic o(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final synthetic o0(ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p4, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter p4
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 5
    .line 6
    monitor-exit p4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 10
    .line 11
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzd(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object p4, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v5, 0x0

    .line 29
    move v1, p1

    .line 30
    move-object v3, p2

    .line 31
    move-object v4, p3

    .line 32
    move-object v6, p5

    .line 33
    invoke-interface/range {v0 .. v6}, Lcom/google/android/gms/internal/play_billing/zzam;->zzg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 37
    return-object p1

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    :try_start_3
    monitor-exit p4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 40
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 41
    :goto_0
    sget-object p2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 42
    .line 43
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzie;->zze:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;)Landroid/os/Bundle;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :goto_1
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 55
    .line 56
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzie;->zze:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 57
    .line 58
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p2, p3, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;)Landroid/os/Bundle;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    return-object p1
.end method

.method public static synthetic p(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 2
    .line 3
    sget-object v1, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 4
    .line 5
    const/4 v2, 0x7

    .line 6
    invoke-direct {p0, v0, v2, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 7
    .line 8
    .line 9
    new-instance p0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 10
    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-direct {p0, v0, v2}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1, v1, p0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method private final synthetic p0(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 5
    .line 6
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    :try_start_2
    sget-object p1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 10
    .line 11
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzd(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1

    .line 18
    :catch_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_1
    move-exception p1

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v2, 0x3

    .line 30
    move-object v4, p1

    .line 31
    move-object v5, p2

    .line 32
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/play_billing/zzam;->zzf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    .line 33
    .line 34
    .line 35
    move-result-object p1
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    return-object p1

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 39
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 40
    :goto_0
    sget-object p2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 41
    .line 42
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zze:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;)Landroid/os/Bundle;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :goto_1
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 54
    .line 55
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zze:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-static {p2, v0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zze(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;)Landroid/os/Bundle;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1
.end method

.method public static synthetic q(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->P(Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final q0()Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    return-object v0
.end method

.method public static synthetic r(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingResult;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/billingclient/api/a0;->d()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/android/billingclient/api/a0;->d()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-interface {p0, p1, v0}, Lcom/android/billingclient/api/PurchasesUpdatedListener;->onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const-string p0, "BillingClient"

    .line 21
    .line 22
    const-string p1, "No valid listener is set in BroadcastManager"

    .line 23
    .line 24
    invoke-static {p0, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;
    .locals 1
    .param p4    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    invoke-static {v0, p3, p4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    const/4 p3, 0x7

    .line 7
    invoke-static {p4}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-direct {p0, p2, p3, p1, p4}, Lcom/android/billingclient/api/b;->J0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p2, Lcom/android/billingclient/api/o;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 17
    .line 18
    .line 19
    move-result p3

    .line 20
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    new-instance p4, Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    .line 28
    .line 29
    new-instance v0, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-direct {p2, p3, p1, p4, v0}, Lcom/android/billingclient/api/o;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 35
    .line 36
    .line 37
    return-object p2
.end method

.method public static synthetic s(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->N(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final s0(I)Lcom/android/billingclient/api/BillingResult;
    .locals 3

    .line 1
    const-string v0, "BillingClient"

    .line 2
    .line 3
    const-string v1, "Service connection is valid. No need to re-initialize."

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzib;->zzc()Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x6

    .line 13
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzo(I)Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzjv;->zzc()Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const/4 v2, 0x1

    .line 21
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzn(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 22
    .line 23
    .line 24
    if-lez p1, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v2, 0x0

    .line 28
    :goto_0
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzjt;->zza(Z)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzjt;->zzl(I)Lcom/google/android/gms/internal/play_billing/zzjt;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzhz;->zzn(Lcom/google/android/gms/internal/play_billing/zzjt;)Lcom/google/android/gms/internal/play_billing/zzhz;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/google/android/gms/internal/play_billing/zzib;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/android/billingclient/api/b;->T(Lcom/google/android/gms/internal/play_billing/zzib;)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 47
    .line 48
    return-object p1
.end method

.method public static synthetic t(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final t0()Lcom/android/billingclient/api/BillingResult;
    .locals 5

    .line 1
    const/4 v0, 0x3

    .line 2
    const/4 v1, 0x0

    .line 3
    filled-new-array {v1, v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v2, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2

    .line 10
    :goto_0
    const/4 v3, 0x2

    .line 11
    if-ge v1, v3, :cond_1

    .line 12
    .line 13
    :try_start_0
    aget v3, v0, v1

    .line 14
    .line 15
    iget v4, p0, Lcom/android/billingclient/api/b;->b:I

    .line 16
    .line 17
    if-ne v4, v3, :cond_0

    .line 18
    .line 19
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto :goto_2

    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    sget-object v0, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 30
    .line 31
    :goto_1
    return-object v0

    .line 32
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    throw v0
.end method

.method public static synthetic u(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzx:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final u0(I)Lcom/google/android/gms/internal/play_billing/zzcz;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/android/billingclient/api/zzu;

    .line 13
    .line 14
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzu;-><init>(Lcom/android/billingclient/api/b;I)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzu;->zza(Lcom/google/android/gms/internal/play_billing/zzr;)Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1

    .line 22
    :cond_1
    :goto_0
    const-string p1, "BillingClient"

    .line 23
    .line 24
    const-string v0, "Already connected or not opted into auto reconnection."

    .line 25
    .line 26
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/google/android/gms/internal/play_billing/zzcu;->zza(Ljava/lang/Object;)Lcom/google/android/gms/internal/play_billing/zzcz;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1
.end method

.method static bridge synthetic v(Lcom/android/billingclient/api/b;I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/billingclient/api/b;->m:I

    .line 2
    .line 3
    return-void
.end method

.method private final synthetic v0(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/4 v1, 0x3

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 12
    .line 13
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 14
    .line 15
    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p2

    .line 23
    goto/16 :goto_1

    .line 24
    .line 25
    :catch_1
    move-exception p2

    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    const-string p2, "BillingClient"

    .line 39
    .line 40
    const-string v0, "Please provide a valid purchase token."

    .line 41
    .line 42
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzz:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 46
    .line 47
    sget-object v0, Lcom/android/billingclient/api/u;->g:Lcom/android/billingclient/api/BillingResult;

    .line 48
    .line 49
    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->p:Z

    .line 57
    .line 58
    if-nez v0, :cond_2

    .line 59
    .line 60
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzA:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 61
    .line 62
    sget-object v0, Lcom/android/billingclient/api/u;->a:Lcom/android/billingclient/api/BillingResult;

    .line 63
    .line 64
    invoke-direct {p0, p2, v1, v0}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 65
    .line 66
    .line 67
    invoke-interface {p1, v0}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 72
    .line 73
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 75
    .line 76
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    :try_start_2
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 80
    .line 81
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 82
    .line 83
    invoke-direct {p0, p1, p2, v0, v2}, Lcom/android/billingclient/api/b;->H(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-object v2

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p2}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->getPurchaseToken()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p2

    .line 97
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 98
    .line 99
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 100
    .line 101
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 102
    .line 103
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 104
    .line 105
    .line 106
    move-result-wide v5

    .line 107
    sget v7, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 108
    .line 109
    new-instance v7, Landroid/os/Bundle;

    .line 110
    .line 111
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    .line 114
    invoke-static {v7, v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 115
    .line 116
    .line 117
    const/16 v3, 0x9

    .line 118
    .line 119
    invoke-interface {v1, v3, v0, p2, v7}, Lcom/google/android/gms/internal/play_billing/zzam;->zzd(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 120
    .line 121
    .line 122
    move-result-object p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 123
    const-string v0, "BillingClient"

    .line 124
    .line 125
    invoke-static {p2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    const-string v1, "BillingClient"

    .line 130
    .line 131
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p2

    .line 135
    invoke-static {v0, p2}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-interface {p1, p2}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 140
    .line 141
    .line 142
    return-object v2

    .line 143
    :catchall_0
    move-exception p2

    .line 144
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 145
    :try_start_4
    throw p2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 146
    :goto_1
    sget-object v0, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 147
    .line 148
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzB:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 149
    .line 150
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/billingclient/api/b;->H(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 151
    .line 152
    .line 153
    return-object v2

    .line 154
    :goto_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 155
    .line 156
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzB:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 157
    .line 158
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/billingclient/api/b;->H(Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 159
    .line 160
    .line 161
    return-object v2
.end method

.method static bridge synthetic w(Lcom/android/billingclient/api/b;Lcom/google/android/gms/internal/play_billing/zzam;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 2
    .line 3
    return-void
.end method

.method private final synthetic w0(Lcom/android/billingclient/api/BillingConfigResponseListener;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x7530

    .line 2
    .line 3
    const/4 v2, 0x0

    .line 4
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->a0(J)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const/16 v1, 0xd

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "BillingClient"

    .line 13
    .line 14
    const-string v3, "Service disconnected."

    .line 15
    .line 16
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 20
    .line 21
    sget-object v3, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 22
    .line 23
    invoke-direct {p0, v0, v1, v3}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v3, v2}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 27
    .line 28
    .line 29
    goto :goto_2

    .line 30
    :catch_0
    move-exception v0

    .line 31
    goto :goto_0

    .line 32
    :catch_1
    move-exception v0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->v:Z

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const-string v0, "BillingClient"

    .line 39
    .line 40
    const-string v3, "Current client doesn\'t support get billing config."

    .line 41
    .line 42
    invoke-static {v0, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzF:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 46
    .line 47
    sget-object v3, Lcom/android/billingclient/api/u;->y:Lcom/android/billingclient/api/BillingResult;

    .line 48
    .line 49
    invoke-direct {p0, v0, v1, v3}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1, v3, v2}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 57
    .line 58
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :try_start_1
    iget-object v1, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 60
    .line 61
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    if-nez v1, :cond_2

    .line 63
    .line 64
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 65
    .line 66
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 67
    .line 68
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->O(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    iget-object v0, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 73
    .line 74
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    iget-object v3, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v4, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v5, p0, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 83
    .line 84
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 85
    .line 86
    .line 87
    move-result-wide v5

    .line 88
    sget v7, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 89
    .line 90
    new-instance v7, Landroid/os/Bundle;

    .line 91
    .line 92
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-static {v7, v3, v4, v5, v6}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 96
    .line 97
    .line 98
    new-instance v3, Lcom/android/billingclient/api/j;

    .line 99
    .line 100
    iget-object v4, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 101
    .line 102
    iget v5, p0, Lcom/android/billingclient/api/b;->m:I

    .line 103
    .line 104
    invoke-direct {v3, p1, v4, v5, v2}, Lcom/android/billingclient/api/j;-><init>(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/t;ILcom/android/billingclient/api/zzbp;)V

    .line 105
    .line 106
    .line 107
    const/16 v4, 0x12

    .line 108
    .line 109
    invoke-interface {v1, v4, v0, v7, v3}, Lcom/google/android/gms/internal/play_billing/zzam;->zzn(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzad;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :catchall_0
    move-exception v1

    .line 114
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 115
    :try_start_4
    throw v1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 116
    :goto_0
    sget-object v1, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 117
    .line 118
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaj:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 119
    .line 120
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->O(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :goto_1
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 125
    .line 126
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzaj:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 127
    .line 128
    invoke-direct {p0, p1, v1, v3, v0}, Lcom/android/billingclient/api/b;->O(Lcom/android/billingclient/api/BillingConfigResponseListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 129
    .line 130
    .line 131
    :goto_2
    return-object v2
.end method

.method static bridge synthetic x(Lcom/android/billingclient/api/b;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->l:Z

    .line 2
    .line 3
    return-void
.end method

.method private final synthetic x0(Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v2
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v3, p0, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 7
    .line 8
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    :try_start_2
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 12
    .line 13
    invoke-direct {p0, v0, p1, v1}, Lcom/android/billingclient/api/b;->Q(ILcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 14
    .line 15
    .line 16
    goto :goto_2

    .line 17
    :catch_0
    move-exception p1

    .line 18
    goto :goto_0

    .line 19
    :catch_1
    move-exception p1

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v4, Lcom/android/billingclient/api/n;

    .line 28
    .line 29
    new-instance v5, Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    invoke-direct {v5, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {v4, v5, p3, v1}, Lcom/android/billingclient/api/n;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/ResultReceiver;Lcom/android/billingclient/api/zzbp;)V

    .line 35
    .line 36
    .line 37
    const/16 p2, 0xc

    .line 38
    .line 39
    invoke-interface {v3, p2, v2, p1, v4}, Lcom/google/android/gms/internal/play_billing/zzam;->zzr(ILjava/lang/String;Landroid/os/Bundle;Lcom/google/android/gms/internal/play_billing/zzao;)V
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 45
    :try_start_4
    throw p1
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 46
    :goto_0
    const/4 p2, 0x6

    .line 47
    sget-object p3, Lcom/google/android/gms/internal/play_billing/zzie;->zzbb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 48
    .line 49
    invoke-direct {p0, p2, p3, p1}, Lcom/android/billingclient/api/b;->Q(ILcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :goto_1
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 54
    .line 55
    invoke-direct {p0, v0, p2, p1}, Lcom/android/billingclient/api/b;->Q(ILcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 56
    .line 57
    .line 58
    :goto_2
    return-object v1
.end method

.method static bridge synthetic y(Lcom/android/billingclient/api/b;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/billingclient/api/b;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method private final y0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object p1

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method static bridge synthetic z(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/billingclient/api/b;->N(Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static z0()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "com.android.billingclient.ktx.BuildConfig"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-string v2, "VERSION_NAME"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v1

    .line 21
    :catch_0
    return-object v0
.end method


# virtual methods
.method final R0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Lcom/android/billingclient/api/o;
    .locals 23
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    new-instance v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zzb()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v9

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/android/billingclient/api/QueryProductDetailsParams;->zza()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 18
    .line 19
    .line 20
    move-result-object v10

    .line 21
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v11

    .line 25
    const/4 v3, 0x0

    .line 26
    :goto_0
    if-ge v3, v11, :cond_e

    .line 27
    .line 28
    add-int/lit8 v13, v3, 0x14

    .line 29
    .line 30
    if-le v13, v11, :cond_0

    .line 31
    .line 32
    move v4, v11

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move v4, v13

    .line 35
    :goto_1
    new-instance v8, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-interface {v10, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    .line 43
    .line 44
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    const/4 v5, 0x0

    .line 54
    :goto_2
    if-ge v5, v4, :cond_1

    .line 55
    .line 56
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v6

    .line 60
    check-cast v6, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 61
    .line 62
    invoke-virtual {v6}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    new-instance v7, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "ITEM_ID_LIST"

    .line 78
    .line 79
    invoke-virtual {v7, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 80
    .line 81
    .line 82
    iget-object v14, v1, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "playBillingLibraryVersion"

    .line 85
    .line 86
    invoke-virtual {v7, v3, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    :try_start_0
    iget-object v3, v1, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :try_start_1
    iget-object v4, v1, Lcom/android/billingclient/api/b;->i:Lcom/google/android/gms/internal/play_billing/zzam;

    .line 93
    .line 94
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 95
    const/4 v6, 0x0

    .line 96
    if-nez v4, :cond_2

    .line 97
    .line 98
    :try_start_2
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 99
    .line 100
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbc:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 101
    .line 102
    const-string v3, "Service has been reset to null."

    .line 103
    .line 104
    invoke-direct {v1, v0, v2, v3, v6}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    return-object v0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    goto/16 :goto_a

    .line 111
    .line 112
    :catch_1
    move-exception v0

    .line 113
    goto/16 :goto_b

    .line 114
    .line 115
    :cond_2
    iget-boolean v3, v1, Lcom/android/billingclient/api/b;->w:Z

    .line 116
    .line 117
    const/4 v5, 0x1

    .line 118
    if-eqz v3, :cond_3

    .line 119
    .line 120
    iget-object v3, v1, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_3

    .line 127
    .line 128
    move v15, v5

    .line 129
    goto :goto_3

    .line 130
    :cond_3
    const/4 v15, 0x0

    .line 131
    :goto_3
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/b;->y0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/b;->y0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/b;->y0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    invoke-direct/range {p0 .. p1}, Lcom/android/billingclient/api/b;->y0(Lcom/android/billingclient/api/QueryProductDetailsParams;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    const/16 v19, 0x0

    .line 144
    .line 145
    const/16 v20, 0x1

    .line 146
    .line 147
    const/16 v16, 0x1

    .line 148
    .line 149
    const/16 v17, 0x0

    .line 150
    .line 151
    const/16 v18, 0x1

    .line 152
    .line 153
    invoke-static/range {v15 .. v20}, Lcom/google/android/gms/internal/play_billing/zza;->zza(ZZZZZZ)Lcom/google/android/gms/internal/play_billing/zza;

    .line 154
    .line 155
    .line 156
    move-result-object v19

    .line 157
    iget-boolean v3, v1, Lcom/android/billingclient/api/b;->x:Z

    .line 158
    .line 159
    if-eq v5, v3, :cond_4

    .line 160
    .line 161
    const/16 v3, 0x11

    .line 162
    .line 163
    :goto_4
    move v5, v3

    .line 164
    goto :goto_5

    .line 165
    :cond_4
    const/16 v3, 0x14

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :goto_5
    iget-object v3, v1, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 169
    .line 170
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v22

    .line 174
    iget-object v15, v1, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v3, v1, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 177
    .line 178
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 179
    .line 180
    .line 181
    move-result-wide v20

    .line 182
    const/16 v17, 0x0

    .line 183
    .line 184
    const/16 v18, 0x0

    .line 185
    .line 186
    move-object/from16 v16, v8

    .line 187
    .line 188
    invoke-static/range {v14 .. v21}, Lcom/google/android/gms/internal/play_billing/zzc;->zzf(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/play_billing/zza;J)Landroid/os/Bundle;

    .line 189
    .line 190
    .line 191
    move-result-object v14

    .line 192
    move-object v3, v4

    .line 193
    move v4, v5

    .line 194
    move-object/from16 v5, v22

    .line 195
    .line 196
    move-object v15, v6

    .line 197
    move-object v6, v9

    .line 198
    move-object/from16 v16, v8

    .line 199
    .line 200
    move-object v8, v14

    .line 201
    invoke-interface/range {v3 .. v8}, Lcom/google/android/gms/internal/play_billing/zzam;->zzj(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 202
    .line 203
    .line 204
    move-result-object v3
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 205
    if-nez v3, :cond_5

    .line 206
    .line 207
    sget-object v0, Lcom/android/billingclient/api/u;->B:Lcom/android/billingclient/api/BillingResult;

    .line 208
    .line 209
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzR:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 210
    .line 211
    const-string v3, "queryProductDetailsAsync got empty product details response."

    .line 212
    .line 213
    invoke-direct {v1, v0, v2, v3, v15}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    return-object v0

    .line 218
    :cond_5
    const-string v4, "DETAILS_LIST"

    .line 219
    .line 220
    invoke-virtual {v3, v4}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 221
    .line 222
    .line 223
    move-result v4

    .line 224
    const/4 v5, 0x6

    .line 225
    if-nez v4, :cond_7

    .line 226
    .line 227
    const-string v0, "BillingClient"

    .line 228
    .line 229
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    const-string v2, "BillingClient"

    .line 234
    .line 235
    invoke-static {v3, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    if-eqz v0, :cond_6

    .line 240
    .line 241
    invoke-static {v0, v2}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 242
    .line 243
    .line 244
    move-result-object v2

    .line 245
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 246
    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    .line 248
    .line 249
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v5, "getSkuDetails() failed for queryProductDetailsAsync. Response code: "

    .line 253
    .line 254
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    .line 256
    .line 257
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-direct {v1, v2, v3, v0, v15}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 265
    .line 266
    .line 267
    move-result-object v0

    .line 268
    return-object v0

    .line 269
    :cond_6
    invoke-static {v5, v2}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzS:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 274
    .line 275
    const-string v3, "getSkuDetails() returned a bundle with neither an error nor a product detail list for queryProductDetailsAsync."

    .line 276
    .line 277
    invoke-direct {v1, v0, v2, v3, v15}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    return-object v0

    .line 282
    :cond_7
    const-string v4, "DETAILS_LIST"

    .line 283
    .line 284
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    if-nez v4, :cond_8

    .line 289
    .line 290
    sget-object v0, Lcom/android/billingclient/api/u;->B:Lcom/android/billingclient/api/BillingResult;

    .line 291
    .line 292
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzT:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 293
    .line 294
    const-string v3, "queryProductDetailsAsync got null response list"

    .line 295
    .line 296
    invoke-direct {v1, v0, v2, v3, v15}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    return-object v0

    .line 301
    :cond_8
    new-instance v6, Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .line 305
    .line 306
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 307
    .line 308
    .line 309
    move-result v7

    .line 310
    const/4 v8, 0x0

    .line 311
    :goto_6
    if-ge v8, v7, :cond_9

    .line 312
    .line 313
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v14

    .line 317
    check-cast v14, Ljava/lang/String;

    .line 318
    .line 319
    :try_start_3
    new-instance v15, Lcom/android/billingclient/api/ProductDetails;

    .line 320
    .line 321
    invoke-direct {v15, v14}, Lcom/android/billingclient/api/ProductDetails;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    .line 322
    .line 323
    .line 324
    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v14

    .line 328
    const-string v12, "Got product details: "

    .line 329
    .line 330
    invoke-virtual {v12, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v12

    .line 334
    const-string v14, "BillingClient"

    .line 335
    .line 336
    invoke-static {v14, v12}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    add-int/lit8 v8, v8, 0x1

    .line 343
    .line 344
    goto :goto_6

    .line 345
    :catch_2
    move-exception v0

    .line 346
    const-string v2, "Error trying to decode SkuDetails."

    .line 347
    .line 348
    invoke-static {v5, v2}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 349
    .line 350
    .line 351
    move-result-object v2

    .line 352
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzU:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 353
    .line 354
    const-string v4, "Got a JSON exception trying to decode ProductDetails. \n Exception: "

    .line 355
    .line 356
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 357
    .line 358
    .line 359
    move-result-object v0

    .line 360
    return-object v0

    .line 361
    :cond_9
    const-string v4, "UNFETCHED_PRODUCT_LIST"

    .line 362
    .line 363
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 364
    .line 365
    .line 366
    move-result-object v3

    .line 367
    new-instance v4, Ljava/util/ArrayList;

    .line 368
    .line 369
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 370
    .line 371
    .line 372
    :try_start_4
    new-instance v4, Ljava/util/ArrayList;

    .line 373
    .line 374
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .line 376
    .line 377
    if-eqz v3, :cond_a

    .line 378
    .line 379
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 380
    .line 381
    .line 382
    move-result-object v3

    .line 383
    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 384
    .line 385
    .line 386
    move-result v7

    .line 387
    if-eqz v7, :cond_d

    .line 388
    .line 389
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 390
    .line 391
    .line 392
    move-result-object v7

    .line 393
    check-cast v7, Ljava/lang/String;

    .line 394
    .line 395
    new-instance v8, Lcom/android/billingclient/api/UnfetchedProduct;

    .line 396
    .line 397
    invoke-direct {v8, v7}, Lcom/android/billingclient/api/UnfetchedProduct;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const-string v7, "BillingClient"

    .line 401
    .line 402
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v12

    .line 406
    const-string v14, "Got unfetchedProduct: "

    .line 407
    .line 408
    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 409
    .line 410
    .line 411
    move-result-object v12

    .line 412
    invoke-static {v7, v12}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 416
    .line 417
    .line 418
    goto :goto_7

    .line 419
    :catch_3
    move-exception v0

    .line 420
    goto/16 :goto_9

    .line 421
    .line 422
    :cond_a
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 427
    .line 428
    .line 429
    move-result v7

    .line 430
    if-eqz v7, :cond_d

    .line 431
    .line 432
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 433
    .line 434
    .line 435
    move-result-object v7

    .line 436
    check-cast v7, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;

    .line 437
    .line 438
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    :cond_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 443
    .line 444
    .line 445
    move-result v12

    .line 446
    if-eqz v12, :cond_c

    .line 447
    .line 448
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    check-cast v12, Lcom/android/billingclient/api/ProductDetails;

    .line 453
    .line 454
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object v14

    .line 458
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    .line 459
    .line 460
    .line 461
    move-result-object v15

    .line 462
    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 463
    .line 464
    .line 465
    move-result v14

    .line 466
    if-eqz v14, :cond_b

    .line 467
    .line 468
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    .line 469
    .line 470
    .line 471
    move-result-object v14

    .line 472
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    .line 473
    .line 474
    .line 475
    move-result-object v12

    .line 476
    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 477
    .line 478
    .line 479
    move-result v12

    .line 480
    if-eqz v12, :cond_b

    .line 481
    .line 482
    goto :goto_8

    .line 483
    :cond_c
    new-instance v8, Lorg/json/JSONObject;

    .line 484
    .line 485
    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 486
    .line 487
    .line 488
    const-string v12, "productId"

    .line 489
    .line 490
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zza()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v14

    .line 494
    invoke-virtual {v8, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    .line 496
    .line 497
    move-result-object v8

    .line 498
    const-string/jumbo v12, "type"

    .line 499
    .line 500
    .line 501
    invoke-virtual {v7}, Lcom/android/billingclient/api/QueryProductDetailsParams$Product;->zzb()Ljava/lang/String;

    .line 502
    .line 503
    .line 504
    move-result-object v7

    .line 505
    invoke-virtual {v8, v12, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 506
    .line 507
    .line 508
    move-result-object v7

    .line 509
    const-string v8, "statusCode"

    .line 510
    .line 511
    const/4 v12, 0x0

    .line 512
    invoke-virtual {v7, v8, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 513
    .line 514
    .line 515
    move-result-object v7

    .line 516
    new-instance v8, Lcom/android/billingclient/api/UnfetchedProduct;

    .line 517
    .line 518
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v7

    .line 522
    invoke-direct {v8, v7}, Lcom/android/billingclient/api/UnfetchedProduct;-><init>(Ljava/lang/String;)V

    .line 523
    .line 524
    .line 525
    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 526
    .line 527
    .line 528
    goto :goto_8

    .line 529
    :cond_d
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 530
    .line 531
    .line 532
    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 533
    .line 534
    .line 535
    move v3, v13

    .line 536
    goto/16 :goto_0

    .line 537
    .line 538
    :goto_9
    const-string v2, "Error trying to decode SkuDetails."

    .line 539
    .line 540
    invoke-static {v5, v2}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 541
    .line 542
    .line 543
    move-result-object v2

    .line 544
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzU:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 545
    .line 546
    const-string v4, "Got a JSON exception trying to decode UnfetchedProduct. \n Exception: "

    .line 547
    .line 548
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    return-object v0

    .line 553
    :catchall_0
    move-exception v0

    .line 554
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 555
    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 556
    :goto_a
    sget-object v2, Lcom/android/billingclient/api/u;->h:Lcom/android/billingclient/api/BillingResult;

    .line 557
    .line 558
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzQ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 559
    .line 560
    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 561
    .line 562
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 563
    .line 564
    .line 565
    move-result-object v0

    .line 566
    return-object v0

    .line 567
    :goto_b
    sget-object v2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 568
    .line 569
    sget-object v3, Lcom/google/android/gms/internal/play_billing/zzie;->zzQ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 570
    .line 571
    const-string v4, "queryProductDetailsAsync got a remote exception (try to reconnect)."

    .line 572
    .line 573
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/billingclient/api/b;->r0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/String;Ljava/lang/Exception;)Lcom/android/billingclient/api/o;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    return-object v0

    .line 578
    :cond_e
    const-string v3, ""

    .line 579
    .line 580
    new-instance v4, Lcom/android/billingclient/api/o;

    .line 581
    .line 582
    const/4 v5, 0x0

    .line 583
    invoke-direct {v4, v5, v3, v0, v2}, Lcom/android/billingclient/api/o;-><init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 584
    .line 585
    .line 586
    return-object v4
.end method

.method final U0()Lcom/android/billingclient/api/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->h:Lcom/android/billingclient/api/t;

    .line 2
    .line 3
    return-object v0
.end method

.method final X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 9
    .line 10
    new-instance v1, Lcom/android/billingclient/api/zzac;

    .line 11
    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/billingclient/api/zzac;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingResult;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzaa;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzaa;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;Lcom/android/billingclient/api/AcknowledgePurchaseParams;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzab;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzab;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/4 v1, 0x3

    .line 34
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p2, p1}, Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;->onAcknowledgePurchaseResponse(Lcom/android/billingclient/api/BillingResult;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method public consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzak;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzak;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzam;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2, p1}, Lcom/android/billingclient/api/zzam;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ConsumeResponseListener;Lcom/android/billingclient/api/ConsumeParams;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/4 v2, 0x4

    .line 34
    invoke-direct {p0, v1, v2, v0}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/android/billingclient/api/ConsumeParams;->getPurchaseToken()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-interface {p2, v0, p1}, Lcom/android/billingclient/api/ConsumeResponseListener;->onConsumeResponse(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method public createAlternativeBillingOnlyReportingDetailsAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V
    .locals 6
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzaf;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzaf;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzag;

    .line 7
    .line 8
    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzag;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->K(Lcom/android/billingclient/api/AlternativeBillingOnlyReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public createExternalOfferReportingDetailsAsync(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V
    .locals 7
    .annotation build Lcom/android/billingclient/api/zzh;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzaq;

    .line 2
    .line 3
    const/4 v6, 0x0

    .line 4
    invoke-direct {v0, p0, p1, v6}, Lcom/android/billingclient/api/zzaq;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    new-instance v3, Lcom/android/billingclient/api/zzar;

    .line 8
    .line 9
    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzar;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    const-wide/16 v1, 0x7530

    .line 21
    .line 22
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 33
    .line 34
    invoke-direct {p0, p1, v0, v1, v6}, Lcom/android/billingclient/api/b;->L(Lcom/android/billingclient/api/ExternalOfferReportingDetailsListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public endConnection()V
    .locals 6

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/billingclient/api/b;->M0(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/android/billingclient/api/a0;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    :try_start_1
    const-string v2, "BillingClient"

    .line 21
    .line 22
    const-string v3, "There was an exception while shutting down broadcast manager while ending connection!"

    .line 23
    .line 24
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    :try_start_2
    const-string v1, "BillingClient"

    .line 28
    .line 29
    const-string v2, "Unbinding from service."

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzm(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->Y()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :catchall_1
    move-exception v1

    .line 39
    :try_start_3
    const-string v2, "BillingClient"

    .line 40
    .line 41
    const-string v3, "There was an exception while unbinding from the service while ending connection!"

    .line 42
    .line 43
    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    .line 45
    .line 46
    :goto_1
    const/4 v1, 0x0

    .line 47
    const/4 v2, 0x3

    .line 48
    :try_start_4
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->W()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 49
    .line 50
    .line 51
    :try_start_5
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/b;->V(I)V

    .line 52
    .line 53
    .line 54
    :goto_2
    iput-object v1, p0, Lcom/android/billingclient/api/b;->G:Lcom/android/billingclient/api/BillingClientStateListener;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :catchall_2
    move-exception v1

    .line 58
    goto :goto_4

    .line 59
    :catchall_3
    move-exception v3

    .line 60
    :try_start_6
    const-string v4, "BillingClient"

    .line 61
    .line 62
    const-string v5, "There was an exception while shutting down the executor service while ending connection!"

    .line 63
    .line 64
    invoke-static {v4, v5, v3}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 65
    .line 66
    .line 67
    :try_start_7
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/b;->V(I)V

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_3
    monitor-exit v0

    .line 72
    return-void

    .line 73
    :catchall_4
    move-exception v3

    .line 74
    invoke-direct {p0, v2}, Lcom/android/billingclient/api/b;->V(I)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/android/billingclient/api/b;->G:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 78
    .line 79
    throw v3

    .line 80
    :goto_4
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 81
    throw v1
.end method

.method public getBillingConfigAsync(Lcom/android/billingclient/api/GetBillingConfigParams;Lcom/android/billingclient/api/BillingConfigResponseListener;)V
    .locals 6
    .annotation build Lcom/android/billingclient/api/zzi;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzad;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/android/billingclient/api/zzad;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzae;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzae;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/BillingConfigResponseListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/16 v1, 0xd

    .line 34
    .line 35
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 36
    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/BillingConfigResponseListener;->onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public final getConnectionState()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/android/billingclient/api/b;->b:I

    .line 5
    .line 6
    monitor-exit v0

    .line 7
    return v1

    .line 8
    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    throw v1
.end method

.method final declared-synchronized h()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->H:Ljava/util/concurrent/ExecutorService;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    sget v0, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 7
    .line 8
    new-instance v1, Lcom/android/billingclient/api/c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lcom/android/billingclient/api/c;-><init>(Lcom/android/billingclient/api/b;)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/billingclient/api/b;->H:Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->H:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    .line 24
    monitor-exit p0

    .line 25
    return-object v0

    .line 26
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public isAlternativeBillingOnlyAvailableAsync(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V
    .locals 6
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzah;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzah;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzai;

    .line 7
    .line 8
    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzai;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->I(Lcom/android/billingclient/api/AlternativeBillingOnlyAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public isExternalOfferAvailableAsync(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V
    .locals 6
    .annotation build Lcom/android/billingclient/api/zzh;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzau;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/android/billingclient/api/zzau;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzv;

    .line 7
    .line 8
    invoke-direct {v3, p0, p1}, Lcom/android/billingclient/api/zzv;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sget-object v1, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/billingclient/api/b;->M(Lcom/android/billingclient/api/ExternalOfferAvailabilityListener;Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-void
.end method

.method public final isFeatureSupported(Ljava/lang/String;)Lcom/android/billingclient/api/BillingResult;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-wide/16 v2, 0xbb8

    .line 6
    .line 7
    invoke-direct {v0, v2, v3}, Lcom/android/billingclient/api/b;->Z(J)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x5

    .line 12
    if-nez v2, :cond_1

    .line 13
    .line 14
    sget-object v1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 15
    .line 16
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    invoke-direct {v0, v2, v3, v1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-direct {v0, v3}, Lcom/android/billingclient/api/b;->M0(I)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object v1

    .line 32
    :cond_1
    sget-object v2, Lcom/android/billingclient/api/u;->a:Lcom/android/billingclient/api/BillingResult;

    .line 33
    .line 34
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    const/4 v4, 0x1

    .line 39
    const/4 v5, 0x4

    .line 40
    const/4 v7, 0x6

    .line 41
    const/4 v8, 0x7

    .line 42
    const/16 v9, 0x8

    .line 43
    .line 44
    const/16 v10, 0x9

    .line 45
    .line 46
    const/16 v11, 0xa

    .line 47
    .line 48
    const/16 v12, 0xb

    .line 49
    .line 50
    const/16 v13, 0xc

    .line 51
    .line 52
    const/16 v14, 0xd

    .line 53
    .line 54
    const/16 v15, 0xe

    .line 55
    .line 56
    const/4 v6, 0x2

    .line 57
    sparse-switch v2, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    goto/16 :goto_1

    .line 61
    .line 62
    :sswitch_0
    const-string v2, "subscriptions"

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    .line 70
    const/4 v2, 0x0

    .line 71
    goto/16 :goto_2

    .line 72
    .line 73
    :sswitch_1
    const-string v2, "priceChangeConfirmation"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v2

    .line 79
    if-eqz v2, :cond_2

    .line 80
    .line 81
    move v2, v6

    .line 82
    goto/16 :goto_2

    .line 83
    .line 84
    :sswitch_2
    const-string v2, "nnn"

    .line 85
    .line 86
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_2

    .line 91
    .line 92
    const/16 v2, 0x10

    .line 93
    .line 94
    goto/16 :goto_2

    .line 95
    .line 96
    :sswitch_3
    const-string v2, "mmm"

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v2

    .line 102
    if-eqz v2, :cond_2

    .line 103
    .line 104
    const/16 v2, 0xf

    .line 105
    .line 106
    goto/16 :goto_2

    .line 107
    .line 108
    :sswitch_4
    const-string v2, "lll"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v2

    .line 114
    if-eqz v2, :cond_2

    .line 115
    .line 116
    move v2, v15

    .line 117
    goto/16 :goto_2

    .line 118
    .line 119
    :sswitch_5
    const-string v2, "kkk"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_2

    .line 126
    .line 127
    move v2, v14

    .line 128
    goto/16 :goto_2

    .line 129
    .line 130
    :sswitch_6
    const-string v2, "jjj"

    .line 131
    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-eqz v2, :cond_2

    .line 137
    .line 138
    move v2, v13

    .line 139
    goto/16 :goto_2

    .line 140
    .line 141
    :sswitch_7
    const-string v2, "iii"

    .line 142
    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_2

    .line 148
    .line 149
    move v2, v12

    .line 150
    goto/16 :goto_2

    .line 151
    .line 152
    :sswitch_8
    const-string v2, "hhh"

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    if-eqz v2, :cond_2

    .line 159
    .line 160
    move v2, v11

    .line 161
    goto :goto_2

    .line 162
    :sswitch_9
    const-string v2, "ggg"

    .line 163
    .line 164
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v2

    .line 168
    if-eqz v2, :cond_2

    .line 169
    .line 170
    move v2, v10

    .line 171
    goto :goto_2

    .line 172
    :sswitch_a
    const-string v2, "fff"

    .line 173
    .line 174
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v2

    .line 178
    if-eqz v2, :cond_2

    .line 179
    .line 180
    move v2, v9

    .line 181
    goto :goto_2

    .line 182
    :sswitch_b
    const-string v2, "eee"

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result v2

    .line 188
    if-eqz v2, :cond_2

    .line 189
    .line 190
    move v2, v8

    .line 191
    goto :goto_2

    .line 192
    :sswitch_c
    const-string v2, "ddd"

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-eqz v2, :cond_2

    .line 199
    .line 200
    move v2, v3

    .line 201
    goto :goto_2

    .line 202
    :sswitch_d
    const-string v2, "ccc"

    .line 203
    .line 204
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    if-eqz v2, :cond_2

    .line 209
    .line 210
    move v2, v7

    .line 211
    goto :goto_2

    .line 212
    :sswitch_e
    const-string v2, "bbb"

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    move-result v2

    .line 218
    if-eqz v2, :cond_2

    .line 219
    .line 220
    const/4 v2, 0x3

    .line 221
    goto :goto_2

    .line 222
    :sswitch_f
    const-string v2, "aaa"

    .line 223
    .line 224
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v2

    .line 228
    if-eqz v2, :cond_2

    .line 229
    .line 230
    move v2, v5

    .line 231
    goto :goto_2

    .line 232
    :sswitch_10
    const-string v2, "subscriptionsUpdate"

    .line 233
    .line 234
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-eqz v2, :cond_2

    .line 239
    .line 240
    move v2, v4

    .line 241
    goto :goto_2

    .line 242
    :cond_2
    :goto_1
    const/4 v2, -0x1

    .line 243
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 244
    .line 245
    .line 246
    const-string v2, "BillingClient"

    .line 247
    .line 248
    const-string v3, "Unsupported feature: "

    .line 249
    .line 250
    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .line 256
    .line 257
    sget-object v1, Lcom/android/billingclient/api/u;->x:Lcom/android/billingclient/api/BillingResult;

    .line 258
    .line 259
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzH:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 260
    .line 261
    invoke-direct {v0, v1, v2, v4}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 262
    .line 263
    .line 264
    return-object v1

    .line 265
    :pswitch_0
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->C:Z

    .line 266
    .line 267
    if-eqz v1, :cond_3

    .line 268
    .line 269
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 270
    .line 271
    goto :goto_3

    .line 272
    :cond_3
    sget-object v1, Lcom/android/billingclient/api/u;->w:Lcom/android/billingclient/api/BillingResult;

    .line 273
    .line 274
    :goto_3
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbH:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 275
    .line 276
    const/16 v3, 0x15

    .line 277
    .line 278
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 279
    .line 280
    .line 281
    return-object v1

    .line 282
    :pswitch_1
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->B:Z

    .line 283
    .line 284
    if-eqz v1, :cond_4

    .line 285
    .line 286
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_4
    sget-object v1, Lcom/android/billingclient/api/u;->v:Lcom/android/billingclient/api/BillingResult;

    .line 290
    .line 291
    :goto_4
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbo:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 292
    .line 293
    const/16 v3, 0x14

    .line 294
    .line 295
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 296
    .line 297
    .line 298
    return-object v1

    .line 299
    :pswitch_2
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->A:Z

    .line 300
    .line 301
    if-eqz v1, :cond_5

    .line 302
    .line 303
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_5
    sget-object v1, Lcom/android/billingclient/api/u;->u:Lcom/android/billingclient/api/BillingResult;

    .line 307
    .line 308
    :goto_5
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzaZ:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 309
    .line 310
    const/16 v3, 0x13

    .line 311
    .line 312
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 313
    .line 314
    .line 315
    return-object v1

    .line 316
    :pswitch_3
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->B:Z

    .line 317
    .line 318
    if-eqz v1, :cond_6

    .line 319
    .line 320
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 321
    .line 322
    goto :goto_6

    .line 323
    :cond_6
    sget-object v1, Lcom/android/billingclient/api/u;->A:Lcom/android/billingclient/api/BillingResult;

    .line 324
    .line 325
    :goto_6
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbq:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 326
    .line 327
    const/16 v3, 0x12

    .line 328
    .line 329
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 330
    .line 331
    .line 332
    return-object v1

    .line 333
    :pswitch_4
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->y:Z

    .line 334
    .line 335
    if-eqz v1, :cond_7

    .line 336
    .line 337
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 338
    .line 339
    goto :goto_7

    .line 340
    :cond_7
    sget-object v1, Lcom/android/billingclient/api/u;->D:Lcom/android/billingclient/api/BillingResult;

    .line 341
    .line 342
    :goto_7
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzan:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 343
    .line 344
    invoke-direct {v0, v1, v2, v15}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 345
    .line 346
    .line 347
    return-object v1

    .line 348
    :pswitch_5
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->x:Z

    .line 349
    .line 350
    if-eqz v1, :cond_8

    .line 351
    .line 352
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_8
    sget-object v1, Lcom/android/billingclient/api/u;->C:Lcom/android/billingclient/api/BillingResult;

    .line 356
    .line 357
    :goto_8
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzah:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 358
    .line 359
    invoke-direct {v0, v1, v2, v14}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 360
    .line 361
    .line 362
    return-object v1

    .line 363
    :pswitch_6
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->v:Z

    .line 364
    .line 365
    if-eqz v1, :cond_9

    .line 366
    .line 367
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 368
    .line 369
    goto :goto_9

    .line 370
    :cond_9
    sget-object v1, Lcom/android/billingclient/api/u;->z:Lcom/android/billingclient/api/BillingResult;

    .line 371
    .line 372
    :goto_9
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzG:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 373
    .line 374
    invoke-direct {v0, v1, v2, v13}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 375
    .line 376
    .line 377
    return-object v1

    .line 378
    :pswitch_7
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->v:Z

    .line 379
    .line 380
    if-eqz v1, :cond_a

    .line 381
    .line 382
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 383
    .line 384
    goto :goto_a

    .line 385
    :cond_a
    sget-object v1, Lcom/android/billingclient/api/u;->y:Lcom/android/billingclient/api/BillingResult;

    .line 386
    .line 387
    :goto_a
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzF:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 388
    .line 389
    invoke-direct {v0, v1, v2, v12}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 390
    .line 391
    .line 392
    return-object v1

    .line 393
    :pswitch_8
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->u:Z

    .line 394
    .line 395
    if-eqz v1, :cond_b

    .line 396
    .line 397
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 398
    .line 399
    goto :goto_b

    .line 400
    :cond_b
    sget-object v1, Lcom/android/billingclient/api/u;->r:Lcom/android/billingclient/api/BillingResult;

    .line 401
    .line 402
    :goto_b
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzt:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 403
    .line 404
    invoke-direct {v0, v1, v2, v11}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 405
    .line 406
    .line 407
    return-object v1

    .line 408
    :pswitch_9
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->t:Z

    .line 409
    .line 410
    if-eqz v1, :cond_c

    .line 411
    .line 412
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 413
    .line 414
    goto :goto_c

    .line 415
    :cond_c
    sget-object v1, Lcom/android/billingclient/api/u;->p:Lcom/android/billingclient/api/BillingResult;

    .line 416
    .line 417
    :goto_c
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzai:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 418
    .line 419
    invoke-direct {v0, v1, v2, v10}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 420
    .line 421
    .line 422
    return-object v1

    .line 423
    :pswitch_a
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->t:Z

    .line 424
    .line 425
    if-eqz v1, :cond_d

    .line 426
    .line 427
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 428
    .line 429
    goto :goto_d

    .line 430
    :cond_d
    sget-object v1, Lcom/android/billingclient/api/u;->p:Lcom/android/billingclient/api/BillingResult;

    .line 431
    .line 432
    :goto_d
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzs:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 433
    .line 434
    invoke-direct {v0, v1, v2, v9}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 435
    .line 436
    .line 437
    return-object v1

    .line 438
    :pswitch_b
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->r:Z

    .line 439
    .line 440
    if-eqz v1, :cond_e

    .line 441
    .line 442
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 443
    .line 444
    goto :goto_e

    .line 445
    :cond_e
    sget-object v1, Lcom/android/billingclient/api/u;->q:Lcom/android/billingclient/api/BillingResult;

    .line 446
    .line 447
    :goto_e
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzu:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 448
    .line 449
    invoke-direct {v0, v1, v2, v8}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 450
    .line 451
    .line 452
    return-object v1

    .line 453
    :pswitch_c
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->s:Z

    .line 454
    .line 455
    if-eqz v1, :cond_f

    .line 456
    .line 457
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 458
    .line 459
    goto :goto_f

    .line 460
    :cond_f
    sget-object v1, Lcom/android/billingclient/api/u;->o:Lcom/android/billingclient/api/BillingResult;

    .line 461
    .line 462
    :goto_f
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzE:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 463
    .line 464
    invoke-direct {v0, v1, v2, v7}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 465
    .line 466
    .line 467
    return-object v1

    .line 468
    :pswitch_d
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->q:Z

    .line 469
    .line 470
    if-eqz v1, :cond_10

    .line 471
    .line 472
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 473
    .line 474
    goto :goto_10

    .line 475
    :cond_10
    sget-object v1, Lcom/android/billingclient/api/u;->s:Lcom/android/billingclient/api/BillingResult;

    .line 476
    .line 477
    :goto_10
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzD:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 478
    .line 479
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 480
    .line 481
    .line 482
    return-object v1

    .line 483
    :pswitch_e
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->o:Z

    .line 484
    .line 485
    if-eqz v1, :cond_11

    .line 486
    .line 487
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 488
    .line 489
    goto :goto_11

    .line 490
    :cond_11
    sget-object v1, Lcom/android/billingclient/api/u;->n:Lcom/android/billingclient/api/BillingResult;

    .line 491
    .line 492
    :goto_11
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzI:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 493
    .line 494
    invoke-direct {v0, v1, v2, v5}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 495
    .line 496
    .line 497
    return-object v1

    .line 498
    :pswitch_f
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->l:Z

    .line 499
    .line 500
    if-eqz v1, :cond_12

    .line 501
    .line 502
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 503
    .line 504
    goto :goto_12

    .line 505
    :cond_12
    sget-object v1, Lcom/android/billingclient/api/u;->m:Lcom/android/billingclient/api/BillingResult;

    .line 506
    .line 507
    :goto_12
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzj:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 508
    .line 509
    const/4 v3, 0x3

    .line 510
    invoke-direct {v0, v1, v2, v3}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 511
    .line 512
    .line 513
    return-object v1

    .line 514
    :pswitch_10
    iget-boolean v1, v0, Lcom/android/billingclient/api/b;->k:Z

    .line 515
    .line 516
    if-eqz v1, :cond_13

    .line 517
    .line 518
    sget-object v1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 519
    .line 520
    goto :goto_13

    .line 521
    :cond_13
    sget-object v1, Lcom/android/billingclient/api/u;->l:Lcom/android/billingclient/api/BillingResult;

    .line 522
    .line 523
    :goto_13
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzi:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 524
    .line 525
    invoke-direct {v0, v1, v2, v6}, Lcom/android/billingclient/api/b;->G0(Lcom/android/billingclient/api/BillingResult;Lcom/google/android/gms/internal/play_billing/zzie;I)V

    .line 526
    .line 527
    .line 528
    return-object v1

    .line 529
    :sswitch_data_0
    .sparse-switch
        -0x1928a0a1 -> :sswitch_10
        0x17841 -> :sswitch_f
        0x17c22 -> :sswitch_e
        0x18003 -> :sswitch_d
        0x183e4 -> :sswitch_c
        0x187c5 -> :sswitch_b
        0x18ba6 -> :sswitch_a
        0x18f87 -> :sswitch_9
        0x19368 -> :sswitch_8
        0x19749 -> :sswitch_7
        0x19b2a -> :sswitch_6
        0x19f0b -> :sswitch_5
        0x1a2ec -> :sswitch_4
        0x1a6cd -> :sswitch_3
        0x1aaae -> :sswitch_2
        0xc5ff92e -> :sswitch_1
        0x7674caf6 -> :sswitch_0
    .end sparse-switch

    .line 530
    .line 531
    .line 532
    .line 533
    .line 534
    .line 535
    .line 536
    .line 537
    .line 538
    .line 539
    .line 540
    .line 541
    .line 542
    .line 543
    .line 544
    .line 545
    .line 546
    .line 547
    .line 548
    .line 549
    .line 550
    .line 551
    .line 552
    .line 553
    .line 554
    .line 555
    .line 556
    .line 557
    .line 558
    .line 559
    .line 560
    .line 561
    .line 562
    .line 563
    .line 564
    .line 565
    .line 566
    .line 567
    .line 568
    .line 569
    .line 570
    .line 571
    .line 572
    .line 573
    .line 574
    .line 575
    .line 576
    .line 577
    .line 578
    .line 579
    .line 580
    .line 581
    .line 582
    .line 583
    .line 584
    .line 585
    .line 586
    .line 587
    .line 588
    .line 589
    .line 590
    .line 591
    .line 592
    .line 593
    .line 594
    .line 595
    .line 596
    .line 597
    .line 598
    .line 599
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isReady()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->E:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->b0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final j0(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public launchBillingFlow(Landroid/app/Activity;Lcom/android/billingclient/api/BillingFlowParams;)Lcom/android/billingclient/api/BillingResult;
    .locals 28

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    new-instance v2, Ljava/util/Random;

    .line 7
    .line 8
    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    .line 12
    .line 13
    .line 14
    move-result-wide v10

    .line 15
    iget-object v2, v9, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 16
    .line 17
    if-eqz v2, :cond_41

    .line 18
    .line 19
    iget-object v2, v9, Lcom/android/billingclient/api/b;->f:Lcom/android/billingclient/api/a0;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/android/billingclient/api/a0;->d()Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_41

    .line 26
    .line 27
    const-wide/16 v2, 0xbb8

    .line 28
    .line 29
    invoke-direct {v9, v2, v3}, Lcom/android/billingclient/api/b;->Z(J)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 36
    .line 37
    sget-object v0, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    move-object/from16 v1, p0

    .line 41
    .line 42
    move-object v4, v0

    .line 43
    move-wide v5, v10

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->I0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;J)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 48
    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_0
    iget-object v2, v9, Lcom/android/billingclient/api/b;->a:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v2

    .line 54
    :try_start_0
    iget-object v3, v9, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 55
    .line 56
    if-eqz v3, :cond_1

    .line 57
    .line 58
    iget-object v3, v9, Lcom/android/billingclient/api/b;->j:Lcom/android/billingclient/api/f;

    .line 59
    .line 60
    invoke-virtual {v3}, Lcom/android/billingclient/api/f;->d()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    move v12, v3

    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception v0

    .line 67
    goto/16 :goto_1e

    .line 68
    .line 69
    :cond_1
    const/4 v12, 0x0

    .line 70
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzj()Ljava/util/ArrayList;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzk()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    const/4 v8, 0x0

    .line 80
    invoke-static {v2, v8}, Lcom/google/android/gms/internal/play_billing/zzby;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    check-cast v5, Lcom/android/billingclient/api/SkuDetails;

    .line 85
    .line 86
    invoke-static {v3, v8}, Lcom/google/android/gms/internal/play_billing/zzby;->zza(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    check-cast v6, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 91
    .line 92
    if-eqz v5, :cond_2

    .line 93
    .line 94
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {v5}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v13

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    invoke-virtual {v7}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v7

    .line 111
    invoke-virtual {v6}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 112
    .line 113
    .line 114
    move-result-object v13

    .line 115
    invoke-virtual {v13}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    :goto_1
    const-string v14, "subs"

    .line 120
    .line 121
    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v14

    .line 125
    if-eqz v14, :cond_4

    .line 126
    .line 127
    iget-boolean v14, v9, Lcom/android/billingclient/api/b;->k:Z

    .line 128
    .line 129
    if-eqz v14, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    const-string v0, "BillingClient"

    .line 133
    .line 134
    const-string v1, "Current client doesn\'t support subscriptions."

    .line 135
    .line 136
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzi:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 140
    .line 141
    sget-object v0, Lcom/android/billingclient/api/u;->l:Lcom/android/billingclient/api/BillingResult;

    .line 142
    .line 143
    const/4 v3, 0x2

    .line 144
    move-object/from16 v1, p0

    .line 145
    .line 146
    move-object v4, v0

    .line 147
    move-wide v5, v10

    .line 148
    move v7, v12

    .line 149
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 153
    .line 154
    .line 155
    return-object v0

    .line 156
    :cond_4
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->i()Z

    .line 157
    .line 158
    .line 159
    move-result v14

    .line 160
    if-eqz v14, :cond_6

    .line 161
    .line 162
    iget-boolean v14, v9, Lcom/android/billingclient/api/b;->n:Z

    .line 163
    .line 164
    if-eqz v14, :cond_5

    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    const-string v0, "BillingClient"

    .line 168
    .line 169
    const-string v1, "Current client doesn\'t support extra params for buy intent."

    .line 170
    .line 171
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzr:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 175
    .line 176
    sget-object v0, Lcom/android/billingclient/api/u;->f:Lcom/android/billingclient/api/BillingResult;

    .line 177
    .line 178
    const/4 v3, 0x2

    .line 179
    move-object/from16 v1, p0

    .line 180
    .line 181
    move-object v4, v0

    .line 182
    move-wide v5, v10

    .line 183
    move v7, v12

    .line 184
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 188
    .line 189
    .line 190
    return-object v0

    .line 191
    :cond_6
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 192
    .line 193
    .line 194
    move-result v14

    .line 195
    if-le v14, v1, :cond_8

    .line 196
    .line 197
    iget-boolean v14, v9, Lcom/android/billingclient/api/b;->t:Z

    .line 198
    .line 199
    if-eqz v14, :cond_7

    .line 200
    .line 201
    goto :goto_4

    .line 202
    :cond_7
    const-string v0, "BillingClient"

    .line 203
    .line 204
    const-string v1, "Current client doesn\'t support multi-item purchases."

    .line 205
    .line 206
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzs:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 210
    .line 211
    sget-object v0, Lcom/android/billingclient/api/u;->p:Lcom/android/billingclient/api/BillingResult;

    .line 212
    .line 213
    const/4 v3, 0x2

    .line 214
    move-object/from16 v1, p0

    .line 215
    .line 216
    move-object v4, v0

    .line 217
    move-wide v5, v10

    .line 218
    move v7, v12

    .line 219
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 223
    .line 224
    .line 225
    return-object v0

    .line 226
    :cond_8
    :goto_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 227
    .line 228
    .line 229
    move-result v14

    .line 230
    if-nez v14, :cond_a

    .line 231
    .line 232
    iget-boolean v14, v9, Lcom/android/billingclient/api/b;->u:Z

    .line 233
    .line 234
    if-eqz v14, :cond_9

    .line 235
    .line 236
    goto :goto_5

    .line 237
    :cond_9
    const-string v0, "BillingClient"

    .line 238
    .line 239
    const-string v1, "Current client doesn\'t support purchases with ProductDetails."

    .line 240
    .line 241
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzt:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 245
    .line 246
    sget-object v0, Lcom/android/billingclient/api/u;->r:Lcom/android/billingclient/api/BillingResult;

    .line 247
    .line 248
    const/4 v3, 0x2

    .line 249
    move-object/from16 v1, p0

    .line 250
    .line 251
    move-object v4, v0

    .line 252
    move-wide v5, v10

    .line 253
    move v7, v12

    .line 254
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 258
    .line 259
    .line 260
    return-object v0

    .line 261
    :cond_a
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->a()Lcom/android/billingclient/api/BillingResult;

    .line 262
    .line 263
    .line 264
    move-result-object v14

    .line 265
    sget-object v15, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 266
    .line 267
    if-eq v14, v15, :cond_b

    .line 268
    .line 269
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzbd:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 270
    .line 271
    const/4 v3, 0x2

    .line 272
    move-object/from16 v1, p0

    .line 273
    .line 274
    move-object v4, v14

    .line 275
    move-wide v5, v10

    .line 276
    move v7, v12

    .line 277
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v9, v14}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 281
    .line 282
    .line 283
    return-object v14

    .line 284
    :cond_b
    iget-boolean v14, v9, Lcom/android/billingclient/api/b;->n:Z

    .line 285
    .line 286
    if-eqz v14, :cond_39

    .line 287
    .line 288
    iget-boolean v14, v9, Lcom/android/billingclient/api/b;->p:Z

    .line 289
    .line 290
    iget-boolean v15, v9, Lcom/android/billingclient/api/b;->w:Z

    .line 291
    .line 292
    iget-object v4, v9, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 293
    .line 294
    invoke-virtual {v4}, Lcom/android/billingclient/api/PendingPurchasesParams;->a()Z

    .line 295
    .line 296
    .line 297
    move-result v4

    .line 298
    iget-object v8, v9, Lcom/android/billingclient/api/b;->D:Lcom/android/billingclient/api/PendingPurchasesParams;

    .line 299
    .line 300
    invoke-virtual {v8}, Lcom/android/billingclient/api/PendingPurchasesParams;->b()Z

    .line 301
    .line 302
    .line 303
    move-result v8

    .line 304
    iget-boolean v1, v9, Lcom/android/billingclient/api/b;->F:Z

    .line 305
    .line 306
    iget-object v0, v9, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 307
    .line 308
    move-object/from16 v17, v13

    .line 309
    .line 310
    iget-object v13, v9, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 311
    .line 312
    move-object/from16 v18, v7

    .line 313
    .line 314
    iget-object v7, v9, Lcom/android/billingclient/api/b;->I:Ljava/lang/Long;

    .line 315
    .line 316
    move-object/from16 v19, v6

    .line 317
    .line 318
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    .line 319
    .line 320
    .line 321
    move-result-wide v6

    .line 322
    move-object/from16 v20, v5

    .line 323
    .line 324
    iget-object v5, v9, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 325
    .line 326
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    sget v5, Lcom/google/android/gms/internal/play_billing/zzc;->zza:I

    .line 330
    .line 331
    new-instance v5, Landroid/os/Bundle;

    .line 332
    .line 333
    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 334
    .line 335
    .line 336
    invoke-static {v5, v0, v13, v6, v7}, Lcom/google/android/gms/internal/play_billing/zzc;->zzc(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Bundle;

    .line 337
    .line 338
    .line 339
    const-string v0, "billingClientTransactionId"

    .line 340
    .line 341
    invoke-virtual {v5, v0, v10, v11}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 342
    .line 343
    .line 344
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzb()I

    .line 345
    .line 346
    .line 347
    move-result v0

    .line 348
    if-eqz v0, :cond_c

    .line 349
    .line 350
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzb()I

    .line 351
    .line 352
    .line 353
    move-result v0

    .line 354
    const-string v6, "prorationMode"

    .line 355
    .line 356
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 357
    .line 358
    .line 359
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 364
    .line 365
    .line 366
    move-result v0

    .line 367
    if-nez v0, :cond_d

    .line 368
    .line 369
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zze()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    const-string v6, "accountId"

    .line 374
    .line 375
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    :cond_d
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 383
    .line 384
    .line 385
    move-result v0

    .line 386
    if-nez v0, :cond_e

    .line 387
    .line 388
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzf()Ljava/lang/String;

    .line 389
    .line 390
    .line 391
    move-result-object v0

    .line 392
    const-string v6, "obfuscatedProfileId"

    .line 393
    .line 394
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .line 396
    .line 397
    :cond_e
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzs()Z

    .line 398
    .line 399
    .line 400
    move-result v0

    .line 401
    if-eqz v0, :cond_f

    .line 402
    .line 403
    const-string v0, "isOfferPersonalizedByDeveloper"

    .line 404
    .line 405
    const/4 v6, 0x1

    .line 406
    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    .line 408
    .line 409
    :cond_f
    const/4 v6, 0x0

    .line 410
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-nez v0, :cond_10

    .line 415
    .line 416
    new-instance v0, Ljava/util/ArrayList;

    .line 417
    .line 418
    filled-new-array {v6}, [Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v7

    .line 422
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 427
    .line 428
    .line 429
    const-string v6, "skusToReplace"

    .line 430
    .line 431
    invoke-virtual {v5, v6, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 432
    .line 433
    .line 434
    :cond_10
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 439
    .line 440
    .line 441
    move-result v0

    .line 442
    if-nez v0, :cond_11

    .line 443
    .line 444
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzh()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v0

    .line 448
    const-string v6, "oldSkuPurchaseToken"

    .line 449
    .line 450
    invoke-virtual {v5, v6, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzg()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    const/4 v6, 0x0

    .line 457
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-nez v0, :cond_12

    .line 462
    .line 463
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzg()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    const-string v0, "oldSkuPurchaseId"

    .line 467
    .line 468
    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzi()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object v0

    .line 475
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    if-nez v0, :cond_13

    .line 480
    .line 481
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzi()Ljava/lang/String;

    .line 482
    .line 483
    .line 484
    move-result-object v0

    .line 485
    const-string v7, "originalExternalTransactionId"

    .line 486
    .line 487
    invoke-virtual {v5, v7, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    .line 489
    .line 490
    :cond_13
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 491
    .line 492
    .line 493
    move-result v0

    .line 494
    if-nez v0, :cond_14

    .line 495
    .line 496
    const-string v0, "paymentsPurchaseParams"

    .line 497
    .line 498
    invoke-virtual {v5, v0, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    :cond_14
    if-eqz v14, :cond_15

    .line 502
    .line 503
    if-eqz v4, :cond_15

    .line 504
    .line 505
    const-string v0, "enablePendingPurchases"

    .line 506
    .line 507
    const/4 v4, 0x1

    .line 508
    invoke-virtual {v5, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    .line 510
    .line 511
    goto :goto_6

    .line 512
    :cond_15
    const/4 v4, 0x1

    .line 513
    :goto_6
    if-eqz v15, :cond_16

    .line 514
    .line 515
    if-eqz v8, :cond_16

    .line 516
    .line 517
    const-string v0, "enablePendingPurchaseForSubscriptions"

    .line 518
    .line 519
    invoke-virtual {v5, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 520
    .line 521
    .line 522
    :cond_16
    if-eqz v1, :cond_17

    .line 523
    .line 524
    const-string v0, "enableAlternativeBilling"

    .line 525
    .line 526
    invoke-virtual {v5, v0, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 527
    .line 528
    .line 529
    :cond_17
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzc()J

    .line 530
    .line 531
    .line 532
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zza()I

    .line 533
    .line 534
    .line 535
    new-instance v0, Ljava/util/ArrayList;

    .line 536
    .line 537
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    .line 539
    .line 540
    invoke-virtual/range {p2 .. p2}, Lcom/android/billingclient/api/BillingFlowParams;->zzk()Ljava/util/List;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 545
    .line 546
    .line 547
    move-result-object v1

    .line 548
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 549
    .line 550
    .line 551
    move-result v4

    .line 552
    if-eqz v4, :cond_18

    .line 553
    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 555
    .line 556
    .line 557
    move-result-object v4

    .line 558
    check-cast v4, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 559
    .line 560
    goto :goto_7

    .line 561
    :cond_18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 562
    .line 563
    .line 564
    move-result v1

    .line 565
    if-nez v1, :cond_19

    .line 566
    .line 567
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzdk;->zza()Lcom/google/android/gms/internal/play_billing/zzdj;

    .line 568
    .line 569
    .line 570
    move-result-object v1

    .line 571
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzdj;->zza(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/play_billing/zzdj;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v1}, Lcom/google/android/gms/internal/play_billing/zzfe;->zze()Lcom/google/android/gms/internal/play_billing/zzfi;

    .line 575
    .line 576
    .line 577
    move-result-object v0

    .line 578
    check-cast v0, Lcom/google/android/gms/internal/play_billing/zzdk;

    .line 579
    .line 580
    invoke-virtual {v0}, Lcom/google/android/gms/internal/play_billing/zzds;->zzM()[B

    .line 581
    .line 582
    .line 583
    move-result-object v0

    .line 584
    const-string v1, "subscriptionProductReplacementParamsList"

    .line 585
    .line 586
    invoke-virtual {v5, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 587
    .line 588
    .line 589
    :cond_19
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 590
    .line 591
    .line 592
    move-result v0

    .line 593
    if-nez v0, :cond_24

    .line 594
    .line 595
    new-instance v0, Ljava/util/ArrayList;

    .line 596
    .line 597
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .line 599
    .line 600
    new-instance v1, Ljava/util/ArrayList;

    .line 601
    .line 602
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 603
    .line 604
    .line 605
    new-instance v4, Ljava/util/ArrayList;

    .line 606
    .line 607
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 608
    .line 609
    .line 610
    new-instance v6, Ljava/util/ArrayList;

    .line 611
    .line 612
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 613
    .line 614
    .line 615
    new-instance v7, Ljava/util/ArrayList;

    .line 616
    .line 617
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 618
    .line 619
    .line 620
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 621
    .line 622
    .line 623
    move-result-object v8

    .line 624
    const/4 v13, 0x0

    .line 625
    const/4 v14, 0x0

    .line 626
    const/4 v15, 0x0

    .line 627
    const/16 v21, 0x0

    .line 628
    .line 629
    :goto_8
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 630
    .line 631
    .line 632
    move-result v22

    .line 633
    if-eqz v22, :cond_1c

    .line 634
    .line 635
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 636
    .line 637
    .line 638
    move-result-object v22

    .line 639
    check-cast v22, Lcom/android/billingclient/api/SkuDetails;

    .line 640
    .line 641
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v23

    .line 645
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->isEmpty()Z

    .line 646
    .line 647
    .line 648
    move-result v23

    .line 649
    if-nez v23, :cond_1a

    .line 650
    .line 651
    move-object/from16 v23, v8

    .line 652
    .line 653
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/SkuDetails;->a()Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v8

    .line 657
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 658
    .line 659
    .line 660
    goto :goto_9

    .line 661
    :cond_1a
    move-object/from16 v23, v8

    .line 662
    .line 663
    :goto_9
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/SkuDetails;->zzc()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v8

    .line 667
    move/from16 v24, v12

    .line 668
    .line 669
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/SkuDetails;->zzb()Ljava/lang/String;

    .line 670
    .line 671
    .line 672
    move-result-object v12

    .line 673
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/SkuDetails;->zza()I

    .line 674
    .line 675
    .line 676
    move-result v25

    .line 677
    move-wide/from16 v26, v10

    .line 678
    .line 679
    invoke-virtual/range {v22 .. v22}, Lcom/android/billingclient/api/SkuDetails;->zze()Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v10

    .line 683
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 684
    .line 685
    .line 686
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 687
    .line 688
    .line 689
    move-result v8

    .line 690
    const/16 v16, 0x1

    .line 691
    .line 692
    xor-int/lit8 v8, v8, 0x1

    .line 693
    .line 694
    or-int/2addr v13, v8

    .line 695
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    .line 697
    .line 698
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 699
    .line 700
    .line 701
    move-result v8

    .line 702
    xor-int/lit8 v8, v8, 0x1

    .line 703
    .line 704
    or-int/2addr v14, v8

    .line 705
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 706
    .line 707
    .line 708
    move-result-object v8

    .line 709
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    .line 711
    .line 712
    if-eqz v25, :cond_1b

    .line 713
    .line 714
    move/from16 v8, v16

    .line 715
    .line 716
    goto :goto_a

    .line 717
    :cond_1b
    const/4 v8, 0x0

    .line 718
    :goto_a
    or-int/2addr v15, v8

    .line 719
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 720
    .line 721
    .line 722
    move-result v8

    .line 723
    xor-int/lit8 v8, v8, 0x1

    .line 724
    .line 725
    or-int v21, v21, v8

    .line 726
    .line 727
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 728
    .line 729
    .line 730
    move-object/from16 v8, v23

    .line 731
    .line 732
    move/from16 v12, v24

    .line 733
    .line 734
    move-wide/from16 v10, v26

    .line 735
    .line 736
    goto :goto_8

    .line 737
    :cond_1c
    move-wide/from16 v26, v10

    .line 738
    .line 739
    move/from16 v24, v12

    .line 740
    .line 741
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 742
    .line 743
    .line 744
    move-result v8

    .line 745
    if-nez v8, :cond_1d

    .line 746
    .line 747
    const-string v8, "skuDetailsTokens"

    .line 748
    .line 749
    invoke-virtual {v5, v8, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 750
    .line 751
    .line 752
    :cond_1d
    if-eqz v13, :cond_1e

    .line 753
    .line 754
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 755
    .line 756
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 757
    .line 758
    .line 759
    :cond_1e
    if-eqz v14, :cond_1f

    .line 760
    .line 761
    const-string v0, "SKU_OFFER_ID_LIST"

    .line 762
    .line 763
    invoke-virtual {v5, v0, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 764
    .line 765
    .line 766
    :cond_1f
    if-eqz v15, :cond_20

    .line 767
    .line 768
    const-string v0, "SKU_OFFER_TYPE_LIST"

    .line 769
    .line 770
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 771
    .line 772
    .line 773
    :cond_20
    if-eqz v21, :cond_21

    .line 774
    .line 775
    const-string v0, "SKU_SERIALIZED_DOCID_LIST"

    .line 776
    .line 777
    invoke-virtual {v5, v0, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 778
    .line 779
    .line 780
    :cond_21
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 781
    .line 782
    .line 783
    move-result v0

    .line 784
    const/4 v1, 0x1

    .line 785
    if-le v0, v1, :cond_23

    .line 786
    .line 787
    new-instance v0, Ljava/util/ArrayList;

    .line 788
    .line 789
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 790
    .line 791
    .line 792
    move-result v1

    .line 793
    add-int/lit8 v1, v1, -0x1

    .line 794
    .line 795
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 796
    .line 797
    .line 798
    new-instance v1, Ljava/util/ArrayList;

    .line 799
    .line 800
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    add-int/lit8 v4, v4, -0x1

    .line 805
    .line 806
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 807
    .line 808
    .line 809
    const/4 v4, 0x1

    .line 810
    :goto_b
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 811
    .line 812
    .line 813
    move-result v6

    .line 814
    if-ge v4, v6, :cond_22

    .line 815
    .line 816
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 817
    .line 818
    .line 819
    move-result-object v6

    .line 820
    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 821
    .line 822
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v6

    .line 826
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    .line 828
    .line 829
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 830
    .line 831
    .line 832
    move-result-object v6

    .line 833
    check-cast v6, Lcom/android/billingclient/api/SkuDetails;

    .line 834
    .line 835
    invoke-virtual {v6}, Lcom/android/billingclient/api/SkuDetails;->getType()Ljava/lang/String;

    .line 836
    .line 837
    .line 838
    move-result-object v6

    .line 839
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 840
    .line 841
    .line 842
    const/4 v6, 0x1

    .line 843
    add-int/2addr v4, v6

    .line 844
    goto :goto_b

    .line 845
    :cond_22
    const-string v2, "additionalSkus"

    .line 846
    .line 847
    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 848
    .line 849
    .line 850
    const-string v0, "additionalSkuTypes"

    .line 851
    .line 852
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 853
    .line 854
    .line 855
    const/4 v10, 0x1

    .line 856
    goto/16 :goto_d

    .line 857
    .line 858
    :cond_23
    move v10, v1

    .line 859
    goto/16 :goto_d

    .line 860
    .line 861
    :cond_24
    move-wide/from16 v26, v10

    .line 862
    .line 863
    move/from16 v24, v12

    .line 864
    .line 865
    new-instance v0, Ljava/util/ArrayList;

    .line 866
    .line 867
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 868
    .line 869
    .line 870
    move-result v1

    .line 871
    add-int/lit8 v1, v1, -0x1

    .line 872
    .line 873
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 874
    .line 875
    .line 876
    new-instance v1, Ljava/util/ArrayList;

    .line 877
    .line 878
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 879
    .line 880
    .line 881
    move-result v2

    .line 882
    add-int/lit8 v2, v2, -0x1

    .line 883
    .line 884
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 885
    .line 886
    .line 887
    new-instance v2, Ljava/util/ArrayList;

    .line 888
    .line 889
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .line 891
    .line 892
    new-instance v4, Ljava/util/ArrayList;

    .line 893
    .line 894
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 895
    .line 896
    .line 897
    new-instance v6, Ljava/util/ArrayList;

    .line 898
    .line 899
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 900
    .line 901
    .line 902
    new-instance v7, Ljava/util/ArrayList;

    .line 903
    .line 904
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 905
    .line 906
    .line 907
    const/4 v8, 0x0

    .line 908
    :goto_c
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 909
    .line 910
    .line 911
    move-result v10

    .line 912
    if-ge v8, v10, :cond_2a

    .line 913
    .line 914
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 915
    .line 916
    .line 917
    move-result-object v10

    .line 918
    check-cast v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 919
    .line 920
    invoke-virtual {v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 921
    .line 922
    .line 923
    move-result-object v11

    .line 924
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->zzb()Ljava/lang/String;

    .line 925
    .line 926
    .line 927
    move-result-object v12

    .line 928
    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    .line 929
    .line 930
    .line 931
    move-result v12

    .line 932
    if-nez v12, :cond_25

    .line 933
    .line 934
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->zzb()Ljava/lang/String;

    .line 935
    .line 936
    .line 937
    move-result-object v12

    .line 938
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 939
    .line 940
    .line 941
    :cond_25
    invoke-virtual {v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zzb()Ljava/lang/String;

    .line 942
    .line 943
    .line 944
    move-result-object v10

    .line 945
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 946
    .line 947
    .line 948
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->zzc()Ljava/lang/String;

    .line 949
    .line 950
    .line 951
    move-result-object v10

    .line 952
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->zzd()Ljava/util/List;

    .line 953
    .line 954
    .line 955
    move-result-object v12

    .line 956
    if-eqz v12, :cond_27

    .line 957
    .line 958
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->zzd()Ljava/util/List;

    .line 959
    .line 960
    .line 961
    move-result-object v12

    .line 962
    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    .line 963
    .line 964
    .line 965
    move-result v12

    .line 966
    if-nez v12, :cond_27

    .line 967
    .line 968
    invoke-virtual {v11}, Lcom/android/billingclient/api/ProductDetails;->zzd()Ljava/util/List;

    .line 969
    .line 970
    .line 971
    move-result-object v11

    .line 972
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 973
    .line 974
    .line 975
    move-result-object v11

    .line 976
    :cond_26
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 977
    .line 978
    .line 979
    move-result v12

    .line 980
    if-eqz v12, :cond_27

    .line 981
    .line 982
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 983
    .line 984
    .line 985
    move-result-object v12

    .line 986
    check-cast v12, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;

    .line 987
    .line 988
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a()Ljava/lang/String;

    .line 989
    .line 990
    .line 991
    move-result-object v13

    .line 992
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 993
    .line 994
    .line 995
    move-result v13

    .line 996
    if-nez v13, :cond_26

    .line 997
    .line 998
    invoke-virtual {v12}, Lcom/android/billingclient/api/ProductDetails$OneTimePurchaseOfferDetails;->a()Ljava/lang/String;

    .line 999
    .line 1000
    .line 1001
    move-result-object v10

    .line 1002
    :cond_27
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1003
    .line 1004
    .line 1005
    move-result v11

    .line 1006
    if-nez v11, :cond_28

    .line 1007
    .line 1008
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    .line 1010
    .line 1011
    :cond_28
    if-lez v8, :cond_29

    .line 1012
    .line 1013
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1014
    .line 1015
    .line 1016
    move-result-object v10

    .line 1017
    check-cast v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1018
    .line 1019
    invoke-virtual {v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 1020
    .line 1021
    .line 1022
    move-result-object v10

    .line 1023
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->getProductId()Ljava/lang/String;

    .line 1024
    .line 1025
    .line 1026
    move-result-object v10

    .line 1027
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    .line 1029
    .line 1030
    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v10

    .line 1034
    check-cast v10, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;

    .line 1035
    .line 1036
    invoke-virtual {v10}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 1037
    .line 1038
    .line 1039
    move-result-object v10

    .line 1040
    invoke-virtual {v10}, Lcom/android/billingclient/api/ProductDetails;->getProductType()Ljava/lang/String;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v10

    .line 1044
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1045
    .line 1046
    .line 1047
    :cond_29
    const/4 v10, 0x1

    .line 1048
    add-int/2addr v8, v10

    .line 1049
    goto/16 :goto_c

    .line 1050
    .line 1051
    :cond_2a
    const/4 v10, 0x1

    .line 1052
    const-string v8, "SKU_OFFER_ID_TOKEN_LIST"

    .line 1053
    .line 1054
    invoke-virtual {v5, v8, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1055
    .line 1056
    .line 1057
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1058
    .line 1059
    .line 1060
    move-result v4

    .line 1061
    if-nez v4, :cond_2b

    .line 1062
    .line 1063
    const-string v4, "autoPayBalanceThresholdList"

    .line 1064
    .line 1065
    invoke-virtual {v5, v4, v7}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1066
    .line 1067
    .line 1068
    :cond_2b
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1069
    .line 1070
    .line 1071
    move-result v4

    .line 1072
    if-nez v4, :cond_2c

    .line 1073
    .line 1074
    const-string v4, "skuDetailsTokens"

    .line 1075
    .line 1076
    invoke-virtual {v5, v4, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1077
    .line 1078
    .line 1079
    :cond_2c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1080
    .line 1081
    .line 1082
    move-result v2

    .line 1083
    if-nez v2, :cond_2d

    .line 1084
    .line 1085
    const-string v2, "SKU_SERIALIZED_DOCID_LIST"

    .line 1086
    .line 1087
    invoke-virtual {v5, v2, v6}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1088
    .line 1089
    .line 1090
    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 1091
    .line 1092
    .line 1093
    move-result v2

    .line 1094
    if-nez v2, :cond_2e

    .line 1095
    .line 1096
    const-string v2, "additionalSkus"

    .line 1097
    .line 1098
    invoke-virtual {v5, v2, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1099
    .line 1100
    .line 1101
    const-string v0, "additionalSkuTypes"

    .line 1102
    .line 1103
    invoke-virtual {v5, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1104
    .line 1105
    .line 1106
    :cond_2e
    :goto_d
    const-string v0, "SKU_OFFER_ID_TOKEN_LIST"

    .line 1107
    .line 1108
    invoke-virtual {v5, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 1109
    .line 1110
    .line 1111
    move-result v0

    .line 1112
    if-eqz v0, :cond_30

    .line 1113
    .line 1114
    iget-boolean v0, v9, Lcom/android/billingclient/api/b;->r:Z

    .line 1115
    .line 1116
    if-eqz v0, :cond_2f

    .line 1117
    .line 1118
    goto :goto_e

    .line 1119
    :cond_2f
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzu:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1120
    .line 1121
    sget-object v0, Lcom/android/billingclient/api/u;->q:Lcom/android/billingclient/api/BillingResult;

    .line 1122
    .line 1123
    const/4 v3, 0x2

    .line 1124
    move-object/from16 v1, p0

    .line 1125
    .line 1126
    move-object v4, v0

    .line 1127
    move-wide/from16 v5, v26

    .line 1128
    .line 1129
    move/from16 v7, v24

    .line 1130
    .line 1131
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 1132
    .line 1133
    .line 1134
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1135
    .line 1136
    .line 1137
    return-object v0

    .line 1138
    :cond_30
    :goto_e
    if-eqz v20, :cond_31

    .line 1139
    .line 1140
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v0

    .line 1144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1145
    .line 1146
    .line 1147
    move-result v0

    .line 1148
    if-nez v0, :cond_31

    .line 1149
    .line 1150
    invoke-virtual/range {v20 .. v20}, Lcom/android/billingclient/api/SkuDetails;->zzd()Ljava/lang/String;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v0

    .line 1154
    const-string v1, "skuPackageName"

    .line 1155
    .line 1156
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1157
    .line 1158
    .line 1159
    :goto_f
    move v1, v10

    .line 1160
    :goto_10
    const/4 v8, 0x0

    .line 1161
    goto :goto_11

    .line 1162
    :cond_31
    if-eqz v19, :cond_32

    .line 1163
    .line 1164
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 1165
    .line 1166
    .line 1167
    move-result-object v0

    .line 1168
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v0

    .line 1172
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1173
    .line 1174
    .line 1175
    move-result v0

    .line 1176
    if-nez v0, :cond_32

    .line 1177
    .line 1178
    invoke-virtual/range {v19 .. v19}, Lcom/android/billingclient/api/BillingFlowParams$ProductDetailsParams;->zza()Lcom/android/billingclient/api/ProductDetails;

    .line 1179
    .line 1180
    .line 1181
    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Lcom/android/billingclient/api/ProductDetails;->zza()Ljava/lang/String;

    .line 1183
    .line 1184
    .line 1185
    move-result-object v0

    .line 1186
    const-string v1, "skuPackageName"

    .line 1187
    .line 1188
    invoke-virtual {v5, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    goto :goto_f

    .line 1192
    :cond_32
    const/4 v1, 0x0

    .line 1193
    goto :goto_10

    .line 1194
    :goto_11
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1195
    .line 1196
    .line 1197
    move-result v0

    .line 1198
    if-nez v0, :cond_33

    .line 1199
    .line 1200
    const-string v0, "accountName"

    .line 1201
    .line 1202
    invoke-virtual {v5, v0, v8}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    .line 1204
    .line 1205
    :cond_33
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v0

    .line 1209
    if-nez v0, :cond_34

    .line 1210
    .line 1211
    const-string v0, "BillingClient"

    .line 1212
    .line 1213
    const-string v2, "Activity\'s intent is null."

    .line 1214
    .line 1215
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    goto :goto_12

    .line 1219
    :cond_34
    const-string v2, "PROXY_PACKAGE"

    .line 1220
    .line 1221
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1222
    .line 1223
    .line 1224
    move-result-object v2

    .line 1225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 1226
    .line 1227
    .line 1228
    move-result v2

    .line 1229
    if-nez v2, :cond_35

    .line 1230
    .line 1231
    const-string v2, "PROXY_PACKAGE"

    .line 1232
    .line 1233
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object v0

    .line 1237
    const-string v2, "proxyPackage"

    .line 1238
    .line 1239
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1240
    .line 1241
    .line 1242
    :try_start_1
    iget-object v2, v9, Lcom/android/billingclient/api/b;->g:Landroid/content/Context;

    .line 1243
    .line 1244
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v2

    .line 1248
    const/4 v4, 0x0

    .line 1249
    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v0

    .line 1253
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 1254
    .line 1255
    const-string v2, "proxyPackageVersion"

    .line 1256
    .line 1257
    invoke-virtual {v5, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1258
    .line 1259
    .line 1260
    goto :goto_12

    .line 1261
    :catch_0
    const-string v0, "proxyPackageVersion"

    .line 1262
    .line 1263
    const-string v2, "package not found"

    .line 1264
    .line 1265
    invoke-virtual {v5, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1266
    .line 1267
    .line 1268
    :cond_35
    :goto_12
    iget-boolean v0, v9, Lcom/android/billingclient/api/b;->u:Z

    .line 1269
    .line 1270
    if-eqz v0, :cond_36

    .line 1271
    .line 1272
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1273
    .line 1274
    .line 1275
    move-result v0

    .line 1276
    if-nez v0, :cond_36

    .line 1277
    .line 1278
    const/16 v0, 0x11

    .line 1279
    .line 1280
    :goto_13
    move v3, v0

    .line 1281
    goto :goto_14

    .line 1282
    :cond_36
    iget-boolean v0, v9, Lcom/android/billingclient/api/b;->s:Z

    .line 1283
    .line 1284
    if-eqz v0, :cond_37

    .line 1285
    .line 1286
    if-eqz v1, :cond_37

    .line 1287
    .line 1288
    const/16 v0, 0xf

    .line 1289
    .line 1290
    goto :goto_13

    .line 1291
    :cond_37
    iget-boolean v0, v9, Lcom/android/billingclient/api/b;->p:Z

    .line 1292
    .line 1293
    if-eqz v0, :cond_38

    .line 1294
    .line 1295
    const/16 v0, 0x9

    .line 1296
    .line 1297
    goto :goto_13

    .line 1298
    :cond_38
    const/4 v0, 0x6

    .line 1299
    goto :goto_13

    .line 1300
    :goto_14
    new-instance v10, Lcom/android/billingclient/api/zzw;

    .line 1301
    .line 1302
    move-object v1, v10

    .line 1303
    move-object/from16 v2, p0

    .line 1304
    .line 1305
    move-object/from16 v4, v18

    .line 1306
    .line 1307
    move-object v0, v5

    .line 1308
    move-object/from16 v5, v17

    .line 1309
    .line 1310
    move-object/from16 v6, p2

    .line 1311
    .line 1312
    move-object v7, v0

    .line 1313
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/zzw;-><init>(Lcom/android/billingclient/api/b;ILjava/lang/String;Ljava/lang/String;Lcom/android/billingclient/api/BillingFlowParams;Landroid/os/Bundle;)V

    .line 1314
    .line 1315
    .line 1316
    iget-object v14, v9, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 1317
    .line 1318
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 1319
    .line 1320
    .line 1321
    move-result-object v15

    .line 1322
    const-wide/16 v11, 0x1388

    .line 1323
    .line 1324
    const/4 v13, 0x0

    .line 1325
    invoke-static/range {v10 .. v15}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1326
    .line 1327
    .line 1328
    move-result-object v0

    .line 1329
    goto :goto_15

    .line 1330
    :cond_39
    move-object/from16 v18, v7

    .line 1331
    .line 1332
    move-wide/from16 v26, v10

    .line 1333
    .line 1334
    move/from16 v24, v12

    .line 1335
    .line 1336
    move-object/from16 v17, v13

    .line 1337
    .line 1338
    new-instance v1, Lcom/android/billingclient/api/zzx;

    .line 1339
    .line 1340
    invoke-direct {v1, v9, v7, v13}, Lcom/android/billingclient/api/zzx;-><init>(Lcom/android/billingclient/api/b;Ljava/lang/String;Ljava/lang/String;)V

    .line 1341
    .line 1342
    .line 1343
    iget-object v5, v9, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 1344
    .line 1345
    invoke-virtual/range {p0 .. p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 1346
    .line 1347
    .line 1348
    move-result-object v6

    .line 1349
    const-wide/16 v2, 0x1388

    .line 1350
    .line 1351
    const/4 v4, 0x0

    .line 1352
    invoke-static/range {v1 .. v6}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 1353
    .line 1354
    .line 1355
    move-result-object v0

    .line 1356
    :goto_15
    if-nez v0, :cond_3a

    .line 1357
    .line 1358
    :try_start_2
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1359
    .line 1360
    sget-object v0, Lcom/android/billingclient/api/u;->c:Lcom/android/billingclient/api/BillingResult;

    .line 1361
    .line 1362
    const/4 v3, 0x2

    .line 1363
    move-object/from16 v1, p0

    .line 1364
    .line 1365
    move-object v4, v0

    .line 1366
    move-wide/from16 v5, v26

    .line 1367
    .line 1368
    move/from16 v7, v24

    .line 1369
    .line 1370
    invoke-direct/range {v1 .. v7}, Lcom/android/billingclient/api/b;->K0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;JZ)V

    .line 1371
    .line 1372
    .line 1373
    invoke-virtual {v9, v0}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1374
    .line 1375
    .line 1376
    return-object v0

    .line 1377
    :catch_1
    move-exception v0

    .line 1378
    move/from16 v8, v24

    .line 1379
    .line 1380
    move-wide/from16 v6, v26

    .line 1381
    .line 1382
    goto/16 :goto_1c

    .line 1383
    .line 1384
    :catch_2
    move-exception v0

    .line 1385
    :goto_16
    move/from16 v8, v24

    .line 1386
    .line 1387
    move-wide/from16 v6, v26

    .line 1388
    .line 1389
    goto/16 :goto_1d

    .line 1390
    .line 1391
    :catch_3
    move-exception v0

    .line 1392
    goto :goto_16

    .line 1393
    :cond_3a
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 1394
    .line 1395
    const-wide/16 v2, 0x1388

    .line 1396
    .line 1397
    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 1398
    .line 1399
    .line 1400
    move-result-object v0

    .line 1401
    move-object v1, v0

    .line 1402
    check-cast v1, Landroid/os/Bundle;

    .line 1403
    .line 1404
    const-string v0, "BillingClient"

    .line 1405
    .line 1406
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzb(Landroid/os/Bundle;Ljava/lang/String;)I

    .line 1407
    .line 1408
    .line 1409
    move-result v0

    .line 1410
    const-string v2, "BillingClient"

    .line 1411
    .line 1412
    invoke-static {v1, v2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzj(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    .line 1413
    .line 1414
    .line 1415
    move-result-object v2

    .line 1416
    if-eqz v0, :cond_40

    .line 1417
    .line 1418
    const-string v3, "BillingClient"

    .line 1419
    .line 1420
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1421
    .line 1422
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1423
    .line 1424
    .line 1425
    const-string v5, "Unable to buy item, Error response code: "

    .line 1426
    .line 1427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1428
    .line 1429
    .line 1430
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1431
    .line 1432
    .line 1433
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1434
    .line 1435
    .line 1436
    move-result-object v4

    .line 1437
    invoke-static {v3, v4}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1438
    .line 1439
    .line 1440
    invoke-static {v0, v2}, Lcom/android/billingclient/api/u;->a(ILjava/lang/String;)Lcom/android/billingclient/api/BillingResult;

    .line 1441
    .line 1442
    .line 1443
    move-result-object v10

    .line 1444
    const-string v2, "BillingClient"
    :try_end_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1445
    .line 1446
    if-nez v1, :cond_3b

    .line 1447
    .line 1448
    :try_start_3
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1449
    .line 1450
    goto :goto_18

    .line 1451
    :catchall_1
    move-exception v0

    .line 1452
    goto :goto_17

    .line 1453
    :cond_3b
    const-string v0, "LOG_REASON"

    .line 1454
    .line 1455
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 1456
    .line 1457
    .line 1458
    move-result-object v0

    .line 1459
    if-nez v0, :cond_3c

    .line 1460
    .line 1461
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1462
    .line 1463
    goto :goto_18

    .line 1464
    :cond_3c
    instance-of v3, v0, Ljava/lang/Integer;

    .line 1465
    .line 1466
    if-eqz v3, :cond_3d

    .line 1467
    .line 1468
    check-cast v0, Ljava/lang/Integer;

    .line 1469
    .line 1470
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 1471
    .line 1472
    .line 1473
    move-result v0

    .line 1474
    invoke-static {v0}, Lcom/google/android/gms/internal/play_billing/zzie;->zzb(I)Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1475
    .line 1476
    .line 1477
    move-result-object v0

    .line 1478
    goto :goto_18

    .line 1479
    :cond_3d
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1480
    .line 1481
    .line 1482
    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 1484
    .line 1485
    .line 1486
    move-result-object v0

    .line 1487
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1488
    .line 1489
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1490
    .line 1491
    .line 1492
    const-string v4, "Unexpected type for bundle log reason: "

    .line 1493
    .line 1494
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1495
    .line 1496
    .line 1497
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1498
    .line 1499
    .line 1500
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1501
    .line 1502
    .line 1503
    move-result-object v0

    .line 1504
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    .line 1506
    .line 1507
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1508
    .line 1509
    goto :goto_18

    .line 1510
    :goto_17
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v0

    .line 1514
    const-string v3, "Failed to get log reason from bundle: "

    .line 1515
    .line 1516
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1517
    .line 1518
    .line 1519
    move-result-object v0

    .line 1520
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v0

    .line 1524
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1525
    .line 1526
    .line 1527
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1528
    .line 1529
    :goto_18
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zza:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1530
    .line 1531
    if-ne v0, v2, :cond_3e

    .line 1532
    .line 1533
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzw:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1534
    .line 1535
    :cond_3e
    move-object v2, v0

    .line 1536
    const-string v3, "BillingClient"
    :try_end_4
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 1537
    .line 1538
    if-nez v1, :cond_3f

    .line 1539
    .line 1540
    :goto_19
    move-object v5, v8

    .line 1541
    goto :goto_1a

    .line 1542
    :cond_3f
    :try_start_5
    const-string v0, "ADDITIONAL_LOG_DETAILS"

    .line 1543
    .line 1544
    invoke-virtual {v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1548
    move-object v5, v0

    .line 1549
    goto :goto_1a

    .line 1550
    :catchall_2
    move-exception v0

    .line 1551
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 1552
    .line 1553
    .line 1554
    move-result-object v0

    .line 1555
    const-string v1, "Failed to get additional log details from bundle: "

    .line 1556
    .line 1557
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 1562
    .line 1563
    .line 1564
    move-result-object v0

    .line 1565
    invoke-static {v3, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 1566
    .line 1567
    .line 1568
    goto :goto_19

    .line 1569
    :goto_1a
    const/4 v3, 0x2

    .line 1570
    move-object/from16 v1, p0

    .line 1571
    .line 1572
    move-object v4, v10

    .line 1573
    move-wide/from16 v6, v26

    .line 1574
    .line 1575
    move/from16 v8, v24

    .line 1576
    .line 1577
    invoke-direct/range {v1 .. v8}, Lcom/android/billingclient/api/b;->L0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 1578
    .line 1579
    .line 1580
    invoke-virtual {v9, v10}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1581
    .line 1582
    .line 1583
    return-object v10

    .line 1584
    :cond_40
    new-instance v0, Landroid/content/Intent;

    .line 1585
    .line 1586
    const-class v2, Lcom/android/billingclient/api/ProxyBillingActivity;

    .line 1587
    .line 1588
    move-object/from16 v3, p1

    .line 1589
    .line 1590
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1591
    .line 1592
    .line 1593
    const-string v2, "BUY_INTENT"

    .line 1594
    .line 1595
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 1596
    .line 1597
    .line 1598
    move-result-object v1

    .line 1599
    check-cast v1, Landroid/app/PendingIntent;

    .line 1600
    .line 1601
    const-string v2, "BUY_INTENT"

    .line 1602
    .line 1603
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1604
    .line 1605
    .line 1606
    const-string v1, "billingClientTransactionId"
    :try_end_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 1607
    .line 1608
    move-wide/from16 v6, v26

    .line 1609
    .line 1610
    :try_start_7
    invoke-virtual {v0, v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1611
    .line 1612
    .line 1613
    const-string/jumbo v1, "wasServiceAutoReconnected"
    :try_end_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_7 .. :try_end_7} :catch_9
    .catch Ljava/util/concurrent/CancellationException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    .line 1614
    .line 1615
    .line 1616
    move/from16 v8, v24

    .line 1617
    .line 1618
    :try_start_8
    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1619
    .line 1620
    .line 1621
    invoke-virtual {v3, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_8
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/util/concurrent/CancellationException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    .line 1622
    .line 1623
    .line 1624
    sget-object v0, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 1625
    .line 1626
    return-object v0

    .line 1627
    :catch_4
    move-exception v0

    .line 1628
    goto :goto_1c

    .line 1629
    :catch_5
    move-exception v0

    .line 1630
    goto :goto_1d

    .line 1631
    :catch_6
    move-exception v0

    .line 1632
    goto :goto_1d

    .line 1633
    :catch_7
    move-exception v0

    .line 1634
    move/from16 v8, v24

    .line 1635
    .line 1636
    goto :goto_1c

    .line 1637
    :catch_8
    move-exception v0

    .line 1638
    :goto_1b
    move/from16 v8, v24

    .line 1639
    .line 1640
    goto :goto_1d

    .line 1641
    :catch_9
    move-exception v0

    .line 1642
    goto :goto_1b

    .line 1643
    :goto_1c
    const-string v1, "BillingClient"

    .line 1644
    .line 1645
    const-string v2, "Exception while launching billing flow. Try to reconnect"

    .line 1646
    .line 1647
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1648
    .line 1649
    .line 1650
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zze:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1651
    .line 1652
    sget-object v10, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 1653
    .line 1654
    const/4 v3, 0x2

    .line 1655
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1656
    .line 1657
    .line 1658
    move-result-object v5

    .line 1659
    move-object/from16 v1, p0

    .line 1660
    .line 1661
    move-object v4, v10

    .line 1662
    invoke-direct/range {v1 .. v8}, Lcom/android/billingclient/api/b;->L0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 1663
    .line 1664
    .line 1665
    invoke-virtual {v9, v10}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1666
    .line 1667
    .line 1668
    return-object v10

    .line 1669
    :goto_1d
    const-string v1, "BillingClient"

    .line 1670
    .line 1671
    const-string v2, "Time out while launching billing flow. Try to reconnect"

    .line 1672
    .line 1673
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/play_billing/zzc;->zzo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1674
    .line 1675
    .line 1676
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzd:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1677
    .line 1678
    sget-object v10, Lcom/android/billingclient/api/u;->k:Lcom/android/billingclient/api/BillingResult;

    .line 1679
    .line 1680
    const/4 v3, 0x2

    .line 1681
    invoke-static {v0}, Lcom/android/billingclient/api/zzcg;->zza(Ljava/lang/Exception;)Ljava/lang/String;

    .line 1682
    .line 1683
    .line 1684
    move-result-object v5

    .line 1685
    move-object/from16 v1, p0

    .line 1686
    .line 1687
    move-object v4, v10

    .line 1688
    invoke-direct/range {v1 .. v8}, Lcom/android/billingclient/api/b;->L0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;Ljava/lang/String;JZ)V

    .line 1689
    .line 1690
    .line 1691
    invoke-virtual {v9, v10}, Lcom/android/billingclient/api/b;->X0(Lcom/android/billingclient/api/BillingResult;)Lcom/android/billingclient/api/BillingResult;

    .line 1692
    .line 1693
    .line 1694
    return-object v10

    .line 1695
    :goto_1e
    :try_start_9
    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1696
    throw v0

    .line 1697
    :cond_41
    move-wide v6, v10

    .line 1698
    sget-object v2, Lcom/google/android/gms/internal/play_billing/zzie;->zzl:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 1699
    .line 1700
    sget-object v0, Lcom/android/billingclient/api/u;->E:Lcom/android/billingclient/api/BillingResult;

    .line 1701
    .line 1702
    const/4 v3, 0x2

    .line 1703
    move-object/from16 v1, p0

    .line 1704
    .line 1705
    move-object v4, v0

    .line 1706
    move-wide v5, v6

    .line 1707
    invoke-direct/range {v1 .. v6}, Lcom/android/billingclient/api/b;->I0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;J)V

    .line 1708
    .line 1709
    .line 1710
    return-object v0
.end method

.method public queryProductDetailsAsync(Lcom/android/billingclient/api/QueryProductDetailsParams;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/billingclient/api/zzal;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2, p1}, Lcom/android/billingclient/api/zzal;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ProductDetailsResponseListener;Lcom/android/billingclient/api/QueryProductDetailsParams;)V

    .line 4
    .line 5
    .line 6
    new-instance v3, Lcom/android/billingclient/api/zzap;

    .line 7
    .line 8
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzap;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ProductDetailsResponseListener;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    const-wide/16 v1, 0x7530

    .line 20
    .line 21
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 32
    .line 33
    const/4 v1, 0x7

    .line 34
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Lcom/android/billingclient/api/QueryProductDetailsResult;

    .line 38
    .line 39
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/android/billingclient/api/QueryProductDetailsResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/ProductDetailsResponseListener;->onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V

    .line 51
    .line 52
    .line 53
    :cond_0
    return-void
.end method

.method public final queryPurchasesAsync(Lcom/android/billingclient/api/QueryPurchasesParams;Lcom/android/billingclient/api/PurchasesResponseListener;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/android/billingclient/api/QueryPurchasesParams;->zza()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Lcom/android/billingclient/api/d;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, p2, p1, v1}, Lcom/android/billingclient/api/d;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/PurchasesResponseListener;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    new-instance v3, Lcom/android/billingclient/api/zzat;

    .line 12
    .line 13
    invoke-direct {v3, p0, p2}, Lcom/android/billingclient/api/zzat;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->q0()Landroid/os/Handler;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 21
    .line 22
    .line 23
    move-result-object v5

    .line 24
    const-wide/16 v1, 0x7530

    .line 25
    .line 26
    invoke-static/range {v0 .. v5}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-nez p1, :cond_0

    .line 31
    .line 32
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object v0, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 37
    .line 38
    const/16 v1, 0x9

    .line 39
    .line 40
    invoke-direct {p0, v0, v1, p1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/zzbt;->zzk()Lcom/google/android/gms/internal/play_billing/zzbt;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {p2, p1, v0}, Lcom/android/billingclient/api/PurchasesResponseListener;->onQueryPurchasesResponse(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    return-void
.end method

.method public showAlternativeBillingOnlyInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .locals 8
    .annotation build Lcom/android/billingclient/api/zzf;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-wide/16 v0, 0xbb8

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->Z(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x10

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 14
    .line 15
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 16
    .line 17
    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 18
    .line 19
    .line 20
    return-object p2

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->y:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string p1, "BillingClient"

    .line 26
    .line 27
    const-string p2, "Current Play Store version doesn\'t support alternative billing only."

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzan:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 33
    .line 34
    sget-object p2, Lcom/android/billingclient/api/u;->D:Lcom/android/billingclient/api/BillingResult;

    .line 35
    .line 36
    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 37
    .line 38
    .line 39
    return-object p2

    .line 40
    :cond_1
    iget-object v6, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/android/billingclient/api/zzay;

    .line 43
    .line 44
    invoke-direct {v0, p0, v6, p2}, Lcom/android/billingclient/api/zzay;-><init>(Lcom/android/billingclient/api/b;Landroid/os/Handler;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/android/billingclient/api/zzy;

    .line 48
    .line 49
    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/billingclient/api/zzy;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/android/billingclient/api/zzz;

    .line 53
    .line 54
    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzz;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/AlternativeBillingOnlyInformationDialogListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-wide/16 v3, 0x7530

    .line 62
    .line 63
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 74
    .line 75
    invoke-direct {p0, p2, v1, p1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_2
    sget-object p1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "Please provide a valid activity."

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public showExternalOfferInformationDialog(Landroid/app/Activity;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)Lcom/android/billingclient/api/BillingResult;
    .locals 8
    .annotation build Lcom/android/billingclient/api/zzh;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    const-wide/16 v0, 0xbb8

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->Z(J)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/16 v1, 0x19

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzb:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 14
    .line 15
    sget-object p2, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 16
    .line 17
    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 18
    .line 19
    .line 20
    return-object p2

    .line 21
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->z:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    const-string p1, "BillingClient"

    .line 26
    .line 27
    const-string p2, "Current Play Store version doesn\'t support external offer."

    .line 28
    .line 29
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object p1, Lcom/google/android/gms/internal/play_billing/zzie;->zzaE:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 33
    .line 34
    sget-object p2, Lcom/android/billingclient/api/u;->t:Lcom/android/billingclient/api/BillingResult;

    .line 35
    .line 36
    invoke-direct {p0, p1, v1, p2}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 37
    .line 38
    .line 39
    return-object p2

    .line 40
    :cond_1
    iget-object v6, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 41
    .line 42
    new-instance v0, Lcom/android/billingclient/api/zzaz;

    .line 43
    .line 44
    invoke-direct {v0, p0, v6, p2}, Lcom/android/billingclient/api/zzaz;-><init>(Lcom/android/billingclient/api/b;Landroid/os/Handler;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V

    .line 45
    .line 46
    .line 47
    new-instance v2, Lcom/android/billingclient/api/zzan;

    .line 48
    .line 49
    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/billingclient/api/zzan;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    .line 50
    .line 51
    .line 52
    new-instance v5, Lcom/android/billingclient/api/zzao;

    .line 53
    .line 54
    invoke-direct {v5, p0, p2}, Lcom/android/billingclient/api/zzao;-><init>(Lcom/android/billingclient/api/b;Lcom/android/billingclient/api/ExternalOfferInformationDialogListener;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 58
    .line 59
    .line 60
    move-result-object v7

    .line 61
    const-wide/16 v3, 0x7530

    .line 62
    .line 63
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-nez p1, :cond_2

    .line 68
    .line 69
    invoke-direct {p0}, Lcom/android/billingclient/api/b;->t0()Lcom/android/billingclient/api/BillingResult;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    sget-object p2, Lcom/google/android/gms/internal/play_billing/zzie;->zzy:Lcom/google/android/gms/internal/play_billing/zzie;

    .line 74
    .line 75
    invoke-direct {p0, p2, v1, p1}, Lcom/android/billingclient/api/b;->H0(Lcom/google/android/gms/internal/play_billing/zzie;ILcom/android/billingclient/api/BillingResult;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_2
    sget-object p1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    const-string p2, "Please provide a valid activity."

    .line 85
    .line 86
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw p1
.end method

.method public final showInAppMessages(Landroid/app/Activity;Lcom/android/billingclient/api/InAppMessageParams;Lcom/android/billingclient/api/InAppMessageResponseListener;)Lcom/android/billingclient/api/BillingResult;
    .locals 8

    .line 1
    const-wide/16 v0, 0xbb8

    .line 2
    .line 3
    invoke-direct {p0, v0, v1}, Lcom/android/billingclient/api/b;->Z(J)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, "BillingClient"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const-string p1, "Service disconnected."

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object p1, Lcom/android/billingclient/api/u;->j:Lcom/android/billingclient/api/BillingResult;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-boolean v0, p0, Lcom/android/billingclient/api/b;->q:Z

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string p1, "Current client doesn\'t support showing in-app messages."

    .line 24
    .line 25
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/play_billing/zzc;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object p1, Lcom/android/billingclient/api/u;->s:Lcom/android/billingclient/api/BillingResult;

    .line 29
    .line 30
    return-object p1

    .line 31
    :cond_1
    const v0, 0x1020002

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    new-instance v2, Landroid/graphics/Rect;

    .line 43
    .line 44
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 48
    .line 49
    .line 50
    new-instance v0, Landroid/os/Bundle;

    .line 51
    .line 52
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v3, "KEY_WINDOW_TOKEN"

    .line 56
    .line 57
    invoke-static {v0, v3, v1}, Landroidx/core/app/BundleCompat;->putBinder(Landroid/os/Bundle;Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    .line 59
    .line 60
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 61
    .line 62
    const-string v3, "KEY_DIMEN_LEFT"

    .line 63
    .line 64
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 65
    .line 66
    .line 67
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 68
    .line 69
    const-string v3, "KEY_DIMEN_TOP"

    .line 70
    .line 71
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 72
    .line 73
    .line 74
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 75
    .line 76
    const-string v3, "KEY_DIMEN_RIGHT"

    .line 77
    .line 78
    invoke-virtual {v0, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    iget v1, v2, Landroid/graphics/Rect;->bottom:I

    .line 82
    .line 83
    const-string v2, "KEY_DIMEN_BOTTOM"

    .line 84
    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/android/billingclient/api/b;->c:Ljava/lang/String;

    .line 89
    .line 90
    const-string v2, "playBillingLibraryVersion"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/android/billingclient/api/b;->d:Ljava/lang/String;

    .line 96
    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    const-string v2, "playBillingLibraryWrapperVersion"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :cond_2
    invoke-virtual {p2}, Lcom/android/billingclient/api/InAppMessageParams;->a()Ljava/util/ArrayList;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    const-string v1, "KEY_CATEGORY_IDS"

    .line 109
    .line 110
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 111
    .line 112
    .line 113
    iget-object v6, p0, Lcom/android/billingclient/api/b;->e:Landroid/os/Handler;

    .line 114
    .line 115
    new-instance p2, Lcom/android/billingclient/api/zzax;

    .line 116
    .line 117
    invoke-direct {p2, p0, v6, p3}, Lcom/android/billingclient/api/zzax;-><init>(Lcom/android/billingclient/api/b;Landroid/os/Handler;Lcom/android/billingclient/api/InAppMessageResponseListener;)V

    .line 118
    .line 119
    .line 120
    new-instance v2, Lcom/android/billingclient/api/zzas;

    .line 121
    .line 122
    invoke-direct {v2, p0, v0, p1, p2}, Lcom/android/billingclient/api/zzas;-><init>(Lcom/android/billingclient/api/b;Landroid/os/Bundle;Landroid/app/Activity;Landroid/os/ResultReceiver;)V

    .line 123
    .line 124
    .line 125
    const/4 v5, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/android/billingclient/api/b;->h()Ljava/util/concurrent/ExecutorService;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    const-wide/16 v3, 0x1388

    .line 131
    .line 132
    invoke-static/range {v2 .. v7}, Lcom/android/billingclient/api/b;->i(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;Ljava/util/concurrent/ExecutorService;)Ljava/util/concurrent/Future;

    .line 133
    .line 134
    .line 135
    sget-object p1, Lcom/android/billingclient/api/u;->i:Lcom/android/billingclient/api/BillingResult;

    .line 136
    .line 137
    return-object p1
.end method

.method public startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/billingclient/api/b;->X(Lcom/android/billingclient/api/BillingClientStateListener;I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method
