.class public final Lad-manager/d/o0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic d:Lcom/google/android/gms/ads/AdView;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/o0;->d:Lcom/google/android/gms/ads/AdView;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const-string v0, "AdManagerAdmobShower"

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    sget-object p1, Lga/a;->a:Lga/a;

    .line 12
    .line 13
    const-string v1, "resume"

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lad-manager/d/o0;->d:Lcom/google/android/gms/ads/AdView;

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/google/android/gms/ads/BaseAdView;->resume()V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    sget-object p1, Lga/a;->a:Lga/a;

    .line 25
    .line 26
    const-string v1, "pause"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lad-manager/d/o0;->d:Lcom/google/android/gms/ads/AdView;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/google/android/gms/ads/BaseAdView;->pause()V

    .line 34
    .line 35
    .line 36
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1
.end method
