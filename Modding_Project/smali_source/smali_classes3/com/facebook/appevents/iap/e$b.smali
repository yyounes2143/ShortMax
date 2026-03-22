.class public final Lcom/facebook/appevents/iap/e$b;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapperV5V7.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/iap/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:[Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field final synthetic b:Lcom/facebook/appevents/iap/e;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/iap/e;[Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/facebook/appevents/iap/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/appevents/iap/e$b;->b:Lcom/facebook/appevents/iap/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/facebook/appevents/iap/e$b;->a:[Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "proxy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "m"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_5

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    sparse-switch p2, :sswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :sswitch_0
    const-string p2, "onProductDetailsResponse"

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lcom/facebook/appevents/iap/e$b;->b:Lcom/facebook/appevents/iap/e;

    .line 35
    .line 36
    iget-object p2, p0, Lcom/facebook/appevents/iap/e$b;->a:[Ljava/lang/Object;

    .line 37
    .line 38
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/iap/e;->k(Lcom/facebook/appevents/iap/e;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :sswitch_1
    const-string p2, "onBillingServiceDisconnected"

    .line 43
    .line 44
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    iget-object p1, p0, Lcom/facebook/appevents/iap/e$b;->b:Lcom/facebook/appevents/iap/e;

    .line 52
    .line 53
    iget-object p2, p0, Lcom/facebook/appevents/iap/e$b;->a:[Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/iap/e;->i(Lcom/facebook/appevents/iap/e;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_2
    const-string p2, "onBillingSetupFinished"

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    if-nez p1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object p1, p0, Lcom/facebook/appevents/iap/e$b;->b:Lcom/facebook/appevents/iap/e;

    .line 69
    .line 70
    iget-object p2, p0, Lcom/facebook/appevents/iap/e$b;->a:[Ljava/lang/Object;

    .line 71
    .line 72
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/iap/e;->j(Lcom/facebook/appevents/iap/e;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :sswitch_3
    const-string p2, "onQueryPurchasesResponse"

    .line 77
    .line 78
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-nez p1, :cond_3

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    iget-object p1, p0, Lcom/facebook/appevents/iap/e$b;->b:Lcom/facebook/appevents/iap/e;

    .line 86
    .line 87
    iget-object p2, p0, Lcom/facebook/appevents/iap/e$b;->a:[Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/iap/e;->m(Lcom/facebook/appevents/iap/e;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :sswitch_4
    const-string p2, "onPurchaseHistoryResponse"

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-nez p1, :cond_4

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :cond_4
    iget-object p1, p0, Lcom/facebook/appevents/iap/e$b;->b:Lcom/facebook/appevents/iap/e;

    .line 103
    .line 104
    iget-object p2, p0, Lcom/facebook/appevents/iap/e$b;->a:[Ljava/lang/Object;

    .line 105
    .line 106
    invoke-static {p1, p2, p3}, Lcom/facebook/appevents/iap/e;->l(Lcom/facebook/appevents/iap/e;[Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :cond_5
    :goto_0
    const/4 p1, 0x0

    .line 110
    return-object p1

    .line 111
    :sswitch_data_0
    .sparse-switch
        -0x61e7e72b -> :sswitch_4
        -0x5f545536 -> :sswitch_3
        -0x4bba42d -> :sswitch_2
        0x492ac854 -> :sswitch_1
        0x73a41073 -> :sswitch_0
    .end sparse-switch
.end method
