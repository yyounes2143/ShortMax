.class public final Lcom/android/billingclient/api/zzcw;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# instance fields
.field private final a:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final b:Lcom/android/billingclient/api/BillingResult;


# direct methods
.method public constructor <init>(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 0
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lcom/android/billingclient/api/zzcw;->a:Ljava/util/List;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/android/billingclient/api/zzcw;->b:Lcom/android/billingclient/api/BillingResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final zza()Lcom/android/billingclient/api/BillingResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcw;->b:Lcom/android/billingclient/api/BillingResult;

    .line 2
    .line 3
    return-object v0
.end method

.method public final zzb()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/zzcw;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
