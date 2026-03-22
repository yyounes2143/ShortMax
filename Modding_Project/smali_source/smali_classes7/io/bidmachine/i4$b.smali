.class Lio/bidmachine/i4$b;
.super Ljava/lang/Object;
.source "InstallInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/i4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/i4$b$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/android/installreferrer/api/InstallReferrerClient;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->newBuilder(Landroid/content/Context;)Lcom/android/installreferrer/api/InstallReferrerClient$Builder;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient$Builder;->build()Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lio/bidmachine/i4$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 13
    .line 14
    return-void
.end method

.method static synthetic a(Lio/bidmachine/i4$b;)Lcom/android/installreferrer/api/InstallReferrerClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/i4$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/i4$b;Lcom/android/installreferrer/api/InstallReferrerClient;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/i4$b;->c(Lcom/android/installreferrer/api/InstallReferrerClient;)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private c(Lcom/android/installreferrer/api/InstallReferrerClient;)J
    .locals 4
    .param p1    # Lcom/android/installreferrer/api/InstallReferrerClient;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->getInstallReferrer()Lcom/android/installreferrer/api/ReferrerDetails;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/android/installreferrer/api/ReferrerDetails;->getInstallBeginTimestampSeconds()J

    .line 8
    .line 9
    .line 10
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    cmp-long p1, v2, v0

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    const-wide/16 v0, 0x3e8

    .line 16
    .line 17
    mul-long/2addr v2, v0

    .line 18
    return-wide v2

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-static {p1}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-wide v0
.end method


# virtual methods
.method d()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/i4$b;->a:Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/i4$b$a;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, p0, v2}, Lio/bidmachine/i4$b$a;-><init>(Lio/bidmachine/i4$b;Lio/bidmachine/i4$a;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/android/installreferrer/api/InstallReferrerClient;->startConnection(Lcom/android/installreferrer/api/InstallReferrerStateListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    invoke-static {v0}, Lio/bidmachine/core/a;->m(Ljava/lang/Throwable;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
