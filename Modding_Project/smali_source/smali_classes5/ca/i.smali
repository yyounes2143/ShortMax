.class public final Lca/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGDPRManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GDPRManager.kt\ncom/hades/aar/admanager/core/GDPRManager\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,284:1\n426#2,11:285\n426#2,11:296\n426#2,11:307\n1#3:318\n*S KotlinDebug\n*F\n+ 1 GDPRManager.kt\ncom/hades/aar/admanager/core/GDPRManager\n*L\n53#1:285,11\n173#1:296,11\n198#1:307,11\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lca/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static f:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lca/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lca/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lca/i;->a:Lca/i;

    .line 7
    .line 8
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sput-object v1, Lca/i;->b:Lkt/e;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlinx/coroutines/flow/c;->d(Lkt/e;)Lkt/i;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    sput-object v1, Lca/i;->c:Lkt/i;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    sput-object v0, Lca/i;->d:Lkt/e;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lca/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    .line 36
    const-string v0, ""

    .line 37
    .line 38
    sput-object v0, Lca/i;->f:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final B(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
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
    new-instance v1, Lc/f;

    .line 15
    .line 16
    invoke-direct {v1, p1, v0}, Lc/f;-><init>(Landroid/app/Activity;Lkotlinx/coroutines/e;)V

    .line 17
    .line 18
    .line 19
    invoke-static {p1, v1}, Lcom/google/android/ump/UserMessagingPlatform;->showPrivacyOptionsForm(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-ne p1, v0, :cond_0

    .line 31
    .line 32
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-object p1
.end method

.method private final C(Lcom/google/android/ump/ConsentInformation;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sget-object p1, Lca/i;->b:Lkt/e;

    .line 8
    .line 9
    invoke-interface {p1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 22
    .line 23
    invoke-interface {p1, v0}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    return-void
.end method

.method public static final synthetic a(Lca/i;Landroid/app/Activity;)Lcom/google/android/ump/ConsentRequestParameters;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lca/i;->l(Landroid/app/Activity;)Lcom/google/android/ump/ConsentRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic b(Lca/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lca/i;->m(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic c()Lkt/e;
    .locals 1

    .line 1
    sget-object v0, Lca/i;->d:Lkt/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic d(Lca/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lca/i;->o(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lca/i;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic f(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lca/i;->t(Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic g(Lca/i;Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lca/i;->y(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic h(Lca/i;Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lca/i;->B(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic i(Lca/i;Lcom/google/android/ump/ConsentInformation;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lca/i;->C(Lcom/google/android/ump/ConsentInformation;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final l(Landroid/app/Activity;)Lcom/google/android/ump/ConsentRequestParameters;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lca/i;->f:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {v1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "Debug Mode Enabled -> testDeviceID="

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v2, Lca/i;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-direct {p0, v1}, Lca/i;->m(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v1, Lcom/google/android/ump/ConsentDebugSettings$Builder;

    .line 34
    .line 35
    invoke-direct {v1, p1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    const/4 p1, 0x1

    .line 39
    invoke-virtual {v1, p1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->setDebugGeography(I)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    sget-object v1, Lca/i;->f:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->addTestDeviceHashedId(Ljava/lang/String;)Lcom/google/android/ump/ConsentDebugSettings$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/google/android/ump/ConsentDebugSettings$Builder;->build()Lcom/google/android/ump/ConsentDebugSettings;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->setConsentDebugSettings(Lcom/google/android/ump/ConsentDebugSettings;)Lcom/google/android/ump/ConsentRequestParameters$Builder;

    .line 54
    .line 55
    .line 56
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/ump/ConsentRequestParameters$Builder;->build()Lcom/google/android/ump/ConsentRequestParameters;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const-string v0, "builder.build()"

    .line 61
    .line 62
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p1
.end method

.method private final m(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "AdManagerGDPRManager"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final o(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lga/a;->a:Lga/a;

    .line 2
    .line 3
    const-string v1, "AdManagerGDPRManager"

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final t(Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;)Ljava/lang/String;
    .locals 2

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Error(code="

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Lcom/google/android/ump/FormError;->getErrorCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", msg="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p2}, Lcom/google/android/ump/FormError;->getMessage()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p2, 0x29

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez p2, :cond_1

    .line 39
    .line 40
    :cond_0
    const-string p2, "Success"

    .line 41
    .line 42
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v1, "["

    .line 45
    .line 46
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string p2, "] canRequestAds="

    .line 53
    .line 54
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string p2, ", status="

    .line 65
    .line 66
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-interface {p1}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p1, ", managerState="

    .line 77
    .line 78
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    sget-object p1, Lca/i;->b:Lkt/e;

    .line 82
    .line 83
    invoke-interface {p1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    check-cast p1, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    return-object p1
.end method

.method public static synthetic u(Lca/i;Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lca/i;->t(Lcom/google/android/ump/ConsentInformation;Lcom/google/android/ump/FormError;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method public static synthetic w(Lca/i;Landroid/app/Activity;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    sget-object p2, Lad-manager/b/z;->d:Lad-manager/b/z;

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p0, p1, p2}, Lca/i;->v(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private final y(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
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
    invoke-static {}, Lca/i;->c()Lkt/e;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v1}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/lang/Boolean;

    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_0

    .line 29
    .line 30
    sget-object p1, Lca/i;->a:Lca/i;

    .line 31
    .line 32
    const-string v1, "showConsentForm ignore -> isUpdateSuccess=false (Call requestConsentInfoUpdate first)"

    .line 33
    .line 34
    invoke-static {p1, v1}, Lca/i;->d(Lca/i;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->isActive()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    sget-object v1, Lca/i;->a:Lca/i;

    .line 59
    .line 60
    const-string v2, "showConsentForm start"

    .line 61
    .line 62
    invoke-static {v1, v2}, Lca/i;->d(Lca/i;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    new-instance v1, Lc/d;

    .line 66
    .line 67
    invoke-direct {v1, p1, v0}, Lc/d;-><init>(Landroid/app/Activity;Lkotlinx/coroutines/e;)V

    .line 68
    .line 69
    .line 70
    invoke-static {p1, v1}, Lcom/google/android/ump/UserMessagingPlatform;->loadAndShowConsentFormIfRequired(Landroid/app/Activity;Lcom/google/android/ump/ConsentForm$OnConsentFormDismissedListener;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    if-ne p1, v0, :cond_2

    .line 82
    .line 83
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 84
    .line 85
    .line 86
    :cond_2
    return-object p1
.end method


# virtual methods
.method public final A(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDismiss"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lad-manager/b/g0;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p1, p2, v0}, Lad-manager/b/g0;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final j(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 7
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lad-manager/b/t;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lad-manager/b/t;

    .line 7
    .line 8
    iget v1, v0, Lad-manager/b/t;->m:I

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
    iput v1, v0, Lad-manager/b/t;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lad-manager/b/t;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lad-manager/b/t;-><init>(Lca/i;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lad-manager/b/t;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lad-manager/b/t;->m:I

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
    iget-wide v1, v0, Lad-manager/b/t;->j:J

    .line 39
    .line 40
    iget-object p1, v0, Lad-manager/b/t;->i:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v0, Lad-manager/b/t;->h:Lca/i;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lca/i;->b:Lkt/e;

    .line 60
    .line 61
    invoke-interface {p2}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_3

    .line 72
    .line 73
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v2, "awaitCanRequestAd start -> taskName="

    .line 79
    .line 80
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-direct {p0, p2}, Lca/i;->o(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    sget-object p2, Lca/i;->c:Lkt/i;

    .line 98
    .line 99
    new-instance v2, Lad-manager/b/u;

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-direct {v2, v6}, Lad-manager/b/u;-><init>(Lrs/c;)V

    .line 103
    .line 104
    .line 105
    iput-object p0, v0, Lad-manager/b/t;->h:Lca/i;

    .line 106
    .line 107
    iput-object p1, v0, Lad-manager/b/t;->i:Ljava/lang/String;

    .line 108
    .line 109
    iput-wide v4, v0, Lad-manager/b/t;->j:J

    .line 110
    .line 111
    iput v3, v0, Lad-manager/b/t;->m:I

    .line 112
    .line 113
    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    if-ne p2, v1, :cond_4

    .line 118
    .line 119
    return-object v1

    .line 120
    :cond_4
    move-object v0, p0

    .line 121
    move-wide v1, v4

    .line 122
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    const-string v3, "awaitCanRequestAd end -> taskName="

    .line 125
    .line 126
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p1, ", cost="

    .line 133
    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v3

    .line 141
    sub-long/2addr v3, v1

    .line 142
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    const-string p1, "ms"

    .line 146
    .line 147
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-direct {v0, p1}, Lca/i;->o(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1
.end method

.method public final k(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 7
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
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lad-manager/b/v;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lad-manager/b/v;

    .line 7
    .line 8
    iget v1, v0, Lad-manager/b/v;->m:I

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
    iput v1, v0, Lad-manager/b/v;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lad-manager/b/v;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lad-manager/b/v;-><init>(Lca/i;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lad-manager/b/v;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lad-manager/b/v;->m:I

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
    iget-wide v1, v0, Lad-manager/b/v;->j:J

    .line 39
    .line 40
    iget-object p1, v0, Lad-manager/b/v;->i:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, v0, Lad-manager/b/v;->h:Lca/i;

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lca/i;->d:Lkt/e;

    .line 60
    .line 61
    invoke-interface {p2}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/lang/Boolean;

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 74
    .line 75
    return-object p1

    .line 76
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    const-string v4, "awaitUpdateSucceedDeferred start -> taskName="

    .line 79
    .line 80
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    invoke-direct {p0, v2}, Lca/i;->o(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 94
    .line 95
    .line 96
    move-result-wide v4

    .line 97
    new-instance v2, Lad-manager/b/w;

    .line 98
    .line 99
    const/4 v6, 0x0

    .line 100
    invoke-direct {v2, v6}, Lad-manager/b/w;-><init>(Lrs/c;)V

    .line 101
    .line 102
    .line 103
    iput-object p0, v0, Lad-manager/b/v;->h:Lca/i;

    .line 104
    .line 105
    iput-object p1, v0, Lad-manager/b/v;->i:Ljava/lang/String;

    .line 106
    .line 107
    iput-wide v4, v0, Lad-manager/b/v;->j:J

    .line 108
    .line 109
    iput v3, v0, Lad-manager/b/v;->m:I

    .line 110
    .line 111
    invoke-static {p2, v2, v0}, Lkotlinx/coroutines/flow/c;->x(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    if-ne p2, v1, :cond_4

    .line 116
    .line 117
    return-object v1

    .line 118
    :cond_4
    move-object v0, p0

    .line 119
    move-wide v1, v4

    .line 120
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    const-string v3, "awaitUpdateSucceedDeferred end -> taskName="

    .line 123
    .line 124
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    const-string p1, ",cost="

    .line 131
    .line 132
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 136
    .line 137
    .line 138
    move-result-wide v3

    .line 139
    sub-long/2addr v3, v1

    .line 140
    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p1, "ms"

    .line 144
    .line 145
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {v0, p1}, Lca/i;->o(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 156
    .line 157
    return-object p1
.end method

.method public final n()V
    .locals 2

    .line 1
    const-string v0, "forceSetAdRequestAble invoked"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lca/i;->o(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lca/i;->b:Lkt/e;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-interface {v0, v1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final p()Z
    .locals 1

    .line 1
    sget-object v0, Lca/i;->b:Lkt/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final q(Landroid/content/Context;)Z
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const-string v1, "IAB Check -> IABTCF_PurposeConsents=["

    .line 4
    .line 5
    const-string v2, "context"

    .line 6
    .line 7
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/google/android/ump/UserMessagingPlatform;->getConsentInformation(Landroid/content/Context;)Lcom/google/android/ump/ConsentInformation;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-interface {v2}, Lcom/google/android/ump/ConsentInformation;->getConsentStatus()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    if-ne v3, v4, :cond_0

    .line 20
    .line 21
    return v4

    .line 22
    :cond_0
    invoke-interface {v2}, Lcom/google/android/ump/ConsentInformation;->canRequestAds()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    const/4 v3, 0x0

    .line 27
    if-nez v2, :cond_1

    .line 28
    .line 29
    return v3

    .line 30
    :cond_1
    :try_start_0
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v2, "IABTCF_PurposeConsents"

    .line 35
    .line 36
    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-nez p1, :cond_2

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    move-object v0, p1

    .line 44
    :goto_0
    invoke-static {v0}, Lkotlin/text/StringsKt;->D1(Ljava/lang/CharSequence;)Ljava/lang/Character;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v0, "], Purpose1="

    .line 57
    .line 58
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-direct {p0, v0}, Lca/i;->o(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    if-nez p1, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 75
    .line 76
    .line 77
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    const/16 v0, 0x31

    .line 79
    .line 80
    if-ne p1, v0, :cond_4

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_4
    :goto_1
    move v4, v3

    .line 84
    goto :goto_2

    .line 85
    :catch_0
    move-exception p1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    const-string v1, "IAB Check exception -> "

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p0, p1}, Lca/i;->m(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :goto_2
    return v4
.end method

.method public final r()Z
    .locals 1

    .line 1
    sget-object v0, Lca/i;->d:Lkt/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lkt/e;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final s(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/app/Activity;
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
            "Landroid/app/Activity;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
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
    new-instance v1, Lc/m;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lc/m;-><init>(Lkotlinx/coroutines/e;)V

    .line 17
    .line 18
    .line 19
    new-instance v2, Lc/n;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lc/n;-><init>(Lkotlinx/coroutines/e;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p1, v1, v2}, Lcom/google/android/ump/UserMessagingPlatform;->loadConsentForm(Landroid/content/Context;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadSuccessListener;Lcom/google/android/ump/UserMessagingPlatform$OnConsentFormLoadFailureListener;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-ne p1, v0, :cond_0

    .line 36
    .line 37
    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-object p1
.end method

.method public final v(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onUpdate"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    new-instance v4, Lad-manager/b/a0;

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    invoke-direct {v4, p1, p2, v0}, Lad-manager/b/a0;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    const/4 v5, 0x3

    .line 26
    const/4 v6, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final x(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/app/Activity;
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
            "Landroid/app/Activity;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lad-manager/b/d0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lad-manager/b/d0;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method

.method public final z(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Landroid/app/Activity;
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
            "Landroid/app/Activity;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lad-manager/b/h0;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    invoke-direct {v1, p1, v2}, Lad-manager/b/h0;-><init>(Landroid/app/Activity;Lrs/c;)V

    .line 9
    .line 10
    .line 11
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1
.end method
