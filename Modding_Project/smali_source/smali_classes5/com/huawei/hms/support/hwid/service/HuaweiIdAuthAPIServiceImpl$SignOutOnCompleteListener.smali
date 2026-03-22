.class public Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;
.super Ljava/lang/Object;
.source "HuaweiIdAuthAPIServiceImpl.java"

# interfaces
.implements Lua/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SignOutOnCompleteListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lua/c<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;->a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(Lua/f;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "HuaweiIdAuthAPIServiceImpl"

    .line 2
    .line 3
    const-string v1, "SignOutOnCompleteListener onComplete"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v1, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;->a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const-string p1, "signOutResultPendingResult is null"

    .line 14
    .line 15
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->FAILURE:Lcom/huawei/hms/support/api/client/Status;

    .line 20
    .line 21
    invoke-virtual {p1}, Lua/f;->g()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_1

    .line 26
    .line 27
    sget-object v1, Lcom/huawei/hms/support/api/client/Status;->SUCCESS:Lcom/huawei/hms/support/api/client/Status;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p1}, Lua/f;->d()Ljava/lang/Exception;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_2

    .line 35
    .line 36
    instance-of v3, p1, Lcom/huawei/hms/common/ApiException;

    .line 37
    .line 38
    if-eqz v3, :cond_2

    .line 39
    .line 40
    check-cast p1, Lcom/huawei/hms/common/ApiException;

    .line 41
    .line 42
    new-instance v1, Lcom/huawei/hms/support/api/client/Status;

    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/huawei/hms/common/ApiException;->getStatusCode()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    invoke-direct {v1, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const-string p1, "wrong exception while failed"

    .line 53
    .line 54
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    .line 56
    .line 57
    :goto_0
    iget-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;->a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;->getCallback()Lcom/huawei/hms/support/api/client/ResultCallback;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    invoke-interface {p1, v1}, Lcom/huawei/hms/support/api/client/ResultCallback;->onResult(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_3
    const-string p1, "set Result callback after signOut completed"

    .line 70
    .line 71
    invoke-static {v0, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    :goto_1
    return-void
.end method
