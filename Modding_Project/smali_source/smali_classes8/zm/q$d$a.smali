.class public final Lzm/q$d$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 3
    iput-wide v0, p0, Lzm/q$d$a;->b:J

    return-void
.end method

.method private constructor <init>(Lzm/q$d;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-wide v0, p1, Lzm/q$d;->b:J

    iput-wide v0, p0, Lzm/q$d$a;->a:J

    .line 6
    iget-wide v0, p1, Lzm/q$d;->d:J

    iput-wide v0, p0, Lzm/q$d$a;->b:J

    .line 7
    iget-boolean v0, p1, Lzm/q$d;->e:Z

    iput-boolean v0, p0, Lzm/q$d$a;->c:Z

    .line 8
    iget-boolean v0, p1, Lzm/q$d;->f:Z

    iput-boolean v0, p0, Lzm/q$d$a;->d:Z

    .line 9
    iget-boolean p1, p1, Lzm/q$d;->g:Z

    iput-boolean p1, p0, Lzm/q$d$a;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$d;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/q$d$a;-><init>(Lzm/q$d;)V

    return-void
.end method

.method static synthetic a(Lzm/q$d$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzm/q$d$a;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic b(Lzm/q$d$a;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lzm/q$d$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic c(Lzm/q$d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/q$d$a;->c:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lzm/q$d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/q$d$a;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic e(Lzm/q$d$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lzm/q$d$a;->e:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public f()Lzm/q$d;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$d;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$d;-><init>(Lzm/q$d$a;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public g()Lzm/q$e;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lzm/q$e;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$e;-><init>(Lzm/q$d$a;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
