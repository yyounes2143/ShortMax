.class public final Lcom/facebook/appevents/iap/d$c;
.super Ljava/lang/Object;
.source "InAppPurchaseBillingClientWrapperV2V4.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/iap/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/Runnable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic c:Lcom/facebook/appevents/iap/d;


# direct methods
.method public constructor <init>(Lcom/facebook/appevents/iap/d;Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Lcom/facebook/appevents/iap/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "skuType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "completionHandler"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/facebook/appevents/iap/d$c;->c:Lcom/facebook/appevents/iap/d;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p2, p0, Lcom/facebook/appevents/iap/d$c;->a:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/facebook/appevents/iap/d$c;->b:Ljava/lang/Runnable;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V
    .locals 5
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

    .line 1
    const-string v0, "productId"

    .line 2
    .line 3
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "proxy"

    .line 11
    .line 12
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string p1, "method"

    .line 16
    .line 17
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, "onPurchaseHistoryResponse"

    .line 25
    .line 26
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    if-eqz p3, :cond_2

    .line 35
    .line 36
    const/4 p2, 0x1

    .line 37
    invoke-static {p3, p2}, Lkotlin/collections/n;->t0([Ljava/lang/Object;I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    goto :goto_0

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    goto/16 :goto_4

    .line 44
    .line 45
    :cond_2
    move-object p2, p1

    .line 46
    :goto_0
    if-eqz p2, :cond_a

    .line 47
    .line 48
    instance-of p3, p2, Ljava/util/List;

    .line 49
    .line 50
    if-nez p3, :cond_3

    .line 51
    .line 52
    goto/16 :goto_3

    .line 53
    .line 54
    :cond_3
    new-instance p3, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    check-cast p2, Ljava/util/List;

    .line 60
    .line 61
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    :catch_0
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-eqz v1, :cond_8

    .line 70
    .line 71
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v2, p0, Lcom/facebook/appevents/iap/d$c;->c:Lcom/facebook/appevents/iap/d;

    .line 76
    .line 77
    invoke-static {v2}, Lcom/facebook/appevents/iap/d;->h(Lcom/facebook/appevents/iap/d;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    iget-object v3, p0, Lcom/facebook/appevents/iap/d$c;->c:Lcom/facebook/appevents/iap/d;

    .line 82
    .line 83
    invoke-static {v3}, Lcom/facebook/appevents/iap/d;->d(Lcom/facebook/appevents/iap/d;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    const/4 v4, 0x0

    .line 88
    new-array v4, v4, [Ljava/lang/Object;

    .line 89
    .line 90
    invoke-static {v2, v3, v1, v4}, Lcom/facebook/appevents/iap/InAppPurchaseUtils;->e(Ljava/lang/Class;Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    instance-of v2, v1, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz v2, :cond_4

    .line 97
    .line 98
    check-cast v1, Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move-object v1, p1

    .line 102
    :goto_2
    if-nez v1, :cond_5

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-nez v1, :cond_6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_6
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    const-string v3, "skuID"

    .line 122
    .line 123
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/facebook/appevents/iap/d$c;->a:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 130
    .line 131
    sget-object v4, Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;->INAPP:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 132
    .line 133
    if-ne v3, v4, :cond_7

    .line 134
    .line 135
    sget-object v3, Lcom/facebook/appevents/iap/d;->q:Lcom/facebook/appevents/iap/d$b;

    .line 136
    .line 137
    invoke-virtual {v3}, Lcom/facebook/appevents/iap/d$b;->c()Ljava/util/Map;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    goto :goto_1

    .line 145
    :cond_7
    sget-object v3, Lcom/facebook/appevents/iap/d;->q:Lcom/facebook/appevents/iap/d$b;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/facebook/appevents/iap/d$b;->f()Ljava/util/Map;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .line 153
    .line 154
    goto :goto_1

    .line 155
    :cond_8
    :try_start_2
    invoke-interface {p3}, Ljava/util/Collection;->isEmpty()Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-nez p1, :cond_9

    .line 160
    .line 161
    iget-object p1, p0, Lcom/facebook/appevents/iap/d$c;->c:Lcom/facebook/appevents/iap/d;

    .line 162
    .line 163
    iget-object p2, p0, Lcom/facebook/appevents/iap/d$c;->a:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 164
    .line 165
    iget-object v0, p0, Lcom/facebook/appevents/iap/d$c;->b:Ljava/lang/Runnable;

    .line 166
    .line 167
    invoke-static {p1, p2, p3, v0}, Lcom/facebook/appevents/iap/d;->n(Lcom/facebook/appevents/iap/d;Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;Ljava/util/List;Ljava/lang/Runnable;)V

    .line 168
    .line 169
    .line 170
    goto :goto_3

    .line 171
    :cond_9
    iget-object p1, p0, Lcom/facebook/appevents/iap/d$c;->b:Ljava/lang/Runnable;

    .line 172
    .line 173
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 174
    .line 175
    .line 176
    :cond_a
    :goto_3
    return-void

    .line 177
    :goto_4
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/appevents/iap/d$c;->a(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    .line 14
    return-object p1

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v1
.end method
