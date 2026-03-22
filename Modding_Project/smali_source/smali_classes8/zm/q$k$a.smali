.class public final Lzm/q$k$a;
.super Ljava/lang/Object;
.source "MediaItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzm/q$k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lzm/q$k;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iget-object v0, p1, Lzm/q$k;->a:Landroid/net/Uri;

    iput-object v0, p0, Lzm/q$k$a;->a:Landroid/net/Uri;

    .line 4
    iget-object v0, p1, Lzm/q$k;->b:Ljava/lang/String;

    iput-object v0, p0, Lzm/q$k$a;->b:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lzm/q$k;->c:Ljava/lang/String;

    iput-object v0, p0, Lzm/q$k$a;->c:Ljava/lang/String;

    .line 6
    iget v0, p1, Lzm/q$k;->d:I

    iput v0, p0, Lzm/q$k$a;->d:I

    .line 7
    iget v0, p1, Lzm/q$k;->e:I

    iput v0, p0, Lzm/q$k$a;->e:I

    .line 8
    iget-object v0, p1, Lzm/q$k;->f:Ljava/lang/String;

    iput-object v0, p0, Lzm/q$k$a;->f:Ljava/lang/String;

    .line 9
    iget-object p1, p1, Lzm/q$k;->g:Ljava/lang/String;

    iput-object p1, p0, Lzm/q$k$a;->g:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lzm/q$k;Lzm/q$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lzm/q$k$a;-><init>(Lzm/q$k;)V

    return-void
.end method

.method static synthetic a(Lzm/q$k$a;)Lzm/q$j;
    .locals 0

    .line 1
    invoke-direct {p0}, Lzm/q$k$a;->i()Lzm/q$j;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic b(Lzm/q$k$a;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$k$a;->a:Landroid/net/Uri;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lzm/q$k$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$k$a;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lzm/q$k$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$k$a;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lzm/q$k$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/q$k$a;->d:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lzm/q$k$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lzm/q$k$a;->e:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lzm/q$k$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$k$a;->f:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lzm/q$k$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lzm/q$k$a;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private i()Lzm/q$j;
    .locals 2

    .line 1
    new-instance v0, Lzm/q$j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lzm/q$j;-><init>(Lzm/q$k$a;Lzm/q$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
