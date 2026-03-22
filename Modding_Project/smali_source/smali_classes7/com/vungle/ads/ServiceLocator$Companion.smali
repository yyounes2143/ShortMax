.class public final Lcom/vungle/ads/ServiceLocator$Companion;
.super Ljava/lang/Object;
.source "ServiceLocator.kt"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/ads/ServiceLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/vungle/ads/ServiceLocator$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getINSTANCE$vungle_ads_release$annotations()V
    .locals 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final declared-synchronized deInit()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/vungle/ads/ServiceLocator$Companion;->setINSTANCE$vungle_ads_release(Lcom/vungle/ads/ServiceLocator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    throw v0
.end method

.method public final getINSTANCE$vungle_ads_release()Lcom/vungle/ads/ServiceLocator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {}, Lcom/vungle/ads/ServiceLocator;->access$getINSTANCE$cp()Lcom/vungle/ads/ServiceLocator;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final getInstance(Landroid/content/Context;)Lcom/vungle/ads/ServiceLocator;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/vungle/ads/ServiceLocator$Companion;->getINSTANCE$vungle_ads_release()Lcom/vungle/ads/ServiceLocator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    sget-object v0, Lcom/vungle/ads/ServiceLocator;->Companion:Lcom/vungle/ads/ServiceLocator$Companion;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/vungle/ads/ServiceLocator$Companion;->getINSTANCE$vungle_ads_release()Lcom/vungle/ads/ServiceLocator;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    new-instance v1, Lcom/vungle/ads/ServiceLocator;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v1, p1, v2}, Lcom/vungle/ads/ServiceLocator;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/vungle/ads/ServiceLocator$Companion;->setINSTANCE$vungle_ads_release(Lcom/vungle/ads/ServiceLocator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    move-object v0, v1

    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_1

    .line 34
    :goto_0
    monitor-exit p0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    monitor-exit p0

    .line 37
    throw p1

    .line 38
    :cond_1
    :goto_2
    return-object v0
.end method

.method public final synthetic inject(Landroid/content/Context;)Lms/i;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            ")",
            "Lms/i<",
            "TT;>;"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 7
    .line 8
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->needClassReification()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Lcom/vungle/ads/ServiceLocator$Companion$inject$1;

    .line 12
    .line 13
    invoke-direct {v1, p1}, Lcom/vungle/ads/ServiceLocator$Companion$inject$1;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Lkotlin/c;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final setINSTANCE$vungle_ads_release(Lcom/vungle/ads/ServiceLocator;)V
    .locals 0
    .param p1    # Lcom/vungle/ads/ServiceLocator;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/vungle/ads/ServiceLocator;->access$setINSTANCE$cp(Lcom/vungle/ads/ServiceLocator;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
