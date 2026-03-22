.class public abstract Lcom/google/ads/mediation/bidmachine/common/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lio/bidmachine/AdsType;

.field private final c:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

.field private final d:Lcom/google/ads/mediation/bidmachine/common/error/a;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V
    .locals 1

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adsType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adLoadCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/a;->a:Ljava/lang/String;

    .line 20
    .line 21
    iput-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/a;->b:Lio/bidmachine/AdsType;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/google/ads/mediation/bidmachine/common/a;->c:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 24
    .line 25
    new-instance p2, Lcom/google/ads/mediation/bidmachine/common/error/a;

    .line 26
    .line 27
    invoke-direct {p2, p1}, Lcom/google/ads/mediation/bidmachine/common/error/a;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/a;->d:Lcom/google/ads/mediation/bidmachine/common/error/a;

    .line 31
    .line 32
    return-void
.end method

.method public static final synthetic a(Lcom/google/ads/mediation/bidmachine/common/a;)Lcom/google/ads/mediation/bidmachine/common/error/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/ads/mediation/bidmachine/common/a;->d:Lcom/google/ads/mediation/bidmachine/common/error/a;

    return-object p0
.end method


# virtual methods
.method protected final a()Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/a;->c:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    return-object v0
.end method

.method protected abstract a(Landroid/content/Context;Ljava/lang/Object;)V
.end method

.method public final a(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V
    .locals 2

    .line 3
    const-string v0, "adConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/a;->b:Lio/bidmachine/AdsType;

    new-instance v1, Lcom/google/ads/mediation/bidmachine/common/a$a;

    invoke-direct {v1, p0, p1}, Lcom/google/ads/mediation/bidmachine/common/a$a;-><init>(Lcom/google/ads/mediation/bidmachine/common/a;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V

    invoke-virtual {p0, v0, p1, v1}, Lcom/google/ads/mediation/bidmachine/common/a;->a(Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Lcom/google/ads/mediation/bidmachine/common/b;)V

    return-void
.end method

.method protected abstract a(Lio/bidmachine/AdsType;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;Lcom/google/ads/mediation/bidmachine/common/b;)V
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
