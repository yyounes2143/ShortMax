.class public interface abstract Lcom/appsflyer/internal/AFj1lSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFj1lSDK$AFa1zSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AFa1zSDK:Lcom/appsflyer/internal/AFj1lSDK$AFa1zSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFj1lSDK$AFa1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFj1lSDK$AFa1zSDK;

    .line 2
    .line 3
    sput-object v0, Lcom/appsflyer/internal/AFj1lSDK;->AFa1zSDK:Lcom/appsflyer/internal/AFj1lSDK$AFa1zSDK;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract AFAdRevenueData()V
.end method

.method public abstract getMediationNetwork()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract getMonetizationNetwork()V
.end method
