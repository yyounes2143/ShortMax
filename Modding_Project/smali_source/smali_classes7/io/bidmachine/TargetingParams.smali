.class public final Lio/bidmachine/TargetingParams;
.super Llp/g;
.source "TargetingParams.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llp/g<",
        "Lio/bidmachine/TargetingParams;",
        ">;"
    }
.end annotation


# static fields
.field static final DATA_ID_EXTERNAL_USER_ID:Ljava/lang/String; = "external_user_ids"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private birthdayYear:Ljava/lang/Integer;

.field private blockedParams:Lio/bidmachine/BlockedParams;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private deviceLocation:Landroid/location/Location;

.field private externalUserIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation
.end field

.field private framework:Ljava/lang/String;

.field private gender:Lio/bidmachine/utils/Gender;

.field private isPaid:Ljava/lang/Boolean;

.field private keywords:[Ljava/lang/String;

.field private storeCategory:Ljava/lang/String;

.field private storeSubCategories:[Ljava/lang/String;

.field private storeUrl:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Llp/g;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lio/bidmachine/protobuf/sdk/App$Builder;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/TargetingParams;->lambda$fillAppExtension$0(Lio/bidmachine/protobuf/sdk/App$Builder;[Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$fillAppExtension$0(Lio/bidmachine/protobuf/sdk/App$Builder;[Ljava/lang/String;)V
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget-object v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Lio/bidmachine/protobuf/sdk/App$Builder;->addStoresubcat(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private prepareBlockParams()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/BlockedParams;

    .line 6
    .line 7
    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 11
    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedAdvertiserDomain(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserDomain(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedAdvertiserIABCategory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedAdvertiserIABCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Lio/bidmachine/TargetingParams;->prepareBlockParams()V

    .line 3
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/BlockedParams;

    return-object p0
.end method

.method public bridge synthetic addBlockedApplication(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->addBlockedApplication(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Context$App$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setStoreurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 3
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setPaid(Z)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    return-void
.end method

.method build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V
    .locals 1
    .param p1    # Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 33
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCountry(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 35
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setCity(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 37
    :cond_1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 38
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;->setZip(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    :cond_2
    return-void
.end method

.method build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V
    .locals 7
    .param p1    # Lcom/explorestack/protobuf/adcom/Context$User$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 6
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setYob(I)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 8
    :cond_1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Lio/bidmachine/utils/Gender;->getOrtbValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGender(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 10
    :cond_2
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    array-length v0, v0

    if-lez v0, :cond_5

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    iget-object v2, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 14
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    :cond_3
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setKeywords(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 17
    :cond_5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Geo;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    const/4 v2, 0x0

    .line 19
    invoke-static {v0, v2, v1}, Lfr/e;->d(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;Landroid/location/Location;Z)V

    .line 20
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 21
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 22
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    const-string v1, "external_user_ids"

    .line 23
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    move-result-object v0

    .line 24
    iget-object v1, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/ExternalUserId;

    .line 25
    invoke-virtual {v2}, Lio/bidmachine/ExternalUserId;->getSourceId()Ljava/lang/String;

    move-result-object v3

    .line 26
    invoke-virtual {v2}, Lio/bidmachine/ExternalUserId;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_1

    .line 28
    :cond_7
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v4

    .line 29
    invoke-virtual {v4, v3}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setId(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v3

    .line 30
    invoke-virtual {v3, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;->setValue(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;

    move-result-object v2

    .line 31
    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/adcom/Context$Data$Builder;->addSegment(Lcom/explorestack/protobuf/adcom/Context$Data$Segment$Builder;)Lcom/explorestack/protobuf/adcom/Context$Data$Builder;

    goto :goto_1

    .line 32
    :cond_8
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/adcom/Context$User$Builder;->addData(Lcom/explorestack/protobuf/adcom/Context$Data$Builder;)Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    :cond_9
    return-void
.end method

.method fillAppExtension(Lio/bidmachine/protobuf/sdk/App$Builder;)V
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/sdk/App$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v1, Lio/bidmachine/r5;

    .line 7
    .line 8
    invoke-direct {v1, p1}, Lio/bidmachine/r5;-><init>(Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    .line 15
    .line 16
    new-instance v1, Lio/bidmachine/s5;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lio/bidmachine/s5;-><init>(Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Lio/bidmachine/t5;

    .line 27
    .line 28
    invoke-direct {v1, p1}, Lio/bidmachine/t5;-><init>(Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method getBirthdayYear()Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method getBlockedParams()Lio/bidmachine/BlockedParams;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 2
    .line 3
    return-object v0
.end method

.method getCity()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getCountry()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getDeviceLocation()Landroid/location/Location;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    .line 2
    .line 3
    return-object v0
.end method

.method getExternalUserIdList()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method getFramework()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getGender()Lio/bidmachine/utils/Gender;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    .line 2
    .line 3
    return-object v0
.end method

.method getKeywords()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getPaid()Ljava/lang/Boolean;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method getStoreCategory()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getStoreSubCategories()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getStoreUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getUserId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getZip()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public merge(Lio/bidmachine/TargetingParams;)V
    .locals 2
    .param p1    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    .line 3
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/utils/Gender;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    .line 4
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    .line 5
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    .line 7
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    .line 8
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    .line 9
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    .line 10
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    .line 11
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    .line 12
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    .line 14
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    .line 15
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    iget-object v1, p1, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    invoke-static {v0, v1}, Lio/bidmachine/core/g;->b0(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    .line 16
    iget-object v0, p1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    if-nez v0, :cond_0

    .line 18
    new-instance v0, Lio/bidmachine/BlockedParams;

    invoke-direct {v0}, Lio/bidmachine/BlockedParams;-><init>()V

    iput-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    .line 19
    :cond_0
    iget-object v0, p0, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    iget-object p1, p1, Lio/bidmachine/TargetingParams;->blockedParams:Lio/bidmachine/BlockedParams;

    invoke-virtual {v0, p1}, Lio/bidmachine/BlockedParams;->merge(Lio/bidmachine/BlockedParams;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic merge(Llp/g;)V
    .locals 0
    .param p1    # Llp/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/TargetingParams;

    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->merge(Lio/bidmachine/TargetingParams;)V

    return-void
.end method

.method public setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;
    .locals 1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lio/bidmachine/core/g;->Q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    const-string p1, "Birthday Year should be 4-digit integer, more or equal 1900 and less or equal than current year"

    invoke-static {p1}, Lio/bidmachine/core/a;->g(Ljava/lang/String;)V

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->birthdayYear:Ljava/lang/Integer;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic setBirthdayYear(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setBirthdayYear(Ljava/lang/Integer;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->city:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCity(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCity(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->country:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setCountry(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setCountry(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->deviceLocation:Landroid/location/Location;

    return-object p0
.end method

.method public bridge synthetic setDeviceLocation(Landroid/location/Location;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setDeviceLocation(Landroid/location/Location;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setExternalUserIds(Ljava/util/List;)Lio/bidmachine/TargetingParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/ExternalUserId;",
            ">;)",
            "Lio/bidmachine/TargetingParams;"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->externalUserIdList:Ljava/util/List;

    return-object p0
.end method

.method public bridge synthetic setExternalUserIds(Ljava/util/List;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setExternalUserIds(Ljava/util/List;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->framework:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setFramework(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setFramework(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->gender:Lio/bidmachine/utils/Gender;

    return-object p0
.end method

.method public bridge synthetic setGender(Lio/bidmachine/utils/Gender;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setGender(Lio/bidmachine/utils/Gender;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public varargs setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->keywords:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setKeywords([Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setKeywords([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->isPaid:Ljava/lang/Boolean;

    return-object p0
.end method

.method public bridge synthetic setPaid(Ljava/lang/Boolean;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setPaid(Ljava/lang/Boolean;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeCategory:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStoreCategory(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreCategory(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public varargs setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeSubCategories:[Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStoreSubCategories([Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreSubCategories([Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->storeUrl:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setStoreUrl(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setStoreUrl(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->userId:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setUserId(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method

.method public setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;
    .locals 0

    .line 2
    iput-object p1, p0, Lio/bidmachine/TargetingParams;->zip:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic setZip(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/TargetingParams;->setZip(Ljava/lang/String;)Lio/bidmachine/TargetingParams;

    move-result-object p1

    return-object p1
.end method
