.class public final Lcom/moloco/sdk/internal/services/bidtoken/providers/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/providers/j;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/moloco/sdk/internal/services/bidtoken/providers/j<",
        "Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Lcom/moloco/sdk/internal/services/bidtoken/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public d:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/x;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/x;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "privacyProvider"

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
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->b:Lcom/moloco/sdk/internal/services/bidtoken/x;

    .line 10
    .line 11
    const-string v0, "PrivacyStateSignalProvider"

    .line 12
    .line 13
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->c:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/moloco/sdk/internal/services/bidtoken/x;->getPrivacy()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->d:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->b:Lcom/moloco/sdk/internal/services/bidtoken/x;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/moloco/sdk/internal/services/bidtoken/x;->getPrivacy()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->d:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 8
    .line 9
    return-void
.end method

.method public b()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->d:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->b:Lcom/moloco/sdk/internal/services/bidtoken/x;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/moloco/sdk/internal/services/bidtoken/x;->getPrivacy()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    xor-int/lit8 v1, v0, 0x1

    .line 14
    .line 15
    sget-object v2, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 16
    .line 17
    iget-object v3, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->c:Ljava/lang/String;

    .line 18
    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const-string v0, "[CBT] privacy updated"

    .line 22
    .line 23
    :goto_0
    move-object v4, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    const-string v0, "[CBT] privacy didn\'t change"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :goto_1
    const/4 v6, 0x4

    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v2 .. v7}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    return v1
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->e()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/providers/w;->d:Lcom/moloco/sdk/publisher/privacy/MolocoPrivacy$PrivacySettings;

    .line 2
    .line 3
    return-object v0
.end method
