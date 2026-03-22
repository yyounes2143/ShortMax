.class public final Lcom/inmobi/media/v1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/w1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/w1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/v1;->a:Lcom/inmobi/media/w1;

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
    check-cast p1, Lcom/inmobi/media/P9;

    .line 2
    .line 3
    const-string v0, "response"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/inmobi/media/P9;->b()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    const-string v0, "access$getTAG$p(...)"

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/inmobi/media/v1;->a:Lcom/inmobi/media/w1;

    .line 17
    .line 18
    iget-object p1, p1, Lcom/inmobi/media/w1;->a:Lcom/inmobi/media/s6;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/inmobi/media/s6;->a:Lcom/inmobi/media/v6;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/inmobi/media/v6;->c:Lcom/inmobi/media/z5;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    sget-object v1, Lcom/inmobi/media/w6;->a:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    check-cast p1, Lcom/inmobi/media/A5;

    .line 32
    .line 33
    const-string v0, "asyncPing Failed"

    .line 34
    .line 35
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/v1;->a:Lcom/inmobi/media/w1;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/inmobi/media/w1;->a:Lcom/inmobi/media/s6;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/inmobi/media/s6;->a:Lcom/inmobi/media/v6;

    .line 44
    .line 45
    iget-object p1, p1, Lcom/inmobi/media/v6;->c:Lcom/inmobi/media/z5;

    .line 46
    .line 47
    if-eqz p1, :cond_1

    .line 48
    .line 49
    sget-object v1, Lcom/inmobi/media/w6;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    check-cast p1, Lcom/inmobi/media/A5;

    .line 55
    .line 56
    const-string v0, "asyncPing Successful"

    .line 57
    .line 58
    invoke-virtual {p1, v1, v0}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p1
.end method
