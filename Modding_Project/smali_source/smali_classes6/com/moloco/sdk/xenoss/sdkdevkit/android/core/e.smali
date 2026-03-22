.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/e;
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
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/d;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/d;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/e;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/g;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/e;->c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/g;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/e;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/g;

    .line 8
    .line 9
    return-object v0
.end method
