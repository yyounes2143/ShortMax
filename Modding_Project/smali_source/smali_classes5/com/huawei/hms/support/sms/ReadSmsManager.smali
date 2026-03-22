.class public Lcom/huawei/hms/support/sms/ReadSmsManager;
.super Ljava/lang/Object;
.source "ReadSmsManager.java"


# static fields
.field private static final a:Lcom/huawei/hms/api/Api;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/huawei/hms/api/Api<",
            "Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lib/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/huawei/hms/api/Api;

    .line 2
    .line 3
    const-string v1, "HuaweiID.API"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/huawei/hms/api/Api;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/huawei/hms/support/sms/ReadSmsManager;->a:Lcom/huawei/hms/api/Api;

    .line 9
    .line 10
    new-instance v0, Lib/i;

    .line 11
    .line 12
    invoke-direct {v0}, Lib/i;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcom/huawei/hms/support/sms/ReadSmsManager;->b:Lib/i;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static start(Landroid/app/Activity;)Lua/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lib/k;

    sget-object v1, Lcom/huawei/hms/support/sms/ReadSmsManager;->a:Lcom/huawei/hms/api/Api;

    const/4 v2, 0x0

    sget-object v3, Lcom/huawei/hms/support/sms/ReadSmsManager;->b:Lib/i;

    invoke-direct {v0, p0, v1, v2, v3}, Lib/k;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    invoke-virtual {v0}, Lib/k;->d()Lua/f;

    move-result-object p0

    return-object p0
.end method

.method public static start(Landroid/content/Context;)Lua/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lib/k;

    sget-object v1, Lcom/huawei/hms/support/sms/ReadSmsManager;->a:Lcom/huawei/hms/api/Api;

    const/4 v2, 0x0

    sget-object v3, Lcom/huawei/hms/support/sms/ReadSmsManager;->b:Lib/i;

    invoke-direct {v0, p0, v1, v2, v3}, Lib/k;-><init>(Landroid/content/Context;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    invoke-virtual {v0}, Lib/k;->d()Lua/f;

    move-result-object p0

    return-object p0
.end method

.method public static startConsent(Landroid/app/Activity;Ljava/lang/String;)Lua/f;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lib/k;

    .line 2
    .line 3
    sget-object v1, Lcom/huawei/hms/support/sms/ReadSmsManager;->a:Lcom/huawei/hms/api/Api;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    sget-object v3, Lcom/huawei/hms/support/sms/ReadSmsManager;->b:Lib/i;

    .line 7
    .line 8
    invoke-direct {v0, p0, v1, v2, v3}, Lib/k;-><init>(Landroid/app/Activity;Lcom/huawei/hms/api/Api;Lcom/huawei/hms/api/Api$ApiOptions$NoOptions;Lcom/huawei/hms/common/internal/AbstractClientBuilder;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lib/k;->e(Ljava/lang/String;)Lua/f;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method
