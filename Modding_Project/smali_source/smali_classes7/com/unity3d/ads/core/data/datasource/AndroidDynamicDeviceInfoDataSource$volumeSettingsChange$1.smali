.class final Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AndroidDynamicDeviceInfoDataSource.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;-><init>(Landroid/content/Context;Lcom/unity3d/ads/core/data/datasource/LifecycleDataSource;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljt/h<",
        "-",
        "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;",
        ">;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.unity3d.ads.core.data.datasource.AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1"
    f = "AndroidDynamicDeviceInfoDataSource.kt"
    l = {
        0x273
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, v0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->L$0:Ljava/lang/Object;

    .line 9
    .line 10
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljt/h;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->invoke(Ljt/h;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljt/h;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljt/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljt/h<",
            "-",
            "Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange;",
            ">;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->label:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->L$0:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast p1, Ljt/h;

    .line 30
    .line 31
    new-instance v1, Lkotlin/jvm/internal/Ref$DoubleRef;

    .line 32
    .line 33
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    invoke-static {v3, v4}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;->access$getStreamVolume(Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;I)D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    iput-wide v3, v1, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    .line 44
    .line 45
    new-instance v5, Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange$VolumeChange;

    .line 46
    .line 47
    invoke-direct {v5, v3, v4}, Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange$VolumeChange;-><init>(D)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v5}, Lkotlinx/coroutines/channels/c;->b(Lkotlinx/coroutines/channels/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    new-instance v3, Lkotlin/jvm/internal/Ref$IntRef;

    .line 54
    .line 55
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    .line 56
    .line 57
    .line 58
    iget-object v4, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;->getRingerMode()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iput v4, v3, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 65
    .line 66
    new-instance v5, Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange$MuteChange;

    .line 67
    .line 68
    if-nez v4, :cond_2

    .line 69
    .line 70
    move v4, v2

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    const/4 v4, 0x0

    .line 73
    :goto_0
    invoke-direct {v5, v4}, Lcom/unity3d/ads/core/data/datasource/VolumeSettingsChange$MuteChange;-><init>(Z)V

    .line 74
    .line 75
    .line 76
    invoke-static {p1, v5}, Lkotlinx/coroutines/channels/c;->b(Lkotlinx/coroutines/channels/h;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    new-instance v4, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$contentObserver$1;

    .line 80
    .line 81
    iget-object v5, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 82
    .line 83
    invoke-direct {v4, v5, v1, p1, v3}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$contentObserver$1;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;Lkotlin/jvm/internal/Ref$DoubleRef;Ljt/h;Lkotlin/jvm/internal/Ref$IntRef;)V

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;->getContext()Landroid/content/Context;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    .line 97
    .line 98
    invoke-virtual {v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$1;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->this$0:Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;

    .line 104
    .line 105
    invoke-direct {v1, v3, v4}, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$1;-><init>(Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource;Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1$contentObserver$1;)V

    .line 106
    .line 107
    .line 108
    iput v2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDynamicDeviceInfoDataSource$volumeSettingsChange$1;->label:I

    .line 109
    .line 110
    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/channels/ProduceKt;->a(Ljt/h;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-ne p1, v0, :cond_3

    .line 115
    .line 116
    return-object v0

    .line 117
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 118
    .line 119
    return-object p1
.end method
