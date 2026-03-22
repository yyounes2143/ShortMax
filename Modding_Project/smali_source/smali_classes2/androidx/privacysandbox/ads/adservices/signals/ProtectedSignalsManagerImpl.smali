.class public Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;
.super Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;
.source "ProtectedSignalsManagerImpl.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi",
        "ClassVerificationFailure"
    }
.end annotation

.annotation build Landroidx/annotation/RequiresExtension;
    extension = 0xf4240
    version = 0xc
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Landroidx/privacysandbox/ads/adservices/common/ExperimentalFeatures$Ext12OptIn;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nProtectedSignalsManagerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,55:1\n314#2,11:56\n*S KotlinDebug\n*F\n+ 1 ProtectedSignalsManagerImpl.kt\nandroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl\n*L\n40#1:56,11\n*E\n"
    }
.end annotation


# instance fields
.field private final protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/adservices/signals/ProtectedSignalsManager;)V
    .locals 1
    .param p1    # Landroid/adservices/signals/ProtectedSignalsManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "protectedSignalsManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManager;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;)Landroid/adservices/signals/ProtectedSignalsManager;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->protectedSignalsManager:Landroid/adservices/signals/ProtectedSignalsManager;

    .line 2
    .line 3
    return-object p0
.end method

.method private final convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/privacysandbox/ads/adservices/signals/e;->a()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;->getUpdateUri()Landroid/net/Uri;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/signals/d;->a(Landroid/net/Uri;)Landroid/adservices/signals/UpdateSignalsRequest$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-static {p1}, Landroidx/privacysandbox/ads/adservices/signals/c;->a(Landroid/adservices/signals/UpdateSignalsRequest$Builder;)Landroid/adservices/signals/UpdateSignalsRequest;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "Builder(request.updateUri).build()"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-object p1
.end method

.method static synthetic updateSignals$suspendImpl(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/e;

    .line 2
    .line 3
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

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
    invoke-static {p0}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->access$getProtectedSignalsManager$p(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;)Landroid/adservices/signals/ProtectedSignalsManager;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p0, p1}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->access$convertUpdateRequest(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;)Landroid/adservices/signals/UpdateSignalsRequest;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    new-instance p1, Landroidx/credentials/a;

    .line 23
    .line 24
    invoke-direct {p1}, Landroidx/credentials/a;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Landroidx/core/os/OutcomeReceiverKt;->asOutcomeReceiver(Lrs/c;)Landroid/os/OutcomeReceiver;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, p0, p1, v2}, Landroidx/privacysandbox/ads/adservices/signals/b;->a(Landroid/adservices/signals/ProtectedSignalsManager;Landroid/adservices/signals/UpdateSignalsRequest;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    if-ne p0, p1, :cond_0

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p0, p1, :cond_1

    .line 52
    .line 53
    return-object p0

    .line 54
    :cond_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 55
    .line 56
    return-object p0
.end method


# virtual methods
.method public updateSignals(Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/DoNotInline;
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.ACCESS_ADSERVICES_PROTECTED_SIGNALS"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1, p2}, Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;->updateSignals$suspendImpl(Landroidx/privacysandbox/ads/adservices/signals/ProtectedSignalsManagerImpl;Landroidx/privacysandbox/ads/adservices/signals/UpdateSignalsRequest;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
