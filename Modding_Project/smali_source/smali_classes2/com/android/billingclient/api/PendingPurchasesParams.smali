.class public final Lcom/android/billingclient/api/PendingPurchasesParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Lcom/android/billingclient/api/zzn;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/PendingPurchasesParams$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method private constructor <init>(ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/billingclient/api/PendingPurchasesParams;->a:Z

    iput-boolean p2, p0, Lcom/android/billingclient/api/PendingPurchasesParams;->b:Z

    return-void
.end method

.method synthetic constructor <init>(ZZLcom/android/billingclient/api/zzcr;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/billingclient/api/PendingPurchasesParams;-><init>(ZZ)V

    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/PendingPurchasesParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/PendingPurchasesParams$Builder;-><init>(Lcom/android/billingclient/api/zzcr;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/PendingPurchasesParams;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/billingclient/api/PendingPurchasesParams;->b:Z

    .line 2
    .line 3
    return v0
.end method
