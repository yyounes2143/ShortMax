.class Lcom/pandora/ttlicense2/LicenseRetryTrigger$1;
.super Ljava/lang/Object;
.source "LicenseRetryTrigger.java"

# interfaces
.implements Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseRetryTrigger;->registerNetworkDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/LicenseRetryTrigger;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseRetryTrigger$1;->this$0:Lcom/pandora/ttlicense2/LicenseRetryTrigger;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNetworkConnectionChanged(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseRetryTrigger$1;->this$0:Lcom/pandora/ttlicense2/LicenseRetryTrigger;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->access$000(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;->onNetworkConnectionChanged(Landroid/net/NetworkInfo;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
