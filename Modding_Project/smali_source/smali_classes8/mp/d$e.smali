.class final Lmp/d$e;
.super Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;
.source "NativeAdObject.java"

# interfaces
.implements Lxq/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmp/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lmp/d;


# direct methods
.method constructor <init>(Lmp/d;Lio/bidmachine/AdProcessCallback;)V
    .locals 0
    .param p1    # Lmp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lmp/d$e;->a:Lmp/d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;-><init>(Lio/bidmachine/AdProcessCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lmp/i;)V
    .locals 2
    .param p1    # Lmp/i;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    :try_start_0
    iget-object v0, p0, Lmp/d$e;->a:Lmp/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lmp/d;->S(Lmp/i;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lmp/d$e;->a:Lmp/d;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getAdRequest()Lio/bidmachine/AdRequest;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lio/bidmachine/nativead/NativeRequest;

    .line 13
    .line 14
    invoke-virtual {v0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lio/bidmachine/nativead/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Lio/bidmachine/nativead/a;->c()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lmp/i;->l()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    iget-object p1, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 33
    .line 34
    const-string v0, "Native ad does not contain all required assets"

    .line 35
    .line 36
    invoke-static {v0}, Lfr/a;->h(Ljava/lang/String;)Lfr/a;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1, v0}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :catch_0
    move-exception p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p1}, Lmp/i;->k()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    iget-object p1, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 53
    .line 54
    invoke-interface {p1}, Lio/bidmachine/AdProcessCallback;->processLoadSuccess()V

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    iget-object v0, p0, Lmp/d$e;->a:Lmp/d;

    .line 59
    .line 60
    invoke-virtual {v0}, Lio/bidmachine/AdObjectImpl;->getApplicationContext()Landroid/content/Context;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1, p1}, Lmp/d;->s(Lmp/d;Landroid/content/Context;Lmp/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :goto_0
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lio/bidmachine/AdObjectImpl$BaseUnifiedAdCallback;->processCallback:Lio/bidmachine/AdProcessCallback;

    .line 72
    .line 73
    const-string v1, "Exception loading native ad assets"

    .line 74
    .line 75
    invoke-static {v1, p1}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {v0, p1}, Lio/bidmachine/AdProcessCallback;->processLoadFail(Lfr/a;)V

    .line 80
    .line 81
    .line 82
    :goto_1
    return-void
.end method
