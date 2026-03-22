.class public final Lcom/moloco/sdk/internal/services/events/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCustomUserEventBuilderServiceImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CustomUserEventBuilderServiceImpl.kt\ncom/moloco/sdk/internal/services/events/CustomUserEventBuilderServiceImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,225:1\n1557#2:226\n1628#2,3:227\n*S KotlinDebug\n*F\n+ 1 CustomUserEventBuilderServiceImpl.kt\ncom/moloco/sdk/internal/services/events/CustomUserEventBuilderServiceImpl\n*L\n168#1:226\n168#1:227,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/internal/services/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lcom/moloco/sdk/internal/services/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lcom/moloco/sdk/internal/services/j0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/services/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Lcom/moloco/sdk/internal/services/usertracker/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/moloco/sdk/internal/services/p;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final g:Lcom/moloco/sdk/internal/services/proto/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/x;Lcom/moloco/sdk/internal/services/b;Lcom/moloco/sdk/internal/services/j0;Lcom/moloco/sdk/internal/services/f;Lcom/moloco/sdk/internal/services/usertracker/e;Lcom/moloco/sdk/internal/services/p;Lcom/moloco/sdk/internal/services/proto/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/j0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/internal/services/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/services/usertracker/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/internal/services/p;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/services/proto/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "appInfoService"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "networkInfoService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "deviceInfoService"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "screenInfoService"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "userIdentifierService"

    .line 22
    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v0, "adDataService"

    .line 28
    .line 29
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const-string v0, "encoderService"

    .line 33
    .line 34
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "userEventConfigService"

    .line 38
    .line 39
    .line 40
    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const-string v0, "sdkVersion"

    .line 44
    .line 45
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/events/a;->a:Lcom/moloco/sdk/internal/services/x;

    .line 52
    .line 53
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/events/a;->b:Lcom/moloco/sdk/internal/services/b;

    .line 54
    .line 55
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/events/a;->c:Lcom/moloco/sdk/internal/services/j0;

    .line 56
    .line 57
    iput-object p4, p0, Lcom/moloco/sdk/internal/services/events/a;->d:Lcom/moloco/sdk/internal/services/f;

    .line 58
    .line 59
    iput-object p5, p0, Lcom/moloco/sdk/internal/services/events/a;->e:Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 60
    .line 61
    iput-object p6, p0, Lcom/moloco/sdk/internal/services/events/a;->f:Lcom/moloco/sdk/internal/services/p;

    .line 62
    .line 63
    iput-object p7, p0, Lcom/moloco/sdk/internal/services/events/a;->g:Lcom/moloco/sdk/internal/services/proto/a;

    .line 64
    .line 65
    iput-object p8, p0, Lcom/moloco/sdk/internal/services/events/a;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 66
    .line 67
    iput-object p9, p0, Lcom/moloco/sdk/internal/services/events/a;->i:Ljava/lang/String;

    .line 68
    .line 69
    return-void
.end method

.method public static final synthetic h(Lcom/moloco/sdk/internal/services/events/a;JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/moloco/sdk/internal/services/events/a;->g(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public a(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p5, Lcom/moloco/sdk/internal/services/events/a$b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/services/events/a$b;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/services/events/a$b;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/services/events/a$b;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/services/events/a$b;

    .line 21
    .line 22
    invoke-direct {v0, p0, p5}, Lcom/moloco/sdk/internal/services/events/a$b;-><init>(Lcom/moloco/sdk/internal/services/events/a;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p5, v0, Lcom/moloco/sdk/internal/services/events/a$b;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/services/events/a$b;->k:I

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
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/events/a$b;->h:Ljava/lang/Object;

    .line 39
    .line 40
    move-object p4, p1

    .line 41
    check-cast p4, Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p5}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p5, p0, Lcom/moloco/sdk/internal/services/events/a;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 59
    .line 60
    invoke-interface {p5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->c()Z

    .line 61
    .line 62
    .line 63
    move-result p5

    .line 64
    if-nez p5, :cond_3

    .line 65
    .line 66
    sget-object v4, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 67
    .line 68
    const/4 v8, 0x4

    .line 69
    const/4 v9, 0x0

    .line 70
    const-string v5, "CustomUserEventBuilderServiceImpl"

    .line 71
    .line 72
    const-string v6, "Event reporting config disabled, UserAdInteractionExt not reporting"

    .line 73
    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v4 .. v9}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-object p4

    .line 79
    :cond_3
    iput-object p4, v0, Lcom/moloco/sdk/internal/services/events/a$b;->h:Ljava/lang/Object;

    .line 80
    .line 81
    iput v3, v0, Lcom/moloco/sdk/internal/services/events/a$b;->k:I

    .line 82
    .line 83
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/moloco/sdk/internal/services/events/a;->g(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p5

    .line 87
    if-ne p5, v1, :cond_4

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_4
    :goto_1
    check-cast p5, Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    const-string/jumbo p2, "user_ad_interaction_ext"

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, p2, p5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    const-string/jumbo p2, "toString(...)"

    .line 116
    .line 117
    .line 118
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    return-object p1
.end method

.method public final b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/events/a;->i:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK$a;

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->l(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$MolocoSDK;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public final c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/internal/services/a;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v1, p2, Lcom/moloco/sdk/internal/services/a$a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;->CELLULAR:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 12
    .line 13
    .line 14
    check-cast p2, Lcom/moloco/sdk/internal/services/a$a;

    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/a$a;->a()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {v0, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object v1, Lcom/moloco/sdk/internal/services/a$b;->a:Lcom/moloco/sdk/internal/services/a$b;

    .line 25
    .line 26
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;->UNKNOWN:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;

    .line 33
    .line 34
    invoke-virtual {v0, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    sget-object v1, Lcom/moloco/sdk/internal/services/a$c;->a:Lcom/moloco/sdk/internal/services/a$c;

    .line 39
    .line 40
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    if-eqz p2, :cond_2

    .line 45
    .line 46
    sget-object p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;->WIFI:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;

    .line 47
    .line 48
    invoke-virtual {v0, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$ConnectionType;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network$a;

    .line 49
    .line 50
    .line 51
    :goto_0
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;

    .line 56
    .line 57
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->k(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Network;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 62
    .line 63
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p1
.end method

.method public final d(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/internal/services/w;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/w;->a()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/w;->b()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-virtual {v0, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;->b(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App$a;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$App;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 26
    .line 27
    .line 28
    return-object p1
.end method

.method public final e(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/internal/services/i0;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 2

    .line 1
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/i0;->j()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;->c(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 10
    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/i0;->h()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 17
    .line 18
    .line 19
    sget-object v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$OsType;->ANDROID:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$OsType;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$OsType;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/moloco/sdk/internal/services/i0;->k()F

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    invoke-virtual {v0, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;->e(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device$a;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->h(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Device;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 38
    .line 39
    .line 40
    return-object p1
.end method

.method public final f(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Lcom/moloco/sdk/internal/services/e;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;
    .locals 4

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction$a;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->i(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ImpressionInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 16
    .line 17
    .line 18
    goto/16 :goto_1

    .line 19
    .line 20
    :cond_0
    instance-of v0, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;

    .line 21
    .line 22
    if-eqz v0, :cond_4

    .line 23
    .line 24
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v1}, Lcom/moloco/sdk/internal/services/events/b;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 39
    .line 40
    .line 41
    invoke-static {p3}, Lcom/moloco/sdk/internal/services/events/b;->c(Lcom/moloco/sdk/internal/services/e;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    invoke-virtual {v0, p3}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;->c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    if-eqz p3, :cond_1

    .line 53
    .line 54
    invoke-static {p3}, Lcom/moloco/sdk/internal/services/events/b;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 55
    .line 56
    .line 57
    move-result-object p3

    .line 58
    invoke-virtual {v0, p3}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;->f(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 59
    .line 60
    .line 61
    :cond_1
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 62
    .line 63
    .line 64
    move-result-object p3

    .line 65
    if-eqz p3, :cond_2

    .line 66
    .line 67
    invoke-static {p3}, Lcom/moloco/sdk/internal/services/events/b;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 68
    .line 69
    .line 70
    move-result-object p3

    .line 71
    invoke-virtual {v0, p3}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;->e(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$d;->a()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    new-instance p3, Ljava/util/ArrayList;

    .line 79
    .line 80
    const/16 v1, 0xa

    .line 81
    .line 82
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    .line 88
    .line 89
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 90
    .line 91
    .line 92
    move-result-object p2

    .line 93
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-eqz v1, :cond_3

    .line 98
    .line 99
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;

    .line 104
    .line 105
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v3}, Lcom/moloco/sdk/internal/services/events/b;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;->c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3}, Lcom/moloco/sdk/internal/services/events/b;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;->a(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c;->e()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-static {v1}, Lcom/moloco/sdk/internal/services/events/b;->d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$a;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button;

    .line 147
    .line 148
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    invoke-virtual {v0, p3}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;->a(Ljava/lang/Iterable;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction$a;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;

    .line 160
    .line 161
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->f(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$ClickInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 162
    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_4
    instance-of p3, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$b;

    .line 166
    .line 167
    if-eqz p3, :cond_5

    .line 168
    .line 169
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction$a;

    .line 170
    .line 171
    .line 172
    move-result-object p3

    .line 173
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$b;

    .line 174
    .line 175
    invoke-virtual {p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$b;->a()J

    .line 176
    .line 177
    .line 178
    move-result-wide v0

    .line 179
    invoke-virtual {p3, v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction$a;->a(J)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction$a;

    .line 180
    .line 181
    .line 182
    invoke-virtual {p3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;

    .line 187
    .line 188
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->e(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppForegroundingInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_5
    instance-of p2, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$a;

    .line 193
    .line 194
    if-eqz p2, :cond_6

    .line 195
    .line 196
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction$a;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    invoke-virtual {p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    check-cast p2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$AppBackgroundingInteraction;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 207
    .line 208
    .line 209
    :goto_1
    return-object p1

    .line 210
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 211
    .line 212
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 213
    .line 214
    .line 215
    throw p1
.end method

.method public final g(JLcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lcom/moloco/sdk/internal/services/events/a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    check-cast v0, Lcom/moloco/sdk/internal/services/events/a$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/internal/services/events/a$a;->p:I

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
    iput v1, v0, Lcom/moloco/sdk/internal/services/events/a$a;->p:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/internal/services/events/a$a;

    .line 21
    .line 22
    invoke-direct {v0, p0, p4}, Lcom/moloco/sdk/internal/services/events/a$a;-><init>(Lcom/moloco/sdk/internal/services/events/a;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p4, v0, Lcom/moloco/sdk/internal/services/events/a$a;->n:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/internal/services/events/a$a;->p:I

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
    iget-wide p1, v0, Lcom/moloco/sdk/internal/services/events/a$a;->m:J

    .line 39
    .line 40
    iget-object p3, v0, Lcom/moloco/sdk/internal/services/events/a$a;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p3, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/moloco/sdk/internal/services/events/a$a;->k:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 47
    .line 48
    iget-object v2, v0, Lcom/moloco/sdk/internal/services/events/a$a;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v2, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 51
    .line 52
    iget-object v3, v0, Lcom/moloco/sdk/internal/services/events/a$a;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/moloco/sdk/internal/services/events/a$a;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/moloco/sdk/internal/services/events/a;

    .line 59
    .line 60
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw p1

    .line 72
    :cond_2
    invoke-static {p4}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 76
    .line 77
    .line 78
    move-result-object p4

    .line 79
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/events/a;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;

    .line 80
    .line 81
    invoke-interface {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/b;->b()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-eqz v2, :cond_4

    .line 86
    .line 87
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/events/a;->e:Lcom/moloco/sdk/internal/services/usertracker/e;

    .line 88
    .line 89
    iput-object p0, v0, Lcom/moloco/sdk/internal/services/events/a$a;->h:Ljava/lang/Object;

    .line 90
    .line 91
    iput-object p3, v0, Lcom/moloco/sdk/internal/services/events/a$a;->i:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object p4, v0, Lcom/moloco/sdk/internal/services/events/a$a;->j:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object p4, v0, Lcom/moloco/sdk/internal/services/events/a$a;->k:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object p4, v0, Lcom/moloco/sdk/internal/services/events/a$a;->l:Ljava/lang/Object;

    .line 98
    .line 99
    iput-wide p1, v0, Lcom/moloco/sdk/internal/services/events/a$a;->m:J

    .line 100
    .line 101
    iput v3, v0, Lcom/moloco/sdk/internal/services/events/a$a;->p:I

    .line 102
    .line 103
    invoke-interface {v2, v0}, Lcom/moloco/sdk/internal/services/usertracker/e;->c(Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    if-ne v0, v1, :cond_3

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_3
    move-object v3, p3

    .line 111
    move-object p3, p4

    .line 112
    move-object v1, p3

    .line 113
    move-object v2, v1

    .line 114
    move-object p4, v0

    .line 115
    move-object v0, p0

    .line 116
    :goto_1
    check-cast p4, Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {p3, p4}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->j(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 119
    .line 120
    .line 121
    move-object p4, v1

    .line 122
    move-object p3, v3

    .line 123
    goto :goto_2

    .line 124
    :cond_4
    move-object v0, p0

    .line 125
    move-object v2, p4

    .line 126
    :goto_2
    iget-object v1, v0, Lcom/moloco/sdk/internal/services/events/a;->f:Lcom/moloco/sdk/internal/services/p;

    .line 127
    .line 128
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/p;->a()Lcom/moloco/sdk/internal/services/o;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    instance-of v3, v1, Lcom/moloco/sdk/internal/services/o$a;

    .line 133
    .line 134
    if-eqz v3, :cond_5

    .line 135
    .line 136
    check-cast v1, Lcom/moloco/sdk/internal/services/o$a;

    .line 137
    .line 138
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/services/o$a;->a()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    invoke-virtual {p4, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->a(Ljava/lang/String;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 143
    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_5
    instance-of v1, v1, Lcom/moloco/sdk/internal/services/o$b;

    .line 147
    .line 148
    if-eqz v1, :cond_6

    .line 149
    .line 150
    :goto_3
    invoke-virtual {p4, p1, p2}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;->g(J)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 151
    .line 152
    .line 153
    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p4}, Lcom/moloco/sdk/internal/services/events/a;->b(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 157
    .line 158
    .line 159
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/events/a;->d:Lcom/moloco/sdk/internal/services/f;

    .line 160
    .line 161
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/f;->invoke()Lcom/moloco/sdk/internal/services/e;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {v0, p4, p3, p1}, Lcom/moloco/sdk/internal/services/events/a;->f(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a;Lcom/moloco/sdk/internal/services/e;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 166
    .line 167
    .line 168
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/events/a;->a:Lcom/moloco/sdk/internal/services/x;

    .line 169
    .line 170
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/x;->invoke()Lcom/moloco/sdk/internal/services/w;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v0, p4, p1}, Lcom/moloco/sdk/internal/services/events/a;->d(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/internal/services/w;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 175
    .line 176
    .line 177
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/events/a;->c:Lcom/moloco/sdk/internal/services/j0;

    .line 178
    .line 179
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/j0;->invoke()Lcom/moloco/sdk/internal/services/i0;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {v0, p4, p1}, Lcom/moloco/sdk/internal/services/events/a;->e(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/internal/services/i0;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 184
    .line 185
    .line 186
    iget-object p1, v0, Lcom/moloco/sdk/internal/services/events/a;->b:Lcom/moloco/sdk/internal/services/b;

    .line 187
    .line 188
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/b;->invoke()Lcom/moloco/sdk/internal/services/a;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {v0, p4, p1}, Lcom/moloco/sdk/internal/services/events/a;->c(Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;Lcom/moloco/sdk/internal/services/a;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$a;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    check-cast p1, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;

    .line 200
    .line 201
    sget-object p2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 202
    .line 203
    new-instance p3, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    const-string p4, "Encoding protobuf UserAdInteractionExt: "

    .line 209
    .line 210
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    const/4 v5, 0x4

    .line 221
    const/4 v6, 0x0

    .line 222
    const-string v2, "CustomUserEventBuilderServiceImpl"

    .line 223
    .line 224
    const/4 v4, 0x0

    .line 225
    move-object v1, p2

    .line 226
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    iget-object p3, v0, Lcom/moloco/sdk/internal/services/events/a;->g:Lcom/moloco/sdk/internal/services/proto/a;

    .line 230
    .line 231
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 232
    .line 233
    .line 234
    const/4 p4, 0x2

    .line 235
    const/4 v0, 0x0

    .line 236
    const/4 v1, 0x0

    .line 237
    invoke-static {p3, p1, v1, p4, v0}, Lcom/moloco/sdk/internal/services/proto/a$a;->a(Lcom/moloco/sdk/internal/services/proto/a;Lcom/moloco/sdk/UserIntent$UserAdInteractionExt;IILjava/lang/Object;)Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p1

    .line 241
    new-instance p3, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string p4, "Successfully built userAdInteractionExt as base64 string: "

    .line 247
    .line 248
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v3

    .line 258
    const-string v2, "CustomUserEventBuilderServiceImpl"

    .line 259
    .line 260
    move-object v1, p2

    .line 261
    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    return-object p1

    .line 265
    :cond_6
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 266
    .line 267
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 268
    .line 269
    .line 270
    throw p1
.end method
