.class public Llc/a;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llc/a$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/pandora/ttlicense2/LicenseManager$Callback;

.field private final i:Z

.field private final j:Z

.field private final k:Llc/c;

.field public l:Llc/b;


# direct methods
.method private constructor <init>(Llc/a$b;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Llc/a$b;->a(Llc/a$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llc/a;->a:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Llc/a$b;->b(Llc/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/a;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Llc/a$b;->e(Llc/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Llc/a$b;->f(Llc/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/a;->d:Ljava/lang/String;

    .line 7
    invoke-static {p1}, Llc/a$b;->g(Llc/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/a;->e:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Llc/a$b;->h(Llc/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/a;->f:Ljava/lang/String;

    .line 9
    invoke-static {p1}, Llc/a$b;->i(Llc/a$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/a;->g:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Llc/a$b;->j(Llc/a$b;)Lcom/pandora/ttlicense2/LicenseManager$Callback;

    move-result-object v0

    iput-object v0, p0, Llc/a;->h:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 11
    invoke-static {p1}, Llc/a$b;->k(Llc/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Llc/a;->i:Z

    .line 12
    invoke-static {p1}, Llc/a$b;->l(Llc/a$b;)Z

    move-result v0

    iput-boolean v0, p0, Llc/a;->j:Z

    .line 13
    invoke-static {p1}, Llc/a$b;->c(Llc/a$b;)Llc/c;

    move-result-object v0

    iput-object v0, p0, Llc/a;->k:Llc/c;

    .line 14
    invoke-static {p1}, Llc/a$b;->d(Llc/a$b;)Llc/b;

    move-result-object p1

    iput-object p1, p0, Llc/a;->l:Llc/b;

    return-void
.end method

.method synthetic constructor <init>(Llc/a$b;Llc/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llc/a;-><init>(Llc/a$b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/pandora/ttlicense2/LicenseManager$Callback;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->h:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Llc/b;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->l:Llc/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()Llc/c;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->k:Llc/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llc/a;->j:Z

    .line 2
    .line 3
    return v0
.end method

.method public l()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Llc/a;->i:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Config{applicationContext="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Llc/a;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", appID=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Llc/a;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const/16 v1, 0x27

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ", appName=\'"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Llc/a;->c:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v2, ", appVersion=\'"

    .line 45
    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v2, p0, Llc/a;->d:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ", appChannel=\'"

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Llc/a;->e:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v2, ", appRegion=\'"

    .line 71
    .line 72
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Llc/a;->f:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v2, ", licenseUri=\'"

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Llc/a;->g:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v2, ", licenseCallback=\'"

    .line 97
    .line 98
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object v2, p0, Llc/a;->h:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 102
    .line 103
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v1, ", securityDeviceId="

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    iget-boolean v1, p0, Llc/a;->i:Z

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string v1, ", vodConfig="

    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Llc/a;->k:Llc/c;

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const/16 v1, 0x7d

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    return-object v0
.end method
