.class public final Lgatewayprotocol/v1/SessionCountersKt$Dsl;
.super Ljava/lang/Object;
.source "SessionCountersKt.kt"


# annotations
.annotation build Lcom/google/protobuf/kotlin/ProtoDslMarker;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgatewayprotocol/v1/SessionCountersKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Dsl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final _builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->Companion:Lgatewayprotocol/v1/SessionCountersKt$Dsl$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    return-void
.end method

.method public synthetic constructor <init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lgatewayprotocol/v1/SessionCountersKt$Dsl;-><init>(Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;)V

    return-void
.end method


# virtual methods
.method public final synthetic _build()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;
    .locals 2

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

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
    check-cast v0, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters;

    .line 13
    .line 14
    return-object v0
.end method

.method public final clearBannerImpressions()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearBannerImpressions()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBannerLoadRequests()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearBannerLoadRequests()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearBannerRequestsAdm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearBannerRequestsAdm()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearFocusChangeCount()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearFocusChangeCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearGlobalAdsFocusChangeCount()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearGlobalAdsFocusChangeCount()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearGlobalAdsFocusTime()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearGlobalAdsFocusTime()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearLoadRequests()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearLoadRequests()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final clearLoadRequestsAdm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->clearLoadRequestsAdm()Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final getBannerImpressions()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getBannerImpressions()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBannerLoadRequests()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getBannerLoadRequests()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getBannerRequestsAdm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getBannerRequestsAdm()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getFocusChangeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getFocusChangeCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getGlobalAdsFocusChangeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getGlobalAdsFocusChangeCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getGlobalAdsFocusTime()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getGlobalAdsFocusTime()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLoadRequests()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getLoadRequests()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getLoadRequestsAdm()I
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->getLoadRequestsAdm()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final setBannerImpressions(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setBannerImpressions(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setBannerLoadRequests(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setBannerLoadRequests(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setBannerRequestsAdm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setBannerRequestsAdm(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setFocusChangeCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setFocusChangeCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setGlobalAdsFocusChangeCount(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setGlobalAdsFocusChangeCount(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setGlobalAdsFocusTime(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setGlobalAdsFocusTime(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLoadRequests(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setLoadRequests(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final setLoadRequestsAdm(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lgatewayprotocol/v1/SessionCountersKt$Dsl;->_builder:Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;->setLoadRequestsAdm(I)Lgatewayprotocol/v1/SessionCountersOuterClass$SessionCounters$Builder;

    .line 4
    .line 5
    .line 6
    return-void
.end method
