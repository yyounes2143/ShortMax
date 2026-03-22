.class public Llc/a$b;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/pandora/ttlicense2/LicenseManager$Callback;

.field private i:Z

.field private j:Z

.field private k:Llc/c;

.field private l:Llc/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Llc/a$b;->i:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Llc/a$b;->j:Z

    .line 8
    .line 9
    invoke-static {}, Lnc/a;->a()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Llc/a$b;->f:Ljava/lang/String;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic a(Llc/a$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Llc/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Llc/a$b;)Llc/c;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->k:Llc/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Llc/a$b;)Llc/b;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->l:Llc/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Llc/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Llc/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Llc/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Llc/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Llc/a$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Llc/a$b;)Lcom/pandora/ttlicense2/LicenseManager$Callback;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/a$b;->h:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Llc/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llc/a$b;->i:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Llc/a$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llc/a$b;->j:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public m()Llc/a;
    .locals 2

    .line 1
    iget-object v0, p0, Llc/a$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    iget-object v0, p0, Llc/a$b;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_4

    .line 12
    .line 13
    iget-object v0, p0, Llc/a$b;->e:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_3

    .line 20
    .line 21
    iget-object v0, p0, Llc/a$b;->f:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Llc/a$b;->k:Llc/c;

    .line 30
    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    new-instance v0, Llc/c$b;

    .line 34
    .line 35
    iget-object v1, p0, Llc/a$b;->a:Landroid/content/Context;

    .line 36
    .line 37
    invoke-direct {v0, v1}, Llc/c$b;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Llc/c$b;->d()Llc/c;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Llc/a$b;->k:Llc/c;

    .line 45
    .line 46
    :cond_0
    iget-object v0, p0, Llc/a$b;->l:Llc/b;

    .line 47
    .line 48
    if-nez v0, :cond_1

    .line 49
    .line 50
    new-instance v0, Llc/b$b;

    .line 51
    .line 52
    iget-object v1, p0, Llc/a$b;->a:Landroid/content/Context;

    .line 53
    .line 54
    invoke-direct {v0, v1}, Llc/b$b;-><init>(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Llc/b$b;->i()Llc/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Llc/a$b;->l:Llc/b;

    .line 62
    .line 63
    :cond_1
    new-instance v0, Llc/a;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-direct {v0, p0, v1}, Llc/a;-><init>(Llc/a$b;Llc/a$a;)V

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    .line 71
    .line 72
    const-string v1, "appRegion is null"

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw v0

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 79
    .line 80
    const-string v1, "appChannel is null"

    .line 81
    .line 82
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 87
    .line 88
    const-string v1, "appID is null"

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw v0

    .line 94
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 95
    .line 96
    const-string v1, "applicationContext is null"

    .line 97
    .line 98
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v0
.end method

.method public n(Ljava/lang/String;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Ljava/lang/String;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/lang/String;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Ljava/lang/String;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Ljava/lang/String;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Landroid/content/Context;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Ljava/lang/String;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(Llc/c;)Llc/a$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/a$b;->k:Llc/c;

    .line 2
    .line 3
    return-object p0
.end method
