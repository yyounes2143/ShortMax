.class Lcom/applovin/impl/j5$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/e0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/j5;->a(Ljava/lang/String;Ljava/util/List;ZLcom/applovin/impl/e0$a;)Lcom/applovin/impl/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/e0$a;

.field final synthetic b:Lcom/applovin/impl/j5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/j5;Lcom/applovin/impl/e0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/j5$c;->a:Lcom/applovin/impl/e0$a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 6
    .line 7
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 14
    .line 15
    iget-object v1, v0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 18
    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v3, "Finish caching video for ad #"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v3, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 30
    .line 31
    iget-object v3, v3, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v3, ". Updating ad with cachedVideoURL = "

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/j5$c;->a:Lcom/applovin/impl/e0$a;

    .line 56
    .line 57
    invoke-interface {v0, p1}, Lcom/applovin/impl/e0$a;->a(Landroid/net/Uri;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 62
    .line 63
    iget-object p1, p1, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 64
    .line 65
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eqz p1, :cond_2

    .line 70
    .line 71
    iget-object p1, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 72
    .line 73
    iget-object v0, p1, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 76
    .line 77
    const-string v1, "Failed to cache video"

    .line 78
    .line 79
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 83
    .line 84
    const/16 v0, -0xca

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/applovin/impl/j5;->a(I)V

    .line 87
    .line 88
    .line 89
    new-instance p1, Landroid/os/Bundle;

    .line 90
    .line 91
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 95
    .line 96
    iget-object v0, v0, Lcom/applovin/impl/j5;->g:Lcom/applovin/impl/sdk/ad/b;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getAdIdNumber()J

    .line 99
    .line 100
    .line 101
    move-result-wide v0

    .line 102
    const-string v2, "ad_id"

    .line 103
    .line 104
    invoke-virtual {p1, v2, v0, v1}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 105
    .line 106
    .line 107
    iget-object v0, p0, Lcom/applovin/impl/j5$c;->b:Lcom/applovin/impl/j5;

    .line 108
    .line 109
    iget-object v0, v0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/applovin/impl/sdk/k;->u()Lcom/applovin/impl/sdk/j;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    const-string/jumbo v1, "video_caching_failed"

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/j;->a(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :goto_0
    return-void
.end method
