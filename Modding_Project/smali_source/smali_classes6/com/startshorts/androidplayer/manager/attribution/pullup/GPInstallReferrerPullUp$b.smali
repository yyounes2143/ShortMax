.class public final Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;
.super Ljava/lang/Object;
.source "GPInstallReferrerPullUp.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic b:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->b:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->c:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->d:Ljava/lang/String;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "CampaignNewTag"

    .line 4
    .line 5
    const-string v2, "onInstallReferrerServiceDisconnected"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onInstallReferrerSetupFinished -> responseCode("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v2, 0x29

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const-string v2, "CampaignNewTag"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const-string v0, ""

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    :try_start_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->b:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->c:Ljava/lang/String;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->d:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1, p1, v2, v3, v0}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->e(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p1

    .line 55
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->b:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

    .line 56
    .line 57
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->c:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {v1, v0, v2, v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->e(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->b:Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;

    .line 73
    .line 74
    iget-object v2, p0, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp$b;->c:Ljava/lang/String;

    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "responseCode -> "

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v1, v0, v2, v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;->e(Lcom/startshorts/androidplayer/manager/attribution/pullup/GPInstallReferrerPullUp;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    :catch_1
    :goto_1
    return-void
.end method
