.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/k;
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
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/j;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/k;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;
    .locals 2

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/service_locator/b$i;->a:Lcom/moloco/sdk/service_locator/b$i;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/service_locator/b$i;->a()Lio/ktor/client/HttpClient;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;-><init>(Lio/ktor/client/HttpClient;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static final b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/k;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/k;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/persistenttransport/g;

    .line 8
    .line 9
    return-object v0
.end method
