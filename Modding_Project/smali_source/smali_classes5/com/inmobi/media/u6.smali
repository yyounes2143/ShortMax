.class public final Lcom/inmobi/media/u6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/v6;

.field public final synthetic b:Lcom/inmobi/media/ra;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/v6;Lcom/inmobi/media/ra;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/u6;->a:Lcom/inmobi/media/v6;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/u6;->b:Lcom/inmobi/media/ra;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lcom/inmobi/media/ec;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-boolean v0, p1, Lcom/inmobi/media/ec;->K0:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/inmobi/media/u6;->a:Lcom/inmobi/media/v6;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/inmobi/media/v6;->c:Lcom/inmobi/media/z5;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/inmobi/media/w6;->a:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "access$getTAG$p(...)"

    .line 21
    .line 22
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    check-cast p1, Lcom/inmobi/media/A5;

    .line 26
    .line 27
    const-string v1, "setOrientationProperties called on unloaded ad"

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/u6;->b:Lcom/inmobi/media/ra;

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ra;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1
.end method
