.class public final Lai/turbolink/sdk/campaign/LinkLoginListener;
.super Ljava/lang/Object;
.source "LinkLoginListener.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private context:Landroid/content/Context;
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p1, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 7
    .line 8
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getLoginListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getLoginActivity()Lkotlin/reflect/KClass;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string v2, "null cannot be cast to non-null type ai.turbolink.sdk.campaign.CampaignWebviewActivity"

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    if-nez v0, :cond_2

    .line 21
    .line 22
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 23
    .line 24
    iget-object v3, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getLoginActivity()Lkotlin/reflect/KClass;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_0

    .line 31
    .line 32
    invoke-static {p1}, Lzs/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    goto :goto_1

    .line 39
    :cond_0
    const/4 p1, 0x0

    .line 40
    :goto_0
    invoke-direct {v1, v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 44
    .line 45
    instance-of v3, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 46
    .line 47
    if-eqz v3, :cond_1

    .line 48
    .line 49
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 53
    .line 54
    invoke-virtual {p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->setIsTriggerLoginListener()V

    .line 55
    .line 56
    .line 57
    :cond_1
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .line 61
    .line 62
    goto :goto_2

    .line 63
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v3, "An exception occurred when invoking the login activity reference."

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 90
    .line 91
    invoke-interface {v0, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder$LoginListenerCallback;->onSuccess(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 95
    .line 96
    instance-of v0, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 97
    .line 98
    if-eqz v0, :cond_3

    .line 99
    .line 100
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    check-cast p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 104
    .line 105
    invoke-virtual {p1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->setIsTriggerLoginListener()V

    .line 106
    .line 107
    .line 108
    :cond_3
    return-void
.end method

.method public final setContext(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkLoginListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
