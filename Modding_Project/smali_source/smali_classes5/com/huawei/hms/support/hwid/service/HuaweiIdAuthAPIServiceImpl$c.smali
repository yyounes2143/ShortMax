.class Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$c;
.super Lcom/huawei/hms/support/api/PendingResultImpl;
.source "HuaweiIdAuthAPIServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/huawei/hms/support/api/PendingResultImpl<",
        "Lcom/huawei/hms/support/api/client/Status;",
        "Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/support/api/PendingResultImpl;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;)Lcom/huawei/hms/support/api/client/Status;
    .locals 3

    .line 1
    new-instance p1, Lcom/huawei/hms/support/api/client/Status;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    invoke-direct {p1, v0}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-string v0, "signOut onComplete"

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 11
    .line 12
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 13
    .line 14
    .line 15
    return-object p1
.end method

.method public synthetic onComplete(Lcom/huawei/hms/core/aidl/e;)Lcom/huawei/hms/support/api/client/Result;
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$c;->a(Lcom/huawei/hms/support/api/entity/hwid/SignOutResp;)Lcom/huawei/hms/support/api/client/Status;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
