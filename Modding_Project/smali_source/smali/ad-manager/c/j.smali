.class public final Lad-manager/c/j;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic h:Ljava/util/ArrayList;

.field public final synthetic i:Lda/f;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lda/f;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/c/j;->h:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/c/j;->i:Lda/f;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2

    .line 1
    new-instance p1, Lad-manager/c/j;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/c/j;->h:Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lad-manager/c/j;->i:Lda/f;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lad-manager/c/j;-><init>(Ljava/util/ArrayList;Lda/f;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    new-instance p1, Lad-manager/c/j;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/c/j;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lad-manager/c/j;->i:Lda/f;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lad-manager/c/j;-><init>(Ljava/util/ArrayList;Lda/f;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lad-manager/c/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lad-manager/c/j;->h:Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v0, p0, Lad-manager/c/j;->i:Lda/f;

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lca/e;

    .line 26
    .line 27
    :try_start_0
    invoke-virtual {v0, v1}, Lda/f;->z(Lca/e;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v2

    .line 32
    sget-object v3, Lga/a;->a:Lga/a;

    .line 33
    .line 34
    const/4 v4, 0x0

    .line 35
    invoke-virtual {v0, v4}, Lda/f;->T(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    const-string v6, "refresh loadAd failed: adUnitId="

    .line 42
    .line 43
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Lca/e;->e()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", error="

    .line 54
    .line 55
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v3, v4, v1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1
.end method
