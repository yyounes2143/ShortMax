.class final Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "AdIdManagerImplCommon.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;->getAdId$suspendImpl(Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "androidx.privacysandbox.ads.adservices.adid.AdIdManagerImplCommon"
    f = "AdIdManagerImplCommon.kt"
    l = {
        0x28
    }
    m = "getAdId$suspendImpl"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;

.field final synthetic this$0:Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;


# direct methods
.method constructor <init>(Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;",
            "Lrs/c<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;->this$0:Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;->result:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;->label:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;->label:I

    .line 9
    .line 10
    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon$getAdId$1;->this$0:Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;

    .line 11
    .line 12
    invoke-static {p1, p0}, Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;->getAdId$suspendImpl(Landroidx/privacysandbox/ads/adservices/adid/AdIdManagerImplCommon;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
