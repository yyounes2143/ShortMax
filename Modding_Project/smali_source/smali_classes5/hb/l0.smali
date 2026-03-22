.class public Lhb/l0;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhb/l0$a;
    }
.end annotation


# static fields
.field private static b:Lhb/l0;


# instance fields
.field private a:Lhb/l0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lhb/l0;

    .line 2
    .line 3
    invoke-direct {v0}, Lhb/l0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhb/l0;->b:Lhb/l0;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhb/l0$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lhb/l0$a;-><init>(Lhb/l0;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 10
    .line 11
    return-void
.end method

.method static synthetic a(Lhb/l0;)Lhb/l0$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 2
    .line 3
    return-object p0
.end method

.method public static f()Lhb/l0;
    .locals 1

    .line 1
    sget-object v0, Lhb/l0;->b:Lhb/l0;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 2
    .line 3
    iget-object v0, v0, Lhb/l0$a;->b:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lhb/l0;->d()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-static {p1, p2}, Lhb/g1;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    goto :goto_2

    .line 18
    :cond_0
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long p2, v0, v2

    .line 21
    .line 22
    const/16 v2, 0x10

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 27
    .line 28
    .line 29
    move-result-wide v0

    .line 30
    :goto_0
    invoke-static {v2}, Lmb/a;->d(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p2

    .line 34
    invoke-static {p1, p2}, Lhb/v;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    iget-object v2, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 39
    .line 40
    invoke-virtual {v2, v0, v1}, Lhb/l0$a;->a(J)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 44
    .line 45
    invoke-virtual {v0, p2}, Lhb/l0$a;->c(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 49
    .line 50
    invoke-virtual {p2, p1}, Lhb/l0$a;->b(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 55
    .line 56
    .line 57
    move-result-wide v3

    .line 58
    sub-long/2addr v3, v0

    .line 59
    const-wide/32 v5, 0x2932e00

    .line 60
    .line 61
    .line 62
    cmp-long p2, v3, v5

    .line 63
    .line 64
    if-lez p2, :cond_2

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    :goto_1
    return-void

    .line 68
    :cond_3
    :goto_2
    const-string p1, "WorkKeyHandler"

    .line 69
    .line 70
    const-string p2, "get rsa pubkey config error"

    .line 71
    .line 72
    invoke-static {p1, p2}, Lhb/f1;->l(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public d()J
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 2
    .line 3
    iget-wide v0, v0, Lhb/l0$a;->c:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/l0;->a:Lhb/l0$a;

    .line 2
    .line 3
    iget-object v0, v0, Lhb/l0$a;->a:Ljava/lang/String;

    .line 4
    .line 5
    return-object v0
.end method
