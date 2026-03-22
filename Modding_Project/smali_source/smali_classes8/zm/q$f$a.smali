.class public final Lzm/q$f$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/UUID;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->q()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lzm/q$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lzm/q$f$a;->e:Z

    .line 6
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lzm/q$f$a;->g:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lzm/q$f$a;-><init>()V

    return-void
.end method

.method private constructor <init>(Lzm/q$f;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-object v0, p1, Lzm/q$f;->a:Ljava/util/UUID;

    iput-object v0, p0, Lzm/q$f$a;->a:Ljava/util/UUID;

    .line 9
    iget-object v0, p1, Lzm/q$f;->c:Landroid/net/Uri;

    iput-object v0, p0, Lzm/q$f$a;->b:Landroid/net/Uri;

    .line 10
    iget-object v0, p1, Lzm/q$f;->e:Lcom/google/common/collect/ImmutableMap;

    iput-object v0, p0, Lzm/q$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    .line 11
    iget-boolean v0, p1, Lzm/q$f;->f:Z

    iput-boolean v0, p0, Lzm/q$f$a;->d:Z

    .line 12
    iget-boolean v0, p1, Lzm/q$f;->g:Z

    iput-boolean v0, p0, Lzm/q$f$a;->e:Z

    .line 13
    iget-boolean v0, p1, Lzm/q$f;->h:Z

    iput-boolean v0, p0, Lzm/q$f$a;->f:Z

    .line 14
    iget-object v0, p1, Lzm/q$f;->j:Lcom/google/common/collect/ImmutableList;

    iput-object v0, p0, Lzm/q$f$a;->g:Lcom/google/common/collect/ImmutableList;

    .line 15
    invoke-static {p1}, Lzm/q$f;->a(Lzm/q$f;)[B

    move-result-object p1

    iput-object p1, p0, Lzm/q$f$a;->h:[B

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$f;Lzm/q$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lzm/q$f$a;-><init>(Lzm/q$f;)V

    return-void
.end method

.method static synthetic a(Lzm/q$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/q$f$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lzm/q$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/q$f$a;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lzm/q$f$a;)Lcom/google/common/collect/ImmutableList;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$f$a;->g:Lcom/google/common/collect/ImmutableList;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lzm/q$f$a;)[B
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$f$a;->h:[B

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lzm/q$f$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$f$a;->b:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lzm/q$f$a;)Ljava/util/UUID;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$f$a;->a:Ljava/util/UUID;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lzm/q$f$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/q$f$a;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic h(Lzm/q$f$a;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$f$a;->c:Lcom/google/common/collect/ImmutableMap;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public i()Lzm/q$f;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$f;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$f;-><init>(Lzm/q$f$a;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
