.class public final synthetic Lai/turbolink/sdk/campaign/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

.field public final synthetic b:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;


# direct methods
.method public synthetic constructor <init>(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/turbolink/sdk/campaign/j;->a:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 5
    .line 6
    iput-object p2, p0, Lai/turbolink/sdk/campaign/j;->b:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/j;->a:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 2
    .line 3
    iget-object v1, p0, Lai/turbolink/sdk/campaign/j;->b:Lai/turbolink/sdk/campaign/CampaignWebviewActivity;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lai/turbolink/sdk/campaign/CampaignWebviewActivity;->l(Lai/turbolink/sdk/campaign/CampaignWebviewActivity;Lai/turbolink/sdk/campaign/CampaignWebviewActivity;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
