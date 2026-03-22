.class Lcom/applovin/impl/f7$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/p2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/f7;->initialize(Lcom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/k;

.field final synthetic b:Lcom/applovin/impl/f7;


# direct methods
.method constructor <init>(Lcom/applovin/impl/f7;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/f7$b;->b:Lcom/applovin/impl/f7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/i2;Lcom/applovin/impl/o2;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/applovin/impl/i2;->b()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    sget-object v0, Lcom/applovin/impl/f7$d;->a:Lcom/applovin/impl/f7$d;

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ne p2, v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/applovin/impl/i2;->a()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    sget-object v0, Lcom/applovin/impl/f7$e;->a:Lcom/applovin/impl/f7$e;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne p2, v0, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/applovin/impl/t0;->f()Landroid/net/Uri;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-eqz p1, :cond_0

    .line 36
    .line 37
    iget-object p1, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1}, Lcom/applovin/impl/t0;->f()Landroid/net/Uri;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    iget-object v0, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 52
    .line 53
    invoke-static {p1, p2, v0}, Lcom/applovin/impl/h7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/applovin/impl/f7$b;->b:Lcom/applovin/impl/f7;

    .line 58
    .line 59
    const-string p2, "Missing Privacy Policy URL"

    .line 60
    .line 61
    const-string v0, "You cannot use the AppLovin SDK\'s consent flow without defining a Privacy Policy URL"

    .line 62
    .line 63
    invoke-static {p2, v0, p1}, Lcom/applovin/impl/k7;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {p1}, Lcom/applovin/impl/i2;->a()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    sget-object p2, Lcom/applovin/impl/f7$e;->b:Lcom/applovin/impl/f7$e;

    .line 72
    .line 73
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-ne p1, p2, :cond_2

    .line 78
    .line 79
    iget-object p1, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p1}, Lcom/applovin/impl/t0;->h()Landroid/net/Uri;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    iget-object p1, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->y()Lcom/applovin/impl/t0;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/applovin/impl/t0;->h()Landroid/net/Uri;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-static {}, Lcom/applovin/impl/sdk/k;->o()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget-object v0, p0, Lcom/applovin/impl/f7$b;->a:Lcom/applovin/impl/sdk/k;

    .line 106
    .line 107
    invoke-static {p1, p2, v0}, Lcom/applovin/impl/h7;->a(Landroid/net/Uri;Landroid/content/Context;Lcom/applovin/impl/sdk/k;)Z

    .line 108
    .line 109
    .line 110
    :cond_2
    :goto_0
    return-void
.end method
