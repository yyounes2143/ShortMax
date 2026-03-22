.class public Lcom/android/billingclient/api/SkuDetailsParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static bridge synthetic a(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetailsParams;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method static bridge synthetic b(Lcom/android/billingclient/api/SkuDetailsParams;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/billingclient/api/SkuDetailsParams;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;-><init>(Lcom/android/billingclient/api/zzdb;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method


# virtual methods
.method public getSkuType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSkusList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/android/billingclient/api/SkuDetailsParams;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
