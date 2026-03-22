.class public final synthetic Lai/turbolink/sdk/campaign/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lai/turbolink/sdk/campaign/CampaignLoadURL;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lai/turbolink/sdk/campaign/CampaignLoadURL;ILjava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lai/turbolink/sdk/campaign/a;->a:Lai/turbolink/sdk/campaign/CampaignLoadURL;

    .line 5
    .line 6
    iput p2, p0, Lai/turbolink/sdk/campaign/a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lai/turbolink/sdk/campaign/a;->c:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lai/turbolink/sdk/campaign/a;->d:Landroid/app/Activity;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/a;->a:Lai/turbolink/sdk/campaign/CampaignLoadURL;

    .line 2
    .line 3
    iget v1, p0, Lai/turbolink/sdk/campaign/a;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lai/turbolink/sdk/campaign/a;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v3, p0, Lai/turbolink/sdk/campaign/a;->d:Landroid/app/Activity;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lai/turbolink/sdk/campaign/CampaignLoadURL;->a(Lai/turbolink/sdk/campaign/CampaignLoadURL;ILjava/lang/String;Landroid/app/Activity;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
