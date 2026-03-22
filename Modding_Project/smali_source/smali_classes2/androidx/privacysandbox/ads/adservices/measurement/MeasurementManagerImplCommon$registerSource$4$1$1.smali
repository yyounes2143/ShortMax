.class final Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "MeasurementManagerImplCommon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "androidx.privacysandbox.ads.adservices.measurement.MeasurementManagerImplCommon$registerSource$4$1$1"
    f = "MeasurementManagerImplCommon.kt"
    l = {
        0x83
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMeasurementManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,130:1\n314#2,11:131\n*S KotlinDebug\n*F\n+ 1 MeasurementManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1\n*L\n96#1:131,11\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $request:Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

.field final synthetic $uri:Landroid/net/Uri;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;


# direct methods
.method constructor <init>(Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;Landroid/net/Uri;Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;",
            "Landroid/net/Uri;",
            "Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;",
            "Lrs/c<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->this$0:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->$uri:Landroid/net/Uri;

    .line 4
    .line 5
    iput-object p3, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->$request:Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

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
    new-instance p1, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->this$0:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->$uri:Landroid/net/Uri;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->$request:Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;-><init>(Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;Landroid/net/Uri;Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->label:I

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
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->L$2:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->L$1:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v0, Landroid/net/Uri;

    .line 19
    .line 20
    iget-object v0, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->L$0:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 29
    .line 30
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    .line 32
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p1

    .line 36
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->this$0:Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;

    .line 40
    .line 41
    iget-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->$uri:Landroid/net/Uri;

    .line 42
    .line 43
    iget-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->$request:Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;

    .line 44
    .line 45
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->L$0:Ljava/lang/Object;

    .line 46
    .line 47
    iput-object v1, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->L$1:Ljava/lang/Object;

    .line 48
    .line 49
    iput-object v3, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->L$2:Ljava/lang/Object;

    .line 50
    .line 51
    iput v2, p0, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon$registerSource$4$1$1;->label:I

    .line 52
    .line 53
    new-instance v4, Lkotlinx/coroutines/e;

    .line 54
    .line 55
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-direct {v4, v5, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4}, Lkotlinx/coroutines/e;->H()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/measurement/MeasurementManagerImplCommon;->getMMeasurementManager()Landroid/adservices/measurement/MeasurementManager;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v3}, Landroidx/privacysandbox/ads/adservices/measurement/SourceRegistrationRequest;->getInputEvent()Landroid/view/InputEvent;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    new-instance v3, Landroidx/credentials/a;

    .line 74
    .line 75
    invoke-direct {v3}, Landroidx/credentials/a;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-static {v4}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lrs/c;)Landroid/os/OutcomeReceiver;

    .line 79
    .line 80
    .line 81
    move-result-object v5

    .line 82
    invoke-static {p1, v1, v2, v3, v5}, Landroidx/privacysandbox/ads/adservices/measurement/s;->a(Landroid/adservices/measurement/MeasurementManager;Landroid/net/Uri;Landroid/view/InputEvent;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v4}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    if-ne p1, v1, :cond_2

    .line 94
    .line 95
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 96
    .line 97
    .line 98
    :cond_2
    if-ne p1, v0, :cond_3

    .line 99
    .line 100
    return-object v0

    .line 101
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 102
    .line 103
    return-object p1
.end method
