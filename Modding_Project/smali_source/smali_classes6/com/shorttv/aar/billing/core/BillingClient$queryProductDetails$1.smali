.class final Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BillingClient.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shorttv/aar/billing/core/BillingClient;->X(Ljava/lang/String;Ljava/util/List;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.shorttv.aar.billing.core.BillingClient$queryProductDetails$1"
    f = "BillingClient.kt"
    l = {
        0x15c,
        0x160
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,617:1\n1863#2,2:618\n*S KotlinDebug\n*F\n+ 1 BillingClient.kt\ncom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1\n*L\n339#1:618,2\n*E\n"
    }
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:Ljava/lang/Object;

.field j:I

.field final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzc/g;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic l:Lcom/shorttv/aar/billing/core/BillingClient;

.field final synthetic m:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;",
            "Lcom/shorttv/aar/billing/core/BillingClient;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->k:Ljava/util/List;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->l:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->m:Ljava/lang/String;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->k:Ljava/util/List;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->l:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->m:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;-><init>(Ljava/util/List;Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->j:I

    .line 6
    .line 7
    const-string v2, "inapp"

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    if-eq v1, v4, :cond_1

    .line 14
    .line 15
    if-ne v1, v3, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->h:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Ljava/util/List;

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 27
    .line 28
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    .line 30
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    throw p1

    .line 34
    :cond_1
    iget-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->i:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v1, Ljava/util/List;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v4, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    new-instance p1, Ljava/util/ArrayList;

    .line 50
    .line 51
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    .line 53
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v5, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->k:Ljava/util/List;

    .line 60
    .line 61
    check-cast v5, Ljava/lang/Iterable;

    .line 62
    .line 63
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    check-cast v6, Lzc/g;

    .line 78
    .line 79
    invoke-virtual {v6}, Lzc/g;->b()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v7

    .line 83
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v7

    .line 87
    if-eqz v7, :cond_3

    .line 88
    .line 89
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    new-instance v5, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v6

    .line 106
    if-nez v6, :cond_6

    .line 107
    .line 108
    iget-object v6, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->l:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 109
    .line 110
    iput-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->h:Ljava/lang/Object;

    .line 111
    .line 112
    iput-object v5, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->i:Ljava/lang/Object;

    .line 113
    .line 114
    iput v4, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->j:I

    .line 115
    .line 116
    invoke-static {v6, p1, p0}, Lcom/shorttv/aar/billing/core/BillingClient;->s(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v0, :cond_5

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_5
    move-object v4, v1

    .line 124
    move-object v1, v5

    .line 125
    :goto_1
    check-cast p1, Lzc/i;

    .line 126
    .line 127
    new-instance v5, Lzc/h;

    .line 128
    .line 129
    invoke-virtual {p1}, Lzc/i;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    invoke-virtual {p1}, Lzc/i;->b()Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-direct {v5, v6, v2, p1}, Lzc/h;-><init>(Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;Ljava/util/List;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    move-object v4, v1

    .line 145
    move-object v1, v5

    .line 146
    :goto_2
    move-object p1, v4

    .line 147
    check-cast p1, Ljava/util/Collection;

    .line 148
    .line 149
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-nez p1, :cond_8

    .line 154
    .line 155
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->l:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->h:Ljava/lang/Object;

    .line 158
    .line 159
    const/4 v2, 0x0

    .line 160
    iput-object v2, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->i:Ljava/lang/Object;

    .line 161
    .line 162
    iput v3, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->j:I

    .line 163
    .line 164
    invoke-static {p1, v4, p0}, Lcom/shorttv/aar/billing/core/BillingClient;->s(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    if-ne p1, v0, :cond_7

    .line 169
    .line 170
    return-object v0

    .line 171
    :cond_7
    move-object v0, v1

    .line 172
    :goto_3
    check-cast p1, Lzc/i;

    .line 173
    .line 174
    new-instance v1, Lzc/h;

    .line 175
    .line 176
    invoke-virtual {p1}, Lzc/i;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    const-string/jumbo v3, "subs"

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1}, Lzc/i;->b()Ljava/util/List;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    invoke-direct {v1, v2, v3, p1}, Lzc/h;-><init>(Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;Ljava/util/List;)V

    .line 188
    .line 189
    .line 190
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-object v1, v0

    .line 194
    :cond_8
    iget-object p1, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->l:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 195
    .line 196
    iget-object v0, p0, Lcom/shorttv/aar/billing/core/BillingClient$queryProductDetails$1;->m:Ljava/lang/String;

    .line 197
    .line 198
    invoke-static {p1, v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->w(Lcom/shorttv/aar/billing/core/BillingClient;Ljava/lang/String;Ljava/util/List;)V

    .line 199
    .line 200
    .line 201
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 202
    .line 203
    return-object p1
.end method
