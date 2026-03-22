.class public final Lai/turbolink/sdk/campaign/CampaignWebviewActivity$onCreate$3;
.super Landroid/webkit/WebChromeClient;
.source "CampaignWebviewActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic this$0:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;


# direct methods
.method constructor <init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity$onCreate$3;->this$0:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z
    .locals 2
    .param p1    # Landroid/webkit/ConsoleMessage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "WebChromeClient failed to load h5 page. JavaScript error:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    return p1
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 0
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    sget-object v0, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 4
    .line 5
    invoke-virtual {v0}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getAPP_CAMPAIGN_BLACKBOX_TAG()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x2

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    invoke-static {p2, v0, v3, v1, v2}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    move-object v0, p2

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, ""

    .line 21
    .line 22
    :goto_0
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity$onCreate$3;->this$0:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 23
    .line 24
    invoke-static {v1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->access$getTurbolinkActionBar$p(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->setTitle(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v1, p0, Lai/turbolink/sdk/campaign/CampaignWebviewActivity$onCreate$3;->this$0:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 34
    .line 35
    invoke-static {v1, v0}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->access$setCampaignTitle$p(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
