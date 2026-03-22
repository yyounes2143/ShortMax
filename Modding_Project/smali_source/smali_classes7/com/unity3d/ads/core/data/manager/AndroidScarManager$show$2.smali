.class final Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidScarManager.kt"

# interfaces
.implements Lat/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/manager/AndroidScarManager;->show(Ljava/lang/String;Ljava/lang/String;)Lkt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lat/n<",
        "Lkt/c<",
        "-",
        "Lcom/unity3d/ads/core/domain/scar/GmaEventData;",
        ">;",
        "Lcom/unity3d/ads/core/domain/scar/GmaEventData;",
        "Lrs/c<",
        "-",
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.manager.AndroidScarManager$show$2"
    f = "AndroidScarManager.kt"
    l = {
        0x7b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkt/c;

    check-cast p2, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    check-cast p3, Lrs/c;

    invoke-virtual {p0, p1, p2, p3}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->invoke(Lkt/c;Lcom/unity3d/ads/core/domain/scar/GmaEventData;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkt/c;Lcom/unity3d/ads/core/domain/scar/GmaEventData;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lkt/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/scar/GmaEventData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkt/c<",
            "-",
            "Lcom/unity3d/ads/core/domain/scar/GmaEventData;",
            ">;",
            "Lcom/unity3d/ads/core/domain/scar/GmaEventData;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    new-instance v0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;

    invoke-direct {v0, p3}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;-><init>(Lrs/c;)V

    iput-object p1, v0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->L$1:Ljava/lang/Object;

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {v0, p1}, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->L$0:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 15
    .line 16
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 23
    .line 24
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    throw p1

    .line 28
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->L$0:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lkt/c;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->L$1:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v1, Lcom/unity3d/ads/core/domain/scar/GmaEventData;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    iput v2, p0, Lcom/unity3d/ads/core/data/manager/AndroidScarManager$show$2;->label:I

    .line 42
    .line 43
    invoke-interface {p1, v1, p0}, Lkt/c;->emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    move-object v0, v1

    .line 51
    :goto_0
    sget-object p1, Lcom/unity3d/scar/adapter/common/GMAEvent;->AD_CLOSED:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 52
    .line 53
    sget-object v1, Lcom/unity3d/scar/adapter/common/GMAEvent;->NO_AD_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 54
    .line 55
    sget-object v3, Lcom/unity3d/scar/adapter/common/GMAEvent;->INTERSTITIAL_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 56
    .line 57
    sget-object v4, Lcom/unity3d/scar/adapter/common/GMAEvent;->REWARDED_SHOW_ERROR:Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 58
    .line 59
    filled-new-array {p1, v1, v3, v4}, [Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0}, Lcom/unity3d/ads/core/domain/scar/GmaEventData;->getGmaEvent()Lcom/unity3d/scar/adapter/common/GMAEvent;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-static {p1, v0}, Lkotlin/collections/n;->f0([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    xor-int/2addr p1, v2

    .line 72
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    return-object p1
.end method
