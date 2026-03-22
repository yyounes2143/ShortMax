.class Lio/bidmachine/iab/vast/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/iab/vast/a;->n(Lqm/a;Ltm/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lqm/a;

.field final synthetic b:Ltm/e;

.field final synthetic c:Lio/bidmachine/iab/vast/a;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/a;Lqm/a;Ltm/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/iab/vast/a$f;->a:Lqm/a;

    .line 4
    .line 5
    iput-object p3, p0, Lio/bidmachine/iab/vast/a$f;->b:Ltm/e;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/vast/a;->r(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 10
    .line 11
    invoke-static {v0}, Lio/bidmachine/iab/vast/a;->r(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/measurer/VastAdMeasurer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$f;->a:Lqm/a;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lio/bidmachine/iab/measurer/AdMeasurer;->c(Lqm/a;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->b:Ltm/e;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 25
    .line 26
    invoke-static {v0}, Lio/bidmachine/iab/vast/a;->t(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/CacheControl;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sget-object v1, Lio/bidmachine/iab/CacheControl;->PartialLoad:Lio/bidmachine/iab/CacheControl;

    .line 31
    .line 32
    if-ne v0, v1, :cond_1

    .line 33
    .line 34
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 35
    .line 36
    invoke-static {v0}, Lio/bidmachine/iab/vast/a;->w(Lio/bidmachine/iab/vast/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 47
    .line 48
    invoke-static {v0}, Lio/bidmachine/iab/vast/a;->y(Lio/bidmachine/iab/vast/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    .line 58
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->b:Ltm/e;

    .line 59
    .line 60
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 61
    .line 62
    invoke-static {v1}, Lio/bidmachine/iab/vast/a;->t(Lio/bidmachine/iab/vast/a;)Lio/bidmachine/iab/CacheControl;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    iget-object v3, p0, Lio/bidmachine/iab/vast/a$f;->a:Lqm/a;

    .line 67
    .line 68
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const-string v3, "%s load failed after display - %s"

    .line 73
    .line 74
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2}, Lqm/a;->b(Ljava/lang/String;)Lqm/a;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-interface {v0, v1, v2}, Ltm/e;->a(Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/a$f;->b:Ltm/e;

    .line 87
    .line 88
    iget-object v1, p0, Lio/bidmachine/iab/vast/a$f;->c:Lio/bidmachine/iab/vast/a;

    .line 89
    .line 90
    iget-object v2, p0, Lio/bidmachine/iab/vast/a$f;->a:Lqm/a;

    .line 91
    .line 92
    invoke-interface {v0, v1, v2}, Ltm/e;->a(Lio/bidmachine/iab/vast/a;Lqm/a;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    :goto_0
    return-void
.end method
