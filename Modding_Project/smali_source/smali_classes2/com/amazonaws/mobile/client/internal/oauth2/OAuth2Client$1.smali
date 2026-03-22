.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;
.super Landroidx/browser/customtabs/CustomTabsCallback;
.source "OAuth2Client.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;-><init>(Landroid/content/Context;Lcom/amazonaws/mobile/client/AWSMobileClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onNavigationEvent(ILandroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/browser/customtabs/CustomTabsCallback;->onNavigationEvent(ILandroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x6

    .line 5
    if-ne p1, p2, :cond_1

    .line 6
    .line 7
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->a(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Lcom/amazonaws/mobile/client/Callback;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 p2, 0x0

    .line 22
    const-string v0, "User cancelled flow or flow interrupted."

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->b(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)Lcom/amazonaws/mobile/client/Callback;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    new-instance v1, Ljava/lang/Exception;

    .line 33
    .line 34
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 41
    .line 42
    invoke-static {p1, p2}, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->c(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;Lcom/amazonaws/mobile/client/Callback;)Lcom/amazonaws/mobile/client/Callback;

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    new-instance v1, Ljava/lang/Exception;

    .line 53
    .line 54
    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1, v1}, Lcom/amazonaws/mobile/client/Callback;->onError(Ljava/lang/Exception;)V

    .line 58
    .line 59
    .line 60
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$1;->c:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 61
    .line 62
    iput-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->j:Lcom/amazonaws/mobile/client/Callback;

    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method
