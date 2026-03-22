.class public final Lhp/g;
.super Ljava/lang/Object;
.source "WebvttParser.java"

# interfaces
.implements Lyo/r;


# instance fields
.field private final a:Lcn/b0;

.field private final b:Lhp/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcn/b0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcn/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhp/g;->a:Lcn/b0;

    .line 10
    .line 11
    new-instance v0, Lhp/b;

    .line 12
    .line 13
    invoke-direct {v0}, Lhp/b;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lhp/g;->b:Lhp/b;

    .line 17
    .line 18
    return-void
.end method

.method private static d(Lcn/b0;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v0

    .line 4
    move v3, v1

    .line 5
    :goto_0
    if-ne v2, v0, :cond_3

    .line 6
    .line 7
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p0}, Lcn/b0;->s()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move v2, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v4, "STYLE"

    .line 20
    .line 21
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    if-eqz v4, :cond_1

    .line 26
    .line 27
    const/4 v2, 0x2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v4, "NOTE"

    .line 30
    .line 31
    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    const/4 v2, 0x3

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    invoke-virtual {p0, v3}, Lcn/b0;->W(I)V

    .line 42
    .line 43
    .line 44
    return v2
.end method

.method private static e(Lcn/b0;)V
    .locals 1

    .line 1
    :goto_0
    invoke-virtual {p0}, Lcn/b0;->s()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    return-void
.end method


# virtual methods
.method public a([BIILyo/r$b;Lcn/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lyo/r$b;",
            "Lcn/l<",
            "Lyo/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhp/g;->a:Lcn/b0;

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    invoke-virtual {v0, p1, p3}, Lcn/b0;->U([BI)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lhp/g;->a:Lcn/b0;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcn/b0;->W(I)V

    .line 10
    .line 11
    .line 12
    new-instance p1, Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    .line 16
    .line 17
    :try_start_0
    iget-object p2, p0, Lhp/g;->a:Lcn/b0;

    .line 18
    .line 19
    invoke-static {p2}, Lhp/h;->e(Lcn/b0;)V
    :try_end_0
    .catch Lio/bidmachine/media3/common/ParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    :goto_0
    iget-object p2, p0, Lhp/g;->a:Lcn/b0;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcn/b0;->s()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    if-nez p2, :cond_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance p2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_1
    :goto_1
    iget-object p3, p0, Lhp/g;->a:Lcn/b0;

    .line 41
    .line 42
    invoke-static {p3}, Lhp/g;->d(Lcn/b0;)I

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-eqz p3, :cond_5

    .line 47
    .line 48
    const/4 v0, 0x1

    .line 49
    if-ne p3, v0, :cond_2

    .line 50
    .line 51
    iget-object p3, p0, Lhp/g;->a:Lcn/b0;

    .line 52
    .line 53
    invoke-static {p3}, Lhp/g;->e(Lcn/b0;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v0, 0x2

    .line 58
    if-ne p3, v0, :cond_4

    .line 59
    .line 60
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result p3

    .line 64
    if-eqz p3, :cond_3

    .line 65
    .line 66
    iget-object p3, p0, Lhp/g;->a:Lcn/b0;

    .line 67
    .line 68
    invoke-virtual {p3}, Lcn/b0;->s()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    iget-object p3, p0, Lhp/g;->b:Lhp/b;

    .line 72
    .line 73
    iget-object v0, p0, Lhp/g;->a:Lcn/b0;

    .line 74
    .line 75
    invoke-virtual {p3, v0}, Lhp/b;->d(Lcn/b0;)Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 80
    .line 81
    .line 82
    goto :goto_1

    .line 83
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p2, "A style block was found after the first cue."

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1

    .line 91
    :cond_4
    const/4 v0, 0x3

    .line 92
    if-ne p3, v0, :cond_1

    .line 93
    .line 94
    iget-object p3, p0, Lhp/g;->a:Lcn/b0;

    .line 95
    .line 96
    invoke-static {p3, p1}, Lhp/e;->n(Lcn/b0;Ljava/util/List;)Lhp/d;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    if-eqz p3, :cond_1

    .line 101
    .line 102
    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_5
    new-instance p1, Lhp/j;

    .line 107
    .line 108
    invoke-direct {p1, p2}, Lhp/j;-><init>(Ljava/util/List;)V

    .line 109
    .line 110
    .line 111
    invoke-static {p1, p4, p5}, Lyo/i;->c(Lyo/k;Lyo/r$b;Lcn/l;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :catch_0
    move-exception p1

    .line 116
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 117
    .line 118
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    .line 119
    .line 120
    .line 121
    throw p2
.end method

.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method
