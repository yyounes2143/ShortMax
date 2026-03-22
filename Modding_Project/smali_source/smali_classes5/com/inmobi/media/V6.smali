.class public final Lcom/inmobi/media/V6;
.super Lcom/inmobi/media/se;
.source "SourceFile"


# instance fields
.field public final d:[B

.field public final e:Lcom/inmobi/media/z5;

.field public final f:Ljava/lang/ref/WeakReference;

.field public g:S

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/S0;Lcom/inmobi/media/ca;[BLcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "adUnit"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "oAManager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "response"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x3

    .line 17
    invoke-direct {p0, p1, v0}, Lcom/inmobi/media/se;-><init>(Lcom/inmobi/media/S0;B)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/inmobi/media/V6;->d:[B

    .line 21
    .line 22
    iput-object p4, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    .line 23
    .line 24
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 25
    .line 26
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lcom/inmobi/media/V6;->f:Ljava/lang/ref/WeakReference;

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 12

    .line 17
    const-string v0, "Exception while parsing OAResponse"

    const-string v1, "<get-TAG>(...)"

    const-string v2, "placement id: "

    iget-object v3, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    const-string v4, "LoadWithResponseWorker"

    if-eqz v3, :cond_0

    check-cast v3, Lcom/inmobi/media/A5;

    const-string v5, "execute task start"

    invoke-virtual {v3, v4, v5}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    iget-object v3, p0, Lcom/inmobi/media/V6;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/media/ca;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    .line 19
    iget-object v0, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v1, "OAManager null. failing."

    invoke-virtual {v0, v4, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/16 v0, 0x85e

    .line 20
    iput-short v0, p0, Lcom/inmobi/media/V6;->g:S

    .line 21
    invoke-virtual {p0, v5}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 22
    :cond_2
    iget-object v6, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_3

    check-cast v6, Lcom/inmobi/media/A5;

    const-string v7, "getting network response from byte array"

    invoke-virtual {v6, v4, v7}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_3
    iget-object v6, p0, Lcom/inmobi/media/V6;->d:[B

    .line 24
    const-string v7, "response"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    new-instance v7, Lcom/inmobi/media/P9;

    invoke-direct {v7}, Lcom/inmobi/media/P9;-><init>()V

    .line 26
    const-string v8, "value"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    array-length v8, v6

    const/4 v9, 0x0

    if-nez v8, :cond_4

    .line 28
    new-array v6, v9, [B

    iput-object v6, v7, Lcom/inmobi/media/P9;->b:[B

    goto :goto_0

    .line 29
    :cond_4
    array-length v8, v6

    new-array v8, v8, [B

    iput-object v8, v7, Lcom/inmobi/media/P9;->b:[B

    .line 30
    array-length v10, v6

    invoke-static {v6, v9, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    :goto_0
    const-string v6, "mResponse"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v6, v7, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    if-eqz v6, :cond_6

    .line 33
    iget-object v6, v6, Lcom/inmobi/media/I9;->a:Lcom/inmobi/media/o4;

    .line 34
    sget-object v8, Lcom/inmobi/media/U;->a:[I

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v8, v6

    packed-switch v6, :pswitch_data_0

    .line 35
    new-instance v6, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v8, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 36
    :pswitch_0
    new-instance v6, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v8, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->GDPR_COMPLIANCE_ENFORCED:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 37
    :pswitch_1
    new-instance v6, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v8, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 38
    :pswitch_2
    new-instance v6, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v8, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    goto :goto_2

    .line 39
    :pswitch_3
    new-instance v6, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v8, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 40
    iget-object v8, v7, Lcom/inmobi/media/P9;->d:Lcom/inmobi/media/I9;

    if-eqz v8, :cond_5

    .line 41
    iget-object v8, v8, Lcom/inmobi/media/I9;->b:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move-object v8, v5

    :goto_1
    if-eqz v8, :cond_6

    .line 42
    invoke-virtual {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    goto :goto_2

    .line 43
    :pswitch_4
    new-instance v6, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v8, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v6, v8}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 44
    :cond_6
    :goto_2
    :try_start_0
    iget-object v6, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v6, :cond_7

    const-string v8, "start parsing response"

    check-cast v6, Lcom/inmobi/media/A5;

    invoke-virtual {v6, v4, v8}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_0
    move-exception v2

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_5

    .line 45
    :cond_7
    :goto_3
    new-instance v6, Lorg/json/JSONObject;

    .line 46
    invoke-virtual {v7}, Lcom/inmobi/media/P9;->a()Ljava/lang/String;

    move-result-object v7

    .line 47
    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 48
    const-string v7, "placementId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 49
    iget-object v9, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v9, :cond_8

    const-string v10, "placementID"

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    check-cast v9, Lcom/inmobi/media/A5;

    invoke-virtual {v9, v10, v11}, Lcom/inmobi/media/A5;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_8
    iget-object v9, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v9, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    check-cast v9, Lcom/inmobi/media/A5;

    invoke-virtual {v9, v4, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    :cond_9
    iget-object v2, v3, Lcom/inmobi/media/ca;->a:Lcom/inmobi/media/S0;

    .line 52
    invoke-virtual {v2}, Lcom/inmobi/media/S0;->p()Lcom/inmobi/media/B0;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    const-string v3, "jsonResponse"

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v6}, Lcom/inmobi/media/B0;->a(Lorg/json/JSONObject;)Lcom/inmobi/media/y0;

    move-result-object v2

    .line 55
    invoke-virtual {p0, v2}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/inmobi/media/K; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_4
    const/16 v3, 0x861

    .line 56
    iput-short v3, p0, Lcom/inmobi/media/V6;->g:S

    .line 57
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/inmobi/media/V6;->h:Ljava/lang/String;

    .line 58
    iget-object v3, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_a

    .line 59
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v4

    .line 60
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v0, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 61
    :cond_a
    invoke-virtual {p0, v5}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    goto :goto_6

    .line 62
    :goto_5
    iget-short v3, v2, Lcom/inmobi/media/K;->b:S

    .line 63
    iput-short v3, p0, Lcom/inmobi/media/V6;->g:S

    .line 64
    iget-object v3, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v3, :cond_b

    .line 65
    invoke-static {}, Lcom/inmobi/media/S0;->e()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Lcom/inmobi/media/A5;

    invoke-virtual {v3, v4, v0, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 67
    :cond_b
    invoke-virtual {p0, v5}, Lcom/inmobi/media/se;->b(Ljava/lang/Object;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcom/inmobi/media/y0;

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    const-string v1, "LoadWithResponseWorker"

    if-eqz v0, :cond_0

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onComplete"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V6;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/media/ca;

    if-eqz v0, :cond_5

    if-nez p1, :cond_3

    .line 4
    iget-short p1, p0, Lcom/inmobi/media/V6;->g:S

    if-eqz p1, :cond_2

    .line 5
    invoke-static {p1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p1

    const-string v2, "errorCode"

    invoke-static {v2, p1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    filled-new-array {p1}, [Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/p0;->k([Lkotlin/Pair;)Ljava/util/HashMap;

    move-result-object p1

    .line 6
    iget-object v2, p0, Lcom/inmobi/media/V6;->h:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v3, "reason"

    invoke-virtual {p1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_1
    iget-object v2, v0, Lcom/inmobi/media/ca;->a:Lcom/inmobi/media/S0;

    .line 8
    invoke-virtual {v2, p1}, Lcom/inmobi/media/S0;->b(Ljava/util/Map;)V

    .line 9
    :cond_2
    iget-object p1, v0, Lcom/inmobi/media/ca;->a:Lcom/inmobi/media/S0;

    .line 10
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v2, 0x0

    .line 11
    invoke-virtual {p1, v0, v2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    .line 12
    iget-object p1, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adSet null. fail with error code - "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/inmobi/media/V6;->g:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v2, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz v2, :cond_4

    check-cast v2, Lcom/inmobi/media/A5;

    const-string v3, "loading response"

    invoke-virtual {v2, v1, v3}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_4
    iget-object v0, v0, Lcom/inmobi/media/ca;->a:Lcom/inmobi/media/S0;

    .line 15
    invoke-virtual {v0, p1}, Lcom/inmobi/media/S0;->b(Lcom/inmobi/media/y0;)V

    goto :goto_0

    .line 16
    :cond_5
    iget-object p1, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_6

    check-cast p1, Lcom/inmobi/media/A5;

    const-string v0, "oAManager is null"

    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/inmobi/media/G1;->c()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/V6;->e:Lcom/inmobi/media/z5;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast v0, Lcom/inmobi/media/A5;

    .line 9
    .line 10
    const-string v1, "LoadWithResponseWorker"

    .line 11
    .line 12
    const-string v2, "Encountered OOM"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/V6;->f:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    check-cast v0, Lcom/inmobi/media/ca;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, v0, Lcom/inmobi/media/ca;->a:Lcom/inmobi/media/S0;

    .line 28
    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    .line 32
    .line 33
    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->LOW_MEMORY:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 34
    .line 35
    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x862

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/S0;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;S)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method
