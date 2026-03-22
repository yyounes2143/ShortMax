.class Lmp/a$d;
.super Ljava/lang/Object;
.source "AssetLoader.java"

# interfaces
.implements Lnp/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmp/a;->g(Landroid/content/Context;Ljava/lang/String;)V
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
    iput-object p1, p0, Lmp/a$d;->b:Lmp/a;

    .line 2
    .line 3
    iput-object p2, p0, Lmp/a$d;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lnp/d;Landroid/net/Uri;Lio/bidmachine/iab/vast/a;)V
    .locals 1
    .param p1    # Lnp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$d;->b:Lmp/a;

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
    iget-object v0, p0, Lmp/a$d;->b:Lmp/a;

    .line 11
    .line 12
    invoke-static {v0}, Lmp/a;->a(Lmp/a;)Lmp/g;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p3}, Lmp/g;->b(Lio/bidmachine/iab/vast/a;)V

    .line 17
    .line 18
    .line 19
    iget-object p3, p0, Lmp/a$d;->b:Lmp/a;

    .line 20
    .line 21
    iget-object v0, p0, Lmp/a$d;->a:Landroid/content/Context;

    .line 22
    .line 23
    invoke-static {p3, v0, p2}, Lmp/a;->c(Lmp/a;Landroid/content/Context;Landroid/net/Uri;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lmp/a$d;->b:Lmp/a;

    .line 27
    .line 28
    invoke-static {p2, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public b(Lnp/d;)V
    .locals 1
    .param p1    # Lnp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lmp/a$d;->b:Lmp/a;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lmp/a;->b(Lmp/a;Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
