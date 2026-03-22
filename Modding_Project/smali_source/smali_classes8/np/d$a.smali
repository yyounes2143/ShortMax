.class Lnp/d$a;
.super Landroid/os/Handler;
.source "DownloadVastVideoTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnp/d;-><init>(Landroid/content/Context;Lnp/d$b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lnp/d;


# direct methods
.method constructor <init>(Lnp/d;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnp/d$a;->a:Lnp/d;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lnp/d$a;->a:Lnp/d;

    .line 2
    .line 3
    invoke-static {v0}, Lnp/d;->a(Lnp/d;)Lnp/d$b;

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
    check-cast p1, Landroid/util/Pair;

    .line 20
    .line 21
    iget-object v0, p0, Lnp/d$a;->a:Lnp/d;

    .line 22
    .line 23
    invoke-static {v0}, Lnp/d;->a(Lnp/d;)Lnp/d$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lnp/d$a;->a:Lnp/d;

    .line 28
    .line 29
    iget-object v2, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v2, Landroid/net/Uri;

    .line 32
    .line 33
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p1, Lio/bidmachine/iab/vast/a;

    .line 36
    .line 37
    invoke-interface {v0, v1, v2, p1}, Lnp/d$b;->a(Lnp/d;Landroid/net/Uri;Lio/bidmachine/iab/vast/a;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object p1, p0, Lnp/d$a;->a:Lnp/d;

    .line 42
    .line 43
    invoke-static {p1}, Lnp/d;->a(Lnp/d;)Lnp/d$b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iget-object v0, p0, Lnp/d$a;->a:Lnp/d;

    .line 48
    .line 49
    invoke-interface {p1, v0}, Lnp/d$b;->b(Lnp/d;)V

    .line 50
    .line 51
    .line 52
    :cond_2
    :goto_0
    return-void
.end method
