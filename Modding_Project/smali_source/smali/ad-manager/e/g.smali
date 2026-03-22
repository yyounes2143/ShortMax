.class public final Lad-manager/e/g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic d:Lfa/c;

.field public final synthetic e:Lca/e;

.field public final synthetic f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lfa/c;Lca/e;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/g;->d:Lfa/c;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/g;->e:Lca/e;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/g;->f:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lad-manager/e/g;->d:Lfa/c;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/g;->e:Lca/e;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lfa/c;->W(Lfa/c;Lca/e;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    sget-object v0, Lca/k;->a:Lca/k;

    .line 13
    .line 14
    sget-object v1, Lcom/hades/aar/admanager/core/AdFormat;->APP_OPEN:Lcom/hades/aar/admanager/core/AdFormat;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lca/k;->i(Lcom/hades/aar/admanager/core/AdFormat;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    sget-object v0, Lga/a;->a:Lga/a;

    .line 23
    .line 24
    iget-object v1, p0, Lad-manager/e/g;->d:Lfa/c;

    .line 25
    .line 26
    iget-object v2, p0, Lad-manager/e/g;->e:Lca/e;

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Lfa/c;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "loadAppOpenAd -> Blocked by Policy"

    .line 33
    .line 34
    invoke-virtual {v0, v1, v2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 39
    .line 40
    iget-object v1, p0, Lad-manager/e/g;->d:Lfa/c;

    .line 41
    .line 42
    iget-object v2, p0, Lad-manager/e/g;->e:Lca/e;

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lfa/c;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const-string v2, "Loading AppOpen Ad"

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lga/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v0, Lcom/applovin/mediation/ads/MaxAppOpenAd;

    .line 54
    .line 55
    iget-object v1, p0, Lad-manager/e/g;->e:Lca/e;

    .line 56
    .line 57
    invoke-virtual {v1}, Lca/e;->e()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iget-object v2, p0, Lad-manager/e/g;->d:Lfa/c;

    .line 62
    .line 63
    invoke-static {v2}, Lfa/c;->X(Lfa/c;)Landroid/content/Context;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/applovin/mediation/ads/MaxAppOpenAd;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    iget-object v4, p0, Lad-manager/e/g;->d:Lfa/c;

    .line 71
    .line 72
    iget-object v5, p0, Lad-manager/e/g;->f:Ljava/lang/String;

    .line 73
    .line 74
    iget-object v8, p0, Lad-manager/e/g;->e:Lca/e;

    .line 75
    .line 76
    invoke-virtual {v4, v5}, Lda/f;->p(Ljava/lang/String;)Lca/d;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    new-instance v1, Lf/e;

    .line 83
    .line 84
    move-object v3, v1

    .line 85
    move-object v7, v0

    .line 86
    invoke-direct/range {v3 .. v8}, Lf/e;-><init>(Lfa/c;Ljava/lang/String;Lca/d;Ljava/lang/Object;Lca/e;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1, v0}, Lf/e;->f(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {v0}, Lcom/applovin/mediation/ads/MaxAppOpenAd;->loadAd()V

    .line 93
    .line 94
    .line 95
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object v0
.end method
