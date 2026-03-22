.class Lmp/a$a;
.super Ljava/lang/Object;
.source "AssetLoader.java"

# interfaces
.implements Lnp/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmp/a;->e(Landroid/content/Context;Lio/bidmachine/ImageData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmp/a;


# direct methods
.method constructor <init>(Lmp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmp/a$a;->a:Lmp/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lnp/c;)V
    .locals 1
    .param p1    # Lnp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$a;->a:Lmp/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lnp/c;Landroid/net/Uri;)V
    .locals 1
    .param p1    # Lnp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$a;->a:Lmp/a;

    .line 2
    .line 3
    invoke-static {v0}, Lmp/a;->a(Lmp/a;)Lmp/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lmp/g;->e(Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lmp/a$a;->a:Lmp/a;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public c(Lnp/c;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Lnp/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$a;->a:Lmp/a;

    .line 2
    .line 3
    invoke-static {v0}, Lmp/a;->a(Lmp/a;)Lmp/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lmp/g;->l(Landroid/graphics/Bitmap;)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Lmp/a$a;->a:Lmp/a;

    .line 11
    .line 12
    invoke-static {p2, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
