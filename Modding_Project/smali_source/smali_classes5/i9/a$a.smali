.class final Li9/a$a;
.super Ljava/lang/Object;
.source "AutoRolloutAssignmentEncoder.java"

# interfaces
.implements Lp8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li9/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp8/c<",
        "Li9/d;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Li9/a$a;

.field private static final b:Lp8/b;

.field private static final c:Lp8/b;

.field private static final d:Lp8/b;

.field private static final e:Lp8/b;

.field private static final f:Lp8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Li9/a$a;

    .line 2
    .line 3
    invoke-direct {v0}, Li9/a$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Li9/a$a;->a:Li9/a$a;

    .line 7
    .line 8
    const-string v0, "rolloutId"

    .line 9
    .line 10
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Li9/a$a;->b:Lp8/b;

    .line 15
    .line 16
    const-string v0, "variantId"

    .line 17
    .line 18
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Li9/a$a;->c:Lp8/b;

    .line 23
    .line 24
    const-string v0, "parameterKey"

    .line 25
    .line 26
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Li9/a$a;->d:Lp8/b;

    .line 31
    .line 32
    const-string v0, "parameterValue"

    .line 33
    .line 34
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Li9/a$a;->e:Lp8/b;

    .line 39
    .line 40
    const-string v0, "templateVersion"

    .line 41
    .line 42
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Li9/a$a;->f:Lp8/b;

    .line 47
    .line 48
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Li9/d;

    .line 2
    .line 3
    check-cast p2, Lp8/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Li9/a$a;->b(Li9/d;Lp8/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Li9/d;Lp8/d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Li9/a$a;->b:Lp8/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Li9/d;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 8
    .line 9
    .line 10
    sget-object v0, Li9/a$a;->c:Lp8/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Li9/d;->f()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 17
    .line 18
    .line 19
    sget-object v0, Li9/a$a;->d:Lp8/b;

    .line 20
    .line 21
    invoke-virtual {p1}, Li9/d;->b()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 26
    .line 27
    .line 28
    sget-object v0, Li9/a$a;->e:Lp8/b;

    .line 29
    .line 30
    invoke-virtual {p1}, Li9/d;->c()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 35
    .line 36
    .line 37
    sget-object v0, Li9/a$a;->f:Lp8/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Li9/d;->e()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-interface {p2, v0, v1, v2}, Lp8/d;->b(Lp8/b;J)Lp8/d;

    .line 44
    .line 45
    .line 46
    return-void
.end method
