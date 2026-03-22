.class public final synthetic Lcom/moloco/sdk/publisher/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/moloco/sdk/publisher/BannerActivitySample;


# direct methods
.method public synthetic constructor <init>(Lcom/moloco/sdk/publisher/BannerActivitySample;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/moloco/sdk/publisher/a;->a:Lcom/moloco/sdk/publisher/BannerActivitySample;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/publisher/a;->a:Lcom/moloco/sdk/publisher/BannerActivitySample;

    .line 2
    .line 3
    check-cast p1, Lcom/moloco/sdk/publisher/Banner;

    .line 4
    .line 5
    check-cast p2, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 6
    .line 7
    invoke-static {v0, p1, p2}, Lcom/moloco/sdk/publisher/BannerActivitySample;->a(Lcom/moloco/sdk/publisher/BannerActivitySample;Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
