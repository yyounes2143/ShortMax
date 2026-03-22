.class Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity$a;
.super Ljava/lang/Object;
.source "AccountSignInHubActivity.java"

# interfaces
.implements Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;


# direct methods
.method constructor <init>(Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity$a;->a:Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "[ACCOUNTSDK]AccountSignInHubActivity"

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    const-string p1, "version check ok"

    .line 7
    .line 8
    invoke-static {v1, p1, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity$a;->a:Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->d(Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v2, "version check failed"

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity$a;->a:Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;

    .line 23
    .line 24
    invoke-static {v0, p1}, Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;->e(Lcom/huawei/hms/account/internal/ui/activity/AccountSignInHubActivity;I)V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method
