.class public Lcom/huawei/hms/framework/network/grs/GrsApp;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final BRAND:Ljava/lang/String;

.field private static final INSTANCE:Lcom/huawei/hms/framework/network/grs/GrsApp;

.field private static final TAG:Ljava/lang/String; = "GrsApp"


# instance fields
.field private appConfigName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/framework/network/grs/GrsApp;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/hms/framework/network/grs/GrsApp;->INSTANCE:Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 7
    .line 8
    const-class v0, Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "com.huawei.hms.framework.network.grs"

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    :goto_0
    sput-object v0, Lcom/huawei/hms/framework/network/grs/GrsApp;->BRAND:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const-string v1, "\\."

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v2, "current brand is: "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    aget-object v3, v0, v2

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "GrsApp"

    .line 58
    .line 59
    invoke-static {v3, v1}, Lcom/huawei/hms/framework/common/Logger;->v(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    aget-object v0, v0, v2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getInstance()Lcom/huawei/hms/framework/network/grs/GrsApp;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/framework/network/grs/GrsApp;->INSTANCE:Lcom/huawei/hms/framework/network/grs/GrsApp;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getAppConfigName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/framework/network/grs/GrsApp;->appConfigName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBrand(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hms/framework/network/grs/GrsApp;->BRAND:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const-string p1, ""

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getIssueCountryCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p1, v0}, Lxa/a;->a(Landroid/content/Context;Z)Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/framework/network/grs/local/model/CountryCodeBean;->getCountryCode()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method public setAppConfigName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/framework/network/grs/GrsApp;->appConfigName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
