.class public final Lcom/startshorts/androidplayer/bean/auth/BindInfo;
.super Ljava/lang/Object;
.source "BindInfo.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/auth/BindInfo$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final BIND_EMAIL:I = 0x32

.field public static final BIND_FACEBOOK:I = 0x14

.field public static final BIND_GOOGLE:I = 0xa

.field public static final BIND_HUAWEI:I = 0x64

.field public static final BIND_PHONE:I = 0x3c

.field public static final Companion:Lcom/startshorts/androidplayer/bean/auth/BindInfo$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final provider:I

.field private final providerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/auth/BindInfo$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/auth/BindInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->Companion:Lcom/startshorts/androidplayer/bean/auth/BindInfo$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/auth/BindInfo;ILjava/lang/String;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/auth/BindInfo;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->copy(ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(ILjava/lang/String;)Lcom/startshorts/androidplayer/bean/auth/BindInfo;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;-><init>(ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/auth/BindInfo;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 12
    .line 13
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 14
    .line 15
    iget v3, p1, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    return v0
.end method

.method public final getBindName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 7
    .line 8
    const/16 v1, 0xa

    .line 9
    .line 10
    if-eq v0, v1, :cond_4

    .line 11
    .line 12
    const/16 v1, 0x14

    .line 13
    .line 14
    if-eq v0, v1, :cond_3

    .line 15
    .line 16
    const/16 v1, 0x32

    .line 17
    .line 18
    const-string v2, "getString(...)"

    .line 19
    .line 20
    if-eq v0, v1, :cond_2

    .line 21
    .line 22
    const/16 v1, 0x3c

    .line 23
    .line 24
    if-eq v0, v1, :cond_1

    .line 25
    .line 26
    const/16 p1, 0x64

    .line 27
    .line 28
    if-eq v0, p1, :cond_0

    .line 29
    .line 30
    const-string p1, "Unknown"

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const-string p1, "HuaWei"

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    sget v0, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_phone:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    sget v0, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_email:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    const-string p1, "Facebook"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    const-string p1, "Google"

    .line 60
    .line 61
    :goto_0
    return-object p1
.end method

.method public final getBindStatus(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "getString(...)"

    .line 9
    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 20
    .line 21
    const/16 v2, 0x14

    .line 22
    .line 23
    if-eq v0, v2, :cond_2

    .line 24
    .line 25
    const/16 v2, 0xa

    .line 26
    .line 27
    if-eq v0, v2, :cond_2

    .line 28
    .line 29
    const/16 v2, 0x3c

    .line 30
    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    const/16 v2, 0x64

    .line 34
    .line 35
    if-ne v0, v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_2
    :goto_0
    sget v0, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_bind:I

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    :goto_1
    sget v0, Lcom/startshorts/androidplayer/R$string;->bind_info_fragment_unbound:I

    .line 52
    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-object p1
.end method

.method public final getProvider()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 2
    .line 3
    return v0
.end method

.method public final getProviderId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasBind()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    move v0, v1

    .line 16
    :goto_1
    xor-int/2addr v0, v1

    .line 17
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    :goto_0
    add-int/2addr v0, v1

    .line 20
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "BindInfo(provider="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->provider:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", providerId="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->providerId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
