.class public Lhb/i0;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private a:Lhb/y0;

.field private b:Lhb/y0;

.field private c:Lhb/y0;

.field private d:Lhb/y0;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Lhb/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/i0;->c:Lhb/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(Ljava/lang/String;)Lhb/y0;
    .locals 2

    .line 1
    const-string v0, "oper"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lhb/i0;->f()Lhb/y0;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    const-string v0, "maint"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-virtual {p0}, Lhb/i0;->d()Lhb/y0;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    return-object p1

    .line 27
    :cond_1
    const-string v0, "diffprivacy"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p0}, Lhb/i0;->a()Lhb/y0;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_2
    const-string v0, "preins"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {p0}, Lhb/i0;->g()Lhb/y0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    return-object p1

    .line 53
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v1, "HiAnalyticsInstData.getConfig(type): wrong type: "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const-string v0, "hmsSdk"

    .line 71
    .line 72
    invoke-static {v0, p1}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    return-object p1
.end method

.method public c(Lhb/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/i0;->a:Lhb/y0;

    .line 2
    .line 3
    return-void
.end method

.method public d()Lhb/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/i0;->a:Lhb/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lhb/y0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhb/i0;->b:Lhb/y0;

    .line 2
    .line 3
    return-void
.end method

.method public f()Lhb/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/i0;->b:Lhb/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lhb/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/i0;->d:Lhb/y0;

    .line 2
    .line 3
    return-object v0
.end method
