.class public Lcom/huawei/hms/support/account/result/AuthAccount;
.super Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;
.source "AuthAccount.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/huawei/hms/support/account/result/AuthAccount;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/support/account/result/AuthAccount$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/support/account/result/AuthAccount$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/hms/support/account/result/AuthAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;-><init>()V

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 20
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 21
    iput v0, p0, Lcom/huawei/hms/support/account/result/AuthAccount;->a:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;-><init>()V

    .line 16
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->openId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->accessToken:Ljava/lang/String;

    .line 7
    iput-object p6, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 8
    iput p8, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 9
    iput p7, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 10
    iput-object p10, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serverAuthCode:Ljava/lang/String;

    .line 11
    iput-object p9, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->grantedScopes:Ljava/util/Set;

    .line 12
    iput-object p11, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->unionId:Ljava/lang/String;

    .line 13
    iput-object p12, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 14
    iput p13, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->carrierId:I

    return-void
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/Set<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Lcom/huawei/hms/support/account/result/AuthAccount;"
        }
    .end annotation

    .line 1
    new-instance v14, Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 2
    .line 3
    move-object v0, v14

    .line 4
    move-object v1, p0

    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    move-object/from16 v3, p2

    .line 8
    .line 9
    move-object/from16 v4, p3

    .line 10
    .line 11
    move-object/from16 v5, p4

    .line 12
    .line 13
    move-object/from16 v6, p5

    .line 14
    .line 15
    move/from16 v7, p6

    .line 16
    .line 17
    move/from16 v8, p7

    .line 18
    .line 19
    move-object/from16 v9, p8

    .line 20
    .line 21
    move-object/from16 v10, p9

    .line 22
    .line 23
    move-object/from16 v11, p10

    .line 24
    .line 25
    move-object/from16 v12, p11

    .line 26
    .line 27
    move/from16 v13, p12

    .line 28
    .line 29
    invoke-direct/range {v0 .. v13}, Lcom/huawei/hms/support/account/result/AuthAccount;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    return-object v14
.end method

.method public static createDefault()Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 13

    .line 1
    new-instance v8, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v11, 0x0

    .line 7
    const/4 v12, 0x0

    .line 8
    const/4 v0, 0x0

    .line 9
    const/4 v1, 0x0

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    const/4 v7, -0x1

    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x0

    .line 18
    invoke-static/range {v0 .. v12}, Lcom/huawei/hms/support/account/result/AuthAccount;->build(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/Set;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/huawei/hms/support/account/result/AuthAccount;->fromJson(Lorg/json/JSONObject;)Lcom/huawei/hms/support/account/result/AuthAccount;

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "invalid json format"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/huawei/hms/support/account/result/AuthAccount;

    invoke-direct {v0}, Lcom/huawei/hms/support/account/result/AuthAccount;-><init>()V

    .line 6
    invoke-virtual {v0, p0}, Lcom/huawei/hms/support/account/result/AuthAccount;->parserJson(Lorg/json/JSONObject;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    if-ne p1, p0, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    instance-of v0, p1, Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return p1

    .line 11
    :cond_1
    check-cast p1, Lcom/huawei/hms/support/account/result/AuthAccount;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizedScopes()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-interface {v0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public getAccount(Landroid/content/Context;)Landroid/accounts/Account;
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Landroid/accounts/Account;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->email:Ljava/lang/String;

    .line 27
    .line 28
    invoke-direct {v0, v1, p1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 33
    :goto_1
    return-object v0
.end method

.method public getAccountFlag()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/huawei/hms/support/account/result/AuthAccount;->a:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getRequestedScopes()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method protected parserJson(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->parserJson(Lorg/json/JSONObject;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "accountFlag"

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    iput p1, p0, Lcom/huawei/hms/support/account/result/AuthAccount;->a:I

    .line 12
    .line 13
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->readFromParcel(Landroid/os/Parcel;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    iput p1, p0, Lcom/huawei/hms/support/account/result/AuthAccount;->a:I

    .line 9
    .line 10
    return-void
.end method

.method public requestExtraScopes(Ljava/util/List;)Lcom/huawei/hms/support/account/result/AuthAccount;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/huawei/hms/support/api/entity/auth/Scope;",
            ">;)",
            "Lcom/huawei/hms/support/account/result/AuthAccount;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lib/q;->b(Ljava/util/Collection;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->extensionScopes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public bridge synthetic requestExtraScopes(Ljava/util/List;)Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/huawei/hms/support/account/result/AuthAccount;->requestExtraScopes(Ljava/util/List;)Lcom/huawei/hms/support/account/result/AuthAccount;

    move-result-object p1

    return-object p1
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUid()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    const-string v1, "uid"

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUid()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getOpenId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v1, "openId"

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getOpenId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getDisplayName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    const-string v1, "displayName"

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getDisplayName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAvatarUriString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    if-eqz v1, :cond_3

    .line 56
    .line 57
    const-string v1, "photoUriString"

    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAvatarUriString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    .line 65
    .line 66
    :cond_3
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAccessToken()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_4

    .line 71
    .line 72
    const-string v1, "accessToken"

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAccessToken()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    :cond_4
    const-string v1, "status"

    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getStatus()I

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v1, "gender"

    .line 91
    .line 92
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getGender()I

    .line 93
    .line 94
    .line 95
    move-result v2

    .line 96
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizationCode()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_5

    .line 104
    .line 105
    const-string v1, "serverAuthCode"

    .line 106
    .line 107
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAuthorizationCode()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    :cond_5
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getServiceCountryCode()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    if-eqz v1, :cond_6

    .line 119
    .line 120
    const-string v1, "serviceCountryCode"

    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getServiceCountryCode()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    :cond_6
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getCountryCode()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    if-eqz v1, :cond_7

    .line 134
    .line 135
    const-string v1, "countryCode"

    .line 136
    .line 137
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getCountryCode()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    .line 143
    .line 144
    :cond_7
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUnionId()Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_8

    .line 149
    .line 150
    const-string v1, "unionId"

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getUnionId()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v2

    .line 156
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    .line 158
    .line 159
    :cond_8
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getEmail()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    if-eqz v1, :cond_9

    .line 164
    .line 165
    const-string v1, "email"

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getEmail()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getIdToken()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v1

    .line 178
    if-eqz v1, :cond_a

    .line 179
    .line 180
    const-string v1, "idToken"

    .line 181
    .line 182
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getIdToken()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    .line 188
    .line 189
    :cond_a
    const-string v1, "expirationTimeSecs"

    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getExpirationTimeSecs()J

    .line 192
    .line 193
    .line 194
    move-result-wide v2

    .line 195
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getGivenName()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    if-eqz v1, :cond_b

    .line 203
    .line 204
    const-string v1, "givenName"

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getGivenName()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    .line 212
    .line 213
    :cond_b
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getFamilyName()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    if-eqz v1, :cond_c

    .line 218
    .line 219
    const-string v1, "familyName"

    .line 220
    .line 221
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getFamilyName()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 226
    .line 227
    .line 228
    :cond_c
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAgeRange()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    if-eqz v1, :cond_d

    .line 233
    .line 234
    const-string v1, "ageRange"

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getAgeRange()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    .line 242
    .line 243
    :cond_d
    const-string v1, "homeZone"

    .line 244
    .line 245
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getHomeZone()I

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    .line 251
    .line 252
    const-string v1, "accountFlag"

    .line 253
    .line 254
    invoke-virtual {p0}, Lcom/huawei/hms/support/account/result/AuthAccount;->getAccountFlag()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 259
    .line 260
    .line 261
    const-string v1, "carrierId"

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->getCarrierId()I

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->jsonPutScopes(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->jsonPutOpt(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "{uid: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->uid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x2c

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "displayName: "

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->displayName:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "photoUriString: "

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->photoUriString:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, "status: "

    .line 48
    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->status:I

    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, "gender: "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->gender:I

    .line 66
    .line 67
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v2, "serviceCountryCode: "

    .line 74
    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->serviceCountryCode:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, "countryCode: "

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->countryCode:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, "accountFlag"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget v1, p0, Lcom/huawei/hms/support/account/result/AuthAccount;->a:I

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const/16 v1, 0x7d

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/huawei/hms/support/feature/result/AbstractAuthAccount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    .line 3
    .line 4
    iget p2, p0, Lcom/huawei/hms/support/account/result/AuthAccount;->a:I

    .line 5
    .line 6
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
