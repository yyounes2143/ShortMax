.class final Lcom/android/billingclient/api/a0;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

.field private final c:Lcom/android/billingclient/api/zzb;

.field private final d:Lcom/android/billingclient/api/UserChoiceBillingListener;

.field private final e:Lcom/android/billingclient/api/t;

.field private final f:Lcom/android/billingclient/api/z;

.field private final g:Lcom/android/billingclient/api/z;

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/billingclient/api/PurchasesUpdatedListener;Lcom/android/billingclient/api/zzco;Lcom/android/billingclient/api/zzb;Lcom/android/billingclient/api/UserChoiceBillingListener;Lcom/android/billingclient/api/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/billingclient/api/a0;->a:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/billingclient/api/a0;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/android/billingclient/api/a0;->c:Lcom/android/billingclient/api/zzb;

    .line 9
    .line 10
    iput-object p5, p0, Lcom/android/billingclient/api/a0;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 11
    .line 12
    iput-object p6, p0, Lcom/android/billingclient/api/a0;->e:Lcom/android/billingclient/api/t;

    .line 13
    .line 14
    new-instance p1, Lcom/android/billingclient/api/z;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/z;-><init>(Lcom/android/billingclient/api/a0;Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/android/billingclient/api/a0;->f:Lcom/android/billingclient/api/z;

    .line 21
    .line 22
    new-instance p1, Lcom/android/billingclient/api/z;

    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-direct {p1, p0, p2}, Lcom/android/billingclient/api/z;-><init>(Lcom/android/billingclient/api/a0;Z)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/android/billingclient/api/a0;->g:Lcom/android/billingclient/api/z;

    .line 29
    .line 30
    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/zzb;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/a0;->c:Lcom/android/billingclient/api/zzb;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/t;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/a0;->e:Lcom/android/billingclient/api/t;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/a0;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lcom/android/billingclient/api/a0;)Lcom/android/billingclient/api/UserChoiceBillingListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/billingclient/api/a0;->d:Lcom/android/billingclient/api/UserChoiceBillingListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method final d()Lcom/android/billingclient/api/PurchasesUpdatedListener;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/a0;->b:Lcom/android/billingclient/api/PurchasesUpdatedListener;

    .line 2
    .line 3
    return-object v0
.end method

.method final f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/a0;->f:Lcom/android/billingclient/api/z;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/billingclient/api/a0;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/z;->c(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/billingclient/api/a0;->g:Lcom/android/billingclient/api/z;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/z;->c(Landroid/content/Context;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method final g(Z)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    .line 3
    const-string v1, "com.android.vending.billing.PURCHASES_UPDATED"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/content/IntentFilter;

    .line 9
    .line 10
    const-string v2, "com.android.vending.billing.LOCAL_BROADCAST_PURCHASES_UPDATED"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v2, "com.android.vending.billing.ALTERNATIVE_BILLING"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-boolean p1, p0, Lcom/android/billingclient/api/a0;->h:Z

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/billingclient/api/a0;->g:Lcom/android/billingclient/api/z;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/android/billingclient/api/a0;->a:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1, v2, v1}, Lcom/android/billingclient/api/z;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 27
    .line 28
    .line 29
    iget-boolean p1, p0, Lcom/android/billingclient/api/a0;->h:Z

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/billingclient/api/a0;->f:Lcom/android/billingclient/api/z;

    .line 34
    .line 35
    const-string v1, "com.google.android.finsky.permission.PLAY_BILLING_LIBRARY_BROADCAST"

    .line 36
    .line 37
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/billingclient/api/z;->b(Landroid/content/Context;Landroid/content/IntentFilter;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/android/billingclient/api/a0;->f:Lcom/android/billingclient/api/z;

    .line 42
    .line 43
    invoke-virtual {p1, v2, v0}, Lcom/android/billingclient/api/z;->a(Landroid/content/Context;Landroid/content/IntentFilter;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
