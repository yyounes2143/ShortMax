.class final Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$flush$events$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AndroidDiagnosticEventRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;->flush()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$flush$events$4;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;)Ljava/lang/Boolean;
    .locals 1
    .param p1    # Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$flush$events$4;->this$0:Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;

    invoke-static {v0}, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;->access$getBlockedEvents$p(Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;->getEventType()Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEventType;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;

    invoke-virtual {p0, p1}, Lcom/unity3d/ads/core/data/repository/AndroidDiagnosticEventRepository$flush$events$4;->invoke(Lgatewayprotocol/v1/DiagnosticEventRequestOuterClass$DiagnosticEvent;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
