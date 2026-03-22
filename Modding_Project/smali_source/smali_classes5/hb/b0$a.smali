.class Lhb/b0$a;
.super Lhb/m;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhb/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhb/m;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/m1;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lkb/b;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/m1;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/m1;->j(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public h()I
    .locals 4

    .line 1
    iget-object v0, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v1, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lhb/m1;->k(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    iget-object v2, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 16
    .line 17
    iget-object v3, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v2, v3}, Lhb/m1;->e(Ljava/lang/String;Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    const/4 v1, 0x2

    .line 26
    :cond_1
    or-int/2addr v0, v1

    .line 27
    iget-object v1, p0, Lhb/b0$a;->a:Ljava/lang/String;

    .line 28
    .line 29
    iget-object v2, p0, Lhb/b0$a;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {v1, v2}, Lhb/m1;->h(Ljava/lang/String;Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    or-int/2addr v0, v1

    .line 36
    return v0
.end method
