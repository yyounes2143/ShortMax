.class public final Lcom/moloco/sdk/internal/services/bidtoken/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/x;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/publisher/privacy/InternalMolocoPrivacySettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/publisher/privacy/InternalMolocoPrivacySettings;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/publisher/privacy/InternalMolocoPrivacySettings;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "internalMolocoPrivacySettings"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/v;->a:Lcom/moloco/sdk/publisher/privacy/InternalMolocoPrivacySettings;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getPrivacy()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/v;->a:Lcom/moloco/sdk/publisher/privacy/InternalMolocoPrivacySettings;

    .line 2
    .line 3
    sget-object v1, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->INSTANCE:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy;->getPrivacySettings()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-interface {v0, v1}, Lcom/moloco/sdk/publisher/privacy/InternalMolocoPrivacySettings;->getUpdatedPrivacySettings(Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;)Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method
