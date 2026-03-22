.class Lcom/applovin/impl/mediation/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/n5$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/e;->a(Ljava/lang/String;Lcom/applovin/mediation/MaxAdFormat;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/applovin/impl/x2;

.field final synthetic e:Landroid/content/Context;

.field final synthetic f:Lcom/applovin/impl/mediation/ads/a$a;

.field final synthetic g:Lcom/applovin/impl/mediation/e;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/e;JLjava/util/Map;Ljava/lang/String;Lcom/applovin/impl/x2;Landroid/content/Context;Lcom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/mediation/e$a;->g:Lcom/applovin/impl/mediation/e;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/applovin/impl/mediation/e$a;->a:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/applovin/impl/mediation/e$a;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/applovin/impl/mediation/e$a;->d:Lcom/applovin/impl/x2;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/applovin/impl/mediation/e$a;->e:Landroid/content/Context;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/applovin/impl/mediation/e$a;->f:Lcom/applovin/impl/mediation/ads/a$a;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/applovin/impl/mediation/e$a;->a:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "sct_ms"

    .line 15
    .line 16
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/applovin/impl/mediation/e$a;->b:Ljava/util/Map;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$a;->g:Lcom/applovin/impl/mediation/e;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/applovin/impl/mediation/e$a;->c:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Lcom/applovin/impl/mediation/e;->b(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "calfc"

    .line 34
    .line 35
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    new-instance v0, Lcom/applovin/impl/t5;

    .line 39
    .line 40
    iget-object v4, p0, Lcom/applovin/impl/mediation/e$a;->d:Lcom/applovin/impl/x2;

    .line 41
    .line 42
    iget-object v6, p0, Lcom/applovin/impl/mediation/e$a;->e:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/applovin/impl/mediation/e$a;->g:Lcom/applovin/impl/mediation/e;

    .line 45
    .line 46
    invoke-static {v1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 47
    .line 48
    .line 49
    move-result-object v7

    .line 50
    iget-object v8, p0, Lcom/applovin/impl/mediation/e$a;->f:Lcom/applovin/impl/mediation/ads/a$a;

    .line 51
    .line 52
    move-object v3, v0

    .line 53
    move-object v5, p1

    .line 54
    invoke-direct/range {v3 .. v8}, Lcom/applovin/impl/t5;-><init>(Lcom/applovin/impl/x2;Lorg/json/JSONArray;Landroid/content/Context;Lcom/applovin/impl/sdk/k;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$a;->g:Lcom/applovin/impl/mediation/e;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget-object v1, Lcom/applovin/impl/o3;->e8:Lcom/applovin/impl/v4;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Ljava/lang/Boolean;

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    .line 77
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$a;->g:Lcom/applovin/impl/mediation/e;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    sget-object v1, Lcom/applovin/impl/b6$b;->c:Lcom/applovin/impl/b6$b;

    .line 88
    .line 89
    invoke-virtual {p1, v0, v1}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;Lcom/applovin/impl/b6$b;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/e$a;->g:Lcom/applovin/impl/mediation/e;

    .line 94
    .line 95
    invoke-static {p1}, Lcom/applovin/impl/mediation/e;->c(Lcom/applovin/impl/mediation/e;)Lcom/applovin/impl/sdk/k;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->r0()Lcom/applovin/impl/b6;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-virtual {p1, v0}, Lcom/applovin/impl/b6;->a(Lcom/applovin/impl/g5;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    return-void
.end method
