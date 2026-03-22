.class public final Lcom/moloco/sdk/publisher/MolocoAdKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final createAdInfo(Ljava/lang/String;Ljava/lang/Float;)Lcom/moloco/sdk/publisher/MolocoAd;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Float;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adUnitId"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/moloco/sdk/publisher/MolocoAd;

    .line 7
    .line 8
    const-string v1, "Moloco"

    .line 9
    .line 10
    invoke-direct {v0, v1, p0, p1}, Lcom/moloco/sdk/publisher/MolocoAd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Float;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method public static synthetic createAdInfo$default(Ljava/lang/String;Ljava/lang/Float;ILjava/lang/Object;)Lcom/moloco/sdk/publisher/MolocoAd;
    .locals 0

    .line 1
    and-int/lit8 p2, p2, 0x2

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    :cond_0
    invoke-static {p0, p1}, Lcom/moloco/sdk/publisher/MolocoAdKt;->createAdInfo(Ljava/lang/String;Ljava/lang/Float;)Lcom/moloco/sdk/publisher/MolocoAd;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method
