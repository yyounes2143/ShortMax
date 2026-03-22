.class public final Lcom/appsflyer/internal/AFe1vSDK$AFa1ySDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/internal/AFe1vSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AFa1ySDK"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/appsflyer/internal/AFe1vSDK$AFa1ySDK;-><init>()V

    return-void
.end method

.method public static getMonetizationNetwork()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/appsflyer/internal/AFe1vSDK;->getMonetizationNetwork()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getMonetizationNetwork(Lcom/appsflyer/internal/AFe1ySDK;)V
    .locals 0
    .param p0    # Lcom/appsflyer/internal/AFe1ySDK;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-static {p0}, Lcom/appsflyer/internal/AFe1vSDK;->getMediationNetwork(Lcom/appsflyer/internal/AFe1ySDK;)V

    return-void
.end method
