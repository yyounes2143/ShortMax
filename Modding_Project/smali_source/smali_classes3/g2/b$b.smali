.class public final Lg2/b$b;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Lk2/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lk2/k<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:J

.field private f:J

.field private g:Lg2/d;

.field private h:Lcom/facebook/cache/common/CacheErrorLogger;

.field private i:Lcom/facebook/cache/common/CacheEventListener;

.field private j:Lh2/b;

.field private k:Z

.field private final l:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lg2/b$b;->a:I

    .line 4
    const-string v0, "image_cache"

    iput-object v0, p0, Lg2/b$b;->b:Ljava/lang/String;

    const-wide/32 v0, 0x2800000

    .line 5
    iput-wide v0, p0, Lg2/b$b;->d:J

    const-wide/32 v0, 0xa00000

    .line 6
    iput-wide v0, p0, Lg2/b$b;->e:J

    const-wide/32 v0, 0x200000

    .line 7
    iput-wide v0, p0, Lg2/b$b;->f:J

    .line 8
    new-instance v0, Lcom/facebook/cache/disk/a;

    invoke-direct {v0}, Lcom/facebook/cache/disk/a;-><init>()V

    iput-object v0, p0, Lg2/b$b;->g:Lg2/d;

    .line 9
    iput-object p1, p0, Lg2/b$b;->l:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lg2/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg2/b$b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic a(Lg2/b$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic b(Lg2/b$b;)Lk2/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->c:Lk2/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic c(Lg2/b$b;)Lcom/facebook/cache/common/CacheErrorLogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->h:Lcom/facebook/cache/common/CacheErrorLogger;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lg2/b$b;)Lcom/facebook/cache/common/CacheEventListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->i:Lcom/facebook/cache/common/CacheEventListener;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lg2/b$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->l:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lg2/b$b;)Lh2/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->j:Lh2/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lg2/b$b;)Lg2/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lg2/b$b;->g:Lg2/d;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic h(Lg2/b$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lg2/b$b;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic i(Lg2/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg2/b$b;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic j(Lg2/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg2/b$b;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic k(Lg2/b$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lg2/b$b;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static bridge synthetic l(Lg2/b$b;)I
    .locals 0

    .line 1
    iget p0, p0, Lg2/b$b;->a:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic m(Lg2/b$b;Lk2/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg2/b$b;->c:Lk2/k;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public n()Lg2/b;
    .locals 1

    .line 1
    new-instance v0, Lg2/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lg2/b;-><init>(Lg2/b$b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public o(Ljava/lang/String;)Lg2/b$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lg2/b$b;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public p(Ljava/io/File;)Lg2/b$b;
    .locals 0

    .line 1
    invoke-static {p1}, Lk2/l;->a(Ljava/lang/Object;)Lk2/k;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lg2/b$b;->c:Lk2/k;

    .line 6
    .line 7
    return-object p0
.end method

.method public q(J)Lg2/b$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lg2/b$b;->d:J

    .line 2
    .line 3
    return-object p0
.end method

.method public r(J)Lg2/b$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lg2/b$b;->e:J

    .line 2
    .line 3
    return-object p0
.end method

.method public s(J)Lg2/b$b;
    .locals 0

    .line 1
    iput-wide p1, p0, Lg2/b$b;->f:J

    .line 2
    .line 3
    return-object p0
.end method
