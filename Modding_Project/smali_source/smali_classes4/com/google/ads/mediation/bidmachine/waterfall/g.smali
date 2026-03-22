.class public final synthetic Lcom/google/ads/mediation/bidmachine/waterfall/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lio/bidmachine/InitializationCallback;


# instance fields
.field public final synthetic a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/ads/mediation/bidmachine/waterfall/g;->a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onInitialized()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/bidmachine/waterfall/g;->a:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/bidmachine/waterfall/a;->b(Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
