.class public final Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;
.super Ljava/util/LinkedHashMap;
.source "CoroutineExtensions.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Object;",
        "Lgt/k0<",
        "*>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    const/16 v0, 0x65

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge containsValue(Lgt/k0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/k0<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge containsValue(Ljava/lang/Object;)Z
    .locals 1

    .line 2
    instance-of v0, p1, Lgt/k0;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    check-cast p1, Lgt/k0;

    invoke-virtual {p0, p1}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->containsValue(Lgt/k0;)Z

    move-result p1

    return p1
.end method

.method public final bridge entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Lgt/k0<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->getEntries()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Lgt/k0<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/util/AbstractMap;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public bridge getValues()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lgt/k0<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final bridge keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->getKeys()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge remove(Ljava/lang/Object;Lgt/k0;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lgt/k0<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final bridge remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p2, Lgt/k0;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p2, Lgt/k0;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->remove(Ljava/lang/Object;Lgt/k0;)Z

    move-result p1

    return p1
.end method

.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 1
    .param p1    # Ljava/util/Map$Entry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Object;",
            "Lgt/k0<",
            "*>;>;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "eldest"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->size()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/16 v0, 0x64

    .line 11
    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public final bridge size()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->getSize()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public final bridge values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lgt/k0<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/extensions/CoroutineExtensionsKt$deferreds$1;->getValues()Ljava/util/Collection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
