.class public abstract Lcom/appsflyer/internal/AFe1rSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;,
        Lcom/appsflyer/internal/AFe1rSDK$AFa1tSDK;,
        Lcom/appsflyer/internal/AFe1rSDK$AFa1zSDK;,
        Lcom/appsflyer/internal/AFe1rSDK$AFa1uSDK;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AFa1ySDK:Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final getMediationNetwork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final getRevenue:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 27

    .line 1
    new-instance v0, Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/appsflyer/internal/AFe1rSDK;->AFa1ySDK:Lcom/appsflyer/internal/AFe1rSDK$AFa1ySDK;

    .line 8
    .line 9
    const-string v25, "af_tutorial_completion"

    .line 10
    .line 11
    const-string v26, "af_update"

    .line 12
    .line 13
    const-string v2, "af_achievement_unlocked"

    .line 14
    .line 15
    const-string v3, "af_ad_click"

    .line 16
    .line 17
    const-string v4, "af_ad_view"

    .line 18
    .line 19
    const-string v5, "af_add_payment_info"

    .line 20
    .line 21
    const-string v6, "af_add_to_cart"

    .line 22
    .line 23
    const-string v7, "af_add_to_wishlist"

    .line 24
    .line 25
    const-string v8, "af_complete_registration"

    .line 26
    .line 27
    const-string v9, "af_content_view"

    .line 28
    .line 29
    const-string v10, "af_initiated_checkout"

    .line 30
    .line 31
    const-string v11, "af_invite"

    .line 32
    .line 33
    const-string v12, "af_level_achieved"

    .line 34
    .line 35
    const-string v13, "af_list_view"

    .line 36
    .line 37
    const-string v14, "af_login"

    .line 38
    .line 39
    const-string v15, "af_opened_from_push_notification"

    .line 40
    .line 41
    const-string v16, "af_purchase"

    .line 42
    .line 43
    const-string v17, "af_rate"

    .line 44
    .line 45
    const-string v18, "af_re_engage"

    .line 46
    .line 47
    const-string v19, "af_search"

    .line 48
    .line 49
    const-string v20, "af_share"

    .line 50
    .line 51
    const-string v21, "af_spent_credits"

    .line 52
    .line 53
    const-string v22, "af_start_trial"

    .line 54
    .line 55
    const-string v23, "af_subscribe"

    .line 56
    .line 57
    const-string v24, "af_travel_booking"

    .line 58
    .line 59
    filled-new-array/range {v2 .. v26}, [Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sput-object v0, Lcom/appsflyer/internal/AFe1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 68
    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFe1rSDK;->getRevenue:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic getCurrencyIso4217Code()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/appsflyer/internal/AFe1rSDK;->getMediationNetwork:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
