.class public Llc/b$b;
.super Ljava/lang/Object;
.source "LogConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field public f:I

.field private g:Z

.field private h:Z

.field private i:I

.field private final j:Ljava/lang/String;

.field private k:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Llc/b$b;->b:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0x64

    .line 9
    .line 10
    iput v0, p0, Llc/b$b;->d:I

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    iput v0, p0, Llc/b$b;->e:I

    .line 14
    .line 15
    const v1, 0x93a80

    .line 16
    .line 17
    .line 18
    iput v1, p0, Llc/b$b;->f:I

    .line 19
    .line 20
    const/4 v1, 0x1

    .line 21
    iput-boolean v1, p0, Llc/b$b;->g:Z

    .line 22
    .line 23
    iput-boolean v1, p0, Llc/b$b;->h:Z

    .line 24
    .line 25
    iput v0, p0, Llc/b$b;->i:I

    .line 26
    .line 27
    const-string v0, "Log"

    .line 28
    .line 29
    iput-object v0, p0, Llc/b$b;->j:Ljava/lang/String;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    iput-boolean v1, p0, Llc/b$b;->k:Z

    .line 33
    .line 34
    iput-object p1, p0, Llc/b$b;->a:Landroid/content/Context;

    .line 35
    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iput-object p1, p0, Llc/b$b;->c:Ljava/lang/String;

    .line 65
    .line 66
    return-void
.end method

.method static synthetic a(Llc/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/b$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Llc/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/b$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Llc/b$b;)I
    .locals 0

    .line 1
    iget p0, p0, Llc/b$b;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Llc/b$b;)I
    .locals 0

    .line 1
    iget p0, p0, Llc/b$b;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Llc/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llc/b$b;->g:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Llc/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llc/b$b;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Llc/b$b;)I
    .locals 0

    .line 1
    iget p0, p0, Llc/b$b;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Llc/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Llc/b$b;->k:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public i()Llc/b;
    .locals 3

    .line 1
    iget-object v0, p0, Llc/b$b;->c:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/io/File;

    .line 10
    .line 11
    iget-object v1, p0, Llc/b$b;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "Log"

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Llc/b$b;->c:Ljava/lang/String;

    .line 27
    .line 28
    :cond_0
    new-instance v0, Llc/b;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v0, p0, v1}, Llc/b;-><init>(Llc/b$b;Llc/b$a;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method
