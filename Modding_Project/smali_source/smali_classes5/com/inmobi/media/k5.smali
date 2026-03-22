.class public final Lcom/inmobi/media/k5;
.super Lkotlin/properties/b;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/l5;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/pa;Lcom/inmobi/media/l5;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/inmobi/media/k5;->a:Lcom/inmobi/media/l5;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lkotlin/properties/b;-><init>(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "property"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p3, Lcom/inmobi/media/pa;

    .line 7
    .line 8
    check-cast p2, Lcom/inmobi/media/pa;

    .line 9
    .line 10
    invoke-static {p2}, Lcom/inmobi/media/qa;->a(Lcom/inmobi/media/pa;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-static {p3}, Lcom/inmobi/media/qa;->a(Lcom/inmobi/media/pa;)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    if-ne p1, p2, :cond_0

    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/k5;->a:Lcom/inmobi/media/l5;

    .line 22
    .line 23
    iget-object p1, p1, Lcom/inmobi/media/l5;->b:Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    check-cast p2, Lcom/inmobi/media/sa;

    .line 40
    .line 41
    invoke-interface {p2, p3}, Lcom/inmobi/media/sa;->a(Lcom/inmobi/media/pa;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    return-void
.end method
