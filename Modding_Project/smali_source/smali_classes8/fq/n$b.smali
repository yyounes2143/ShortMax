.class Lfq/n$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfq/r;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfq/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lfq/n;


# direct methods
.method constructor <init>(Lfq/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lfq/n$b;->a:Lfq/n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lfq/q;Lrq/t;)V
    .locals 4
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lfq/n$b;->a:Lfq/n;

    .line 2
    .line 3
    invoke-static {v0}, Lfq/n;->i(Lfq/n;)Lsq/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "onAdPhaseFailToLoad (%s) - %s"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lfq/n$b;->a:Lfq/n;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Lfq/n;->F(Lfq/q;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lfq/n$b;->a:Lfq/n;

    .line 22
    .line 23
    invoke-virtual {v0}, Lfq/n;->I()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Lfq/n$b;->a:Lfq/n;

    .line 30
    .line 31
    invoke-static {v0}, Lfq/n;->p(Lfq/n;)Lio/bidmachine/rendering/internal/state/a;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-interface {v0}, Lio/bidmachine/rendering/internal/state/a;->d()Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lfq/n$b;->a:Lfq/n;

    .line 42
    .line 43
    new-instance v1, Lrq/t;

    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "Fail to load after show (CacheType - "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lfq/n$b;->a:Lfq/n;

    .line 56
    .line 57
    invoke-virtual {v3}, Lfq/n;->B()Lio/bidmachine/rendering/model/CacheType;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v3, ") - "

    .line 65
    .line 66
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p2

    .line 76
    invoke-direct {v1, p2}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, p1, v1}, Lfq/n;->r(Lfq/q;Lrq/t;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    iget-object p1, p0, Lfq/n$b;->a:Lfq/n;

    .line 84
    .line 85
    invoke-virtual {p1}, Lfq/n;->L()V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object p1, p0, Lfq/n$b;->a:Lfq/n;

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Lfq/n;->o(Lrq/t;)Z

    .line 92
    .line 93
    .line 94
    :goto_0
    return-void
.end method

.method public d(Lfq/q;)V
    .locals 2
    .param p1    # Lfq/q;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lfq/n$b;->a:Lfq/n;

    .line 2
    .line 3
    invoke-static {v0}, Lfq/n;->i(Lfq/n;)Lsq/h;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v1, "onAdPhaseLoaded (%s)"

    .line 12
    .line 13
    invoke-static {v0, v1, p1}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lfq/n$b;->a:Lfq/n;

    .line 17
    .line 18
    invoke-virtual {p1}, Lfq/n;->H()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    iget-object p1, p0, Lfq/n$b;->a:Lfq/n;

    .line 26
    .line 27
    invoke-virtual {p1}, Lfq/n;->R()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lfq/n$b;->a:Lfq/n;

    .line 31
    .line 32
    invoke-virtual {p1}, Lfq/n;->M()Z

    .line 33
    .line 34
    .line 35
    return-void
.end method
