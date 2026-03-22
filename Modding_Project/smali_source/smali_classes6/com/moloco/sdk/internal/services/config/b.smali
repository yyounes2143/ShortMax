.class public final Lcom/moloco/sdk/internal/services/config/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/config/a;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRemoteConfigService.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RemoteConfigService.kt\ncom/moloco/sdk/internal/services/config/RemoteConfigService\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,102:1\n1863#2,2:103\n1863#2,2:105\n1557#2:107\n1628#2,3:108\n*S KotlinDebug\n*F\n+ 1 RemoteConfigService.kt\ncom/moloco/sdk/internal/services/config/RemoteConfigService\n*L\n47#1:103,2\n57#1:105,2\n65#1:107\n65#1:108,3\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/moloco/sdk/internal/services/config/handlers/a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "RemoteConfigService"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->b:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->c:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Lcom/moloco/sdk/internal/services/config/handlers/b;

    .line 23
    .line 24
    invoke-direct {v0}, Lcom/moloco/sdk/internal/services/config/handlers/b;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->d:Ljava/util/List;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/Init$SDKInitResponse;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/Init$SDKInitResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "sdkInitResponse"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/config/b;->c(Lcom/moloco/sdk/Init$SDKInitResponse;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/config/b;->d(Lcom/moloco/sdk/Init$SDKInitResponse;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "featureFlagName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/Class;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    const-string v0, "configType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    iget-object v2, p0, Lcom/moloco/sdk/internal/services/config/b;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retrieving config: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->b:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "featureFlagName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final c(Lcom/moloco/sdk/Init$SDKInitResponse;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/moloco/sdk/internal/services/config/handlers/a;

    .line 18
    .line 19
    invoke-interface {v1, p1}, Lcom/moloco/sdk/internal/services/config/handlers/a;->a(Lcom/moloco/sdk/Init$SDKInitResponse;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/config/b;->b:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/config/handlers/a;->a()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object v5, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 37
    .line 38
    iget-object v6, p0, Lcom/moloco/sdk/internal/services/config/b;->a:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v3, "Adding config: "

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/config/handlers/a;->a()Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/16 v10, 0xc

    .line 66
    .line 67
    const/4 v11, 0x0

    .line 68
    const/4 v8, 0x0

    .line 69
    const/4 v9, 0x0

    .line 70
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/config/b;->b:Ljava/util/Map;

    .line 75
    .line 76
    const-class v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/config/b;->e(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method public final d(Lcom/moloco/sdk/Init$SDKInitResponse;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getExperimentalFeatureFlagsList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "getExperimentalFeatureFlagsList(...)"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;

    .line 25
    .line 26
    sget-object v1, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/config/b;->a:Ljava/lang/String;

    .line 29
    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v4, "Adding ExperimentalFeatureFlag: "

    .line 36
    .line 37
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;->getName()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    const/16 v6, 0xc

    .line 52
    .line 53
    const/4 v7, 0x0

    .line 54
    const/4 v4, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    invoke-static/range {v1 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/config/b;->c:Ljava/util/Map;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;->getName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;->getValue()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_0

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {v0}, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;->getValue()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    goto :goto_2

    .line 83
    :cond_1
    :goto_1
    const/4 v0, 0x0

    .line 84
    :goto_2
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    return-void
.end method

.method public final e(Lcom/moloco/sdk/Init$SDKInitResponse;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;
    .locals 12

    .line 1
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getExperimentalFeatureFlagsList()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "getExperimentalFeatureFlagsList(...)"

    .line 6
    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/moloco/sdk/Init$SDKInitResponse$ExperimentalFeatureFlag;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string v0, "ANDROID_STREAMING_ENABLED"

    .line 46
    .line 47
    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 52
    .line 53
    iget-object v6, p0, Lcom/moloco/sdk/internal/services/config/b;->a:Ljava/lang/String;

    .line 54
    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v2, "Adding StreamingEnabled: "

    .line 61
    .line 62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v7

    .line 72
    const/16 v10, 0xc

    .line 73
    .line 74
    const/4 v11, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    const/4 v9, 0x0

    .line 77
    move-object v5, v0

    .line 78
    invoke-static/range {v5 .. v11}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->hasConfigs()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->hasCommonConfigs()Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_3

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->getCommonConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->hasMediaConfig()Z

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-eqz v1, :cond_3

    .line 110
    .line 111
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->getCommonConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->getMediaConfig()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-virtual {v2}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->getCommonConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v2}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->getMediaConfig()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->getStreamingChunkSizeKilobytes()J

    .line 136
    .line 137
    .line 138
    move-result-wide v2

    .line 139
    long-to-int v2, v2

    .line 140
    if-lez v2, :cond_1

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->getStreamingChunkSizeKilobytes()J

    .line 143
    .line 144
    .line 145
    move-result-wide v2

    .line 146
    long-to-int v2, v2

    .line 147
    mul-int/lit16 v2, v2, 0x400

    .line 148
    .line 149
    :goto_1
    move v3, v2

    .line 150
    goto :goto_2

    .line 151
    :cond_1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    invoke-virtual {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->a()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    goto :goto_1

    .line 160
    :goto_2
    invoke-virtual {p1}, Lcom/moloco/sdk/Init$SDKInitResponse;->getConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    invoke-virtual {p1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs;->getCommonConfigs()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {p1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs;->getMediaConfig()Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->getMinStreamingPlayableDurationOnTimeoutSecs()D

    .line 173
    .line 174
    .line 175
    move-result-wide v5

    .line 176
    const-wide/16 v7, 0x0

    .line 177
    .line 178
    cmpl-double p1, v5, v7

    .line 179
    .line 180
    if-lez p1, :cond_2

    .line 181
    .line 182
    invoke-virtual {v1}, Lcom/moloco/sdk/ConfigsOuterClass$Configs$CommonConfigs$MediaConfig;->getMinStreamingPlayableDurationOnTimeoutSecs()D

    .line 183
    .line 184
    .line 185
    move-result-wide v1

    .line 186
    :goto_3
    move-wide v5, v1

    .line 187
    goto :goto_4

    .line 188
    :cond_2
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 189
    .line 190
    .line 191
    move-result-object p1

    .line 192
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->c()D

    .line 193
    .line 194
    .line 195
    move-result-wide v1

    .line 196
    goto :goto_3

    .line 197
    :goto_4
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->b()I

    .line 202
    .line 203
    .line 204
    move-result v7

    .line 205
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 206
    .line 207
    move-object v2, p1

    .line 208
    invoke-direct/range {v2 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;-><init>(IZDI)V

    .line 209
    .line 210
    .line 211
    goto :goto_5

    .line 212
    :cond_3
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->a()I

    .line 217
    .line 218
    .line 219
    move-result v3

    .line 220
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->c()D

    .line 225
    .line 226
    .line 227
    move-result-wide v5

    .line 228
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/q;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->b()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 237
    .line 238
    move-object v2, p1

    .line 239
    invoke-direct/range {v2 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;-><init>(IZDI)V

    .line 240
    .line 241
    .line 242
    :goto_5
    iget-object v6, p0, Lcom/moloco/sdk/internal/services/config/b;->a:Ljava/lang/String;

    .line 243
    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    const-string v2, "Parsed and adding MediaConfig: "

    .line 250
    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->a()I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    const-string v2, ", "

    .line 262
    .line 263
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->d()Z

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->c()D

    .line 277
    .line 278
    .line 279
    move-result-wide v3

    .line 280
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->b()I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const/16 v2, 0x20

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v7

    .line 302
    const/4 v9, 0x4

    .line 303
    const/4 v10, 0x0

    .line 304
    const/4 v8, 0x0

    .line 305
    move-object v5, v0

    .line 306
    invoke-static/range {v5 .. v10}, Lcom/moloco/sdk/internal/MolocoLogger;->debug$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    return-object p1
.end method
