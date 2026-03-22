.class Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;
.super Landroidx/browser/customtabs/CustomTabsServiceConnection;
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
.field final synthetic b:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->b:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/browser/customtabs/CustomTabsServiceConnection;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCustomTabsServiceConnected(Landroid/content/ComponentName;Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->b:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->f:Landroidx/browser/customtabs/CustomTabsClient;

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    invoke-virtual {p2, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->b:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 11
    .line 12
    iget-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->f:Landroidx/browser/customtabs/CustomTabsClient;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->h:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    iput-object p2, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->g:Landroidx/browser/customtabs/CustomTabsSession;

    .line 21
    .line 22
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client$2;->b:Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/amazonaws/mobile/client/internal/oauth2/OAuth2Client;->f:Landroidx/browser/customtabs/CustomTabsClient;

    .line 5
    .line 6
    return-void
.end method
