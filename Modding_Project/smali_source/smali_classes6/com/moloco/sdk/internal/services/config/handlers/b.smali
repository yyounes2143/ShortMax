.class public final Lcom/moloco/sdk/internal/services/config/handlers/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/config/handlers/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/moloco/sdk/internal/configs/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-class v0, Lcom/moloco/sdk/internal/configs/a;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/moloco/sdk/Init$SDKInitResponse;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/config/handlers/b;->b(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/internal/configs/a;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/internal/configs/a;
    .locals 3
    .param p1    # Lcom/moloco/sdk/Init$SDKInitResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sdkInitResponse"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->hasOperationalMetricsConfig()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getOperationalMetricsConfig()Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v0, Lcom/moloco/sdk/internal/configs/a;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;->getUrl()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "getUrl(...)"

    .line 23
    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse$OperationalMetricsConfig;->getPollingIntervalSeconds()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    invoke-direct {v0, v1, p1}, Lcom/moloco/sdk/internal/configs/a;-><init>(Ljava/lang/String;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/moloco/sdk/internal/configs/b;->a()Lcom/moloco/sdk/internal/configs/a;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    return-object v0
.end method
