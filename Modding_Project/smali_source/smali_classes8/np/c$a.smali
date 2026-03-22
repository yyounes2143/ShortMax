.class Lnp/c$a;
.super Landroid/os/Handler;
.source "DownloadImageTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnp/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnp/c;


# direct methods
.method constructor <init>(Lnp/c;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/c$a;->a:Lnp/c;

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
    iget-object v0, p0, Lnp/c$a;->a:Lnp/c;

    .line 2
    .line 3
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    iget v0, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x2

    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lnp/c$a;->a:Lnp/c;

    .line 21
    .line 22
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lnp/c$a;->a:Lnp/c;

    .line 27
    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    .line 31
    .line 32
    invoke-interface {v0, v1, p1}, Lnp/c$c;->c(Lnp/c;Landroid/graphics/Bitmap;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v0, p0, Lnp/c$a;->a:Lnp/c;

    .line 37
    .line 38
    invoke-static {v0}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lnp/c$a;->a:Lnp/c;

    .line 43
    .line 44
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p1, Landroid/net/Uri;

    .line 47
    .line 48
    invoke-interface {v0, v1, p1}, Lnp/c$c;->b(Lnp/c;Landroid/net/Uri;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    iget-object p1, p0, Lnp/c$a;->a:Lnp/c;

    .line 53
    .line 54
    invoke-static {p1}, Lnp/c;->e(Lnp/c;)Lnp/c$c;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    iget-object v0, p0, Lnp/c$a;->a:Lnp/c;

    .line 59
    .line 60
    invoke-interface {p1, v0}, Lnp/c$c;->a(Lnp/c;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_0
    return-void
.end method
