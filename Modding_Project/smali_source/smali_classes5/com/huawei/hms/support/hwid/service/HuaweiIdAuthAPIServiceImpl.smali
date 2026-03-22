.class public Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;
.super Ljava/lang/Object;
.source "HuaweiIdAuthAPIServiceImpl.java"

# interfaces
.implements Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;,
        Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;,
        Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$a;,
        Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$b;,
        Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$c;
    }
.end annotation


# instance fields
.field private a:Lcom/huawei/hms/api/HuaweiApiClient;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 1

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    const-string p1, "-1"

    .line 32
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method static synthetic a(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)Lcom/huawei/hms/api/HuaweiApiClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    return-object p0
.end method

.method private a(Lcom/huawei/hms/ui/SafeBundle;)Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    .line 4
    const-string v1, "HuaweiIdAuthAPIServiceImpl"

    const-string v2, "bd is null"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 5
    new-instance v1, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    invoke-direct {v1}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;-><init>()V

    return-object v1

    .line 6
    :cond_0
    const-string v2, "ACCESSTOKEN"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 7
    const-string v2, "SERVICE_AUTH_CODE"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 8
    const-string v2, "DISPLAY_NAME"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 9
    const-string v2, "USER_ID"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 10
    const-string v2, "OPEN_ID"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 11
    const-string v2, "PHOTO_URL"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 12
    const-string v2, "SERVICE_COUNTRY_CODE"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 13
    const-string v2, "COUNTRY_CODE"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 14
    const-string v2, "UNION_ID"

    invoke-virtual {v1, v2, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 15
    const-string v2, "GENDER"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(Ljava/lang/String;)I

    move-result v11

    .line 16
    const-string v2, "STATUS"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b(Ljava/lang/String;)I

    move-result v10

    .line 17
    const-string v2, "HOME_ZONE"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->c(Ljava/lang/String;)I

    move-result v2

    .line 18
    const-string v3, "SCOPE"

    invoke-virtual {v1, v3}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    if-eqz v3, :cond_1

    .line 20
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 21
    array-length v3, v0

    const/16 v16, 0x0

    move/from16 v17, v2

    move/from16 v2, v16

    :goto_0
    if-ge v2, v3, :cond_2

    move/from16 v16, v3

    aget-object v3, v0, v2

    move-object/from16 v18, v0

    .line 22
    new-instance v0, Lcom/huawei/hms/support/api/entity/auth/Scope;

    invoke-direct {v0, v3}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    move/from16 v3, v16

    move-object/from16 v0, v18

    goto :goto_0

    :cond_1
    move/from16 v17, v2

    .line 23
    :cond_2
    invoke-static/range {v4 .. v15}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    move-result-object v0

    .line 24
    const-string v2, "ID_TOKEN"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setIdToken(Ljava/lang/String;)V

    .line 25
    const-string v2, "EMAIL"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setEmail(Ljava/lang/String;)V

    .line 26
    const-string v2, "FAMILY_NAME"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setFamilyName(Ljava/lang/String;)V

    .line 27
    const-string v2, "GIVEN_NAME"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setGivenName(Ljava/lang/String;)V

    .line 28
    const-string v2, "AGE_RANGE"

    invoke-virtual {v1, v2}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setAgeRange(Ljava/lang/String;)V

    move/from16 v1, v17

    .line 29
    invoke-virtual {v0, v1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setHomeZone(I)V

    return-object v0
.end method

.method static a(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 3
    check-cast p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getScopes()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(I)V
    .locals 3

    if-nez p1, :cond_0

    .line 33
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    move-result-object p1

    iget-object v0, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    invoke-interface {v0}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I

    move-result p1

    if-nez p1, :cond_0

    .line 34
    new-instance p1, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$4;

    invoke-direct {p1, p0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$4;-><init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)V

    .line 35
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    const-wide/16 v1, 0xc8

    .line 36
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)I
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    const-string p1, "0"

    .line 5
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic b(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static b(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 2
    check-cast p0, Lcom/huawei/hms/api/HuaweiApiClientImpl;

    invoke-virtual {p0}, Lcom/huawei/hms/api/HuaweiApiClientImpl;->getPermissionInfos()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p1, "0"

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    const-string p1, "parse homeZone error."

    const/4 v0, 0x1

    const-string v1, "HuaweiIdAuthAPIServiceImpl"

    invoke-static {v1, p1, v0}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/entity/hwid/SignInReq;
    .locals 3

    .line 5
    invoke-static {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;

    move-result-object p1

    .line 7
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 9
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 12
    invoke-virtual {v2}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->getPermission()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Lcom/huawei/hms/support/api/entity/hwid/SignInReq;

    invoke-direct {p1, v1, v0}, Lcom/huawei/hms/support/api/entity/hwid/SignInReq;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object p1
.end method

.method protected static conversionGender(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "-1"

    .line 8
    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p0, -0x1

    .line 15
    :goto_0
    return p0
.end method

.method protected static conversionHomeZone(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "0"

    .line 8
    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static conversionScopes(Ljava/lang/String;)Ljava/util/HashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashSet<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    const-string v1, " "

    .line 9
    .line 10
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    array-length v1, p0

    .line 15
    const/4 v2, 0x0

    .line 16
    :goto_0
    if-ge v2, v1, :cond_0

    .line 17
    .line 18
    aget-object v3, p0, v2

    .line 19
    .line 20
    new-instance v4, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 21
    .line 22
    invoke-direct {v4, v3}, Lcom/huawei/hms/support/api/entity/auth/Scope;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    add-int/lit8 v2, v2, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    return-object v0
.end method

.method protected static conversionStatus(Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string p0, "0"

    .line 8
    .line 9
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method private d(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/client/Status;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Enter signOutNoConnected"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->getSignInOption(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/huawei/hms/support/hwid/HuaweiIdAuthManager;->getService(Landroid/content/Context;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;)Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthService;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-interface {v0}, Lcom/huawei/hms/support/feature/service/AuthService;->signOut()Lua/f;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;

    .line 26
    .line 27
    new-instance v2, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;

    .line 28
    .line 29
    invoke-direct {v2}, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "hwid.signout"

    .line 33
    .line 34
    invoke-direct {v1, p1, v3, v2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 35
    .line 36
    .line 37
    new-instance p1, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;

    .line 38
    .line 39
    invoke-direct {p1, v1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutOnCompleteListener;-><init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$SignOutNoConnectPendingResult;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lua/f;->a(Lua/c;)Lua/f;

    .line 43
    .line 44
    .line 45
    return-object v1
.end method


# virtual methods
.method public cancelAuthorization(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/client/Status;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Enter cancelAuthorization"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 10
    .line 11
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->c(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/entity/hwid/SignInReq;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v1, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$b;

    .line 16
    .line 17
    const-string v2, "hwid.revokeAccess"

    .line 18
    .line 19
    invoke-direct {v1, p1, v2, v0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$b;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 20
    .line 21
    .line 22
    return-object v1
.end method

.method public getHuaweiIdSignInResultFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;
    .locals 5

    .line 1
    new-instance v0, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    new-instance v3, Lcom/huawei/hms/ui/SafeBundle;

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-direct {v3, p1}, Lcom/huawei/hms/ui/SafeBundle;-><init>(Landroid/os/Bundle;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "RET_CODE"

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v3, p1, v4}, Lcom/huawei/hms/ui/SafeBundle;->getInt(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    new-instance v4, Lcom/huawei/hms/support/api/client/Status;

    .line 34
    .line 35
    invoke-direct {v4, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 36
    .line 37
    .line 38
    if-nez p1, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, v3}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(Lcom/huawei/hms/ui/SafeBundle;)Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;->setAuthHuaweiId(Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;)V

    .line 45
    .line 46
    .line 47
    const-string p1, "getSignInResult success"

    .line 48
    .line 49
    invoke-static {v2, p1, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    const-string p1, "getSignInResult fail"

    .line 54
    .line 55
    invoke-static {v2, p1, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    new-instance v4, Lcom/huawei/hms/support/api/client/Status;

    .line 60
    .line 61
    const/16 p1, 0x7d3

    .line 62
    .line 63
    invoke-direct {v4, p1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 64
    .line 65
    .line 66
    const-string p1, "getSignInResult error"

    .line 67
    .line 68
    invoke-static {v2, p1, v1}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 69
    .line 70
    .line 71
    :goto_0
    invoke-virtual {v0, v4}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 72
    .line 73
    .line 74
    return-object v0
.end method

.method public getHwIdSignInResultFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/support/api/hwid/SignInResult;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object v3

    .line 11
    if-eqz v3, :cond_3

    .line 12
    .line 13
    new-instance v3, Lcom/huawei/hms/ui/SafeBundle;

    .line 14
    .line 15
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-direct {v3, v4}, Lcom/huawei/hms/ui/SafeBundle;-><init>(Landroid/os/Bundle;)V

    .line 20
    .line 21
    .line 22
    const-string v4, "RET_CODE"

    .line 23
    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual {v3, v4, v5}, Lcom/huawei/hms/ui/SafeBundle;->getInt(Ljava/lang/String;I)I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    if-nez v4, :cond_0

    .line 30
    .line 31
    const-string v0, "GENDER"

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v5, "USER_ID"

    .line 38
    .line 39
    const-string v6, ""

    .line 40
    .line 41
    invoke-virtual {v3, v5, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    const-string v5, "STATUS"

    .line 46
    .line 47
    invoke-virtual {v3, v5}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    const-string v7, "SCOPE"

    .line 52
    .line 53
    invoke-virtual {v3, v7}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v7

    .line 57
    const-string v9, "ID_TOKEN"

    .line 58
    .line 59
    invoke-virtual {v3, v9}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v15

    .line 63
    const-string v9, "EMAIL"

    .line 64
    .line 65
    invoke-virtual {v3, v9}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v14

    .line 69
    const-string v9, "FAMILY_NAME"

    .line 70
    .line 71
    invoke-virtual {v3, v9}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v13

    .line 75
    const-string v9, "GIVEN_NAME"

    .line 76
    .line 77
    invoke-virtual {v3, v9}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v12

    .line 81
    const-string v9, "AGE_RANGE"

    .line 82
    .line 83
    invoke-virtual {v3, v9}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    const-string v9, "HOME_ZONE"

    .line 88
    .line 89
    invoke-virtual {v3, v9}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v19

    .line 93
    const-string v9, "OPEN_ID"

    .line 94
    .line 95
    invoke-virtual {v3, v9, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v9

    .line 99
    const-string v10, "DISPLAY_NAME"

    .line 100
    .line 101
    invoke-virtual {v3, v10, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v10

    .line 105
    const-string v1, "PHOTO_URL"

    .line 106
    .line 107
    invoke-virtual {v3, v1}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    move-object/from16 p1, v11

    .line 112
    .line 113
    const-string v11, "ACCESSTOKEN"

    .line 114
    .line 115
    invoke-virtual {v3, v11, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v11

    .line 119
    move-object/from16 v16, v12

    .line 120
    .line 121
    const-string v12, "SERVICE_COUNTRY_CODE"

    .line 122
    .line 123
    invoke-virtual {v3, v12, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v12

    .line 127
    invoke-static {v5}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->conversionStatus(Ljava/lang/String;)I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    invoke-static {v0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->conversionGender(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    invoke-static {v7}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->conversionScopes(Ljava/lang/String;)Ljava/util/HashSet;

    .line 136
    .line 137
    .line 138
    move-result-object v17

    .line 139
    const-string v7, "SERVICE_AUTH_CODE"

    .line 140
    .line 141
    invoke-virtual {v3, v7, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v18

    .line 145
    const-string v7, "UNION_ID"

    .line 146
    .line 147
    invoke-virtual {v3, v7, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v20

    .line 151
    const-string v7, "COUNTRY_CODE"

    .line 152
    .line 153
    invoke-virtual {v3, v7, v6}, Lcom/huawei/hms/ui/SafeBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    move-object v7, v9

    .line 158
    move-object v9, v10

    .line 159
    move-object v10, v1

    .line 160
    move-object/from16 v1, p1

    .line 161
    .line 162
    move-object/from16 v6, v16

    .line 163
    .line 164
    move-object/from16 v21, v2

    .line 165
    .line 166
    move-object v2, v13

    .line 167
    move v13, v5

    .line 168
    move-object v5, v14

    .line 169
    move v14, v0

    .line 170
    move-object v0, v15

    .line 171
    move-object/from16 v15, v17

    .line 172
    .line 173
    move-object/from16 v16, v18

    .line 174
    .line 175
    move-object/from16 v17, v20

    .line 176
    .line 177
    move-object/from16 v18, v3

    .line 178
    .line 179
    invoke-static/range {v7 .. v18}, Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-virtual {v3, v0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setIdToken(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v5}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setEmail(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v3, v2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setFamilyName(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v3, v6}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setGivenName(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setAgeRange(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    invoke-static/range {v19 .. v19}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->conversionHomeZone(Ljava/lang/String;)I

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    invoke-virtual {v3, v0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->setHomeZone(I)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 206
    .line 207
    invoke-direct {v0, v4}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Lcom/huawei/hms/support/api/hwid/SignInResult;

    .line 211
    .line 212
    invoke-direct {v1, v0}, Lcom/huawei/hms/support/api/hwid/SignInResult;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v3}, Lcom/huawei/hms/support/api/hwid/SignInResult;->setAuthHuaweiId(Lcom/huawei/hms/support/hwid/result/AuthHuaweiId;)V

    .line 219
    .line 220
    .line 221
    const-string v0, "getSignInResult success"

    .line 222
    .line 223
    move-object/from16 v3, v21

    .line 224
    .line 225
    const/4 v2, 0x1

    .line 226
    invoke-static {v3, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 227
    .line 228
    .line 229
    move-object/from16 v5, p0

    .line 230
    .line 231
    goto :goto_2

    .line 232
    :cond_0
    move-object v3, v2

    .line 233
    const/16 v1, 0x7d2

    .line 234
    .line 235
    const/4 v2, 0x0

    .line 236
    if-eq v4, v1, :cond_2

    .line 237
    .line 238
    const/16 v1, 0x7d4

    .line 239
    .line 240
    if-ne v4, v1, :cond_1

    .line 241
    .line 242
    goto :goto_0

    .line 243
    :cond_1
    move-object/from16 v5, p0

    .line 244
    .line 245
    move-object v1, v2

    .line 246
    goto :goto_1

    .line 247
    :cond_2
    :goto_0
    new-instance v1, Ljava/util/Random;

    .line 248
    .line 249
    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 250
    .line 251
    .line 252
    const-string v5, "SDK version >= 23"

    .line 253
    .line 254
    const/4 v6, 0x1

    .line 255
    invoke-static {v3, v5, v6}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 256
    .line 257
    .line 258
    move-object/from16 v5, p0

    .line 259
    .line 260
    iget-object v6, v5, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 261
    .line 262
    invoke-interface {v6}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    .line 263
    .line 264
    .line 265
    move-result-object v6

    .line 266
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    const/high16 v7, 0x4000000

    .line 271
    .line 272
    invoke-static {v6, v1, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    :goto_1
    new-instance v6, Lcom/huawei/hms/support/api/client/Status;

    .line 277
    .line 278
    invoke-direct {v6, v4, v2, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(ILjava/lang/String;Landroid/app/PendingIntent;)V

    .line 279
    .line 280
    .line 281
    new-instance v1, Lcom/huawei/hms/support/api/hwid/SignInResult;

    .line 282
    .line 283
    invoke-direct {v1, v6}, Lcom/huawei/hms/support/api/hwid/SignInResult;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {v1, v6}, Lcom/huawei/hms/support/api/client/Result;->setStatus(Lcom/huawei/hms/support/api/client/Status;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {v1, v0}, Lcom/huawei/hms/support/api/hwid/SignInResult;->setData(Landroid/content/Intent;)V

    .line 290
    .line 291
    .line 292
    const-string v0, "getSignInResult fail"

    .line 293
    .line 294
    const/4 v2, 0x1

    .line 295
    invoke-static {v3, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    .line 297
    .line 298
    goto :goto_2

    .line 299
    :cond_3
    move-object/from16 v5, p0

    .line 300
    .line 301
    move-object v3, v2

    .line 302
    const/4 v2, 0x1

    .line 303
    new-instance v0, Lcom/huawei/hms/support/api/client/Status;

    .line 304
    .line 305
    const/16 v1, 0x7d3

    .line 306
    .line 307
    invoke-direct {v0, v1}, Lcom/huawei/hms/support/api/client/Status;-><init>(I)V

    .line 308
    .line 309
    .line 310
    new-instance v1, Lcom/huawei/hms/support/api/hwid/SignInResult;

    .line 311
    .line 312
    invoke-direct {v1, v0}, Lcom/huawei/hms/support/api/hwid/SignInResult;-><init>(Lcom/huawei/hms/support/api/client/Status;)V

    .line 313
    .line 314
    .line 315
    const-string v0, "getSignInResult error"

    .line 316
    .line 317
    invoke-static {v3, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 318
    .line 319
    .line 320
    :goto_2
    return-object v1
.end method

.method public getSignInIntent(Lcom/huawei/hms/api/HuaweiApiClient;)Landroid/content/Intent;
    .locals 4

    .line 1
    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->getSignInOption(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-object v2

    .line 13
    :cond_0
    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getSubAppInfo()Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-eqz v3, :cond_1

    .line 18
    .line 19
    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getSubAppInfo()Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Lcom/huawei/hms/support/api/client/SubAppInfo;->getSubAppID()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    :cond_1
    invoke-static {v0, v1, v2}, Lib/q0;->a(Landroid/content/Context;Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method protected getSignInOption(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->getApiMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/huawei/hms/support/hwid/HuaweiIdAuthAPIManager;->HUAWEI_OAUTH_API:Lcom/huawei/hms/api/Api;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/huawei/hms/api/Api$ApiOptions;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    instance-of v0, p1, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    check-cast p1, Lcom/huawei/hms/support/hwid/request/HuaweiIdAuthParams;

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    return-object p1
.end method

.method public parseHuaweiIdFromIntent(Landroid/content/Intent;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;
    .locals 0

    .line 1
    invoke-static {p1}, Lib/q0;->c(Landroid/content/Intent;)Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public signIn(Landroid/app/Activity;Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/hwid/SignInResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Enter signIn"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "Activity must not be null."

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    const-string v0, "HuaweiApiClient must not be null."

    .line 15
    .line 16
    invoke-static {p2, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    invoke-static {p2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {p2}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 47
    .line 48
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->getPermission()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_1
    new-instance v1, Lcom/huawei/hms/support/api/entity/hwid/SignInReq;

    .line 86
    .line 87
    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/support/api/entity/hwid/SignInReq;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 88
    .line 89
    .line 90
    iput-object p2, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 91
    .line 92
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    iput-object v0, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b:Ljava/lang/ref/WeakReference;

    .line 98
    .line 99
    new-instance p1, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$1;

    .line 100
    .line 101
    const-string v0, "hwid.signin"

    .line 102
    .line 103
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$1;-><init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 104
    .line 105
    .line 106
    return-object p1
.end method

.method public signInBackend(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/hwid/SignInResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Enter signInBackend"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "HuaweiApiClient must not be null."

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->b(Lcom/huawei/hms/api/HuaweiApiClient;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    new-instance v2, Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_0

    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Lcom/huawei/hms/support/api/entity/auth/Scope;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/entity/auth/Scope;->getScopeUri()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-eqz v3, :cond_1

    .line 67
    .line 68
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;

    .line 73
    .line 74
    invoke-virtual {v3}, Lcom/huawei/hms/support/api/entity/auth/PermissionInfo;->getPermission()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_1
    new-instance v1, Lcom/huawei/hms/support/api/entity/hwid/SignInReq;

    .line 83
    .line 84
    invoke-direct {v1, v2, v0}, Lcom/huawei/hms/support/api/entity/hwid/SignInReq;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$2;

    .line 88
    .line 89
    const-string v2, "hwid.signinbackend"

    .line 90
    .line 91
    invoke-direct {v0, p0, p1, v2, v1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$2;-><init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 92
    .line 93
    .line 94
    return-object v0
.end method

.method public signOut(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/client/Status;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Enter signOut"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/huawei/hms/api/HuaweiApiClient;->isConnected()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->d(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/client/PendingResult;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$c;

    .line 21
    .line 22
    new-instance v1, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/huawei/hms/support/api/entity/hwid/SignOutReq;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "hwid.signout"

    .line 28
    .line 29
    invoke-direct {v0, p1, v2, v1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$c;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 30
    .line 31
    .line 32
    return-object v0
.end method

.method public silentSignIn(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/common/api/OptionalPendingResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/api/HuaweiApiClient;",
            ")",
            "Lcom/huawei/hms/common/api/OptionalPendingResult<",
            "Lcom/huawei/hms/support/hwid/result/HuaweiIdAuthResult;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "Enter silentSignIn"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "HuaweiIdAuthAPIServiceImpl"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    const-string v0, "HuaweiApiClient must not be null."

    .line 10
    .line 11
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->a:Lcom/huawei/hms/api/HuaweiApiClient;

    .line 15
    .line 16
    invoke-direct {p0, p1}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;->c(Lcom/huawei/hms/api/HuaweiApiClient;)Lcom/huawei/hms/support/api/entity/hwid/SignInReq;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    new-instance v1, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$3;

    .line 21
    .line 22
    const-string v2, "hwid.signinbackend"

    .line 23
    .line 24
    invoke-direct {v1, p0, p1, v2, v0}, Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl$3;-><init>(Lcom/huawei/hms/support/hwid/service/HuaweiIdAuthAPIServiceImpl;Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Lcom/huawei/hms/common/api/internal/OptionalPendingResultImpl;

    .line 28
    .line 29
    invoke-direct {p1, v1}, Lcom/huawei/hms/common/api/internal/OptionalPendingResultImpl;-><init>(Lcom/huawei/hms/support/api/client/PendingResult;)V

    .line 30
    .line 31
    .line 32
    return-object p1
.end method
