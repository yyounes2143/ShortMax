.class public final Landroidx/webkit/UserAgentMetadata;
.super Ljava/lang/Object;
.source "UserAgentMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/webkit/UserAgentMetadata$Builder;,
        Landroidx/webkit/UserAgentMetadata$BrandVersion;,
        Landroidx/webkit/UserAgentMetadata$FormFactors;
    }
.end annotation


# static fields
.field public static final BITNESS_DEFAULT:I = 0x0

.field public static final FORM_FACTOR_AUTOMOTIVE:Ljava/lang/String; = "Automotive"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FORM_FACTOR_DESKTOP:Ljava/lang/String; = "Desktop"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FORM_FACTOR_EINK:Ljava/lang/String; = "EInk"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FORM_FACTOR_MOBILE:Ljava/lang/String; = "Mobile"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FORM_FACTOR_TABLET:Ljava/lang/String; = "Tablet"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FORM_FACTOR_WATCH:Ljava/lang/String; = "Watch"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field public static final FORM_FACTOR_XR:Ljava/lang/String; = "XR"
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation
.end field

.field private static final VALID_FORM_FACTORS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArchitecture:Ljava/lang/String;

.field private mBitness:I

.field private final mBrandVersionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation
.end field

.field private final mFormFactors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFullVersion:Ljava/lang/String;

.field private mMobile:Z

.field private final mModel:Ljava/lang/String;

.field private final mPlatform:Ljava/lang/String;

.field private final mPlatformVersion:Ljava/lang/String;

.field private mWow64:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v6, "EInk"

    .line 4
    .line 5
    const-string v7, "Watch"

    .line 6
    .line 7
    const-string v1, "Desktop"

    .line 8
    .line 9
    const-string v2, "Automotive"

    .line 10
    .line 11
    const-string v3, "Mobile"

    .line 12
    .line 13
    const-string v4, "Tablet"

    .line 14
    .line 15
    const-string v5, "XR"

    .line 16
    .line 17
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Landroidx/webkit/UserAgentMetadata;->VALID_FORM_FACTORS:Ljava/util/Set;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;)V
    .locals 0
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 4
    iput-object p2, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 6
    iput-object p4, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 7
    iput-object p5, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 8
    iput-object p6, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 9
    iput-boolean p7, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 10
    iput p8, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 11
    iput-boolean p9, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 12
    iput-object p10, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;Landroidx/webkit/UserAgentMetadata$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Landroidx/webkit/UserAgentMetadata;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZLjava/util/List;)V

    return-void
.end method

.method static synthetic access$200()Ljava/util/Set;
    .locals 1

    .line 1
    sget-object v0, Landroidx/webkit/UserAgentMetadata;->VALID_FORM_FACTORS:Ljava/util/Set;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/webkit/UserAgentMetadata;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/webkit/UserAgentMetadata;

    .line 12
    .line 13
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 16
    .line 17
    if-ne v1, v3, :cond_2

    .line 18
    .line 19
    iget v1, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 20
    .line 21
    iget v3, p1, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 22
    .line 23
    if-ne v1, v3, :cond_2

    .line 24
    .line 25
    iget-boolean v1, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 26
    .line 27
    iget-boolean v3, p1, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 28
    .line 29
    if-ne v1, v3, :cond_2

    .line 30
    .line 31
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 32
    .line 33
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 34
    .line 35
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 42
    .line 43
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_2

    .line 50
    .line 51
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 52
    .line 53
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 64
    .line 65
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_2

    .line 70
    .line 71
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v3, p1, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    if-eqz v1, :cond_2

    .line 90
    .line 91
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    .line 92
    .line 93
    iget-object p1, p1, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    .line 94
    .line 95
    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_2

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_2
    move v0, v2

    .line 103
    :goto_0
    return v0
.end method

.method public getArchitecture()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBitness()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 2
    .line 3
    return v0
.end method

.method public getBrandVersionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/webkit/UserAgentMetadata$BrandVersion;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFormFactors()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFullVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPlatformVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/webkit/UserAgentMetadata;->mBrandVersionList:Ljava/util/List;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/webkit/UserAgentMetadata;->mFullVersion:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Landroidx/webkit/UserAgentMetadata;->mPlatform:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Landroidx/webkit/UserAgentMetadata;->mPlatformVersion:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v4, p0, Landroidx/webkit/UserAgentMetadata;->mArchitecture:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v5, p0, Landroidx/webkit/UserAgentMetadata;->mModel:Ljava/lang/String;

    .line 12
    .line 13
    iget-boolean v6, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 14
    .line 15
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object v6

    .line 19
    iget v7, p0, Landroidx/webkit/UserAgentMetadata;->mBitness:I

    .line 20
    .line 21
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    iget-boolean v8, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 26
    .line 27
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    iget-object v9, p0, Landroidx/webkit/UserAgentMetadata;->mFormFactors:Ljava/util/List;

    .line 32
    .line 33
    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    return v0
.end method

.method public isMobile()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mMobile:Z

    .line 2
    .line 3
    return v0
.end method

.method public isWow64()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/webkit/UserAgentMetadata;->mWow64:Z

    .line 2
    .line 3
    return v0
.end method
