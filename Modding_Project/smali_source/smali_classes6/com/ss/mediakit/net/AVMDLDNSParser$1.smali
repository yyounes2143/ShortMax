.class Lcom/ss/mediakit/net/AVMDLDNSParser$1;
.super Landroid/os/Handler;
.source "AVMDLDNSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/mediakit/net/AVMDLDNSParser;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;


# direct methods
.method constructor <init>(Lcom/ss/mediakit/net/AVMDLDNSParser;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 10
    .line 11
    iget v2, p1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const-string v3, "----receive msg what:%d info:%s"

    .line 22
    .line 23
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const-string v3, "AVMDLDNSParser"

    .line 28
    .line 29
    invoke-static {v3, v2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget v2, p1, Landroid/os/Message;->what:I

    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    if-eq v2, v4, :cond_6

    .line 36
    .line 37
    const/4 v4, 0x3

    .line 38
    if-eq v2, v4, :cond_5

    .line 39
    .line 40
    const/4 v4, 0x4

    .line 41
    if-eq v2, v4, :cond_4

    .line 42
    .line 43
    const/4 v4, 0x6

    .line 44
    if-eq v2, v4, :cond_3

    .line 45
    .line 46
    const/4 v4, 0x7

    .line 47
    if-eq v2, v4, :cond_2

    .line 48
    .line 49
    const/16 v4, 0x8

    .line 50
    .line 51
    if-eq v2, v4, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 55
    .line 56
    invoke-static {v4, v2, v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->access$500(Lcom/ss/mediakit/net/AVMDLDNSParser;ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 57
    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_2
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 61
    .line 62
    invoke-static {v4, v2, v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->access$400(Lcom/ss/mediakit/net/AVMDLDNSParser;ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 67
    .line 68
    invoke-static {v4, v2, v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->access$300(Lcom/ss/mediakit/net/AVMDLDNSParser;ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 69
    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 73
    .line 74
    invoke-static {v4, v2, v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->access$200(Lcom/ss/mediakit/net/AVMDLDNSParser;ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_5
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 79
    .line 80
    invoke-static {v4, v2, v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->access$100(Lcom/ss/mediakit/net/AVMDLDNSParser;ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_6
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLDNSParser$1;->this$0:Lcom/ss/mediakit/net/AVMDLDNSParser;

    .line 85
    .line 86
    invoke-static {v4, v2, v0}, Lcom/ss/mediakit/net/AVMDLDNSParser;->access$000(Lcom/ss/mediakit/net/AVMDLDNSParser;ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 87
    .line 88
    .line 89
    :goto_1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 90
    .line 91
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    const-string v0, "****end proc msg what:%d info:%s"

    .line 100
    .line 101
    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v3, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return-void
.end method
