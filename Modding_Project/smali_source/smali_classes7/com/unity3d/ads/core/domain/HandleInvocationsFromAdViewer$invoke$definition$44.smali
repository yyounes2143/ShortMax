.class final Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;
.super Lkotlin/jvm/internal/Lambda;
.source "HandleInvocationsFromAdViewer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;->invoke(Lkt/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unity3d/ads/core/data/model/AdObject;Lkotlin/jvm/functions/Function1;)Lkt/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/unity3d/ads/adplayer/ExposedFunction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHandleInvocationsFromAdViewer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandleInvocationsFromAdViewer.kt\ncom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44\n+ 2 IServiceComponent.kt\ncom/unity3d/services/core/di/IServiceComponentKt\n*L\n1#1,220:1\n16#2,4:221\n*S KotlinDebug\n*F\n+ 1 HandleInvocationsFromAdViewer.kt\ncom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44\n*L\n173#1:221,4\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;->this$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Lcom/unity3d/ads/adplayer/ExposedFunction;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;->this$0:Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer;

    .line 2
    invoke-interface {v0}, Lcom/unity3d/services/core/di/IServiceComponent;->getServiceProvider()Lcom/unity3d/services/core/di/IServiceProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/unity3d/services/core/di/IServiceProvider;->getRegistry()Lcom/unity3d/services/core/di/IServicesRegistry;

    move-result-object v0

    const-class v1, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v2, v1}, Lcom/unity3d/services/core/di/IServicesRegistry;->getService(Ljava/lang/String;Lkotlin/reflect/KClass;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/core/data/repository/SessionRepository;

    .line 3
    invoke-static {v0}, Lcom/unity3d/ads/core/domain/exposure/CommonAdViewerExposedFunctionsKt;->hbTokenReset(Lcom/unity3d/ads/core/data/repository/SessionRepository;)Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/unity3d/ads/core/domain/HandleInvocationsFromAdViewer$invoke$definition$44;->invoke()Lcom/unity3d/ads/adplayer/ExposedFunction;

    move-result-object v0

    return-object v0
.end method
