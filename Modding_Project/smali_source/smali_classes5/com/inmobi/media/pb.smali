.class public final Lcom/inmobi/media/pb;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ub;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ub;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/ub;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/inmobi/media/eb;

    .line 2
    .line 3
    const-string v0, "data"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/ub;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/inmobi/media/ub;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/ub;

    .line 17
    .line 18
    iget v2, v1, Lcom/inmobi/media/ub;->e:I

    .line 19
    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget v0, p1, Lcom/inmobi/media/eb;->a:I

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iget v0, p1, Lcom/inmobi/media/eb;->b:I

    .line 29
    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    new-instance p1, Lcom/inmobi/media/gb;

    .line 33
    .line 34
    const/16 v0, 0x8ba

    .line 35
    .line 36
    invoke-direct {p1, v0}, Lcom/inmobi/media/gb;-><init>(S)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p1, v2}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v1, "No of In-App Purchases: "

    .line 46
    .line 47
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget v1, p1, Lcom/inmobi/media/eb;->a:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, "\n                                    | and No of Subscriptions: "

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget v1, p1, Lcom/inmobi/media/eb;->b:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const/4 v1, 0x1

    .line 70
    invoke-static {v0, v2, v1, v2}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/inmobi/media/pb;->a:Lcom/inmobi/media/ub;

    .line 74
    .line 75
    sget-object v1, Lcom/inmobi/media/hb;->a:Lcom/inmobi/media/hb;

    .line 76
    .line 77
    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V

    .line 78
    .line 79
    .line 80
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    return-object p1
.end method
