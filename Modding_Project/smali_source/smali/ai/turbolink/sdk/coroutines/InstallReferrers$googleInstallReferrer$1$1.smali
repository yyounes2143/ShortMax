.class public final Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;
.super Ljava/lang/Object;
.source "InstallReferrers.kt"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $onResult:Lat/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lat/p<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;


# direct methods
.method constructor <init>(Lcom/android/installreferrer/api/InstallReferrerClient;Lat/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/installreferrer/api/InstallReferrerClient;",
            "Lat/p<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    iput-object p2, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$onResult:Lat/p;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$onResult:Lat/p;

    .line 2
    .line 3
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 4
    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    const/4 v2, 0x0

    .line 12
    move-object v1, v5

    .line 13
    move-object v3, v4

    .line 14
    invoke-interface/range {v0 .. v5}, Lat/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 8

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    :try_start_0
    iget-object p1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v2, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$onResult:Lat/p;

    .line 12
    .line 13
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallReferrer()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getReferrerClickTimestampSeconds()J

    .line 20
    .line 21
    .line 22
    move-result-wide v5

    .line 23
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    .line 28
    .line 29
    .line 30
    move-result-wide v6

    .line 31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getGooglePlayInstantParam()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    invoke-interface/range {v2 .. v7}, Lat/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    goto :goto_3

    .line 49
    :catch_0
    move-exception p1

    .line 50
    goto :goto_1

    .line 51
    :cond_0
    iget-object v2, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$onResult:Lat/p;

    .line 52
    .line 53
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 54
    .line 55
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v6

    .line 63
    const/4 v4, 0x0

    .line 64
    move-object v3, v7

    .line 65
    invoke-interface/range {v2 .. v7}, Lat/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p1, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 71
    .line 72
    .line 73
    goto :goto_2

    .line 74
    :goto_1
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "InstallReferrer google play server is unavailable, exception: "

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-static {p1}, Lai/turbolink/sdk/utils/TurboLinkLogger;->e(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object v2, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$onResult:Lat/p;

    .line 95
    .line 96
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 97
    .line 98
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 103
    .line 104
    .line 105
    move-result-object v6

    .line 106
    const/4 v4, 0x0

    .line 107
    move-object v3, v7

    .line 108
    invoke-interface/range {v2 .. v7}, Lat/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :goto_2
    return-void

    .line 113
    :goto_3
    iget-object v0, p0, Lai/turbolink/sdk/coroutines/InstallReferrers$googleInstallReferrer$1$1;->$referrerClient:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 116
    .line 117
    .line 118
    throw p1
.end method
