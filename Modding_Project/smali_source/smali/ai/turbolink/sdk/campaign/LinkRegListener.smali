.class public final Lai/turbolink/sdk/campaign/LinkRegListener;
.super Ljava/lang/Object;
.source "LinkRegListener.kt"


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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkRegListener;->context:Landroid/content/Context;

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
    iget-object v0, p0, Lai/turbolink/sdk/campaign/LinkRegListener;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public final postMessage(Ljava/lang/String;)V
    .locals 3
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
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getRegListenerCallback()Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;

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
    if-eqz v1, :cond_1

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 21
    .line 22
    iget-object v2, p0, Lai/turbolink/sdk/campaign/LinkRegListener;->context:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Lai/turbolink/sdk/TurboLink$Companion;->getRegActivity()Lkotlin/reflect/KClass;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-static {p1}, Lzs/a;->b(Lkotlin/reflect/KClass;)Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p1

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    invoke-direct {v1, v2, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkRegListener;->context:Landroid/content/Context;

    .line 42
    .line 43
    instance-of v2, p1, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v2, "An exception occurred when invoking the register activity reference."

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->w(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    :goto_2
    if-eqz v0, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lai/turbolink/sdk/campaign/LinkRegListener;->context:Landroid/content/Context;

    .line 76
    .line 77
    invoke-interface {v0, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder$RegListenerCallback;->onSuccess(Landroid/content/Context;)V

    .line 78
    .line 79
    .line 80
    :cond_2
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/LinkRegListener;->context:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method
