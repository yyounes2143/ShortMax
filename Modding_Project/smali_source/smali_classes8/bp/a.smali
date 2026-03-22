.class public final Lbp/a;
.super Ljava/lang/Object;
.source "PgsParser.java"

# interfaces
.implements Lyo/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbp/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcn/b0;

.field private final b:Lcn/b0;

.field private final c:Lbp/a$a;

.field private d:Ljava/util/zip/Inflater;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


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
    iput-object v0, p0, Lbp/a;->a:Lcn/b0;

    .line 10
    .line 11
    new-instance v0, Lcn/b0;

    .line 12
    .line 13
    invoke-direct {v0}, Lcn/b0;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lbp/a;->b:Lcn/b0;

    .line 17
    .line 18
    new-instance v0, Lbp/a$a;

    .line 19
    .line 20
    invoke-direct {v0}, Lbp/a$a;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lbp/a;->c:Lbp/a$a;

    .line 24
    .line 25
    return-void
.end method

.method private static d(Lcn/b0;Lbp/a$a;)Lbn/a;
    .locals 5
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/b0;->g()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcn/b0;->H()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p0}, Lcn/b0;->P()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p0}, Lcn/b0;->f()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    add-int/2addr v3, v2

    .line 18
    const/4 v4, 0x0

    .line 19
    if-le v3, v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, v0}, Lcn/b0;->W(I)V

    .line 22
    .line 23
    .line 24
    return-object v4

    .line 25
    :cond_0
    const/16 v0, 0x80

    .line 26
    .line 27
    if-eq v1, v0, :cond_1

    .line 28
    .line 29
    packed-switch v1, :pswitch_data_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    invoke-static {p1, p0, v2}, Lbp/a$a;->c(Lbp/a$a;Lcn/b0;I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :pswitch_1
    invoke-static {p1, p0, v2}, Lbp/a$a;->b(Lbp/a$a;Lcn/b0;I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_2
    invoke-static {p1, p0, v2}, Lbp/a$a;->a(Lbp/a$a;Lcn/b0;I)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    invoke-virtual {p1}, Lbp/a$a;->d()Lbn/a;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {p1}, Lbp/a$a;->h()V

    .line 50
    .line 51
    .line 52
    :goto_0
    invoke-virtual {p0, v3}, Lcn/b0;->W(I)V

    .line 53
    .line 54
    .line 55
    return-object v4

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public a([BIILyo/r$b;Lcn/l;)V
    .locals 6
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
    iget-object p4, p0, Lbp/a;->a:Lcn/b0;

    .line 2
    .line 3
    add-int/2addr p3, p2

    .line 4
    invoke-virtual {p4, p1, p3}, Lcn/b0;->U([BI)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lbp/a;->a:Lcn/b0;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcn/b0;->W(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lbp/a;->d:Ljava/util/zip/Inflater;

    .line 13
    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    new-instance p1, Ljava/util/zip/Inflater;

    .line 17
    .line 18
    invoke-direct {p1}, Ljava/util/zip/Inflater;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lbp/a;->d:Ljava/util/zip/Inflater;

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lbp/a;->a:Lcn/b0;

    .line 24
    .line 25
    iget-object p2, p0, Lbp/a;->b:Lcn/b0;

    .line 26
    .line 27
    iget-object p3, p0, Lbp/a;->d:Ljava/util/zip/Inflater;

    .line 28
    .line 29
    invoke-static {p1, p2, p3}, Lcn/m0;->P0(Lcn/b0;Lcn/b0;Ljava/util/zip/Inflater;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lbp/a;->a:Lcn/b0;

    .line 36
    .line 37
    iget-object p2, p0, Lbp/a;->b:Lcn/b0;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcn/b0;->e()[B

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    iget-object p3, p0, Lbp/a;->b:Lcn/b0;

    .line 44
    .line 45
    invoke-virtual {p3}, Lcn/b0;->g()I

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    invoke-virtual {p1, p2, p3}, Lcn/b0;->U([BI)V

    .line 50
    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lbp/a;->c:Lbp/a$a;

    .line 53
    .line 54
    invoke-virtual {p1}, Lbp/a$a;->h()V

    .line 55
    .line 56
    .line 57
    new-instance v1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    :cond_2
    :goto_0
    iget-object p1, p0, Lbp/a;->a:Lcn/b0;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcn/b0;->a()I

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    const/4 p2, 0x3

    .line 69
    if-lt p1, p2, :cond_3

    .line 70
    .line 71
    iget-object p1, p0, Lbp/a;->a:Lcn/b0;

    .line 72
    .line 73
    iget-object p2, p0, Lbp/a;->c:Lbp/a$a;

    .line 74
    .line 75
    invoke-static {p1, p2}, Lbp/a;->d(Lcn/b0;Lbp/a$a;)Lbn/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_3
    new-instance p1, Lyo/e;

    .line 86
    .line 87
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    move-object v0, p1

    .line 98
    invoke-direct/range {v0 .. v5}, Lyo/e;-><init>(Ljava/util/List;JJ)V

    .line 99
    .line 100
    .line 101
    invoke-interface {p5, p1}, Lcn/l;->accept(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    return v0
.end method
