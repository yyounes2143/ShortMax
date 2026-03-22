.class public final Lcom/moloco/sdk/internal/publisher/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lcom/moloco/sdk/publisher/AdLoad$Listener;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)Lcom/moloco/sdk/internal/publisher/s0;
    .locals 7
    .param p0    # Lcom/moloco/sdk/publisher/AdLoad$Listener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p1    # Lcom/moloco/sdk/acm/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/publisher/AdFormatType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "acmLoadTimerEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adFormatType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "metricsRecorder"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/moloco/sdk/internal/publisher/a0;

    .line 17
    .line 18
    invoke-static {}, Lcom/moloco/sdk/internal/k0;->b()Lcom/moloco/sdk/internal/h0;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    move-object v1, v0

    .line 23
    move-object v2, p0

    .line 24
    move-object v4, p1

    .line 25
    move-object v5, p2

    .line 26
    move-object v6, p3

    .line 27
    invoke-direct/range {v1 .. v6}, Lcom/moloco/sdk/internal/publisher/a0;-><init>(Lcom/moloco/sdk/publisher/AdLoad$Listener;Lcom/moloco/sdk/internal/h0;Lcom/moloco/sdk/acm/e;Lcom/moloco/sdk/publisher/AdFormatType;Lcom/moloco/sdk/acm/recorder/a;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method
