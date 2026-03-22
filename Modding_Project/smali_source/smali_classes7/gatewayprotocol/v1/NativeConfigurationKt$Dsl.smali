.class public final Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;
.super Ljava/lang/Object;
.source "NativeConfigurationKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/NativeConfigurationKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;,
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;,
        Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->Companion:Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;-><init>(Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.build()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    check-cast v0, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration;

    .line 13
    .line 14
    return-object v0
.end method

.method public final synthetic addAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAdditionalStorePackages(Ljava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addAllAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "values"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAllAdditionalStorePackages(Ljava/lang/Iterable;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addAllObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "values"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addAllObservableAndroidActivities(Ljava/lang/Iterable;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final synthetic addObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->addObservableAndroidActivities(Lcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final clearAdOperations()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearAdPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearAdditionalStorePackages()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final clearCachedAssetsConfiguration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearCachedWebviewFilesConfiguration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDefaultShowCompletionState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDiagnosticEvents()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearDownloadPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearEnableIapEvent()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearEnableIapEvent()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearEnableOm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearEnableOm()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearFeatureFlags()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearInitPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final synthetic clearObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearObservableAndroidActivities()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final clearOperativeEventPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearOtherPolicy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->clearOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAdOperations()Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdOperations()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAdPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getAdPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getAdditionalStorePackages()Lcom/google/protobuf/kotlin/DslList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getAdditionalStorePackagesList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getAdditionalStorePackagesList()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getCachedAssetsConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getCachedAssetsConfiguration()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getCachedWebviewFilesConfiguration()Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getCachedWebviewFilesConfiguration()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDefaultShowCompletionState()Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getDefaultShowCompletionState()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDefaultShowCompletionStateValue()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDefaultShowCompletionStateValue()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDiagnosticEvents()Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getDiagnosticEvents()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getDownloadPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getDownloadPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getEnableIapEvent()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getEnableIapEvent()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getEnableOm()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getEnableOm()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getFeatureFlags()Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getFeatureFlags()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getInitPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getInitPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final synthetic getObservableAndroidActivities()Lcom/google/protobuf/kotlin/DslList;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/protobuf/kotlin/DslList;

    .line 2
    .line 3
    iget-object v1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    invoke-virtual {v1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getObservableAndroidActivitiesList()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "_builder.getObservableAndroidActivitiesList()"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/google/protobuf/kotlin/DslList;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public final getOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getOperativeEventPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getOperativeEventPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final getOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->getOtherPolicy()Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "_builder.getOtherPolicy()"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public final hasAdOperations()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasAdOperations()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasAdPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasAdPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasCachedAssetsConfiguration()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasCachedAssetsConfiguration()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasCachedWebviewFilesConfiguration()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasCachedWebviewFilesConfiguration()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasDiagnosticEvents()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasDiagnosticEvents()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasDownloadPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasDownloadPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasFeatureFlags()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasFeatureFlags()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasInitPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasInitPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasOperativeEventPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasOperativeEventPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final hasOtherPolicy()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->hasOtherPolicy()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final synthetic plusAssignAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignAllAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Ljava/lang/String;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$AdditionalStorePackagesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "values"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAllAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignAllObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;",
            ">;",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "values"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addAllObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Ljava/lang/Iterable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final synthetic plusAssignObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/kotlin/DslList<",
            "Lcom/google/protobuf/ByteString;",
            "Lgatewayprotocol/v1/NativeConfigurationKt$Dsl$ObservableAndroidActivitiesProxy;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "value"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1, p2}, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->addObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;Lcom/google/protobuf/ByteString;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAdOperations(Lgatewayprotocol/v1/NativeConfigurationOuterClass$AdOperationsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAdPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic setAdditionalStorePackages(Lcom/google/protobuf/kotlin/DslList;ILjava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setAdditionalStorePackages(ILjava/lang/String;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setCachedAssetsConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setCachedWebviewFilesConfiguration(Lgatewayprotocol/v1/NativeConfigurationOuterClass$CachedAssetsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDefaultShowCompletionState(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDefaultShowCompletionState(Lgatewayprotocol/v1/NativeConfigurationOuterClass$ShowCompletionState;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDefaultShowCompletionStateValue(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDefaultShowCompletionStateValue(I)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDiagnosticEvents(Lgatewayprotocol/v1/NativeConfigurationOuterClass$DiagnosticEventsConfiguration;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setDownloadPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setEnableIapEvent(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setEnableIapEvent(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setEnableOm(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setEnableOm(Z)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setFeatureFlags(Lgatewayprotocol/v1/NativeConfigurationOuterClass$FeatureFlags;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setInitPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final synthetic setObservableAndroidActivities(Lcom/google/protobuf/kotlin/DslList;ILcom/google/protobuf/ByteString;)V
    .locals 1

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "value"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 12
    .line 13
    invoke-virtual {p1, p2, p3}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setObservableAndroidActivities(ILcom/google/protobuf/ByteString;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setOperativeEventPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)V
    .locals 1
    .param p1    # Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "value"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lgatewayprotocol/v1/NativeConfigurationKt$Dsl;->_builder:Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;->setOtherPolicy(Lgatewayprotocol/v1/NativeConfigurationOuterClass$RequestPolicy;)Lgatewayprotocol/v1/NativeConfigurationOuterClass$NativeConfiguration$Builder;

    .line 9
    .line 10
    .line 11
    return-void
.end method
