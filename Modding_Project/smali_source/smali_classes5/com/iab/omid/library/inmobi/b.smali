.class public Lcom/iab/omid/library/inmobi/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 1

    .line 1
    const-string v0, "Application Context cannot be null"

    invoke-static {p1, v0}, Lcom/iab/omid/library/inmobi/utils/g;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "1.5.5-Inmobi"

    return-object v0
.end method

.method a(Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1}, Lcom/iab/omid/library/inmobi/b;->b(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/iab/omid/library/inmobi/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/iab/omid/library/inmobi/b;->a(Z)V

    invoke-static {}, Lcom/iab/omid/library/inmobi/internal/i;->c()Lcom/iab/omid/library/inmobi/internal/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/internal/i;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/inmobi/internal/b;->g()Lcom/iab/omid/library/inmobi/internal/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/internal/d;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/inmobi/utils/a;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/inmobi/utils/c;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/iab/omid/library/inmobi/utils/e;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/inmobi/internal/g;->b()Lcom/iab/omid/library/inmobi/internal/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/internal/g;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/inmobi/internal/a;->a()Lcom/iab/omid/library/inmobi/internal/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/internal/a;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/iab/omid/library/inmobi/internal/j;->b()Lcom/iab/omid/library/inmobi/internal/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/iab/omid/library/inmobi/internal/j;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/iab/omid/library/inmobi/b;->a:Z

    return-void
.end method

.method b()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/iab/omid/library/inmobi/b;->a:Z

    return v0
.end method

.method c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/iab/omid/library/inmobi/utils/g;->a()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/iab/omid/library/inmobi/internal/a;->a()Lcom/iab/omid/library/inmobi/internal/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/iab/omid/library/inmobi/internal/a;->d()V

    .line 9
    .line 10
    .line 11
    return-void
.end method
