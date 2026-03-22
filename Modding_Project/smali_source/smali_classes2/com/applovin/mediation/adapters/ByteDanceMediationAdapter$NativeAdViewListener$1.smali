.class Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;
.super Ljava/lang/Object;
.source "ByteDanceMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;->onAdLoaded(Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$nativeAdData:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

.field final synthetic val$nativeAdViewAd:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$nativeAdData:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$nativeAdViewAd:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAd;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$nativeAdData:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 8
    .line 9
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$nativeAdData:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->val$nativeAdData:Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;

    .line 33
    .line 34
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGNativeAdData;->getIcon()Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/nativeAd/PAGImageItem;->getImageUrl()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iget-object v3, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;

    .line 43
    .line 44
    iget-object v3, v3, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 45
    .line 46
    new-instance v4, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v5, "Adding native ad icon ("

    .line 52
    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v5, ") to queue to be fetched"

    .line 60
    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;

    .line 72
    .line 73
    iget-object v3, v3, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 74
    .line 75
    invoke-virtual {v3, v1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->createDrawableFuture(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/concurrent/Future;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    goto :goto_0

    .line 80
    :cond_0
    move-object v0, v2

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;->serverParameters:Landroid/os/Bundle;

    .line 84
    .line 85
    const-string v3, "image_task_timeout_seconds"

    .line 86
    .line 87
    const/16 v4, 0xa

    .line 88
    .line 89
    invoke-static {v3, v4, v1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;ILandroid/os/Bundle;)I

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v0, :cond_1

    .line 94
    .line 95
    int-to-long v3, v1

    .line 96
    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 97
    .line 98
    invoke-interface {v0, v3, v4, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catchall_0
    move-exception v0

    .line 106
    iget-object v1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;

    .line 107
    .line 108
    iget-object v1, v1, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 109
    .line 110
    const-string v3, "Image fetching tasks failed"

    .line 111
    .line 112
    invoke-virtual {v1, v3, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 113
    .line 114
    .line 115
    :cond_1
    move-object v0, v2

    .line 116
    :goto_1
    if-eqz v0, :cond_2

    .line 117
    .line 118
    new-instance v2, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 119
    .line 120
    invoke-direct {v2, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    new-instance v0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1$1;

    .line 124
    .line 125
    invoke-direct {v0, p0, v2}, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1$1;-><init>(Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$NativeAdViewListener$1;Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)V

    .line 126
    .line 127
    .line 128
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
