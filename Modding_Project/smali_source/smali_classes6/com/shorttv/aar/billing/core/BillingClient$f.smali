.class public final Lcom/shorttv/aar/billing/core/BillingClient$f;
.super Ljava/lang/Object;
.source "BillingClient.kt"

# interfaces
.implements Lcom/android/billingclient/api/BillingClientStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shorttv/aar/billing/core/BillingClient;->m0(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/shorttv/aar/billing/core/BillingClient;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->b:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->c:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onBillingServiceDisconnected()V
    .locals 3

    .line 1
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onBillingServiceDisconnected -> mSetupSuccess("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    iget-object v2, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/shorttv/aar/billing/core/BillingClient;->o(Lcom/shorttv/aar/billing/core/BillingClient;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/16 v2, 0x29

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "BillingClient"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Lbd/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->o(Lcom/shorttv/aar/billing/core/BillingClient;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->y(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->l(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->t(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 61
    .line 62
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->c:Landroid/content/Context;

    .line 63
    .line 64
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->C(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)V

    .line 65
    .line 66
    .line 67
    :cond_0
    return-void
.end method

.method public onBillingSetupFinished(Lcom/android/billingclient/api/BillingResult;)V
    .locals 5

    .line 1
    const-string v0, "billingResult"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lbd/b;->a:Lbd/b;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onBillingSetupFinished -> result("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const/16 v2, 0x29

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "BillingClient"

    .line 31
    .line 32
    invoke-virtual {v0, v2, v1}, Lbd/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Lcd/g;->a(Lcom/android/billingclient/api/BillingResult;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 42
    .line 43
    invoke-static {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->o(Lcom/shorttv/aar/billing/core/BillingClient;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_2

    .line 48
    .line 49
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    invoke-static {p1, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->y(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 56
    .line 57
    invoke-static {p1, v0}, Lcom/shorttv/aar/billing/core/BillingClient;->x(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->k(Lcom/shorttv/aar/billing/core/BillingClient;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/shorttv/aar/billing/core/BillingClient;->G()V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 72
    .line 73
    const/4 v1, 0x0

    .line 74
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->y(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 78
    .line 79
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->x(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1}, Lcd/g;->b(Lcom/android/billingclient/api/BillingResult;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    .line 88
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 89
    .line 90
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->z(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 94
    .line 95
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->B(Lcom/shorttv/aar/billing/core/BillingClient;Z)V

    .line 96
    .line 97
    .line 98
    :cond_1
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$f;->b:Ljava/lang/String;

    .line 101
    .line 102
    new-instance v2, Lzc/a;

    .line 103
    .line 104
    sget-object v3, Lcom/shorttv/aar/billing/bean/ErrorType;->CONNECT_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getResponseCode()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    invoke-static {v4}, Lcd/g;->c(I)Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingResult;->getDebugMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-direct {v2, v3, v4, p1}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {v0, v1, v2}, Lcom/shorttv/aar/billing/core/BillingClient;->u(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lzc/a;)V

    .line 122
    .line 123
    .line 124
    :cond_2
    :goto_0
    return-void
.end method
