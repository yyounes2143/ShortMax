.class final Lcoil/ImageLoader$Builder$build$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ImageLoader.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcoil/ImageLoader$Builder;->b()Lcoil/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcoil/memory/MemoryCache;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic d:Lcoil/ImageLoader$Builder;


# direct methods
.method constructor <init>(Lcoil/ImageLoader$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcoil/ImageLoader$Builder$build$1;->d:Lcoil/ImageLoader$Builder;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final b()Lcoil/memory/MemoryCache;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcoil/memory/MemoryCache$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/ImageLoader$Builder$build$1;->d:Lcoil/ImageLoader$Builder;

    .line 4
    .line 5
    invoke-static {v1}, Lcoil/ImageLoader$Builder;->a(Lcoil/ImageLoader$Builder;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcoil/memory/MemoryCache$a;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Lcoil/memory/MemoryCache$a;->a()Lcoil/memory/MemoryCache;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcoil/ImageLoader$Builder$build$1;->b()Lcoil/memory/MemoryCache;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
