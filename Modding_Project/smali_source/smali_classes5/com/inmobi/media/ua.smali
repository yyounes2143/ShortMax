.class public final Lcom/inmobi/media/ua;
.super Lcom/inmobi/media/se;
.source "SourceFile"


# instance fields
.field public final d:Lcom/inmobi/media/h;

.field public final e:Lcom/inmobi/media/y0;

.field public f:Lcom/inmobi/ads/InMobiAdRequestStatus;

.field public final g:Lcom/inmobi/media/z5;

.field public final h:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Lcom/inmobi/media/h;Lcom/inmobi/media/y0;Lcom/inmobi/ads/InMobiAdRequestStatus;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "adUnit"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "ad"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adSet"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "status"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/se;-><init>(Lcom/inmobi/media/S0;B)V

    .line 23
    .line 24
    .line 25
    iput-object p2, p0, Lcom/inmobi/media/ua;->d:Lcom/inmobi/media/h;

    .line 26
    .line 27
    iput-object p3, p0, Lcom/inmobi/media/ua;->e:Lcom/inmobi/media/y0;

    .line 28
    .line 29
    iput-object p4, p0, Lcom/inmobi/media/ua;->f:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 30
    .line 31
    iput-object p5, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    .line 32
    .line 33
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    iput-object p2, p0, Lcom/inmobi/media/ua;->h:Ljava/lang/ref/WeakReference;

    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 7
    iget-object v0, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    const-string v1, "ParseAdResponseWorker"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "execute task"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/ua;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/S0;

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "adUnit is null. fail."

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 11
    :cond_2
    iget-object v2, p0, Lcom/inmobi/media/ua;->e:Lcom/inmobi/media/y0;

    invoke-virtual {v2}, Lcom/inmobi/media/y0;->n()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_b

    .line 12
    iget-object v2, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_3

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v5, "parsing for ad pods"

    invoke-virtual {v2, v1, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/inmobi/media/ua;->e:Lcom/inmobi/media/y0;

    invoke-virtual {v2}, Lcom/inmobi/media/y0;->f()Ljava/util/LinkedList;

    move-result-object v2

    .line 14
    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/h;

    .line 15
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v5, v4, v3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/h;IZ)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 16
    iget-object v5, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v5, :cond_4

    check-cast v5, Lcom/inmobi/media/A5;

    const-string v6, "parse success for ad index 0"

    invoke-virtual {v5, v1, v6}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_4
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    const-string v5, "listIterator(...)"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    :cond_5
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/media/h;

    .line 20
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v5, v6, v4}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/h;IZ)Z

    move-result v6

    if-nez v6, :cond_7

    .line 21
    iget-object v6, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parseAdResponse fail for index - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v1, v5}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 23
    :cond_7
    iget-object v6, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "parseAdResponse success for index - "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v1, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_8
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 25
    :cond_9
    iget-object v0, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_a

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "didParseAdResponseAndExtractData failed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    goto :goto_1

    .line 27
    :cond_b
    iget-object v2, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_c

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v5, "parsing for single ad"

    invoke-virtual {v2, v1, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    :cond_c
    iget-object v1, p0, Lcom/inmobi/media/ua;->d:Lcom/inmobi/media/h;

    invoke-virtual {v0, v1, v4, v3}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/media/h;IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/inmobi/media/ua;->a(Z)V

    return-void
.end method

.method public final a(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    const-string v1, "ParseAdResponseWorker"

    if-eqz v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onComplete result - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Lcom/inmobi/media/A5;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/ua;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/S0;

    if-eqz v0, :cond_2

    .line 4
    iget-object v2, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_1

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v3, "updating vitals in logger"

    invoke-virtual {v2, v1, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/inmobi/media/ua;->f:Lcom/inmobi/ads/InMobiAdRequestStatus;

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/media/S0;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 6
    :cond_2
    iget-object p1, p0, Lcom/inmobi/media/ua;->g:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_3

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "onComplete - adunit is null"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/G1;->c()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 5
    .line 6
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/inmobi/media/ua;->f:Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, v0}, Lcom/inmobi/media/ua;->a(Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
