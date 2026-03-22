.class Lio/bidmachine/i4$b$a;
.super Ljava/lang/Object;
.source "InstallInfoProvider.java"

# interfaces
.implements Lcom/android/installreferrer/api/InstallReferrerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/i4$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/i4$b;


# direct methods
.method private constructor <init>(Lio/bidmachine/i4$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/i4$b$a;->a:Lio/bidmachine/i4$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/i4$b;Lio/bidmachine/i4$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/i4$b$a;-><init>(Lio/bidmachine/i4$b;)V

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/i4$b$a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/i4$b$a;->b(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/i4$b$a;->c(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private c(I)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    invoke-static {}, Lio/bidmachine/i4;->b()Ljava/util/concurrent/atomic/AtomicLong;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lio/bidmachine/i4$b$a;->a:Lio/bidmachine/i4$b;

    .line 8
    .line 9
    invoke-static {v0}, Lio/bidmachine/i4$b;->a(Lio/bidmachine/i4$b;)Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lio/bidmachine/i4$b;->b(Lio/bidmachine/i4$b;Lcom/android/installreferrer/api/InstallReferrerClient;)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object p1, p0, Lio/bidmachine/i4$b$a;->a:Lio/bidmachine/i4$b;

    .line 21
    .line 22
    invoke-static {p1}, Lio/bidmachine/i4$b;->a(Lio/bidmachine/i4$b;)Lcom/android/installreferrer/api/InstallReferrerClient;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Lcom/android/installreferrer/api/InstallReferrerClient;->endConnection()V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public onInstallReferrerServiceDisconnected()V
    .locals 0

    .line 1
    return-void
.end method

.method public onInstallReferrerSetupFinished(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    .line 2
    .line 3
    new-instance v1, Lio/bidmachine/j4;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lio/bidmachine/j4;-><init>(Lio/bidmachine/i4$b$a;I)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 12
    .line 13
    .line 14
    return-void
.end method
