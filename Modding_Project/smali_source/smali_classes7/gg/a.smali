.class public final Lgg/a;
.super Ljava/lang/Object;
.source "BillingClient.kt"

# interfaces
.implements Lgg/q;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/shorttv/aar/billing/core/BillingClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:Lcom/startshorts/androidplayer/bean/act/ActResource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 1
    .param p1    # Lcom/shorttv/aar/billing/core/BillingClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "billingClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 2
    new-instance p1, Lcom/shorttv/aar/billing/core/BillingClient;

    invoke-direct {p1}, Lcom/shorttv/aar/billing/core/BillingClient;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lgg/a;-><init>(Lcom/shorttv/aar/billing/core/BillingClient;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->S()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lgg/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Lcom/shorttv/aar/billing/core/BillingClient;->I(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lgg/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-void
.end method

.method public e(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 1
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
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->F(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public f(Ljava/util/List;)V
    .locals 0
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
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->G()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public h(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
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
    const-string v0, "opId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->l0(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public i(Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lgg/a;->d:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->R()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->O()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public k(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V
    .locals 1
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
    const-string v0, "opId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/shorttv/aar/billing/core/BillingClient;->k0(Landroid/content/Context;Ljava/lang/String;Lzc/j;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public l(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 1
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
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 12
    .line 13
    invoke-virtual {v0, p1, p2, p3}, Lcom/shorttv/aar/billing/core/BillingClient;->X(Ljava/lang/String;Ljava/util/List;Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public m(Ljava/util/List;)V
    .locals 0
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
    return-void
.end method

.method public n(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 9
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
    const-string v0, "opId"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string v0, "activity"

    .line 8
    .line 9
    move-object v3, p2

    .line 10
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "obfuscatedAccountId"

    .line 14
    .line 15
    move-object v4, p3

    .line 16
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v0, "obfuscatedProfileId"

    .line 20
    .line 21
    move-object v5, p4

    .line 22
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "offerToken"

    .line 26
    .line 27
    move-object v6, p5

    .line 28
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "productDetails"

    .line 32
    .line 33
    move-object v7, p6

    .line 34
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v0, p0

    .line 38
    iget-object v1, v0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 39
    .line 40
    move-object/from16 v8, p8

    .line 41
    .line 42
    invoke-virtual/range {v1 .. v8}, Lcom/shorttv/aar/billing/core/BillingClient;->U(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lzc/k;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgg/a;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/shorttv/aar/billing/core/BillingClient;->P()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
