.class public final Lcom/google/ads/mediation/bidmachine/waterfall/c;
.super Lcom/google/ads/mediation/bidmachine/waterfall/b;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationBannerAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ads/mediation/bidmachine/waterfall/c$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/google/ads/mediation/bidmachine/waterfall/c$a;


# instance fields
.field private final f:Lcom/google/ads/mediation/bidmachine/common/delegate/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/mediation/bidmachine/waterfall/c$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/ads/mediation/bidmachine/waterfall/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/ads/mediation/bidmachine/waterfall/c;->g:Lcom/google/ads/mediation/bidmachine/waterfall/c$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 3

    .line 1
    const-string v0, "adLoadCallback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 7
    .line 8
    new-instance v1, Lcom/google/ads/mediation/bidmachine/waterfall/request/b;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/google/ads/mediation/bidmachine/waterfall/request/b;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "AdMobBMBannerWaterfallAd"

    .line 14
    .line 15
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/ads/mediation/bidmachine/waterfall/b;-><init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/waterfall/request/a;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    .line 19
    .line 20
    new-instance v1, Lcom/google/ads/mediation/bidmachine/waterfall/auction/a;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/google/ads/mediation/bidmachine/waterfall/auction/a;-><init>()V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v2, p1, v1}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;-><init>(Ljava/lang/String;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;Lcom/google/ads/mediation/bidmachine/common/auction/a;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/ads/mediation/bidmachine/waterfall/c;->f:Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p2, Lnm/b;

    invoke-virtual {p0, p1, p2}, Lcom/google/ads/mediation/bidmachine/waterfall/c;->a(Landroid/content/Context;Lnm/b;)V

    return-void
.end method

.method protected a(Landroid/content/Context;Lnm/b;)V
    .locals 1

    .line 1
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adRequest"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/waterfall/c;->f:Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->a(Landroid/content/Context;Lnm/b;)V

    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/waterfall/c;->f:Lcom/google/ads/mediation/bidmachine/common/delegate/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/ads/mediation/bidmachine/common/delegate/b;->getView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
