.class public final Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;
.super Ljava/lang/Object;
.source "WalletLocalDS.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nWalletLocalDS.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WalletLocalDS.kt\ncom/startshorts/androidplayer/repo/wallet/WalletLocalDS\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,68:1\n1863#2,2:69\n*S KotlinDebug\n*F\n+ 1 WalletLocalDS.kt\ncom/startshorts/androidplayer/repo/wallet/WalletLocalDS\n*L\n41#1:69,2\n*E\n"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/Fragment;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;->a:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;->a:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final c(Landroidx/fragment/app/Fragment;)Landroidx/viewpager2/adapter/FragmentStateAdapter;
    .locals 5
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "fragment"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;->a:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/CoinsRecordFragment;

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    const-class v1, Lcom/startshorts/androidplayer/ui/fragment/wallet/BonusRecordFragment;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    new-instance v1, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_1

    .line 47
    .line 48
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Ljava/lang/Class;

    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    int-to-long v3, v3

    .line 59
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    new-instance v2, Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS$loadFragmentAdapter$adapter$1;

    .line 68
    .line 69
    invoke-direct {v2, p1, v0, p0, v1}, Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS$loadFragmentAdapter$adapter$1;-><init>(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/startshorts/androidplayer/repo/wallet/WalletLocalDS;Ljava/util/List;)V

    .line 70
    .line 71
    .line 72
    return-object v2
.end method

.method public final d(Landroid/content/Context;I)Ljava/util/List;
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/tab/WalletTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/bean/tab/WalletTab;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_discount:I

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "getString(...)"

    .line 15
    .line 16
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/tab/WalletTab;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/bean/tab/WalletTab;

    .line 23
    .line 24
    sget v3, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_coins_record:I

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/bean/tab/WalletTab;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lcom/startshorts/androidplayer/bean/tab/WalletTab;

    .line 37
    .line 38
    sget v4, Lcom/startshorts/androidplayer/R$string;->my_wallet_fragment_bonus_record:I

    .line 39
    .line 40
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-direct {v3, p1}, Lcom/startshorts/androidplayer/bean/tab/WalletTab;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    filled-new-array {v0, v1, v3}, [Lcom/startshorts/androidplayer/bean/tab/WalletTab;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-ltz p2, :cond_0

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-ge p2, v0, :cond_0

    .line 65
    .line 66
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p2

    .line 70
    check-cast p2, Lcom/startshorts/androidplayer/bean/tab/WalletTab;

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->setSelected(Z)V

    .line 74
    .line 75
    .line 76
    :cond_0
    return-object p1
.end method
