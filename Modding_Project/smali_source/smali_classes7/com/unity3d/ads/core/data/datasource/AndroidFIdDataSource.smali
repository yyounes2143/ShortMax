.class public final Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource;
.super Ljava/lang/Object;
.source "AndroidFIdDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/FIdDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private bridge:Lcom/unity3d/services/core/fid/FIdStaticBridge;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

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
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource;->context:Landroid/content/Context;

    .line 10
    .line 11
    new-instance p1, Lcom/unity3d/services/core/fid/FIdStaticBridge;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/unity3d/services/core/fid/FIdStaticBridge;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource;->bridge:Lcom/unity3d/services/core/fid/FIdStaticBridge;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 3
    .line 4
    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource;->bridge:Lcom/unity3d/services/core/fid/FIdStaticBridge;

    .line 5
    .line 6
    iget-object v2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-virtual {v1, v2}, Lcom/unity3d/services/core/fid/FIdStaticBridge;->getInstance(Landroid/content/Context;)Lcom/unity3d/services/core/fid/FIdBridge;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/unity3d/services/core/fid/FIdBridge;->getAppInstanceId()Lcom/google/android/gms/tasks/Task;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v2, Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource$invoke$1$1;

    .line 22
    .line 23
    invoke-direct {v2, v1, v0}, Lcom/unity3d/ads/core/data/datasource/AndroidFIdDataSource$invoke$1$1;-><init>(Lcom/google/android/gms/tasks/Task;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-static {v0, v2, v1, v0}, Lgt/e;->f(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    return-object v1

    .line 34
    :catchall_0
    move-exception v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    return-object v0

    .line 37
    :goto_1
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 38
    .line 39
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    if-eqz v2, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move-object v0, v1

    .line 55
    :goto_2
    check-cast v0, Ljava/lang/String;

    .line 56
    .line 57
    return-object v0
.end method
