.class public final Lf/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/mediation/MaxAdListener;


# instance fields
.field public final synthetic a:Lf/e;


# direct methods
.method public constructor <init>(Lf/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/b;->a:Lf/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAdClicked(Lcom/applovin/mediation/MaxAd;)V
    .locals 3

    .line 1
    const-string v0, "maxAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 9
    .line 10
    iget-object v0, v0, Lf/e;->e:Lca/e;

    .line 11
    .line 12
    const-string v1, "AdManager:ApplovinMax:Listener"

    .line 13
    .line 14
    invoke-static {v0, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "toMaxAdListener:onAdClicked"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 24
    .line 25
    iget-object v2, v0, Lf/e;->f:Lca/f;

    .line 26
    .line 27
    if-nez v2, :cond_0

    .line 28
    .line 29
    iget-object v2, v0, Lf/e;->e:Lca/e;

    .line 30
    .line 31
    invoke-static {v2, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "err:adRequestParam is null"

    .line 36
    .line 37
    invoke-virtual {p1, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    iget-object p1, v0, Lf/e;->f:Lca/f;

    .line 41
    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    iget-object v1, v0, Lf/e;->a:Lfa/c;

    .line 45
    .line 46
    invoke-virtual {v1}, Lda/f;->r()Ld/a;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v0, v0, Lf/e;->c:Lca/d;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    .line 54
    .line 55
    invoke-static {v0, p1}, Ld/a;->h(Lca/d;Lca/f;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    return-void
.end method

.method public final onAdDisplayFailed(Lcom/applovin/mediation/MaxAd;Lcom/applovin/mediation/MaxError;)V
    .locals 2

    .line 1
    const-string v0, "maxAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lga/a;->a:Lga/a;

    .line 12
    .line 13
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 14
    .line 15
    iget-object v0, v0, Lf/e;->e:Lca/e;

    .line 16
    .line 17
    const-string v1, "AdManager:ApplovinMax:Listener"

    .line 18
    .line 19
    invoke-static {v0, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "toMaxAdListener:onAdDisplayFailed"

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lf/b;->a:Lf/e;

    .line 29
    .line 30
    invoke-static {p1, p2}, Lf/e;->e(Lf/e;Lcom/applovin/mediation/MaxError;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onAdDisplayed(Lcom/applovin/mediation/MaxAd;)V
    .locals 2

    .line 1
    const-string v0, "maxAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 9
    .line 10
    iget-object v0, v0, Lf/e;->e:Lca/e;

    .line 11
    .line 12
    const-string v1, "AdManager:ApplovinMax:Listener"

    .line 13
    .line 14
    invoke-static {v0, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "toMaxAdListener:onAdDisplayed"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lf/b;->a:Lf/e;

    .line 24
    .line 25
    invoke-static {p1}, Lf/e;->c(Lf/e;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onAdHidden(Lcom/applovin/mediation/MaxAd;)V
    .locals 4

    .line 1
    const-string v0, "maxAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lga/a;->a:Lga/a;

    .line 7
    .line 8
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 9
    .line 10
    iget-object v0, v0, Lf/e;->e:Lca/e;

    .line 11
    .line 12
    const-string v1, "AdManager:ApplovinMax:Listener"

    .line 13
    .line 14
    invoke-static {v0, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v2, "toMaxAdListener:onAdHidden"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 24
    .line 25
    iget-boolean v2, v0, Lf/e;->h:Z

    .line 26
    .line 27
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, v0, Lf/e;->f:Lca/f;

    .line 32
    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    iget-object v3, v0, Lf/e;->e:Lca/e;

    .line 36
    .line 37
    invoke-static {v3, v1}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v3, "err:adRequestParam is null"

    .line 42
    .line 43
    invoke-virtual {p1, v1, v3}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    :cond_0
    iget-object p1, v0, Lf/e;->f:Lca/f;

    .line 47
    .line 48
    if-eqz p1, :cond_1

    .line 49
    .line 50
    iget-object v1, v0, Lf/e;->c:Lca/d;

    .line 51
    .line 52
    const/4 v3, 0x0

    .line 53
    invoke-virtual {v1, v3}, Lca/d;->v(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lf/e;->a:Lfa/c;

    .line 57
    .line 58
    iget-object v3, v0, Lf/e;->b:Ljava/lang/String;

    .line 59
    .line 60
    invoke-virtual {v1, v3}, Lda/f;->M(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lf/e;->a:Lfa/c;

    .line 64
    .line 65
    invoke-virtual {v1}, Lda/f;->r()Ld/a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    iget-object v0, v0, Lf/e;->c:Lca/d;

    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    invoke-static {v0, p1, v2}, Ld/a;->e(Lca/d;Lca/f;Ljava/lang/Boolean;)V

    .line 75
    .line 76
    .line 77
    :cond_1
    return-void
.end method

.method public final onAdLoadFailed(Ljava/lang/String;Lcom/applovin/mediation/MaxError;)V
    .locals 7

    .line 1
    const-string v0, "adUnitId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "error"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getRequestLatencyMillis()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    sget-object p1, Lga/a;->a:Lga/a;

    .line 16
    .line 17
    iget-object v2, p0, Lf/b;->a:Lf/e;

    .line 18
    .line 19
    iget-object v2, v2, Lf/e;->e:Lca/e;

    .line 20
    .line 21
    const-string v3, "AdManager:ApplovinMax:Listener"

    .line 22
    .line 23
    invoke-static {v2, v3}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v4, "toMaxAdListener:onAdLoadFailed:"

    .line 30
    .line 31
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v0, "ms"

    .line 38
    .line 39
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p1, v2, v0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lf/b;->a:Lf/e;

    .line 50
    .line 51
    iget-object v0, p1, Lf/e;->a:Lfa/c;

    .line 52
    .line 53
    iget-object v1, p1, Lf/e;->e:Lca/e;

    .line 54
    .line 55
    iget-object v2, p1, Lf/e;->g:Lg/a;

    .line 56
    .line 57
    iget-object v3, p1, Lf/e;->b:Ljava/lang/String;

    .line 58
    .line 59
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getCode()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    invoke-interface {p2}, Lcom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    const-string p1, "error.message"

    .line 68
    .line 69
    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    const-string v6, ""

    .line 73
    .line 74
    invoke-virtual/range {v0 .. v6}, Lfa/c;->a0(Lca/e;Lg/a;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public final onAdLoaded(Lcom/applovin/mediation/MaxAd;)V
    .locals 6

    .line 1
    const-string v0, "maxAd"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getRequestLatencyMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    sget-object v2, Lga/a;->a:Lga/a;

    .line 11
    .line 12
    iget-object v3, p0, Lf/b;->a:Lf/e;

    .line 13
    .line 14
    iget-object v3, v3, Lf/e;->e:Lca/e;

    .line 15
    .line 16
    const-string v4, "AdManager:ApplovinMax:Listener"

    .line 17
    .line 18
    invoke-static {v3, v4}, Ld/h;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    new-instance v4, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v5, "toMaxAdListener:onAdLoaded:"

    .line 25
    .line 26
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v0, "ms"

    .line 33
    .line 34
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v2, v3, v0}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lf/b;->a:Lf/e;

    .line 45
    .line 46
    iget-object v1, v0, Lf/e;->a:Lfa/c;

    .line 47
    .line 48
    iget-object v2, v0, Lf/e;->b:Ljava/lang/String;

    .line 49
    .line 50
    iget-object v3, v0, Lf/e;->d:Ljava/lang/Object;

    .line 51
    .line 52
    if-nez v3, :cond_0

    .line 53
    .line 54
    move-object v3, p1

    .line 55
    :cond_0
    iget-object v0, v0, Lf/e;->g:Lg/a;

    .line 56
    .line 57
    invoke-interface {p1}, Lcom/applovin/mediation/MaxAd;->getNetworkName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-virtual {v1, v2, v3, v0, p1}, Lfa/c;->b0(Ljava/lang/String;Ljava/lang/Object;Lg/a;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method
