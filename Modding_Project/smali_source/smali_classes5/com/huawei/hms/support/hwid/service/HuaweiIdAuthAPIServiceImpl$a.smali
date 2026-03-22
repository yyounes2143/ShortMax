.class Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;
.super Ljava/lang/Object;
.source "HuaweiIdAuthAPIServiceImpl.java"

# interfaces
.implements Lcom/huawei/hms/support/api/client/ResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hms/support/api/client/ResultCallback<",
        "Lcom/huawei/hms/support/api/ResolveResult<",
        "Lcom/huawei/hms/support/api/entity/core/JosGetNoticeResp;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;


# direct methods
.method private constructor <init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;->a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;-><init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/support/api/ResolveResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/support/api/entity/core/JosGetNoticeResp;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/Result;->getStatus()Lcom/huawei/hms/support/api/client/Status;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/support/api/client/Status;->isSuccess()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/ResolveResult;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/huawei/hms/support/api/entity/core/JosGetNoticeResp;

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/core/JosGetNoticeResp;->getNoticeIntent()Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/entity/core/JosBaseResp;->getStatusCode()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    const-string p1, "get notice has intent."

    .line 32
    .line 33
    const-string v1, "HuaweiIdAuthAPIServiceImpl"

    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-static {v1, p1, v2}, Lib/t;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;->a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)Ljava/lang/ref/WeakReference;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Landroid/app/Activity;

    .line 50
    .line 51
    iget-object v3, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;->a:Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;

    .line 52
    .line 53
    invoke-static {v3}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)Lcom/huawei/hms/api/HuaweiApiClient;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v3}, Lcom/huawei/hms/api/HuaweiApiClient;->getTopActivity()Landroid/app/Activity;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-static {p1, v3}, Lcom/huawei/hms/utils/Util;->getValidActivity(Landroid/app/Activity;Landroid/app/Activity;)Landroid/app/Activity;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-nez p1, :cond_0

    .line 66
    .line 67
    const-string p1, "showNotice no valid activity!"

    .line 68
    .line 69
    invoke-static {v1, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catch_0
    move-exception p1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v3, "startActivity exception"

    .line 84
    .line 85
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-static {v1, p1, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 104
    .line 105
    .line 106
    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/support/api/ResolveResult;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;->a(Lcom/huawei/hms/support/api/ResolveResult;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
