.class public final Lcom/vungle/ads/internal/load/AdRequest;
.super Ljava/lang/Object;
.source "AdRequest.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final adMarkup:Lcom/vungle/ads/internal/model/BidPayload;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final placement:Lcom/vungle/ads/internal/model/Placement;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final requestAdSize:Lcom/vungle/ads/VungleAdSize;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/ads/internal/model/Placement;Lcom/vungle/ads/internal/model/BidPayload;Lcom/vungle/ads/VungleAdSize;)V
    .locals 1
    .param p1    # Lcom/vungle/ads/internal/model/Placement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/model/BidPayload;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/vungle/ads/VungleAdSize;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "placement"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 14
    .line 15
    return-void
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
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-class v3, Lcom/vungle/ads/internal/load/AdRequest;

    .line 13
    .line 14
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-nez v2, :cond_1

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    check-cast p1, Lcom/vungle/ads/internal/load/AdRequest;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 24
    .line 25
    invoke-virtual {v2}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    iget-object v3, p1, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 30
    .line 31
    invoke-virtual {v3}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-nez v2, :cond_2

    .line 40
    .line 41
    return v1

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 45
    .line 46
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    return v1

    .line 53
    :cond_3
    iget-object v2, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    .line 56
    .line 57
    if-eqz v2, :cond_4

    .line 58
    .line 59
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    goto :goto_0

    .line 64
    :cond_4
    if-nez p1, :cond_5

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_5
    move v0, v1

    .line 68
    :goto_0
    return v0

    .line 69
    :cond_6
    :goto_1
    return v1
.end method

.method public final getAdMarkup()Lcom/vungle/ads/internal/model/BidPayload;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlacement()Lcom/vungle/ads/internal/model/Placement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRequestAdSize()Lcom/vungle/ads/VungleAdSize;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    mul-int/lit8 v0, v0, 0x1f

    .line 12
    .line 13
    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, v2

    .line 24
    :goto_0
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/BidPayload;->hashCode()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    :cond_1
    add-int/2addr v0, v2

    .line 36
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
    const-string v1, "AdRequest{placementId=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->placement:Lcom/vungle/ads/internal/model/Placement;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/vungle/ads/internal/model/Placement;->getReferenceId()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "\', adMarkup="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->adMarkup:Lcom/vungle/ads/internal/model/BidPayload;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", requestAdSize="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/vungle/ads/internal/load/AdRequest;->requestAdSize:Lcom/vungle/ads/VungleAdSize;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x7d

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method
