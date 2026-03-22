.class public final Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;
.super Ljava/lang/Object;
.source "FakeBillingClient.kt"

# interfaces
.implements Lgg/q;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$a;,
        Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFakeBillingClient.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,591:1\n1863#2,2:592\n1863#2,2:594\n1863#2,2:596\n1863#2:598\n1863#2,2:599\n1864#2:601\n295#2,2:602\n774#2:604\n865#2,2:605\n1557#2:607\n1628#2,3:608\n1557#2:611\n1628#2,3:612\n1863#2,2:615\n1863#2,2:617\n*S KotlinDebug\n*F\n+ 1 FakeBillingClient.kt\ncom/startshorts/androidplayer/repo/billing/FakeBillingClient\n*L\n90#1:592,2\n93#1:594,2\n100#1:596,2\n104#1:598\n106#1:599,2\n104#1:601\n142#1:602,2\n181#1:604\n181#1:605,2\n190#1:607\n190#1:608,3\n190#1:611\n190#1:612,3\n199#1:615,2\n206#1:617,2\n*E\n"
    }
.end annotation


# static fields
.field public static final l:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Z

.field private final b:Z

.field private c:Z

.field private final d:Z

.field private e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Lzc/j;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private j:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->l:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->b:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->d:Z

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->i:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->j:Ljava/util/HashMap;

    .line 24
    .line 25
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;-><init>(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 31
    .line 32
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 33
    .line 34
    const-string v1, ".vip."

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->k0(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const-string v1, ".new."

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->i:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Lzc/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->h:Lzc/j;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic s(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->j:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->j(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 13
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v1, "checkNotAcknowledgedPurchases -> productType="

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v2, "FakeBillingClient"

    .line 21
    .line 22
    invoke-virtual {p2, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->h()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->z()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    move-object v4, p2

    .line 42
    check-cast v4, Ljava/util/Collection;

    .line 43
    .line 44
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    check-cast v4, Ljava/lang/Iterable;

    .line 49
    .line 50
    new-instance v5, Ljava/util/ArrayList;

    .line 51
    .line 52
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .line 54
    .line 55
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    move-object v7, v6

    .line 70
    check-cast v7, Lzc/f;

    .line 71
    .line 72
    sget-object v8, Lle/h;->a:Lle/h;

    .line 73
    .line 74
    invoke-virtual {v8}, Lle/h;->b()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v9

    .line 78
    invoke-static {p1, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    const/4 v10, 0x0

    .line 83
    const/4 v11, 0x2

    .line 84
    const/4 v12, 0x0

    .line 85
    if-eqz v9, :cond_1

    .line 86
    .line 87
    invoke-virtual {v7}, Lzc/f;->d()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v7

    .line 91
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v7

    .line 95
    check-cast v7, Ljava/lang/CharSequence;

    .line 96
    .line 97
    invoke-static {v7, v0, v12, v11, v10}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v12

    .line 101
    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {v8}, Lle/h;->a()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v8

    .line 106
    invoke-static {p1, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v8

    .line 110
    const/4 v9, 0x1

    .line 111
    if-eqz v8, :cond_2

    .line 112
    .line 113
    invoke-virtual {v7}, Lzc/f;->d()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v7

    .line 117
    invoke-interface {v7, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    check-cast v7, Ljava/lang/CharSequence;

    .line 122
    .line 123
    invoke-static {v7, v0, v12, v11, v10}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v7

    .line 127
    if-nez v7, :cond_3

    .line 128
    .line 129
    :cond_2
    move v12, v9

    .line 130
    :cond_3
    :goto_1
    if-eqz v12, :cond_0

    .line 131
    .line 132
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_4
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v4

    .line 140
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 141
    .line 142
    new-instance v6, Ljava/lang/StringBuilder;

    .line 143
    .line 144
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    const-string p1, ",DISCOUNT_FLAG="

    .line 154
    .line 155
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const-string p1, ",SUBS_FLAG="

    .line 162
    .line 163
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string p1, "\nnotAcknowledgedPurchases="

    .line 170
    .line 171
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    check-cast p2, Ljava/lang/Iterable;

    .line 175
    .line 176
    new-instance p1, Ljava/util/ArrayList;

    .line 177
    .line 178
    const/16 v0, 0xa

    .line 179
    .line 180
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 188
    .line 189
    .line 190
    move-result-object p2

    .line 191
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 192
    .line 193
    .line 194
    move-result v1

    .line 195
    if-eqz v1, :cond_5

    .line 196
    .line 197
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    check-cast v1, Lzc/f;

    .line 202
    .line 203
    invoke-virtual {v1}, Lzc/f;->d()Ljava/util/List;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    invoke-interface {p1, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    goto :goto_2

    .line 211
    :cond_5
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string p1, "\nresult="

    .line 215
    .line 216
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    move-object p1, v4

    .line 220
    check-cast p1, Ljava/lang/Iterable;

    .line 221
    .line 222
    new-instance p2, Ljava/util/ArrayList;

    .line 223
    .line 224
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 229
    .line 230
    .line 231
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    if-eqz v0, :cond_6

    .line 240
    .line 241
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    check-cast v0, Lzc/f;

    .line 246
    .line 247
    invoke-virtual {v0}, Lzc/f;->d()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    goto :goto_3

    .line 255
    :cond_6
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {v5, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    return-object v4
.end method

.method public f(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "saveCoinSkuToFakeBillClient -> coinSkuList="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "FakeBillingClient"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Iterable;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->i:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method public g()V
    .locals 6

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 2
    .line 3
    new-instance v3, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$checkNotAcknowledgedPurchases$1;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {v3, p0, v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$checkNotAcknowledgedPurchases$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;Lrs/c;)V

    .line 7
    .line 8
    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x0

    .line 11
    const-string v1, "checkNotAcknowledgedPurchases"

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
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
    const-string p1, "opId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "startConnection -> opId="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const-string v0, "FakeBillingClient"

    .line 31
    .line 32
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public i(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->g:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/j;
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
    const-string p1, "opId"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "setup -> opId="

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string p2, ",config="

    .line 27
    .line 28
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const-string v0, "FakeBillingClient"

    .line 39
    .line 40
    invoke-virtual {p1, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->h:Lzc/j;

    .line 44
    .line 45
    const/4 p1, 0x1

    .line 46
    if-eqz p3, :cond_0

    .line 47
    .line 48
    invoke-virtual {p3}, Lzc/j;->b()Lad/m;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    if-eqz p2, :cond_0

    .line 53
    .line 54
    invoke-virtual {p2, p1}, Lad/m;->f(Z)V

    .line 55
    .line 56
    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->w(Z)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 11
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "products"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "queryProductDetails -> opId="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, ",products.size="

    .line 27
    .line 28
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v3, ",forceSkuDetails="

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    const-string v1, "FakeBillingClient"

    .line 51
    .line 52
    invoke-virtual {v0, v1, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    new-instance p3, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    new-instance v0, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->i:Ljava/util/HashMap;

    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const-string v4, "<get-values>(...)"

    .line 72
    .line 73
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    check-cast v3, Ljava/lang/Iterable;

    .line 77
    .line 78
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/16 v6, 0x29

    .line 87
    .line 88
    const-string v7, "),gpSkuId("

    .line 89
    .line 90
    const-string v8, "queryProductDetails -> coinSkuListCached,productId("

    .line 91
    .line 92
    if-eqz v5, :cond_0

    .line 93
    .line 94
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v5

    .line 98
    check-cast v5, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 99
    .line 100
    sget-object v9, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 101
    .line 102
    new-instance v10, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v8

    .line 114
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    const-string v7, "),price("

    .line 128
    .line 129
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getRecharge()F

    .line 133
    .line 134
    .line 135
    move-result v5

    .line 136
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {v9, v1, v5}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->j:Ljava/util/HashMap;

    .line 151
    .line 152
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v3, Ljava/lang/Iterable;

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-eqz v4, :cond_1

    .line 170
    .line 171
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 176
    .line 177
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 178
    .line 179
    new-instance v9, Ljava/lang/StringBuilder;

    .line 180
    .line 181
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v10

    .line 191
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v10

    .line 201
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    const-string v10, "),firstAmount("

    .line 205
    .line 206
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getFirstAmount()F

    .line 210
    .line 211
    .line 212
    move-result v10

    .line 213
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    const-string v10, "),payAmount("

    .line 217
    .line 218
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayAmount()F

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    .line 230
    .line 231
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {v5, v1, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_1
    check-cast p2, Ljava/lang/Iterable;

    .line 240
    .line 241
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v3

    .line 245
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v4

    .line 249
    if-eqz v4, :cond_2

    .line 250
    .line 251
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    check-cast v4, Lzc/g;

    .line 256
    .line 257
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 258
    .line 259
    new-instance v6, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .line 263
    .line 264
    const-string v7, "queryProductDetails -> products, productIds="

    .line 265
    .line 266
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v4}, Lzc/g;->a()Ljava/util/List;

    .line 270
    .line 271
    .line 272
    move-result-object v7

    .line 273
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    const-string v7, ",productType="

    .line 277
    .line 278
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v4}, Lzc/g;->b()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v4

    .line 285
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    invoke-virtual {v5, v1, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    goto :goto_2

    .line 296
    :cond_2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object p2

    .line 300
    :cond_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 301
    .line 302
    .line 303
    move-result v3

    .line 304
    if-eqz v3, :cond_6

    .line 305
    .line 306
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v3

    .line 310
    check-cast v3, Lzc/g;

    .line 311
    .line 312
    invoke-virtual {v3}, Lzc/g;->b()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v4

    .line 316
    sget-object v5, Lle/h;->a:Lle/h;

    .line 317
    .line 318
    invoke-virtual {v5}, Lle/h;->a()Ljava/lang/String;

    .line 319
    .line 320
    .line 321
    move-result-object v5

    .line 322
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-eqz v4, :cond_4

    .line 327
    .line 328
    move-object v4, p3

    .line 329
    goto :goto_3

    .line 330
    :cond_4
    move-object v4, v0

    .line 331
    :goto_3
    invoke-virtual {v3}, Lzc/g;->a()Ljava/util/List;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    check-cast v5, Ljava/lang/Iterable;

    .line 336
    .line 337
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    :cond_5
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 342
    .line 343
    .line 344
    move-result v6

    .line 345
    if-eqz v6, :cond_3

    .line 346
    .line 347
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 348
    .line 349
    .line 350
    move-result-object v6

    .line 351
    check-cast v6, Ljava/lang/String;

    .line 352
    .line 353
    iget-object v7, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 354
    .line 355
    invoke-virtual {v3}, Lzc/g;->b()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v8

    .line 359
    invoke-virtual {v7, v6, v8}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->f(Ljava/lang/String;Ljava/lang/String;)Lzc/e;

    .line 360
    .line 361
    .line 362
    move-result-object v6

    .line 363
    if-eqz v6, :cond_5

    .line 364
    .line 365
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    .line 367
    .line 368
    goto :goto_4

    .line 369
    :cond_6
    new-instance p2, Lzc/h;

    .line 370
    .line 371
    sget-object v3, Lcom/shorttv/aar/billing/bean/ErrorCode;->OK:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 372
    .line 373
    sget-object v4, Lle/h;->a:Lle/h;

    .line 374
    .line 375
    invoke-virtual {v4}, Lle/h;->a()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v5

    .line 379
    invoke-direct {p2, v3, v5, p3}, Lzc/h;-><init>(Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;Ljava/util/List;)V

    .line 380
    .line 381
    .line 382
    new-instance v5, Lzc/h;

    .line 383
    .line 384
    invoke-virtual {v4}, Lle/h;->b()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    invoke-direct {v5, v3, v4, v0}, Lzc/h;-><init>(Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;Ljava/util/List;)V

    .line 389
    .line 390
    .line 391
    filled-new-array {p2, v5}, [Lzc/h;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 396
    .line 397
    .line 398
    move-result-object p2

    .line 399
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 400
    .line 401
    new-instance v4, Ljava/lang/StringBuilder;

    .line 402
    .line 403
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 404
    .line 405
    .line 406
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v2, ",productDetailsInApp.size="

    .line 413
    .line 414
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 418
    .line 419
    .line 420
    move-result p3

    .line 421
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string p3, ",productDetailsSubs.size="

    .line 425
    .line 426
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 430
    .line 431
    .line 432
    move-result p3

    .line 433
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    const/16 p3, 0x2c

    .line 437
    .line 438
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->h:Lzc/j;

    .line 442
    .line 443
    if-eqz p3, :cond_7

    .line 444
    .line 445
    invoke-virtual {p3}, Lzc/j;->b()Lad/m;

    .line 446
    .line 447
    .line 448
    move-result-object p3

    .line 449
    goto :goto_5

    .line 450
    :cond_7
    const/4 p3, 0x0

    .line 451
    :goto_5
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 452
    .line 453
    .line 454
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 455
    .line 456
    .line 457
    move-result-object p3

    .line 458
    invoke-virtual {v3, v1, p3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    iget-object p3, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->h:Lzc/j;

    .line 462
    .line 463
    if-eqz p3, :cond_8

    .line 464
    .line 465
    invoke-virtual {p3}, Lzc/j;->b()Lad/m;

    .line 466
    .line 467
    .line 468
    move-result-object p3

    .line 469
    if-eqz p3, :cond_8

    .line 470
    .line 471
    invoke-virtual {p3, p1, p2}, Lad/m;->d(Ljava/lang/String;Ljava/util/List;)V

    .line 472
    .line 473
    .line 474
    :cond_8
    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "saveSubsSkuToFakeBillClient -> subsSkuList="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v2, 0x0

    .line 25
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const-string v2, "FakeBillingClient"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    check-cast p1, Ljava/lang/Iterable;

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    check-cast v0, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->j:Ljava/util/HashMap;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getProductId()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_1
    return-void
.end method

.method public n(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 18
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lzc/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v12, p1

    .line 4
    .line 5
    move-object/from16 v13, p3

    .line 6
    .line 7
    move-object/from16 v1, p5

    .line 8
    .line 9
    move-object/from16 v2, p6

    .line 10
    .line 11
    const-string v3, "opId"

    .line 12
    .line 13
    invoke-static {v12, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v3, "activity"

    .line 17
    .line 18
    move-object/from16 v4, p2

    .line 19
    .line 20
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v3, "obfuscatedAccountId"

    .line 24
    .line 25
    invoke-static {v13, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v3, "obfuscatedProfileId"

    .line 29
    .line 30
    move-object/from16 v4, p4

    .line 31
    .line 32
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v3, "offerToken"

    .line 36
    .line 37
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "productDetails"

    .line 41
    .line 42
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v14, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->k:Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;

    .line 46
    .line 47
    sget-object v3, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 48
    .line 49
    new-instance v4, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v5, "launchBillingFlow -> obfuscatedAccountId="

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, ",offerToken="

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, ",productDetails="

    .line 71
    .line 72
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v1, ",opId="

    .line 79
    .line 80
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    const-string v2, "FakeBillingClient"

    .line 91
    .line 92
    invoke-virtual {v3, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->v()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v15

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->u()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-nez v1, :cond_0

    .line 104
    .line 105
    const-string v1, ""

    .line 106
    .line 107
    :cond_0
    move-object v11, v1

    .line 108
    invoke-virtual/range {p0 .. p0}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->v()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v14, v1}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->i(Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v14}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->h()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, Ljava/lang/Iterable;

    .line 121
    .line 122
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    const/16 v16, 0x0

    .line 131
    .line 132
    if-eqz v3, :cond_2

    .line 133
    .line 134
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    move-object v4, v3

    .line 139
    check-cast v4, Lzc/f;

    .line 140
    .line 141
    invoke-virtual {v4}, Lzc/f;->d()Ljava/util/List;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    const/4 v5, 0x0

    .line 146
    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    if-eqz v4, :cond_1

    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    move-object/from16 v3, v16

    .line 158
    .line 159
    :goto_0
    if-eqz v3, :cond_4

    .line 160
    .line 161
    iget-object v2, v0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->h:Lzc/j;

    .line 162
    .line 163
    if-eqz v2, :cond_3

    .line 164
    .line 165
    invoke-virtual {v2}, Lzc/j;->b()Lad/m;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    if-eqz v2, :cond_3

    .line 170
    .line 171
    new-instance v3, Lzc/a;

    .line 172
    .line 173
    sget-object v4, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 174
    .line 175
    sget-object v5, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 176
    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v7, "Item already owned(FakeBillingRemoteTestLog)"

    .line 183
    .line 184
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-direct {v3, v4, v5, v6}, Lzc/a;-><init>(Lcom/shorttv/aar/billing/bean/ErrorType;Lcom/shorttv/aar/billing/bean/ErrorCode;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v12, v1, v3}, Lad/m;->b(Ljava/lang/String;Ljava/lang/String;Lzc/a;)V

    .line 198
    .line 199
    .line 200
    :cond_3
    return-void

    .line 201
    :cond_4
    instance-of v1, v15, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 202
    .line 203
    if-eqz v1, :cond_5

    .line 204
    .line 205
    move-object v1, v15

    .line 206
    check-cast v1, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 207
    .line 208
    move-object v4, v1

    .line 209
    goto :goto_1

    .line 210
    :cond_5
    move-object/from16 v4, v16

    .line 211
    .line 212
    :goto_1
    if-eqz v4, :cond_7

    .line 213
    .line 214
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 215
    .line 216
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->E0()Z

    .line 217
    .line 218
    .line 219
    move-result v1

    .line 220
    if-eqz v1, :cond_6

    .line 221
    .line 222
    sget-object v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 223
    .line 224
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->l0()V

    .line 225
    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_6
    const/16 v10, 0x8

    .line 229
    .line 230
    const/16 v17, 0x0

    .line 231
    .line 232
    const/4 v5, 0x0

    .line 233
    move-object v1, v14

    .line 234
    move-object/from16 v2, p1

    .line 235
    .line 236
    move-object v3, v11

    .line 237
    move-object/from16 v6, p3

    .line 238
    .line 239
    move/from16 v7, p7

    .line 240
    .line 241
    move-object/from16 v8, p9

    .line 242
    .line 243
    move-object/from16 v9, p10

    .line 244
    .line 245
    move-object v0, v11

    .line 246
    move-object/from16 v11, v17

    .line 247
    .line 248
    invoke-static/range {v1 .. v11}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->q(Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Ljava/lang/String;ILjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_7
    :goto_2
    move-object v0, v11

    .line 253
    :goto_3
    instance-of v1, v15, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 254
    .line 255
    if-eqz v1, :cond_8

    .line 256
    .line 257
    move-object/from16 v16, v15

    .line 258
    .line 259
    check-cast v16, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 260
    .line 261
    :cond_8
    move-object/from16 v1, v16

    .line 262
    .line 263
    if-eqz v1, :cond_9

    .line 264
    .line 265
    invoke-virtual {v14, v12, v0, v1, v13}, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient$b;->n(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :cond_9
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public t()Lcom/startshorts/androidplayer/bean/act/ActResource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->g:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->f:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/repo/billing/FakeBillingClient;->c:Z

    .line 2
    .line 3
    return-void
.end method
