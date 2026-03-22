.class Lmp/a$c;
.super Ljava/lang/Object;
.source "AssetLoader.java"

# interfaces
.implements Lnp/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmp/a;->h(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lmp/a;


# direct methods
.method constructor <init>(Lmp/a;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lmp/a$c;->b:Lmp/a;

    .line 2
    .line 3
    iput-object p2, p0, Lmp/a$c;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lnp/e;Landroid/net/Uri;)V
    .locals 2
    .param p1    # Lnp/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$c;->b:Lmp/a;

    .line 2
    .line 3
    invoke-static {v0}, Lmp/a;->a(Lmp/a;)Lmp/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p2}, Lmp/g;->j(Landroid/net/Uri;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lmp/a$c;->b:Lmp/a;

    .line 11
    .line 12
    iget-object v1, p0, Lmp/a$c;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0, v1, p2}, Lmp/a;->c(Lmp/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lmp/a$c;->b:Lmp/a;

    .line 18
    .line 19
    invoke-static {p2, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public b(Lnp/e;)V
    .locals 1
    .param p1    # Lnp/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$c;->b:Lmp/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
