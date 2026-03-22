.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/d;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final d()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;
    .locals 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    :try_start_0
    sget-object v0, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/moloco/sdk/service_locator/b$i;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/l;

    .line 4
    .line 5
    .line 6
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    move-object v4, v0

    .line 10
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 11
    .line 12
    const/16 v6, 0x8

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const-string v2, "BestAttemptHttpRequest"

    .line 16
    .line 17
    const-string v3, "Failed to create PersistentHttpRequest, invoking NonPersistendHttpRequest"

    .line 18
    .line 19
    const/4 v5, 0x0

    .line 20
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->warn$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/k;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/i;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    :goto_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/b;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/f;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method
