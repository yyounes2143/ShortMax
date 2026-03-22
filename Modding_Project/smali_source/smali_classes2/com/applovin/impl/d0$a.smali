.class Lcom/applovin/impl/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/e0$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/d0;->e()Ljava/util/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/applovin/impl/d0;


# direct methods
.method constructor <init>(Lcom/applovin/impl/d0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/applovin/impl/c0;->a:Lcom/applovin/impl/sdk/k;

    .line 6
    .line 7
    sget-object v1, Lcom/applovin/impl/v4;->T0:Lcom/applovin/impl/v4;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/Boolean;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/applovin/impl/d0;->a(Lcom/applovin/impl/d0;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    monitor-enter v0

    .line 28
    :try_start_0
    iget-object v1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/applovin/impl/d0;->b(Lcom/applovin/impl/d0;)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-static {v1, v2, v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->replaceAll(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    monitor-exit v0

    .line 44
    goto :goto_0

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/applovin/impl/d0;->b(Lcom/applovin/impl/d0;)Ljava/lang/StringBuffer;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->replaceAll(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/applovin/impl/d0;->c(Lcom/applovin/impl/d0;)Lcom/applovin/impl/sdk/ad/b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0, p1}, Lcom/applovin/impl/sdk/ad/b;->a(Landroid/net/Uri;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 74
    .line 75
    iget-object p1, p1, Lcom/applovin/impl/c0;->c:Lcom/applovin/impl/sdk/o;

    .line 76
    .line 77
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    if-eqz p1, :cond_2

    .line 82
    .line 83
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/applovin/impl/c0;->c:Lcom/applovin/impl/sdk/o;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/applovin/impl/c0;->b:Ljava/lang/String;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    const-string v2, "Failed to cache JavaScript resource "

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    iget-object v2, p0, Lcom/applovin/impl/d0$a;->a:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0, p1, v1}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_2
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/applovin/impl/d0;->d(Lcom/applovin/impl/d0;)Lcom/applovin/impl/d0$c;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-eqz p1, :cond_3

    .line 118
    .line 119
    iget-object p1, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 120
    .line 121
    invoke-static {p1}, Lcom/applovin/impl/d0;->d(Lcom/applovin/impl/d0;)Lcom/applovin/impl/d0$c;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/applovin/impl/d0$a;->b:Lcom/applovin/impl/d0;

    .line 126
    .line 127
    invoke-static {v0}, Lcom/applovin/impl/d0;->e(Lcom/applovin/impl/d0;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const/4 v1, 0x1

    .line 132
    invoke-interface {p1, v0, v1}, Lcom/applovin/impl/d0$c;->a(Ljava/lang/String;Z)V

    .line 133
    .line 134
    .line 135
    :cond_3
    :goto_1
    return-void
.end method
