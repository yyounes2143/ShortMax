.class public final Lcom/unity3d/ads/core/domain/work/BackgroundWorker;
.super Ljava/lang/Object;
.source "BackgroundWorker.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/domain/work/BackgroundWorker$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBackgroundWorker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,34:1\n29#2:35\n*S KotlinDebug\n*F\n+ 1 BackgroundWorker.kt\ncom/unity3d/ads/core/domain/work/BackgroundWorker\n*L\n23#1:35\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/domain/work/BackgroundWorker$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "UnityAdsBackgroundWorker"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final workManager:Landroidx/work/WorkManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/domain/work/BackgroundWorker$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/domain/work/BackgroundWorker$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/domain/work/BackgroundWorker;->Companion:Lcom/unity3d/ads/core/domain/work/BackgroundWorker$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "applicationContext"

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
    invoke-static {p1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "getInstance(applicationContext)"

    .line 14
    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/work/BackgroundWorker;->workManager:Landroidx/work/WorkManager;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getWorkManager()Landroidx/work/WorkManager;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/work/BackgroundWorker;->workManager:Landroidx/work/WorkManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public final synthetic invoke(Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/unity3d/ads/core/domain/work/UniversalRequestJob;",
            ">(",
            "Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "universalRequestWorkerData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/work/Constraints$Builder;

    .line 7
    .line 8
    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 9
    .line 10
    .line 11
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "Builder()\n            .s\u2026TED)\n            .build()"

    .line 22
    .line 23
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    new-instance v1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 27
    .line 28
    const/4 v2, 0x4

    .line 29
    const-string v3, "T"

    .line 30
    .line 31
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-class v2, Landroidx/work/ListenableWorker;

    .line 35
    .line 36
    invoke-direct {v1, v2}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/unity3d/ads/core/domain/work/UniversalRequestWorkerData;->invoke()Landroidx/work/Data;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v0, p1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 54
    .line 55
    const-string v0, "UnityAdsBackgroundWorker"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroidx/work/WorkRequest$Builder;->addTag(Ljava/lang/String;)Landroidx/work/WorkRequest$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    const-string v0, "OneTimeWorkRequestBuilde\u2026TAG)\n            .build()"

    .line 68
    .line 69
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    check-cast p1, Landroidx/work/OneTimeWorkRequest;

    .line 73
    .line 74
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/work/BackgroundWorker;->getWorkManager()Landroidx/work/WorkManager;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    invoke-virtual {v0, p1}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 79
    .line 80
    .line 81
    return-void
.end method
