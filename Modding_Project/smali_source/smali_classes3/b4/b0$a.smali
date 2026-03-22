.class public final Lb4/b0$a;
.super Ljava/lang/Object;
.source "PoolConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb4/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Lb4/e0;

.field private b:Lb4/f0;

.field private c:Lb4/e0;

.field private d:Ln2/c;

.field private e:Lb4/e0;

.field private f:Lb4/f0;

.field private g:Lb4/e0;

.field private h:Lb4/f0;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:Z

.field public m:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lb4/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb4/b0$a;-><init>()V

    return-void
.end method

.method static bridge synthetic a(Lb4/b0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb4/b0$a;->k:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic b(Lb4/b0$a;)I
    .locals 0

    .line 1
    iget p0, p0, Lb4/b0$a;->j:I

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic c(Lb4/b0$a;)Lb4/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->a:Lb4/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic d(Lb4/b0$a;)Lb4/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->b:Lb4/f0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic e(Lb4/b0$a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic f(Lb4/b0$a;)Lb4/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->c:Lb4/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic g(Lb4/b0$a;)Lb4/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->e:Lb4/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic h(Lb4/b0$a;)Lb4/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->f:Lb4/f0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic i(Lb4/b0$a;)Ln2/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->d:Ln2/c;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic j(Lb4/b0$a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb4/b0$a;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static bridge synthetic k(Lb4/b0$a;)Lb4/e0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->g:Lb4/e0;

    .line 2
    .line 3
    return-object p0
.end method

.method static bridge synthetic l(Lb4/b0$a;)Lb4/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lb4/b0$a;->h:Lb4/f0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public m()Lb4/b0;
    .locals 2

    .line 1
    new-instance v0, Lb4/b0;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lb4/b0;-><init>(Lb4/b0$a;Lb4/c0;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
