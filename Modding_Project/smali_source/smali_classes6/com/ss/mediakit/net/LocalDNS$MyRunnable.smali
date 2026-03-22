.class Lcom/ss/mediakit/net/LocalDNS$MyRunnable;
.super Ljava/lang/Object;
.source "LocalDNS.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/mediakit/net/LocalDNS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyRunnable"
.end annotation


# instance fields
.field private final mLocalDNSRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ss/mediakit/net/LocalDNS;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/mediakit/net/LocalDNS;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/mediakit/net/LocalDNS$MyRunnable;->mLocalDNSRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "----implement delayed check for local dns"

    .line 7
    .line 8
    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const-string v3, "LocalDNS"

    .line 13
    .line 14
    invoke-static {v3, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/ss/mediakit/net/LocalDNS$MyRunnable;->mLocalDNSRef:Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lcom/ss/mediakit/net/LocalDNS;

    .line 24
    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    const-string v2, "****end implement delayed check for local dns, dns object null"

    .line 28
    .line 29
    new-array v1, v1, [Ljava/lang/Object;

    .line 30
    .line 31
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    invoke-static {v2}, Lcom/ss/mediakit/net/LocalDNS;->access$100(Lcom/ss/mediakit/net/LocalDNS;)Z

    .line 40
    .line 41
    .line 42
    move-result v4

    .line 43
    if-nez v4, :cond_1

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/ss/mediakit/net/LocalDNS;->cancel()V

    .line 46
    .line 47
    .line 48
    const-string v4, "****end implement delayed check cancel local dns,"

    .line 49
    .line 50
    new-array v1, v1, [Ljava/lang/Object;

    .line 51
    .line 52
    invoke-static {v0, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v3, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 60
    .line 61
    iget-object v6, v2, Lcom/ss/mediakit/net/BaseDNS;->mHostname:Ljava/lang/String;

    .line 62
    .line 63
    const-wide/16 v8, 0x0

    .line 64
    .line 65
    iget-object v10, v2, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 66
    .line 67
    const/4 v5, 0x0

    .line 68
    const/4 v7, 0x0

    .line 69
    move-object v4, v0

    .line 70
    invoke-direct/range {v4 .. v10}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Lcom/ss/mediakit/net/BaseDNS;->notifyError(Lcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method
