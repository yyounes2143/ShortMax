.class public final Lcom/inmobi/media/bb;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/inmobi/media/db;->a:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Lcom/inmobi/media/eb;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    sput v0, Lcom/inmobi/media/db;->d:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    sget-object p1, Lcom/inmobi/media/db;->b:Lcom/inmobi/media/ub;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    iput-object v0, p1, Lcom/inmobi/media/ub;->a:Lcom/inmobi/media/bb;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/inmobi/media/ub;->b:Lcom/android/billingclient/api/BillingClient;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 20
    .line 21
    .line 22
    :cond_0
    sput-object v0, Lcom/inmobi/media/db;->b:Lcom/inmobi/media/ub;

    .line 23
    .line 24
    goto :goto_2

    .line 25
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/media/eb;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    new-instance v1, Lorg/json/JSONObject;

    .line 29
    .line 30
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 31
    .line 32
    .line 33
    iget v2, p1, Lcom/inmobi/media/eb;->a:I

    .line 34
    .line 35
    if-lez v2, :cond_2

    .line 36
    .line 37
    const-string v3, "p"

    .line 38
    .line 39
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    :cond_2
    iget p1, p1, Lcom/inmobi/media/eb;->b:I

    .line 43
    .line 44
    if-lez p1, :cond_3

    .line 45
    .line 46
    const-string v2, "s"

    .line 47
    .line 48
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    :cond_3
    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-nez p1, :cond_4

    .line 56
    .line 57
    move-object v3, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    move-object v3, p1

    .line 64
    :goto_0
    if-eqz v3, :cond_6

    .line 65
    .line 66
    sput-object v3, Lcom/inmobi/media/db;->a:Ljava/lang/String;

    .line 67
    .line 68
    const-string p1, "nipMapJSON"

    .line 69
    .line 70
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-static {}, Lcom/inmobi/media/Uc;->d()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    if-eqz p1, :cond_5

    .line 81
    .line 82
    sget-object v1, Lcom/inmobi/media/C6;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 83
    .line 84
    const-string v1, "purchase_store"

    .line 85
    .line 86
    invoke-static {p1, v1}, Lcom/inmobi/media/B6;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/inmobi/media/C6;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    move-object v1, p1

    .line 91
    goto :goto_1

    .line 92
    :cond_5
    move-object v1, v0

    .line 93
    :goto_1
    if-eqz v1, :cond_6

    .line 94
    .line 95
    const/4 v5, 0x4

    .line 96
    const/4 v6, 0x0

    .line 97
    const-string v2, "purchase_pref"

    .line 98
    .line 99
    const/4 v4, 0x0

    .line 100
    invoke-static/range {v1 .. v6}, Lcom/inmobi/media/C6;->a(Lcom/inmobi/media/C6;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_6
    sget-object p1, Lcom/inmobi/media/db;->b:Lcom/inmobi/media/ub;

    .line 104
    .line 105
    if-eqz p1, :cond_7

    .line 106
    .line 107
    iput-object v0, p1, Lcom/inmobi/media/ub;->a:Lcom/inmobi/media/bb;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/inmobi/media/ub;->b:Lcom/android/billingclient/api/BillingClient;

    .line 110
    .line 111
    if-eqz p1, :cond_7

    .line 112
    .line 113
    invoke-virtual {p1}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 114
    .line 115
    .line 116
    :cond_7
    sput-object v0, Lcom/inmobi/media/db;->b:Lcom/inmobi/media/ub;

    .line 117
    .line 118
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 119
    .line 120
    return-object p1
.end method
