.class public final Lcom/moloco/sdk/internal/services/bidtoken/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/moloco/sdk/internal/services/bidtoken/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Lcom/moloco/sdk/internal/services/bidtoken/n;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/moloco/sdk/internal/services/bidtoken/h;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/moloco/sdk/internal/services/bidtoken/g;->a:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 8
    .line 9
    new-instance v1, Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 10
    .line 11
    const-string v2, ""

    .line 12
    .line 13
    invoke-direct {v1, v2, v2, v0}, Lcom/moloco/sdk/internal/services/bidtoken/n;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/internal/services/bidtoken/h;)V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lcom/moloco/sdk/internal/services/bidtoken/g;->b:Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 17
    .line 18
    return-void
.end method

.method public static final a()Lcom/moloco/sdk/internal/services/bidtoken/h;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/g;->a:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final b(Lcom/moloco/sdk/BidToken$BidTokenResponseV3;)Lcom/moloco/sdk/internal/services/bidtoken/h;
    .locals 1
    .param p0    # Lcom/moloco/sdk/BidToken$BidTokenResponseV3;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/moloco/sdk/BidToken$BidTokenResponseV3;->hasClientTokenConfigs()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/moloco/sdk/BidToken$BidTokenResponseV3;->getClientTokenConfigs()Lcom/moloco/sdk/BidToken$BidTokenResponseV3$ClientTokenConfigs;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Lcom/moloco/sdk/BidToken$BidTokenResponseV3$ClientTokenConfigs;->getEnableDbt()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-direct {v0, p0}, Lcom/moloco/sdk/internal/services/bidtoken/h;-><init>(Z)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/g;->a:Lcom/moloco/sdk/internal/services/bidtoken/h;

    .line 27
    .line 28
    :goto_0
    return-object v0
.end method

.method public static final c()Lcom/moloco/sdk/internal/services/bidtoken/n;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/services/bidtoken/g;->b:Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 2
    .line 3
    return-object v0
.end method
