.class public final Lk0/d;
.super Ljava/lang/Object;
.source "RealMemoryCache.kt"

# interfaces
.implements Lcoil/memory/MemoryCache;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lk0/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lk0/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lk0/f;Lk0/g;)V
    .locals 0
    .param p1    # Lk0/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lk0/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lk0/d;->a:Lk0/f;

    .line 5
    .line 6
    iput-object p2, p0, Lk0/d;->b:Lk0/g;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lk0/d;->a:Lk0/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lk0/f;->a(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lk0/d;->b:Lk0/g;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lk0/g;->a(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;
    .locals 1
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lk0/d;->a:Lk0/f;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lk0/f;->b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lk0/d;->b:Lk0/g;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Lk0/g;->b(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/MemoryCache$b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    :cond_0
    return-object v0
.end method

.method public c(Lcoil/memory/MemoryCache$Key;Lcoil/memory/MemoryCache$b;)V
    .locals 4
    .param p1    # Lcoil/memory/MemoryCache$Key;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcoil/memory/MemoryCache$b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lk0/d;->a:Lk0/f;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcoil/memory/MemoryCache$Key;->c()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v1}, Lr0/c;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-static {p1, v3, v1, v2, v3}, Lcoil/memory/MemoryCache$Key;->b(Lcoil/memory/MemoryCache$Key;Ljava/lang/String;Ljava/util/Map;ILjava/lang/Object;)Lcoil/memory/MemoryCache$Key;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2}, Lcoil/memory/MemoryCache$b;->a()Landroid/graphics/Bitmap;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p2}, Lcoil/memory/MemoryCache$b;->b()Ljava/util/Map;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {p2}, Lr0/c;->b(Ljava/util/Map;)Ljava/util/Map;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    invoke-interface {v0, p1, v1, p2}, Lk0/f;->c(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Ljava/util/Map;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
