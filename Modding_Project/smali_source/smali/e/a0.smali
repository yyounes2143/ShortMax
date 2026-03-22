.class public final Le/a0;
.super Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lca/f;

.field public final synthetic b:Lca/d;


# direct methods
.method public constructor <init>(Lca/d;Lca/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/a0;->a:Lca/f;

    .line 2
    .line 3
    iput-object p1, p0, Le/a0;->b:Lca/d;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a0;->a:Lca/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lca/f;->o()Lca/f$f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Le/a0;->b:Lca/d;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lca/f$f;->b(Lca/d;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final onVideoStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a0;->a:Lca/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lca/f;->o()Lca/f$f;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Le/a0;->b:Lca/d;

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lca/f$f;->a(Lca/d;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method
