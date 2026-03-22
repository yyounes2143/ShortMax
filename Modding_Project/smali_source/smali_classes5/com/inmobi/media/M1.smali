.class public Lcom/inmobi/media/M1;
.super Lcom/inmobi/media/S0;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public P:Z

.field public Q:I

.field public final R:Lcom/inmobi/media/N1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/media/Z;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/media/F0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "placement"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/media/S0;-><init>(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 12
    .line 13
    .line 14
    const-class v0, Lcom/inmobi/media/M1;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 21
    .line 22
    const-string v1, "InMobi"

    .line 23
    .line 24
    iput-object v1, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Lcom/inmobi/media/N1;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/inmobi/media/N1;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v1, p0, Lcom/inmobi/media/M1;->R:Lcom/inmobi/media/N1;

    .line 32
    .line 33
    const-string v1, "TAG"

    .line 34
    .line 35
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Lcom/inmobi/media/Z;->l()J

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/media/S0;->a(Landroid/content/Context;Lcom/inmobi/media/Z;Lcom/inmobi/media/F0;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic a(Lcom/inmobi/media/M1;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    return-object p0
.end method

.method public static final a(Lcom/inmobi/media/M1;Lcom/inmobi/media/ec;I)V
    .locals 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 16
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_0

    .line 18
    iget-object v3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "callback onShowNextPodAd"

    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1, p2, v0, p1}, Lcom/inmobi/media/F0;->a(IILcom/inmobi/media/ec;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/inmobi/media/S0;->b(IZ)V

    .line 21
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->g(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic b(Lcom/inmobi/media/M1;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->I0()V

    return-void
.end method

.method public static final c(Lcom/inmobi/media/M1;)V
    .locals 3

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "TAG"

    .line 13
    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast v0, Lcom/inmobi/media/A5;

    .line 18
    .line 19
    const-string v2, "start loading html ad"

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s0()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static final d(Lcom/inmobi/media/M1;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/inmobi/media/M1;->Q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/media/M1;->Q:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 8
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->d(B)V

    .line 9
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/media/F0;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    iget-object v1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v1, :cond_0

    .line 11
    iget-object p0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 12
    const-string v2, "TAG"

    const-string v3, "BannerAdUnit.onAdScreenDismissed threw unexpected error: "

    invoke-static {p0, v2, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 13
    invoke-static {v0, v2}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 14
    check-cast v1, Lcom/inmobi/media/A5;

    invoke-virtual {v1, p0, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final e(Lcom/inmobi/media/M1;)V
    .locals 6

    const-string v0, "TAG"

    const-string v1, "Successfully displayed banner ad for placement Id : "

    const-string v2, "AdUnit "

    const-string v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v3

    const/4 v4, 0x6

    const/4 v5, 0x7

    if-ne v3, v4, :cond_2

    .line 2
    iget v3, p0, Lcom/inmobi/media/M1;->Q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/inmobi/media/M1;->Q:I

    .line 3
    invoke-virtual {p0, v5}, Lcom/inmobi/media/S0;->d(B)V

    .line 4
    iget-object v3, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_0

    .line 5
    iget-object v4, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state - ACTIVE"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    .line 6
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    .line 7
    iget-object v3, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, v1}, Lcom/inmobi/media/S0;->d(Lcom/inmobi/media/F0;)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v1

    if-ne v1, v5, :cond_3

    .line 13
    iget v1, p0, Lcom/inmobi/media/M1;->Q:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inmobi/media/M1;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 14
    :goto_1
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_3

    .line 15
    iget-object p0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 16
    const-string v3, "BannerAdUnit.onAdScreenDisplayed threw unexpected error: "

    invoke-static {p0, v0, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    invoke-static {v1, v0}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    .line 18
    check-cast v2, Lcom/inmobi/media/A5;

    invoke-virtual {v2, p0, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public static final f(Lcom/inmobi/media/M1;)V
    .locals 5

    .line 1
    const-string v0, "TAG"

    .line 2
    .line 3
    const-string v1, "AdUnit "

    .line 4
    .line 5
    const-string v2, "this$0"

    .line 6
    .line 7
    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const/4 v3, 0x4

    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    invoke-virtual {p0, v2}, Lcom/inmobi/media/S0;->d(B)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 22
    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    iget-object v3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    new-instance v4, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " state - RENDERED"

    .line 39
    .line 40
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v2, Lcom/inmobi/media/A5;

    .line 48
    .line 49
    invoke-virtual {v2, v3, v1}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :catch_0
    move-exception v1

    .line 54
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 55
    .line 56
    if-eqz v2, :cond_0

    .line 57
    .line 58
    iget-object p0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 59
    .line 60
    const-string v3, "BannerAdUnit.onRenderViewVisible threw unexpected error: "

    .line 61
    .line 62
    invoke-static {p0, v0, v3}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-static {v1, v0}, Lcom/inmobi/media/rf;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v2, Lcom/inmobi/media/A5;

    .line 71
    .line 72
    invoke-virtual {v2, p0, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :cond_0
    :goto_0
    return-void
.end method

.method public static final g(Lcom/inmobi/media/M1;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/S0;->a(J)V

    .line 3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->y()Lcom/inmobi/media/y0;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    :cond_0
    check-cast v2, Lcom/inmobi/media/h;

    .line 5
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s0()V

    return-void
.end method


# virtual methods
.method public D0()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 8
    .line 9
    const-string v3, "canProceedToLoad "

    .line 10
    .line 11
    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->f0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v3, 0x1

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v4, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast v0, Lcom/inmobi/media/A5;

    .line 38
    .line 39
    const-string v1, "Some of the dependency libraries for Banner not found"

    .line 40
    .line 41
    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 45
    .line 46
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->MISSING_REQUIRED_DEPENDENCIES:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 49
    .line 50
    .line 51
    const/16 v1, 0x7d7

    .line 52
    .line 53
    invoke-virtual {p0, v0, v3, v1}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-eq v3, v0, :cond_7

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v4, 0x2

    .line 68
    if-ne v4, v0, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    const/4 v4, 0x7

    .line 76
    if-ne v4, v0, :cond_5

    .line 77
    .line 78
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 79
    .line 80
    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 81
    .line 82
    invoke-direct {v0, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 83
    .line 84
    .line 85
    const/16 v3, 0x7da

    .line 86
    .line 87
    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 91
    .line 92
    if-eqz v0, :cond_4

    .line 93
    .line 94
    iget-object v3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 95
    .line 96
    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    .line 97
    .line 98
    invoke-static {v3, v1, v4}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    invoke-virtual {v4}, Lcom/inmobi/media/Z;->l()J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    check-cast v0, Lcom/inmobi/media/A5;

    .line 118
    .line 119
    invoke-virtual {v0, v3, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    return v2

    .line 123
    :cond_5
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    iget-object v1, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v4, "Fetching a Banner ad for placement id: "

    .line 132
    .line 133
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v0, Lcom/inmobi/media/A5;

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->e0()V

    .line 153
    .line 154
    .line 155
    return v3

    .line 156
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 157
    .line 158
    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    .line 159
    .line 160
    invoke-static {v3, v0, v4}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 164
    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    iget-object v5, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    check-cast v0, Lcom/inmobi/media/A5;

    .line 173
    .line 174
    invoke-virtual {v0, v5, v4}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    :cond_8
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 178
    .line 179
    .line 180
    move-result v0

    .line 181
    if-ne v3, v0, :cond_9

    .line 182
    .line 183
    const/16 v0, 0x7d8

    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->a(S)V

    .line 186
    .line 187
    .line 188
    goto :goto_1

    .line 189
    :cond_9
    const/16 v0, 0x7db

    .line 190
    .line 191
    invoke-virtual {p0, v0}, Lcom/inmobi/media/S0;->a(S)V

    .line 192
    .line 193
    .line 194
    :goto_1
    return v2
.end method

.method public final E0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x7

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public final F0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "onPause "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public final G0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "onResume "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x4

    .line 25
    if-eq v0, v1, :cond_1

    .line 26
    .line 27
    const/4 v1, 0x6

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    .line 30
    const/4 v1, 0x7

    .line 31
    if-eq v0, v1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->k()Lcom/inmobi/media/x;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lcom/inmobi/media/x;->getViewableAd()Lcom/inmobi/media/Xe;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    const/4 v2, 0x0

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/Xe;->a(Landroid/content/Context;B)V

    .line 54
    .line 55
    .line 56
    :cond_2
    :goto_0
    return-void
.end method

.method public final H0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "registerLifeCycleCallbacks "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/inmobi/media/Uc;->a(Landroid/content/Context;Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public final I0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lcom/inmobi/media/A5;

    .line 13
    .line 14
    const-string v3, "renderAdPostInternetCheck"

    .line 15
    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->o0()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s()Lcom/inmobi/media/U0;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v2

    .line 37
    iput-wide v2, v0, Lcom/inmobi/media/U0;->g:J

    .line 38
    .line 39
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->d0()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    new-instance v2, Lub/b1;

    .line 49
    .line 50
    invoke-direct {v2, p0}, Lub/b1;-><init>(Lcom/inmobi/media/M1;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget-object v2, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 59
    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iget-object v3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast v2, Lcom/inmobi/media/A5;

    .line 68
    .line 69
    const-string v1, "Exception while loading ad."

    .line 70
    .line 71
    invoke-virtual {v2, v3, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 75
    .line 76
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 79
    .line 80
    .line 81
    const/4 v1, 0x1

    .line 82
    const/16 v2, 0x856

    .line 83
    .line 84
    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    .line 85
    .line 86
    .line 87
    :cond_3
    :goto_0
    return-void
.end method

.method public final J()B
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final J0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "unregisterLifeCycleCallbacks "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    instance-of v1, v0, Landroid/app/Activity;

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    check-cast v0, Landroid/app/Activity;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_2

    .line 39
    .line 40
    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method

.method public a(ILcom/inmobi/media/ec;)V
    .locals 4
    .param p2    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "renderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 43
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 44
    const-string v3, "loadPodAd "

    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v3

    .line 45
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 47
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->h(I)V

    .line 50
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p2, Lub/a1;

    invoke-direct {p2, p0}, Lub/a1;-><init>(Lcom/inmobi/media/M1;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void

    .line 51
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_4

    .line 52
    iget-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v1, "No more ads present in pod adSet or current adSet is not pod adSet"

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/inmobi/media/ec;->a(Z)V

    :cond_5
    return-void
.end method

.method public a(ILcom/inmobi/media/ec;Landroid/content/Context;)V
    .locals 7
    .param p2    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    const-string v0, "renderView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    const-string v1, "TAG"

    if-eqz v0, :cond_0

    .line 56
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "showPodAdAtIndex "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " index - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 58
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    .line 59
    iget-object p3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Cannot show an pod ad as isPod is not set."

    invoke-virtual {p1, p3, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_2

    invoke-virtual {p1, v2}, Lcom/inmobi/media/ec;->b(Z)V

    :cond_2
    return-void

    .line 62
    :cond_3
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_4

    .line 63
    iget-object v3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "isInValidShowPodIndex "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    iget-object v6, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v6, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v3, v4}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 67
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 68
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-le p1, v0, :cond_7

    .line 69
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 71
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 72
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/ec;

    if-eqz v0, :cond_5

    .line 73
    iget-boolean v0, v0, Lcom/inmobi/media/ec;->x0:Z

    if-nez v0, :cond_5

    goto :goto_0

    .line 74
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/media/S0;->a(ILcom/inmobi/media/ec;Landroid/content/Context;)V

    .line 75
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p3

    if-eqz p3, :cond_6

    new-instance v0, Lub/z0;

    invoke-direct {v0, p0, p2, p1}, Lub/z0;-><init>(Lcom/inmobi/media/M1;Lcom/inmobi/media/ec;I)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void

    .line 76
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_8

    .line 77
    iget-object p3, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "Cannot show an pod ad with invalid index passed"

    invoke-virtual {p1, p3, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :cond_8
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Lcom/inmobi/media/ec;->b(Z)V

    :cond_9
    return-void
.end method

.method public a(Lcom/inmobi/media/D1;)V
    .locals 3
    .param p1    # Lcom/inmobi/media/D1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "audioStatusInternal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/inmobi/media/F0;->a(Lcom/inmobi/media/D1;)V

    .line 81
    :cond_0
    iget-object v1, p0, Lcom/inmobi/media/M1;->R:Lcom/inmobi/media/N1;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-boolean v0, v1, Lcom/inmobi/media/N1;->a:Z

    if-eqz v0, :cond_1

    goto :goto_0

    .line 84
    :cond_1
    sget-object v0, Lcom/inmobi/media/D1;->e:Lcom/inmobi/media/D1;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    .line 85
    iput-boolean p1, v1, Lcom/inmobi/media/N1;->a:Z

    .line 86
    sget-object v0, Lcom/inmobi/media/v5;->c:Lcom/inmobi/media/v5;

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/inmobi/media/S1;->a:J

    .line 88
    iget v1, v0, Lcom/inmobi/media/S1;->b:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/inmobi/media/S1;->b:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final a(Lcom/inmobi/media/ec;S)V
    .locals 4

    .line 22
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 23
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 24
    const-string v2, "TAG"

    const-string v3, "handleRenderViewSignaledAdFailed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 25
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/ec;S)V

    .line 27
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_1

    .line 28
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 30
    invoke-static {p0, p1, v3, v2, v0}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/S0;IZILjava/lang/Object;)V

    if-lez p1, :cond_1

    .line 31
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 32
    invoke-virtual {p0, v1}, Lcom/inmobi/media/S0;->b(B)V

    .line 33
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->A()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_1

    invoke-virtual {p1, v3}, Lcom/inmobi/media/ec;->a(Z)V

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    if-ne p1, v2, :cond_3

    .line 36
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_2

    .line 37
    iget-object v0, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 38
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load the Banner markup in the WebView for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 39
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_2
    new-instance p1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {p1, v0}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 41
    invoke-virtual {p0, p1, v1, p2}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/ads/InMobiAdRequestStatus;ZS)V

    :cond_3
    return-void
.end method

.method public a(Lcom/inmobi/media/ec;Z)V
    .locals 4
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/ec;Z)V

    .line 99
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    const/16 v1, 0x8b3

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v2, :cond_5

    .line 100
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    if-ne v0, v3, :cond_2

    if-eqz p2, :cond_1

    const/16 v1, 0x8ac

    goto :goto_1

    :cond_1
    const/16 v1, 0x8ab

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x8ae

    goto :goto_1

    :cond_3
    const/16 v1, 0x8ad

    .line 101
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->m0()V

    .line 102
    invoke-virtual {p1, p2, v1}, Lcom/inmobi/media/ec;->a(ZS)V

    goto :goto_3

    :cond_5
    const/4 v2, 0x7

    if-ne v0, v2, :cond_8

    .line 103
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result v0

    if-ne v0, v2, :cond_7

    if-eqz p2, :cond_6

    const/16 v1, 0x8b0

    goto :goto_2

    :cond_6
    const/16 v1, 0x8af

    .line 104
    :cond_7
    :goto_2
    invoke-virtual {p1, p2, v1}, Lcom/inmobi/media/ec;->a(ZS)V

    :cond_8
    :goto_3
    return-void
.end method

.method public a(Z)V
    .locals 8

    .line 89
    sget-object v0, Lcom/inmobi/media/v5;->c:Lcom/inmobi/media/v5;

    .line 90
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 92
    const-string v1, "banner_audio_pref_file"

    .line 93
    invoke-static {v0, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    move-result-object v2

    .line 94
    const-string v0, "key"

    const-string v1, "user_mute_count"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    iget-object v0, v2, Lcom/inmobi/media/C6;->a:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 96
    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v4, p1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_0
    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 97
    const-string v3, "user_mute_count"

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;IZILjava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2
    .param p2    # Lcom/inmobi/ads/InMobiAdRequestStatus;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-string v0, "status"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lcom/inmobi/media/S0;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 3
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_0

    .line 4
    iget-object p2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 5
    const-string v0, "TAG"

    const-string v1, "onDidParseAfterFetch "

    invoke-static {p2, v0, v1, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v0

    .line 6
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Banner ad fetch successful for placement id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->e(Lcom/inmobi/media/F0;)V

    :cond_2
    return-void
.end method

.method public b()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 4
    const-string v2, "TAG"

    const-string v3, "closeAll "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 5
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "load "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->D0()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-super {p0}, Lcom/inmobi/media/S0;->c0()V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method public declared-synchronized d(Lcom/inmobi/media/ec;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 3
    const-string v2, "TAG"

    const-string v3, "onAdScreenDismissed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 4
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 5
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/inmobi/media/gc;->d(Lcom/inmobi/media/ec;)V

    .line 6
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lub/c1;

    invoke-direct {v0, p0}, Lub/c1;-><init>(Lcom/inmobi/media/M1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized e(Lcom/inmobi/media/ec;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 30
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 31
    const-string v2, "TAG"

    const-string v3, "onAdScreenDisplayed "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 32
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 33
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/inmobi/media/gc;->e(Lcom/inmobi/media/ec;)V

    .line 34
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_1

    new-instance v0, Lub/e1;

    invoke-direct {v0, p0}, Lub/e1;-><init>(Lcom/inmobi/media/M1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final e(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 35
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 36
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 37
    const-string v2, "TAG"

    const-string v3, "setAdSize "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 38
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v0

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p1}, Lcom/inmobi/media/Z;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Z)V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 21
    const-string v2, "TAG"

    const-string v3, "load "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 22
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    .line 24
    iget-object v1, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Initiating Banner refresh for placement id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 26
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/media/M1;->P:Z

    .line 28
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->c0()V

    return-void
.end method

.method public f0()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "missingPrerequisitesForAd "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    return v0
.end method

.method public g()V
    .locals 2

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/M1;->R:Lcom/inmobi/media/N1;

    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/inmobi/media/N1;->a:Z

    .line 9
    invoke-super {p0}, Lcom/inmobi/media/S0;->g()V

    return-void
.end method

.method public i(Lcom/inmobi/media/ec;)V
    .locals 4
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "renderView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "TAG"

    .line 13
    .line 14
    const-string v3, "onRenderViewVisible "

    .line 15
    .line 16
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v0, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->i(Lcom/inmobi/media/ec;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->D()Landroid/os/Handler;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    .line 34
    new-instance v0, Lub/d1;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lub/d1;-><init>(Lcom/inmobi/media/M1;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public j0()V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->p0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "TAG"

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    check-cast v0, Lcom/inmobi/media/A5;

    .line 19
    .line 20
    const-string v1, "renderAd without internet check"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->I0()V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    check-cast v0, Lcom/inmobi/media/A5;

    .line 39
    .line 40
    const-string v1, "renderAd"

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    :cond_2
    new-instance v0, Lcom/inmobi/media/K1;

    .line 46
    .line 47
    invoke-direct {v0, p0}, Lcom/inmobi/media/K1;-><init>(Lcom/inmobi/media/M1;)V

    .line 48
    .line 49
    .line 50
    new-instance v1, Lcom/inmobi/media/L1;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/inmobi/media/L1;-><init>(Lcom/inmobi/media/M1;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/media/S0;->a(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public final m(Lcom/inmobi/media/ec;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    const-string v1, "TAG"

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 8
    .line 9
    const-string v3, "handleRenderViewSignaledAdReady "

    .line 10
    .line 11
    invoke-static {v2, v1, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->m(Lcom/inmobi/media/ec;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v2, 0x1

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-lez p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 v0, 0x6

    .line 43
    if-ne p1, v0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v2}, Lcom/inmobi/media/S0;->b(B)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->A()I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/inmobi/media/ec;

    .line 59
    .line 60
    if-eqz p1, :cond_7

    .line 61
    .line 62
    invoke-virtual {p1, v2}, Lcom/inmobi/media/ec;->a(Z)V

    .line 63
    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x2

    .line 72
    if-ne p1, v0, :cond_6

    .line 73
    .line 74
    invoke-virtual {p0, v2}, Lcom/inmobi/media/S0;->b(B)V

    .line 75
    .line 76
    .line 77
    const/4 p1, 0x4

    .line 78
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->d(B)V

    .line 79
    .line 80
    .line 81
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 82
    .line 83
    if-eqz p1, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    const-string v3, "AdUnit "

    .line 93
    .line 94
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v3, " state - READY"

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast p1, Lcom/inmobi/media/A5;

    .line 110
    .line 111
    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/A5;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->s()Lcom/inmobi/media/U0;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    .line 120
    .line 121
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 122
    .line 123
    .line 124
    move-result-wide v2

    .line 125
    iput-wide v2, p1, Lcom/inmobi/media/U0;->i:J

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->u0()V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->z0()V

    .line 131
    .line 132
    .line 133
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 134
    .line 135
    if-eqz p1, :cond_3

    .line 136
    .line 137
    iget-object v0, p0, Lcom/inmobi/media/M1;->O:Ljava/lang/String;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    const-string v3, "Successfully loaded Banner ad markup in the WebView for placement id: "

    .line 142
    .line 143
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast p1, Lcom/inmobi/media/A5;

    .line 158
    .line 159
    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->r()Lcom/inmobi/media/F0;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    if-eqz p1, :cond_4

    .line 167
    .line 168
    invoke-virtual {p0, p1}, Lcom/inmobi/media/S0;->f(Lcom/inmobi/media/F0;)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_4
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 173
    .line 174
    if-eqz p1, :cond_5

    .line 175
    .line 176
    iget-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    check-cast p1, Lcom/inmobi/media/A5;

    .line 182
    .line 183
    const-string v1, "AdUnit listener is null"

    .line 184
    .line 185
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->i()V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_6
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 193
    .line 194
    if-eqz p1, :cond_7

    .line 195
    .line 196
    iget-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 197
    .line 198
    const-string v2, "AdUnit is not in available state, ignoring the ad ready signal - "

    .line 199
    .line 200
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/H6;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->Q()B

    .line 205
    .line 206
    .line 207
    move-result v2

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    check-cast p1, Lcom/inmobi/media/A5;

    .line 216
    .line 217
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_7
    :goto_1
    return-void
.end method

.method public final o()Ljava/util/HashMap;
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 12
    const-string v2, "TAG"

    const-string v3, "adSpecificRequestParams getter "

    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    move-result-object v2

    .line 13
    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    iget-boolean v1, p0, Lcom/inmobi/media/M1;->P:Z

    if-eqz v1, :cond_1

    const-string v1, "1"

    goto :goto_0

    :cond_1
    const-string v1, "0"

    :goto_0
    const-string v2, "u-rt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/media/Z;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mk-ad-slot"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public o(Lcom/inmobi/media/ec;)V
    .locals 3
    .param p1    # Lcom/inmobi/media/ec;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "renderView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->b0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/S0;->g:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->A()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 5
    iget-object v1, p1, Lcom/inmobi/media/ec;->F:Lcom/inmobi/media/df;

    .line 6
    sget-object v2, Lcom/inmobi/media/df;->c:Lcom/inmobi/media/df;

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->B()Ljava/util/TreeSet;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->C0()V

    .line 9
    invoke-super {p0, p1}, Lcom/inmobi/media/S0;->o(Lcom/inmobi/media/ec;)V

    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "activity"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "TAG"

    .line 13
    .line 14
    const-string v1, "onActivityCreated "

    .line 15
    .line 16
    invoke-static {p2, v0, v1, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast p1, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "TAG"

    .line 13
    .line 14
    const-string v3, "onActivityDestroyed "

    .line 15
    .line 16
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v0, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    .line 36
    .line 37
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    check-cast v0, Landroid/app/Activity;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->g()V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "TAG"

    .line 13
    .line 14
    const-string v2, "onActivityPaused "

    .line 15
    .line 16
    invoke-static {v0, v1, v2, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast p1, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "TAG"

    .line 13
    .line 14
    const-string v2, "onActivityResumed "

    .line 15
    .line 16
    invoke-static {v0, v1, v2, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast p1, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "outState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p2, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 16
    .line 17
    const-string v0, "TAG"

    .line 18
    .line 19
    const-string v1, "onActivitySaveInstanceState "

    .line 20
    .line 21
    invoke-static {p2, v0, v1, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast p1, Lcom/inmobi/media/A5;

    .line 26
    .line 27
    invoke-virtual {p1, p2, v0}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "TAG"

    .line 13
    .line 14
    const-string v3, "onActivityStarted "

    .line 15
    .line 16
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v0, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->G0()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 4
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 11
    .line 12
    const-string v2, "TAG"

    .line 13
    .line 14
    const-string v3, "onActivityStopped "

    .line 15
    .line 16
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v0, Lcom/inmobi/media/A5;

    .line 21
    .line 22
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->t()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/inmobi/media/M1;->F0()V

    .line 36
    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "banner"

    .line 2
    .line 3
    return-object v0
.end method

.method public w()Lcom/inmobi/media/ec;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/inmobi/media/M1;->N:Ljava/lang/String;

    .line 6
    .line 7
    const-string v2, "TAG"

    .line 8
    .line 9
    const-string v3, "htmlAdContainer getter "

    .line 10
    .line 11
    invoke-static {v1, v2, v3, p0}, Lcom/inmobi/media/J1;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    check-cast v0, Lcom/inmobi/media/A5;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    invoke-super {p0}, Lcom/inmobi/media/S0;->w()Lcom/inmobi/media/ec;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0}, Lcom/inmobi/media/S0;->I()Lcom/inmobi/media/Z;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1}, Lcom/inmobi/media/Z;->p()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->e()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-object v0
.end method
