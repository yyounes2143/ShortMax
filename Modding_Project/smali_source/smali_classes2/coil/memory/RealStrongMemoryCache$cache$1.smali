.class public final Lcoil/memory/RealStrongMemoryCache$cache$1;
.super Landroidx/collection/LruCache;
.source "StrongMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/memory/RealStrongMemoryCache;-><init>(ILk0/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/collection/LruCache<",
        "Lcoil/memory/MemoryCache$Key;",
        "Lcoil/memory/RealStrongMemoryCache$a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcoil/memory/RealStrongMemoryCache;


# direct methods
.method constructor <init>(ILcoil/memory/RealStrongMemoryCache;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcoil/memory/RealStrongMemoryCache$cache$1;->a:Lcoil/memory/RealStrongMemoryCache;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Landroidx/collection/LruCache;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected a(ZLcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$a;Lcoil/memory/RealStrongMemoryCache$a;)V
    .locals 1
    .param p2    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcoil/memory/RealStrongMemoryCache$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcoil/memory/RealStrongMemoryCache$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcoil/memory/RealStrongMemoryCache$cache$1;->a:Lcoil/memory/RealStrongMemoryCache;

    .line 2
    .line 3
    invoke-static {p1}, Lcoil/memory/RealStrongMemoryCache;->d(Lcoil/memory/RealStrongMemoryCache;)Lk0/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$a;->a()Landroid/graphics/Bitmap;

    .line 8
    .line 9
    .line 10
    move-result-object p4

    .line 11
    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$a;->b()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3}, Lcoil/memory/RealStrongMemoryCache$a;->c()I

    .line 16
    .line 17
    .line 18
    move-result p3

    .line 19
    invoke-interface {p1, p2, p4, v0, p3}, Lk0/g;->c(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method protected b(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$a;)I
    .locals 0
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/RealStrongMemoryCache$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p2}, Lcoil/memory/RealStrongMemoryCache$a;->c()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    check-cast p3, Lcoil/memory/RealStrongMemoryCache$a;

    .line 4
    .line 5
    check-cast p4, Lcoil/memory/RealStrongMemoryCache$a;

    .line 6
    .line 7
    invoke-virtual {p0, p1, p2, p3, p4}, Lcoil/memory/RealStrongMemoryCache$cache$1;->a(ZLcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$a;Lcoil/memory/RealStrongMemoryCache$a;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public bridge synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcoil/memory/MemoryCache$Key;

    .line 2
    .line 3
    check-cast p2, Lcoil/memory/RealStrongMemoryCache$a;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcoil/memory/RealStrongMemoryCache$cache$1;->b(Lcoil/memory/MemoryCache$Key;Lcoil/memory/RealStrongMemoryCache$a;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
