.class public final synthetic Le/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener;


# instance fields
.field public final synthetic a:Le/t;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lg/a;


# direct methods
.method public synthetic constructor <init>(Le/t;Ljava/lang/String;Lg/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Le/o;->a:Le/t;

    .line 5
    .line 6
    iput-object p2, p0, Le/o;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Le/o;->c:Lg/a;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onNativeAdLoaded(Lcom/google/android/gms/ads/nativead/NativeAd;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/o;->a:Le/t;

    .line 2
    .line 3
    iget-object v1, p0, Le/o;->b:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v2, p0, Le/o;->c:Lg/a;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lad-manager/d/l;->b(Le/t;Ljava/lang/String;Lg/a;Lcom/google/android/gms/ads/nativead/NativeAd;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
