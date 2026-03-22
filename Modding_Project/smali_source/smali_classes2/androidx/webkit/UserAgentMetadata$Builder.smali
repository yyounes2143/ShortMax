.class public final Landroidx/webkit/UserAgentMetadata$Builder;
.super Ljava/lang/Object;
.source "UserAgentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/UserAgentMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mArchitecture:Ljava/lang/String;

.field private mBitness:I

.field private mBrandVersionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation
.end field

.field private mFormFactors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFullVersion:Ljava/lang/String;

.field private mMobile:Z

.field private mModel:Ljava/lang/String;

.field private mPlatform:Ljava/lang/String;

.field private mPlatformVersion:Ljava/lang/String;

.field private mWow64:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBrandVersionList:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mMobile:Z

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBitness:I

    .line 5
    iput-boolean v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mWow64:Z

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFormFactors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroidx/webkit/UserAgentMetadata;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBrandVersionList:Ljava/util/List;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mMobile:Z

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBitness:I

    .line 11
    iput-boolean v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mWow64:Z

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFormFactors:Ljava/util/List;

    .line 13
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getBrandVersionList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBrandVersionList:Ljava/util/List;

    .line 14
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getFullVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFullVersion:Ljava/lang/String;

    .line 15
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getPlatform()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatform:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getPlatformVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatformVersion:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getArchitecture()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mArchitecture:Ljava/lang/String;

    .line 18
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mModel:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->isMobile()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mMobile:Z

    .line 20
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getBitness()I

    move-result v0

    iput v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBitness:I

    .line 21
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->isWow64()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mWow64:Z

    .line 22
    invoke-virtual {p1}, Landroidx/webkit/UserAgentMetadata;->getFormFactors()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFormFactors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/UserAgentMetadata;
    .locals 13

    .line 1
    new-instance v12, Landroidx/webkit/UserAgentMetadata;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBrandVersionList:Ljava/util/List;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFullVersion:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatform:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatformVersion:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mArchitecture:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v6, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mModel:Ljava/lang/String;

    .line 14
    .line 15
    iget-boolean v7, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mMobile:Z

    .line 16
    .line 17
    iget v8, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBitness:I

    .line 18
    .line 19
    iget-boolean v9, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mWow64:Z

    .line 20
    .line 21
    iget-object v10, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFormFactors:Ljava/util/List;

    .line 22
    .line 23
    const/4 v11, 0x0

    .line 24
    move-object v0, v12

    .line 25
    invoke-direct/range {v0 .. v11}, Landroidx/webkit/UserAgentMetadata;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;Landroidx/webkit/UserAgentMetadata$1;)V

    .line 26
    .line 27
    .line 28
    return-object v12
.end method

.method public setArchitecture(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mArchitecture:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setBitness(I)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBitness:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setBrandVersionList(Ljava/util/List;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;)",
            "Landroidx/webkit/UserAgentMetadata$Builder;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mBrandVersionList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public setFormFactors(Ljava/util/List;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 3
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/webkit/UserAgentMetadata$Builder;"
        }
    .end annotation

    .line 1
    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->USER_AGENT_METADATA_FORM_FACTORS:Landroidx/webkit/internal/ApiFeature$NoFramework;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature;->isSupportedByWebView()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {}, Landroidx/webkit/UserAgentMetadata;->access$200()Ljava/util/Set;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 37
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v2, "Invalid form factor: "

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_1
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFormFactors:Ljava/util/List;

    .line 60
    .line 61
    return-object p0

    .line 62
    :cond_2
    invoke-static {}, Landroidx/webkit/internal/WebViewFeatureInternal;->getUnsupportedOperationException()Ljava/lang/UnsupportedOperationException;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    throw p1
.end method

.method public setFullVersion(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFullVersion:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mFullVersion:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Full version should not be blank."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public setMobile(Z)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mMobile:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public setModel(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mModel:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlatform(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatform:Ljava/lang/String;

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatform:Ljava/lang/String;

    .line 18
    .line 19
    return-object p0

    .line 20
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string v0, "Platform should not be blank."

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1
.end method

.method public setPlatformVersion(Ljava/lang/String;)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mPlatformVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setWow64(Z)Landroidx/webkit/UserAgentMetadata$Builder;
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroidx/webkit/UserAgentMetadata$Builder;->mWow64:Z

    .line 2
    .line 3
    return-object p0
.end method
