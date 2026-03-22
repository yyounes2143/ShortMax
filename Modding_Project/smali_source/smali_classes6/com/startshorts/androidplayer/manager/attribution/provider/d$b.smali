.class public final Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;
.super Ljava/lang/Object;
.source "GPInstallReferrerProvider.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/attribution/provider/d;->r(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/android/installreferrer/api/InstallReferrerClient;

.field final synthetic b:Lcom/startshorts/androidplayer/manager/attribution/provider/d;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lcom/startshorts/androidplayer/manager/attribution/provider/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->b:Lcom/startshorts/androidplayer/manager/attribution/provider/d;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 3

    .line 1
    sget-object v0, Lfk/g;->a:Lfk/g;

    .line 2
    .line 3
    const/16 v1, 0x19

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lfk/g;->c(I)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 9
    .line 10
    const-string v1, "CampaignNewTag"

    .line 11
    .line 12
    const-string v2, "onInstallReferrerServiceDisconnected"

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 3

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
    if-nez p1, :cond_0

    .line 31
    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 33
    .line 34
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->b:Lcom/startshorts/androidplayer/manager/attribution/provider/d;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/d;->q(Lcom/startshorts/androidplayer/manager/attribution/provider/d;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_0
    move-exception p1

    .line 49
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->b:Lcom/startshorts/androidplayer/manager/attribution/provider/d;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/d;->p(Lcom/startshorts/androidplayer/manager/attribution/provider/d;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/d$b;->b:Lcom/startshorts/androidplayer/manager/attribution/provider/d;

    .line 65
    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v2, "responseCode -> "

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/d;->p(Lcom/startshorts/androidplayer/manager/attribution/provider/d;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :catch_1
    :goto_1
    return-void
.end method
