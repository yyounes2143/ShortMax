.class public final Lcom/appsflyer/AFLogger;
.super Lcom/appsflyer/internal/AFh1ySDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/AFLogger$LogLevel;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAFLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AFLogger.kt\ncom/appsflyer/AFLogger\n+ 2 StringExtensions.kt\ncom/appsflyer/internal/util/StringExtensionsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,278:1\n36#2:279\n36#2:280\n36#2:281\n36#2:282\n36#2:283\n1855#3,2:284\n*S KotlinDebug\n*F\n+ 1 AFLogger.kt\ncom/appsflyer/AFLogger\n*L\n177#1:279\n189#1:280\n208#1:281\n224#1:282\n243#1:283\n35#1:284,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appsflyer/AFLogger;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final getCurrencyIso4217Code:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final getMediationNetwork:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/appsflyer/AFLogger;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/appsflyer/AFLogger;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 7
    .line 8
    sget-object v0, Lcom/appsflyer/AFLogger$7;->getRevenue:Lcom/appsflyer/AFLogger$7;

    .line 9
    .line 10
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lms/i;

    .line 15
    .line 16
    sget-object v0, Lcom/appsflyer/AFLogger$5;->AFAdRevenueData:Lcom/appsflyer/AFLogger$5;

    .line 17
    .line 18
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 23
    .line 24
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFh1ySDK;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->getMonetizationNetwork(Lkotlin/jvm/functions/Function1;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final afDebugLog(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afDebugLog(Ljava/lang/String;Z)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0, p1}, Lcom/appsflyer/internal/AFh1ySDK;->d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 4
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 5
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    if-eqz p0, :cond_1

    .line 6
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 8
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 9
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 10
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    if-eqz p0, :cond_1

    .line 11
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 12
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/16 v8, 0x68

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v5, p2

    .line 13
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZ)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 14
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 15
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    if-eqz p0, :cond_1

    .line 16
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 17
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/16 v8, 0x48

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move v5, p2

    move v6, p3

    .line 18
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLog(Ljava/lang/String;Ljava/lang/Throwable;ZZZ)V
    .locals 11
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 2
    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    const/16 v9, 0x40

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 3
    invoke-static/range {v1 .. v10}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 2
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    if-eqz p0, :cond_1

    .line 3
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 4
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 5
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 10
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 7
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    if-eqz p0, :cond_1

    .line 8
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move-object v2, p0

    goto :goto_2

    :cond_1
    :goto_1
    const-string p0, "null"

    goto :goto_0

    :goto_2
    if-nez p1, :cond_2

    .line 9
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p0, "Invoked with null Throwable"

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    :cond_2
    move-object v3, p1

    xor-int/lit8 v6, p2, 0x1

    const/16 v8, 0x40

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 10
    invoke-static/range {v0 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->e$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZILjava/lang/Object;)V

    return-void
.end method

.method public static final afInfoLog(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afInfoLog(Ljava/lang/String;Z)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0, p1}, Lcom/appsflyer/internal/AFh1ySDK;->i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final afLogForce(Ljava/lang/String;)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 7
    .line 8
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    .line 9
    .line 10
    invoke-virtual {v0, v1, p0}, Lcom/appsflyer/internal/AFh1ySDK;->force(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static final afRDLog(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 7
    .line 8
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final afVerboseLog(Ljava/lang/String;)V
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 7
    .line 8
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v1, p0, v2}, Lcom/appsflyer/internal/AFh1ySDK;->v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static final afWarnLog(Ljava/lang/String;)V
    .locals 7
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->w$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public static final afWarnLog(Ljava/lang/String;Z)V
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    const-string v0, ""

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {v0, v1, p0, p1}, Lcom/appsflyer/internal/AFh1ySDK;->w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic b([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->getMediationNetwork([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final getCurrencyIso4217Code([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lms/i;

    .line 7
    .line 8
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    check-cast v0, Ljava/util/Collection;

    .line 15
    .line 16
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->G(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method private static final getMediationNetwork([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lms/i;

    .line 7
    .line 8
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    invoke-static {p0}, Lkotlin/collections/n;->G1([Ljava/lang/Object;)Ljava/util/Set;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method private static final getMonetizationNetwork(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/appsflyer/AFLogger;->getMediationNetwork:Lms/i;

    .line 7
    .line 8
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Ljava/util/Set;

    .line 13
    .line 14
    check-cast v0, Ljava/lang/Iterable;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 31
    .line 32
    invoke-interface {p0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    return-void
.end method


# virtual methods
.method public final d(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/appsflyer/AFLogger$2;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$2;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/appsflyer/a;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/appsflyer/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 20
    .line 21
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 9
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    move-object v3, p2

    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v4, p3

    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/appsflyer/AFLogger$3;

    .line 16
    .line 17
    move-object v1, v0

    .line 18
    move v5, p4

    .line 19
    move v6, p5

    .line 20
    move v7, p6

    .line 21
    move/from16 v8, p7

    .line 22
    .line 23
    invoke-direct/range {v1 .. v8}, Lcom/appsflyer/AFLogger$3;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Lcom/appsflyer/a;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lcom/appsflyer/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 32
    .line 33
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Ljava/util/concurrent/ExecutorService;

    .line 38
    .line 39
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final force(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/appsflyer/AFLogger$4;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2}, Lcom/appsflyer/AFLogger$4;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/appsflyer/a;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/appsflyer/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 20
    .line 21
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final i(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/appsflyer/AFLogger$1;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$1;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/appsflyer/a;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/appsflyer/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 20
    .line 21
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final varargs registerClient([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1
    .param p1    # [Lcom/appsflyer/internal/AFh1ySDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/appsflyer/c;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/appsflyer/c;-><init>([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 12
    .line 13
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final varargs unregisterClient([Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 1
    .param p1    # [Lcom/appsflyer/internal/AFh1ySDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/appsflyer/b;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/appsflyer/b;-><init>([Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 12
    .line 13
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 18
    .line 19
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public final v(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/appsflyer/AFLogger$10;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$10;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/appsflyer/a;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/appsflyer/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 20
    .line 21
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final w(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFg1cSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/appsflyer/AFLogger$9;

    .line 10
    .line 11
    invoke-direct {v0, p1, p2, p3}, Lcom/appsflyer/AFLogger$9;-><init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Z)V

    .line 12
    .line 13
    .line 14
    new-instance p1, Lcom/appsflyer/a;

    .line 15
    .line 16
    invoke-direct {p1, v0}, Lcom/appsflyer/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 17
    .line 18
    .line 19
    sget-object p2, Lcom/appsflyer/AFLogger;->getCurrencyIso4217Code:Lms/i;

    .line 20
    .line 21
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Ljava/util/concurrent/ExecutorService;

    .line 26
    .line 27
    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method
