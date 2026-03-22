.class final Lcoil/ImageLoader$Builder$build$2;
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
        "Le0/a;",
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
    iput-object p1, p0, Lcoil/ImageLoader$Builder$build$2;->d:Lcoil/ImageLoader$Builder;

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
.method public final b()Le0/a;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lr0/r;->a:Lr0/r;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil/ImageLoader$Builder$build$2;->d:Lcoil/ImageLoader$Builder;

    .line 4
    .line 5
    invoke-static {v1}, Lcoil/ImageLoader$Builder;->a(Lcoil/ImageLoader$Builder;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lr0/r;->a(Landroid/content/Context;)Le0/a;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcoil/ImageLoader$Builder$build$2;->b()Le0/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
