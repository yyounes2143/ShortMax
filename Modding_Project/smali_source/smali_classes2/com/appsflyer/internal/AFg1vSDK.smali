.class public interface abstract Lcom/appsflyer/internal/AFg1vSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFg1vSDK$AFa1vSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AFa1vSDK:Lcom/appsflyer/internal/AFg1vSDK$AFa1vSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFg1vSDK$AFa1vSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1vSDK$AFa1vSDK;

    .line 2
    .line 3
    sput-object v0, Lcom/appsflyer/internal/AFg1vSDK;->AFa1vSDK:Lcom/appsflyer/internal/AFg1vSDK$AFa1vSDK;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract getMediationNetwork(Landroid/content/Context;)Ljava/util/Map;
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
