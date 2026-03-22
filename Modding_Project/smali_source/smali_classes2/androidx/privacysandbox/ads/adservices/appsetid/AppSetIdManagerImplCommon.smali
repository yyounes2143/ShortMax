.class public Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;
.super Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;
.source "AppSetIdManagerImplCommon.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClassVerificationFailure",
        "NewApi"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension$Container;
    value = {
        .subannotation Landroidx/annotation/RequiresExtension;
            extension = 0xf4240
            version = 0x4
        .end subannotation,
        .subannotation Landroidx/annotation/RequiresExtension;
            extension = 0x1f
            version = 0x9
        .end subannotation
    }
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppSetIdManagerImplCommon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppSetIdManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,53:1\n314#2,11:54\n*S KotlinDebug\n*F\n+ 1 AppSetIdManagerImplCommon.kt\nandroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon\n*L\n42#1:54,11\n*E\n"
    }
.end annotation


# instance fields
.field private final mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/adservices/appsetid/AppSetIdManager;)V
    .locals 1
    .param p1    # Landroid/adservices/appsetid/AppSetIdManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "mAppSetIdManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$getAppSetIdAsyncInternal(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetIdAsyncInternal(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;)Landroid/adservices/appsetid/AppSetIdManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->mAppSetIdManager:Landroid/adservices/appsetid/AppSetIdManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;
    .locals 3

    .line 1
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/f;->a(Landroid/adservices/appsetid/AppSetId;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "response.id"

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-ne v0, v2, :cond_0

    .line 9
    .line 10
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    .line 11
    .line 12
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/g;->a(Landroid/adservices/appsetid/AppSetId;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {v0, p1, v2}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    .line 24
    .line 25
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/g;->a(Landroid/adservices/appsetid/AppSetId;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, p1, v1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;-><init>(Ljava/lang/String;I)V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method static synthetic getAppSetId$suspendImpl(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;",
            "Lrs/c<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;

    .line 7
    .line 8
    iget v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;-><init>(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p0, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v3, v0, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon$getAppSetId$1;->label:I

    .line 60
    .line 61
    invoke-direct {p0, v0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetIdAsyncInternal(Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    :goto_1
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/appsetid/e;->a(Ljava/lang/Object;)Landroid/adservices/appsetid/AppSetId;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->convertResponse(Landroid/adservices/appsetid/AppSetId;)Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method

.method private final getAppSetIdAsyncInternal(Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Landroid/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/4 v2, 0x1

    .line 8
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 12
    .line 13
    .line 14
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->access$getMAppSetIdManager$p(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;)Landroid/adservices/appsetid/AppSetIdManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    new-instance v2, Landroidx/credentials/a;

    .line 19
    .line 20
    invoke-direct {v2}, Landroidx/credentials/a;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lrs/c;)Landroid/os/OutcomeReceiver;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-static {v1, v2, v3}, Landroidx/privacysandbox/ads/adservices/appsetid/d;->a(Landroid/adservices/appsetid/AppSetIdManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAppSetId(Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Landroidx/privacysandbox/ads/adservices/appsetid/AppSetId;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;->getAppSetId$suspendImpl(Landroidx/privacysandbox/ads/adservices/appsetid/AppSetIdManagerImplCommon;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
