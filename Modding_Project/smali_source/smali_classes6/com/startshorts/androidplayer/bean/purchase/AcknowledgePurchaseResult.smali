.class public final Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
.super Ljava/lang/Object;
.source "AcknowledgePurchaseResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAcknowledgePurchaseResult.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AcknowledgePurchaseResult.kt\ncom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,128:1\n1863#2,2:129\n*S KotlinDebug\n*F\n+ 1 AcknowledgePurchaseResult.kt\ncom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult\n*L\n83#1:129,2\n*E\n"
    }
.end annotation


# instance fields
.field private final recoverShortsIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recoverSkuIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "recoverSkuIdList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "recoverShortsIdList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 17
    .line 18
    return-void
.end method

.method public static synthetic a(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showTip$lambda$1(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$showFloatViewManagers(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showFloatViewManagers(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final allContains(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v2, p1, v1, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    const/4 v1, 0x1

    .line 39
    :goto_0
    return v1
.end method

.method private final contains(Ljava/lang/String;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    const/4 v3, 0x2

    .line 30
    const/4 v4, 0x0

    .line 31
    invoke-static {v2, p1, v1, v3, v4}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    :cond_2
    return v1
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;Ljava/util/List;ILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->copy(Ljava/util/List;Ljava/util/List;)Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method

.method private final showFloatViewManagers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ldf/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ldf/e;

    .line 14
    .line 15
    new-instance v1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult$showFloatViewManagers$1;-><init>(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;Ljava/util/List;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ldf/e;->h(Ldf/e$c;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final showTip$lambda$1(Ljava/lang/String;)Z
    .locals 4

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p0, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final containsDiscount()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->contains(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final containsShortsId(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public final containsSubs()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->z()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->contains(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final copy(Ljava/util/List;Ljava/util/List;)Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
    .locals 1
    .param p1    # Ljava/util/List;
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
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "recoverSkuIdList"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "recoverShortsIdList"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public final getRecoverShortsIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecoverSkuIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final hasAcknowledged()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Collection;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    xor-int/lit8 v0, v0, 0x1

    .line 10
    .line 11
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public final onlyContainsDiscount()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->allContains(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final showTip()V
    .locals 11

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 20
    .line 21
    check-cast v1, Ljava/util/Collection;

    .line 22
    .line 23
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    const/4 v5, 0x0

    .line 41
    const/4 v6, 0x2

    .line 42
    const/4 v7, 0x0

    .line 43
    const-string v8, "getString(...)"

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/String;

    .line 52
    .line 53
    sget-object v9, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 54
    .line 55
    invoke-virtual {v9}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->w()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v9

    .line 59
    invoke-static {v4, v9, v7, v6, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    .line 65
    sget-object v3, Ldf/f;->a:Ldf/f;

    .line 66
    .line 67
    sget v4, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_lost_discount_restore_success_tip:I

    .line 68
    .line 69
    sget v9, Lcom/startshorts/androidplayer/R$string;->profile_fragment_my_wallet:I

    .line 70
    .line 71
    invoke-virtual {v0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v9

    .line 75
    sget v10, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_discount:I

    .line 76
    .line 77
    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v10

    .line 81
    filled-new-array {v9, v10}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v9

    .line 85
    invoke-virtual {v0, v4, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v3, v4}, Ldf/f;->e(Ljava/lang/String;)Ldf/e;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_2

    .line 97
    .line 98
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    :cond_2
    new-instance v3, Lcom/startshorts/androidplayer/bean/purchase/a;

    .line 102
    .line 103
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/purchase/a;-><init>()V

    .line 104
    .line 105
    .line 106
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 107
    .line 108
    .line 109
    move-object v3, v1

    .line 110
    check-cast v3, Ljava/util/Collection;

    .line 111
    .line 112
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-nez v3, :cond_7

    .line 117
    .line 118
    move-object v3, v1

    .line 119
    check-cast v3, Ljava/lang/Iterable;

    .line 120
    .line 121
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v3

    .line 125
    move v4, v7

    .line 126
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 127
    .line 128
    .line 129
    move-result v9

    .line 130
    if-eqz v9, :cond_4

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v9

    .line 136
    check-cast v9, Ljava/lang/String;

    .line 137
    .line 138
    sget-object v10, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 139
    .line 140
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->z()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-static {v9, v10, v7, v6, v5}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v9

    .line 148
    if-eqz v9, :cond_3

    .line 149
    .line 150
    add-int/lit8 v4, v4, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_4
    if-lez v4, :cond_6

    .line 154
    .line 155
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-ne v4, v1, :cond_5

    .line 160
    .line 161
    sget-object v1, Ldf/f;->a:Ldf/f;

    .line 162
    .line 163
    sget v3, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_lost_subs_restore_success_tip:I

    .line 164
    .line 165
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {v1, v0}, Ldf/f;->e(Ljava/lang/String;)Ldf/e;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_7

    .line 177
    .line 178
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    goto :goto_1

    .line 182
    :cond_5
    sget-object v1, Ldf/f;->a:Ldf/f;

    .line 183
    .line 184
    sget v3, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_lost_coins_subs_restore_success_tip:I

    .line 185
    .line 186
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Ldf/f;->e(Ljava/lang/String;)Ldf/e;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    goto :goto_1

    .line 203
    :cond_6
    sget-object v1, Ldf/f;->a:Ldf/f;

    .line 204
    .line 205
    sget v3, Lcom/startshorts/androidplayer/R$string;->top_up_fragment_lost_coins_restore_success_tip:I

    .line 206
    .line 207
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1, v0}, Ldf/f;->e(Ljava/lang/String;)Ldf/e;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_7

    .line 219
    .line 220
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    .line 222
    .line 223
    :cond_7
    :goto_1
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    if-nez v0, :cond_8

    .line 228
    .line 229
    invoke-direct {p0, v2}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->showFloatViewManagers(Ljava/util/List;)V

    .line 230
    .line 231
    .line 232
    :cond_8
    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "AcknowledgePurchaseResult(recoverSkuIdList="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverSkuIdList:Ljava/util/List;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", recoverShortsIdList="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;->recoverShortsIdList:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x29

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    return-object v0
.end method
