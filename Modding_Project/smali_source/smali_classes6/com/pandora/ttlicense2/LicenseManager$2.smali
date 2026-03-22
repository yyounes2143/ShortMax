.class Lcom/pandora/ttlicense2/LicenseManager$2;
.super Ljava/lang/Object;
.source "LicenseManager.java"

# interfaces
.implements Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/LicenseManager;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseManager$2;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityResumed()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const-string v1, "onActivityResumed"

    .line 5
    .line 6
    invoke-static {p0, v1, v0}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$2;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/pandora/ttlicense2/LicenseManager;->access$000(Lcom/pandora/ttlicense2/LicenseManager;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onNetworkConnectionChanged(Landroid/net/NetworkInfo;)V
    .locals 1
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "onNetworkConnectionChanged"

    .line 10
    .line 11
    invoke-static {p0, v0, p1}, Lcom/pandora/ttlicense2/utils/L;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseManager$2;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManager;->access$000(Lcom/pandora/ttlicense2/LicenseManager;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
