.class final Lcom/appsflyer/AFLogger$3;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsflyer/AFLogger;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/appsflyer/internal/AFh1ySDK;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private synthetic $AFAdRevenueData:Ljava/lang/String;

.field private synthetic $areAllFieldsValid:Z

.field private synthetic $component1:Z

.field private synthetic $getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1cSDK;

.field private synthetic $getMediationNetwork:Z

.field private synthetic $getMonetizationNetwork:Ljava/lang/Throwable;

.field private synthetic $getRevenue:Z


# direct methods
.method constructor <init>(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/appsflyer/AFLogger$3;->$getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1cSDK;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/appsflyer/AFLogger$3;->$AFAdRevenueData:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/appsflyer/AFLogger$3;->$getMonetizationNetwork:Ljava/lang/Throwable;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/appsflyer/AFLogger$3;->$getMediationNetwork:Z

    .line 8
    .line 9
    iput-boolean p5, p0, Lcom/appsflyer/AFLogger$3;->$getRevenue:Z

    .line 10
    .line 11
    iput-boolean p6, p0, Lcom/appsflyer/AFLogger$3;->$component1:Z

    .line 12
    .line 13
    iput-boolean p7, p0, Lcom/appsflyer/AFLogger$3;->$areAllFieldsValid:Z

    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final getRevenue(Lcom/appsflyer/internal/AFh1ySDK;)V
    .locals 9
    .param p1    # Lcom/appsflyer/internal/AFh1ySDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v2, p0, Lcom/appsflyer/AFLogger$3;->$getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1cSDK;

    .line 7
    .line 8
    iget-object v3, p0, Lcom/appsflyer/AFLogger$3;->$AFAdRevenueData:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v4, p0, Lcom/appsflyer/AFLogger$3;->$getMonetizationNetwork:Ljava/lang/Throwable;

    .line 11
    .line 12
    iget-boolean v5, p0, Lcom/appsflyer/AFLogger$3;->$getMediationNetwork:Z

    .line 13
    .line 14
    iget-boolean v6, p0, Lcom/appsflyer/AFLogger$3;->$getRevenue:Z

    .line 15
    .line 16
    iget-boolean v7, p0, Lcom/appsflyer/AFLogger$3;->$component1:Z

    .line 17
    .line 18
    iget-boolean v8, p0, Lcom/appsflyer/AFLogger$3;->$areAllFieldsValid:Z

    .line 19
    .line 20
    move-object v1, p1

    .line 21
    invoke-virtual/range {v1 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->e(Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;Ljava/lang/Throwable;ZZZZ)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/appsflyer/internal/AFh1ySDK;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/appsflyer/AFLogger$3;->getRevenue(Lcom/appsflyer/internal/AFh1ySDK;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 7
    .line 8
    return-object p1
.end method
