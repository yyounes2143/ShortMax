.class final Le8/a$n;
.super Ljava/lang/Object;
.source "AutoCrashlyticsReportEncoder.java"

# interfaces
.implements Lp8/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "n"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp8/c<",
        "Le8/f0$e$d$a$b$c;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Le8/a$n;

.field private static final b:Lp8/b;

.field private static final c:Lp8/b;

.field private static final d:Lp8/b;

.field private static final e:Lp8/b;

.field private static final f:Lp8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le8/a$n;

    .line 2
    .line 3
    invoke-direct {v0}, Le8/a$n;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le8/a$n;->a:Le8/a$n;

    .line 7
    .line 8
    const-string v0, "type"

    .line 9
    .line 10
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Le8/a$n;->b:Lp8/b;

    .line 15
    .line 16
    const-string v0, "reason"

    .line 17
    .line 18
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Le8/a$n;->c:Lp8/b;

    .line 23
    .line 24
    const-string v0, "frames"

    .line 25
    .line 26
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Le8/a$n;->d:Lp8/b;

    .line 31
    .line 32
    const-string v0, "causedBy"

    .line 33
    .line 34
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Le8/a$n;->e:Lp8/b;

    .line 39
    .line 40
    const-string v0, "overflowCount"

    .line 41
    .line 42
    invoke-static {v0}, Lp8/b;->d(Ljava/lang/String;)Lp8/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Le8/a$n;->f:Lp8/b;

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
    check-cast p1, Le8/f0$e$d$a$b$c;

    .line 2
    .line 3
    check-cast p2, Lp8/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Le8/a$n;->b(Le8/f0$e$d$a$b$c;Lp8/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Le8/f0$e$d$a$b$c;Lp8/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le8/a$n;->b:Lp8/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Le8/f0$e$d$a$b$c;->f()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 8
    .line 9
    .line 10
    sget-object v0, Le8/a$n;->c:Lp8/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Le8/f0$e$d$a$b$c;->e()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 17
    .line 18
    .line 19
    sget-object v0, Le8/a$n;->d:Lp8/b;

    .line 20
    .line 21
    invoke-virtual {p1}, Le8/f0$e$d$a$b$c;->c()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 26
    .line 27
    .line 28
    sget-object v0, Le8/a$n;->e:Lp8/b;

    .line 29
    .line 30
    invoke-virtual {p1}, Le8/f0$e$d$a$b$c;->b()Le8/f0$e$d$a$b$c;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 35
    .line 36
    .line 37
    sget-object v0, Le8/a$n;->f:Lp8/b;

    .line 38
    .line 39
    invoke-virtual {p1}, Le8/f0$e$d$a$b$c;->d()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    invoke-interface {p2, v0, p1}, Lp8/d;->d(Lp8/b;I)Lp8/d;

    .line 44
    .line 45
    .line 46
    return-void
.end method
