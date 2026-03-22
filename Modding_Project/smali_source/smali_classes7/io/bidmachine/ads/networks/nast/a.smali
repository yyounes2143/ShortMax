.class Lio/bidmachine/ads/networks/nast/a;
.super Lxq/l;
.source "NastNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ads/networks/nast/a$b;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lxq/l;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lio/bidmachine/ContextProvider;Lxq/c;Lxq/d;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    check-cast p2, Lxq/m;

    .line 2
    .line 3
    check-cast p3, Lxq/n;

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/ads/networks/nast/a;->i(Lio/bidmachine/ContextProvider;Lxq/m;Lxq/n;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public i(Lio/bidmachine/ContextProvider;Lxq/m;Lxq/n;Lxq/k;Lio/bidmachine/NetworkAdUnit;)V
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/m;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lxq/n;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lxq/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/NetworkAdUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance p1, Lio/bidmachine/ads/networks/nast/b;

    .line 2
    .line 3
    invoke-direct {p1, p4}, Lio/bidmachine/ads/networks/nast/b;-><init>(Lxq/k;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3, p2}, Lio/bidmachine/ads/networks/nast/b;->d(Lxq/n;Lxq/c;)Z

    .line 7
    .line 8
    .line 9
    move-result p3

    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sget-object p3, Lio/bidmachine/core/VisibilitySource;->BidMachine:Lio/bidmachine/core/VisibilitySource;

    .line 14
    .line 15
    invoke-interface {p2, p3}, Lxq/c;->setVisibilitySource(Lio/bidmachine/core/VisibilitySource;)V

    .line 16
    .line 17
    .line 18
    new-instance p3, Lio/bidmachine/ads/networks/nast/a$b;

    .line 19
    .line 20
    const/4 p4, 0x0

    .line 21
    invoke-direct {p3, p4}, Lio/bidmachine/ads/networks/nast/a$b;-><init>(Lio/bidmachine/ads/networks/nast/a$a;)V

    .line 22
    .line 23
    .line 24
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->b:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {p3, p4}, Lmp/i;->y(Ljava/lang/String;)Lmp/i;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->c:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p3, p4}, Lmp/i;->s(Ljava/lang/String;)Lmp/i;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->d:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p3, p4}, Lmp/i;->q(Ljava/lang/String;)Lmp/i;

    .line 39
    .line 40
    .line 41
    move-result-object p3

    .line 42
    new-instance p4, Lio/bidmachine/ImageDataImpl;

    .line 43
    .line 44
    iget-object p5, p1, Lio/bidmachine/ads/networks/nast/b;->f:Ljava/lang/String;

    .line 45
    .line 46
    invoke-direct {p4, p5}, Lio/bidmachine/ImageDataImpl;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, p4}, Lmp/i;->t(Lio/bidmachine/ImageData;)Lmp/i;

    .line 50
    .line 51
    .line 52
    move-result-object p3

    .line 53
    new-instance p4, Lio/bidmachine/ImageDataImpl;

    .line 54
    .line 55
    iget-object p5, p1, Lio/bidmachine/ads/networks/nast/b;->g:Ljava/lang/String;

    .line 56
    .line 57
    invoke-direct {p4, p5}, Lio/bidmachine/ImageDataImpl;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p3, p4}, Lmp/i;->u(Lio/bidmachine/ImageData;)Lmp/i;

    .line 61
    .line 62
    .line 63
    move-result-object p3

    .line 64
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->h:Ljava/lang/String;

    .line 65
    .line 66
    invoke-virtual {p3, p4}, Lmp/i;->A(Ljava/lang/String;)Lmp/i;

    .line 67
    .line 68
    .line 69
    move-result-object p3

    .line 70
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->i:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p3, p4}, Lmp/i;->z(Ljava/lang/String;)Lmp/i;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->j:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {p3, p4}, Lmp/i;->r(Ljava/lang/String;)Lmp/i;

    .line 79
    .line 80
    .line 81
    move-result-object p3

    .line 82
    const/4 p4, 0x0

    .line 83
    invoke-virtual {p3, p4}, Lmp/i;->v(Z)Lmp/i;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->k:Lio/bidmachine/LabelData;

    .line 88
    .line 89
    invoke-virtual {p3, p4}, Lmp/i;->p(Lio/bidmachine/LabelData;)Lmp/i;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    iget-object p4, p1, Lio/bidmachine/ads/networks/nast/b;->l:Lio/bidmachine/PrivacySheetData;

    .line 94
    .line 95
    invoke-virtual {p3, p4}, Lmp/i;->w(Lio/bidmachine/PrivacySheetData;)Lmp/i;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    iget-object p1, p1, Lio/bidmachine/ads/networks/nast/b;->e:Ljava/lang/Float;

    .line 100
    .line 101
    if-eqz p1, :cond_1

    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 104
    .line 105
    .line 106
    move-result p1

    .line 107
    invoke-virtual {p3, p1}, Lmp/i;->x(F)Lmp/i;

    .line 108
    .line 109
    .line 110
    :cond_1
    invoke-interface {p2, p3}, Lxq/m;->a(Lmp/i;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method
