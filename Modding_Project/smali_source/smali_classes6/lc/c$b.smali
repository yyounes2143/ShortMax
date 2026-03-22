.class public Llc/c$b;
.super Ljava/lang/Object;
.source "VodConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llc/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llc/c$b;->a:Landroid/content/Context;

    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string/jumbo v1, "video_cache"

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Llc/c$b;->b:Ljava/lang/String;

    .line 23
    .line 24
    const/high16 p1, 0x12c00000

    .line 25
    .line 26
    iput p1, p0, Llc/c$b;->c:I

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    iput p1, p0, Llc/c$b;->d:I

    .line 30
    .line 31
    return-void
.end method

.method static synthetic a(Llc/c$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Llc/c$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Llc/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Llc/c$b;->c:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Llc/c$b;)I
    .locals 0

    .line 1
    iget p0, p0, Llc/c$b;->d:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public d()Llc/c;
    .locals 3

    .line 1
    iget-object v0, p0, Llc/c$b;->b:Ljava/lang/String;

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
    iget-object v1, p0, Llc/c$b;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string/jumbo v2, "video_cache"

    .line 18
    .line 19
    .line 20
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Llc/c$b;->b:Ljava/lang/String;

    .line 28
    .line 29
    :cond_0
    new-instance v0, Llc/c;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, p0, v1}, Llc/c;-><init>(Llc/c$b;Llc/c$a;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public e(Ljava/lang/String;)Llc/c$b;
    .locals 0

    .line 1
    iput-object p1, p0, Llc/c$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public f(I)Llc/c$b;
    .locals 0

    .line 1
    iput p1, p0, Llc/c$b;->c:I

    .line 2
    .line 3
    return-object p0
.end method
