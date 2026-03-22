.class public final synthetic Lcom/applovin/impl/sdk/nativeAd/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroidx/arch/core/util/Function;


# instance fields
.field public final synthetic a:Landroidx/arch/core/util/Function;


# direct methods
.method public synthetic constructor <init>(Landroidx/arch/core/util/Function;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/impl/sdk/nativeAd/g;->a:Landroidx/arch/core/util/Function;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/sdk/nativeAd/g;->a:Landroidx/arch/core/util/Function;

    .line 2
    .line 3
    check-cast p1, Lcom/applovin/impl/f5;

    .line 4
    .line 5
    invoke-static {v0, p1}, Lcom/applovin/impl/sdk/nativeAd/AppLovinNativeAdImpl;->y(Landroidx/arch/core/util/Function;Lcom/applovin/impl/f5;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
