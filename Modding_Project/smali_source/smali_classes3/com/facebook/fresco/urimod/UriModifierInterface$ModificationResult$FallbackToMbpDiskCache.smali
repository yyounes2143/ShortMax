.class public final Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;
.super Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.source "UriModifierInterface.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FallbackToMbpDiskCache"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final bestAllowlistedSize:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final isBestSize:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "FallbackToMbpDiskCache(isBestSize="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0, v0, v1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 20
    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 23
    .line 24
    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;ZILjava/lang/Object;)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->copy(Z)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Z)Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;-><init>(Z)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
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
    instance-of v1, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;

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
    check-cast p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 14
    .line 15
    iget-boolean p1, p1, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 16
    .line 17
    if-eq v1, p1, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    return v0
.end method

.method public getBestAllowlistedSize()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->bestAllowlistedSize:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final isBestSize()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/urimod/UriModifierInterface$ModificationResult$FallbackToMbpDiskCache;->isBestSize:Z

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "FallbackToMbpDiskCache(isBestSize="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v0, ")"

    .line 17
    .line 18
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method
