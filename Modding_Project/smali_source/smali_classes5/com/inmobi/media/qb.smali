.class public final Lcom/inmobi/media/qb;
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
    iput-object p1, p0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/ub;

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
    check-cast p1, Lcom/inmobi/media/nb;

    .line 2
    .line 3
    const-string v0, "result"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    instance-of v0, p1, Lcom/inmobi/media/lb;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/ub;

    .line 13
    .line 14
    new-instance v1, Lcom/inmobi/media/fb;

    .line 15
    .line 16
    check-cast p1, Lcom/inmobi/media/lb;

    .line 17
    .line 18
    iget p1, p1, Lcom/inmobi/media/lb;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-direct {v1, p1}, Lcom/inmobi/media/fb;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/jb;Lcom/inmobi/media/eb;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/qb;->a:Lcom/inmobi/media/ub;

    .line 33
    .line 34
    new-instance v0, Lcom/inmobi/media/pb;

    .line 35
    .line 36
    invoke-direct {v0, p1}, Lcom/inmobi/media/pb;-><init>(Lcom/inmobi/media/ub;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/inmobi/media/ub;->a(Lcom/inmobi/media/pb;)V

    .line 40
    .line 41
    .line 42
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p1
.end method
