.class public Llc/b;
.super Ljava/lang/Object;
.source "LogConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llc/b$b;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z


# direct methods
.method private constructor <init>(Llc/b$b;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Llc/b;->a:Ljava/lang/String;

    const/16 v0, 0x64

    .line 4
    iput v0, p0, Llc/b;->c:I

    const/4 v0, 0x2

    .line 5
    iput v0, p0, Llc/b;->d:I

    const v1, 0x93a80

    .line 6
    iput v1, p0, Llc/b;->e:I

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Llc/b;->f:Z

    .line 8
    iput-boolean v1, p0, Llc/b;->g:Z

    .line 9
    iput v0, p0, Llc/b;->h:I

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Llc/b;->i:Z

    .line 11
    invoke-static {p1}, Llc/b$b;->a(Llc/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/b;->a:Ljava/lang/String;

    .line 12
    invoke-static {p1}, Llc/b$b;->b(Llc/b$b;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llc/b;->b:Ljava/lang/String;

    .line 13
    invoke-static {p1}, Llc/b$b;->c(Llc/b$b;)I

    move-result v0

    iput v0, p0, Llc/b;->c:I

    .line 14
    invoke-static {p1}, Llc/b$b;->d(Llc/b$b;)I

    move-result v0

    iput v0, p0, Llc/b;->d:I

    .line 15
    iget v0, p1, Llc/b$b;->f:I

    iput v0, p0, Llc/b;->e:I

    .line 16
    invoke-static {p1}, Llc/b$b;->e(Llc/b$b;)Z

    move-result v0

    iput-boolean v0, p0, Llc/b;->f:Z

    .line 17
    invoke-static {p1}, Llc/b$b;->f(Llc/b$b;)Z

    move-result v0

    iput-boolean v0, p0, Llc/b;->g:Z

    .line 18
    invoke-static {p1}, Llc/b$b;->g(Llc/b$b;)I

    move-result v0

    iput v0, p0, Llc/b;->h:I

    .line 19
    invoke-static {p1}, Llc/b$b;->h(Llc/b$b;)Z

    move-result p1

    iput-boolean p1, p0, Llc/b;->i:Z

    return-void
.end method

.method synthetic constructor <init>(Llc/b$b;Llc/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Llc/b;-><init>(Llc/b$b;)V

    return-void
.end method
