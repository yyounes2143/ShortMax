.class Lnp/e$a;
.super Landroid/os/Handler;
.source "DownloadVideoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnp/e;-><init>(Landroid/content/Context;Lnp/e$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnp/e;


# direct methods
.method constructor <init>(Lnp/e;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/e$a;->a:Lnp/e;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnp/e$a;->a:Lnp/e;

    .line 2
    .line 3
    invoke-static {v0}, Lnp/e;->a(Lnp/e;)Lnp/e$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast p1, Landroid/net/Uri;

    .line 20
    .line 21
    iget-object v0, p0, Lnp/e$a;->a:Lnp/e;

    .line 22
    .line 23
    invoke-static {v0}, Lnp/e;->a(Lnp/e;)Lnp/e$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lnp/e$a;->a:Lnp/e;

    .line 28
    .line 29
    invoke-interface {v0, v1, p1}, Lnp/e$b;->a(Lnp/e;Landroid/net/Uri;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lnp/e$a;->a:Lnp/e;

    .line 34
    .line 35
    invoke-static {p1}, Lnp/e;->a(Lnp/e;)Lnp/e$b;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v0, p0, Lnp/e$a;->a:Lnp/e;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Lnp/e$b;->b(Lnp/e;)V

    .line 42
    .line 43
    .line 44
    :cond_2
    :goto_0
    return-void
.end method
