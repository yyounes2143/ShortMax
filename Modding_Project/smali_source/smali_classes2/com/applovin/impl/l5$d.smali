.class Lcom/applovin/impl/l5$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/e0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/l5;->r()Lcom/applovin/impl/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/z7;

.field final synthetic b:Lcom/applovin/impl/l5;


# direct methods
.method constructor <init>(Lcom/applovin/impl/l5;Lcom/applovin/impl/z7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/l5$d;->b:Lcom/applovin/impl/l5;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/l5$d;->a:Lcom/applovin/impl/z7;

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
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/applovin/impl/l5$d;->b:Lcom/applovin/impl/l5;

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
    iget-object v0, p0, Lcom/applovin/impl/l5$d;->b:Lcom/applovin/impl/l5;

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
    const-string v3, "Video file successfully cached into: "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v1, v0, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/l5$d;->a:Lcom/applovin/impl/z7;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/applovin/impl/z7;->a(Landroid/net/Uri;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/l5$d;->b:Lcom/applovin/impl/l5;

    .line 46
    .line 47
    iget-object p1, p1, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 48
    .line 49
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-eqz p1, :cond_2

    .line 54
    .line 55
    iget-object p1, p0, Lcom/applovin/impl/l5$d;->b:Lcom/applovin/impl/l5;

    .line 56
    .line 57
    iget-object v0, p1, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 60
    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 64
    .line 65
    .line 66
    const-string v2, "Failed to cache video file: "

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-object v2, p0, Lcom/applovin/impl/l5$d;->a:Lcom/applovin/impl/z7;

    .line 72
    .line 73
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    return-void
.end method
