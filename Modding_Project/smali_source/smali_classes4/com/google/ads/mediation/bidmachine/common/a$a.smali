.class public final Lcom/google/ads/mediation/bidmachine/common/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/mediation/bidmachine/common/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/bidmachine/common/a;->a(Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/ads/mediation/bidmachine/common/a;

.field final synthetic b:Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/bidmachine/common/a;Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/common/a$a;->a:Lcom/google/ads/mediation/bidmachine/common/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/bidmachine/common/a$a;->b:Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lfr/a;)V
    .locals 2

    .line 1
    const-string v0, "bmError"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/a$a;->a:Lcom/google/ads/mediation/bidmachine/common/a;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/google/ads/mediation/bidmachine/common/a;->a(Lcom/google/ads/mediation/bidmachine/common/a;)Lcom/google/ads/mediation/bidmachine/common/error/a;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/a$a;->a:Lcom/google/ads/mediation/bidmachine/common/a;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/google/ads/mediation/bidmachine/common/a;->a()Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, p1, v1}, Lcom/google/ads/mediation/bidmachine/common/error/a;->a(Lfr/a;Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/common/a$a;->a:Lcom/google/ads/mediation/bidmachine/common/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/bidmachine/common/a$a;->b:Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/google/android/gms/ads/mediation/MediationAdConfiguration;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "getApplicationContext(...)"

    .line 14
    .line 15
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, p1}, Lcom/google/ads/mediation/bidmachine/common/a;->a(Landroid/content/Context;Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
