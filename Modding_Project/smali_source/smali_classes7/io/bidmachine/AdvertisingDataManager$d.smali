.class Lio/bidmachine/AdvertisingDataManager$d;
.super Lio/bidmachine/AdvertisingDataManager$b;
.source "AdvertisingDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdvertisingDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$b;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/AdvertisingDataManager$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lio/bidmachine/AdvertisingDataManager$d;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lio/bidmachine/AdvertisingDataManager$AdvertisingData;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    invoke-direct {v0, v1, p1}, Lio/bidmachine/AdvertisingDataManager$AdvertisingData;-><init>(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return-object v0
.end method
