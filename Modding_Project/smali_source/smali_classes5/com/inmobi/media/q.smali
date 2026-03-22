.class public final Lcom/inmobi/media/q;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/media/q;->a:J

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/inmobi/media/d2;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget p1, p1, Lcom/inmobi/media/d2;->a:I

    .line 9
    .line 10
    const/16 v0, 0x65

    .line 11
    .line 12
    if-eq p1, v0, :cond_2

    .line 13
    .line 14
    const/16 v0, 0x66

    .line 15
    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object p1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    invoke-interface {p1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 25
    .line 26
    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    sput-object p1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    sget-object p1, Lcom/inmobi/media/s;->f:Ljava/util/concurrent/ScheduledFuture;

    .line 32
    .line 33
    if-nez p1, :cond_3

    .line 34
    .line 35
    sget-object p1, Lcom/inmobi/media/s;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_3

    .line 42
    .line 43
    iget-wide v0, p0, Lcom/inmobi/media/q;->a:J

    .line 44
    .line 45
    invoke-static {v0, v1}, Lcom/inmobi/media/s;->a(J)V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    return-object p1
.end method
