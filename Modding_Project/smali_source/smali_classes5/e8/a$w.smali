.class final Le8/a$w;
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
    name = "w"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp8/c<",
        "Le8/f0$e$d$e$b;",
        ">;"
    }
.end annotation


# static fields
.field static final a:Le8/a$w;

.field private static final b:Lp8/b;

.field private static final c:Lp8/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le8/a$w;

    .line 2
    .line 3
    invoke-direct {v0}, Le8/a$w;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Le8/a$w;->a:Le8/a$w;

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
    sput-object v0, Le8/a$w;->b:Lp8/b;

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
    sput-object v0, Le8/a$w;->c:Lp8/b;

    .line 23
    .line 24
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
    check-cast p1, Le8/f0$e$d$e$b;

    .line 2
    .line 3
    check-cast p2, Lp8/d;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Le8/a$w;->b(Le8/f0$e$d$e$b;Lp8/d;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Le8/f0$e$d$e$b;Lp8/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le8/a$w;->b:Lp8/b;

    .line 2
    .line 3
    invoke-virtual {p1}, Le8/f0$e$d$e$b;->b()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 8
    .line 9
    .line 10
    sget-object v0, Le8/a$w;->c:Lp8/b;

    .line 11
    .line 12
    invoke-virtual {p1}, Le8/f0$e$d$e$b;->c()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-interface {p2, v0, p1}, Lp8/d;->f(Lp8/b;Ljava/lang/Object;)Lp8/d;

    .line 17
    .line 18
    .line 19
    return-void
.end method
