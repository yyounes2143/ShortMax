.class public final Lcom/inmobi/media/r1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final a:Lcom/inmobi/media/r1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/r1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/r1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/media/r1;->a:Lcom/inmobi/media/r1;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/inmobi/media/d2;

    .line 2
    .line 3
    const-string v0, "event"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v0, p1, Lcom/inmobi/media/d2;->a:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    const-string v2, "access$getTAG$p(...)"

    .line 12
    .line 13
    const-string v3, "t1"

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    const/4 v1, 0x2

    .line 18
    if-eq v0, v1, :cond_2

    .line 19
    .line 20
    const/16 v1, 0xa

    .line 21
    .line 22
    if-eq v0, v1, :cond_0

    .line 23
    .line 24
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 25
    .line 26
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const-string v0, "available"

    .line 31
    .line 32
    iget-object p1, p1, Lcom/inmobi/media/d2;->b:Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    .line 40
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 41
    .line 42
    sget-object v0, Lcom/inmobi/media/t1;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-nez v0, :cond_3

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/inmobi/media/t1;->c()V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    invoke-static {}, Lcom/inmobi/media/t1;->d()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    sget-object p1, Lcom/inmobi/media/t1;->a:Lcom/inmobi/media/t1;

    .line 59
    .line 60
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    sget-object p1, Lcom/inmobi/media/t1;->m:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    .line 68
    .line 69
    :cond_3
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 70
    .line 71
    return-object p1
.end method
