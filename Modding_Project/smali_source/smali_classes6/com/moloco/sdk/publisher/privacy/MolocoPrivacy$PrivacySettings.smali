.class public final Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivacySettings"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private TCFConsent:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private _usPrivacy:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final isAgeRestrictedUser:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isDoNotSell:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isUserConsent:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isAgeRestrictedUser:Ljava/lang/Boolean;

    .line 5
    iput-object p3, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell:Ljava/lang/Boolean;

    .line 6
    invoke-direct {p0, p3}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->getUSPrivacy(Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->_usPrivacy:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move-object p3, v0

    .line 7
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;-><init>(Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 9
    iput-object p4, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->TCFConsent:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 10
    iput-object p5, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->_usPrivacy:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private final getUSPrivacy(Ljava/lang/Boolean;)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p1, "1---"

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    const-string p1, "1-Y-"

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const-string p1, "1-N-"

    .line 18
    .line 19
    :goto_0
    return-object p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

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
    iget-object v1, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent:Ljava/lang/Boolean;

    .line 12
    .line 13
    check-cast p1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent:Ljava/lang/Boolean;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isAgeRestrictedUser:Ljava/lang/Boolean;

    .line 24
    .line 25
    iget-object v3, p1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isAgeRestrictedUser:Ljava/lang/Boolean;

    .line 26
    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    iget-object v1, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell:Ljava/lang/Boolean;

    .line 34
    .line 35
    iget-object v3, p1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell:Ljava/lang/Boolean;

    .line 36
    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    iget-object v1, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->TCFConsent:Ljava/lang/String;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->TCFConsent:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_2

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move v0, v2

    .line 55
    :goto_0
    return v0
.end method

.method public final getTCFConsent()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->TCFConsent:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUsPrivacy()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->_usPrivacy:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent:Ljava/lang/Boolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v1

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget-object v2, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isAgeRestrictedUser:Ljava/lang/Boolean;

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v1

    .line 24
    :goto_1
    add-int/2addr v0, v2

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v2, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell:Ljava/lang/Boolean;

    .line 28
    .line 29
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    goto :goto_2

    .line 36
    :cond_2
    move v2, v1

    .line 37
    :goto_2
    add-int/2addr v0, v2

    .line 38
    mul-int/lit8 v0, v0, 0x1f

    .line 39
    .line 40
    iget-object v2, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->TCFConsent:Ljava/lang/String;

    .line 41
    .line 42
    if-eqz v2, :cond_3

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    :cond_3
    add-int/2addr v0, v1

    .line 49
    return v0
.end method

.method public final isAgeRestrictedUser()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isAgeRestrictedUser:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isDoNotSell()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isDoNotSell:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isUserConsent()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;->isUserConsent:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method
