.class public Lz7/f;
.super Ljava/lang/Object;
.source "DevelopmentPlatformProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz7/f$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lz7/f$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lz7/f;->a:Landroid/content/Context;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lz7/f;->b:Lz7/f$b;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic a(Lz7/f;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lz7/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lz7/f;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lz7/f;->c(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lz7/f;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    :try_start_0
    iget-object v0, p0, Lz7/f;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    :cond_1
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :catch_0
    return v1
.end method

.method private f()Lz7/f$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lz7/f;->b:Lz7/f$b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lz7/f$b;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p0, v1}, Lz7/f$b;-><init>(Lz7/f;Lz7/f$a;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lz7/f;->b:Lz7/f$b;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lz7/f;->b:Lz7/f$b;

    .line 14
    .line 15
    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    .line 1
    const-string v0, "com.google.firebase.crashlytics.unity_version"

    .line 2
    .line 3
    const-string v1, "string"

    .line 4
    .line 5
    invoke-static {p0, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/CommonUtils;->p(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lz7/f;->f()Lz7/f$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lz7/f$b;->a(Lz7/f$b;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lz7/f;->f()Lz7/f$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lz7/f$b;->b(Lz7/f$b;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
