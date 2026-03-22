.class Lcom/adjust/sdk/PurchaseVerificationHandler$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/PurchaseVerificationHandler;->sendNextPurchaseVerificationPackageI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/PurchaseVerificationHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/PurchaseVerificationHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/PurchaseVerificationHandler$c;->a:Lcom/adjust/sdk/PurchaseVerificationHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler$c;->a:Lcom/adjust/sdk/PurchaseVerificationHandler;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lcom/adjust/sdk/PurchaseVerificationHandler;->access$202(Lcom/adjust/sdk/PurchaseVerificationHandler;J)J

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/adjust/sdk/PurchaseVerificationHandler$c;->a:Lcom/adjust/sdk/PurchaseVerificationHandler;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/adjust/sdk/PurchaseVerificationHandler;->access$300(Lcom/adjust/sdk/PurchaseVerificationHandler;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
