.class public final Lcd/g;
.super Ljava/lang/Object;
.source "ResponseCodeExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lcom/android/billingclient/api/BillingResult;)Z
    .locals 1
    .param p0    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    const/4 p0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method public static final b(Lcom/android/billingclient/api/BillingResult;)Z
    .locals 2
    .param p0    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x3

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    const/4 v0, 0x2

    .line 18
    if-ne p0, v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 24
    :goto_1
    return p0
.end method

.method public static final c(I)Lcom/shorttv/aar/billing/bean/ErrorCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/16 v0, 0xc

    .line 2
    .line 3
    if-eq p0, v0, :cond_0

    .line 4
    .line 5
    packed-switch p0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->UNKNOWN:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :pswitch_0
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_NOT_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :pswitch_1
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_2
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_3
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->DEVELOPER_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_4
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_5
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->BILLING_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_6
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_UNAVAILABLE:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_7
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_8
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->OK:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_9
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_DISCONNECTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_a
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->FEATURE_NOT_SUPPORTED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_b
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->SERVICE_TIMEOUT:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    sget-object p0, Lcom/shorttv/aar/billing/bean/ErrorCode;->NETWORK_ERROR:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 48
    .line 49
    :goto_0
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
