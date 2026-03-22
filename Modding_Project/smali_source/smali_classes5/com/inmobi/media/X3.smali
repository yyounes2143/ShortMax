.class public final Lcom/inmobi/media/X3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Y3;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Y3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/X3;->a:Lcom/inmobi/media/Y3;

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
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v0, "jsonObject"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/inmobi/media/X3;->a:Lcom/inmobi/media/Y3;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/inmobi/media/Y3;->d:Lcom/inmobi/media/b4;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    check-cast v1, Lcom/inmobi/media/i5;

    .line 15
    .line 16
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v1, Lcom/inmobi/media/i5;->a:Lcom/inmobi/media/j5;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/inmobi/media/j5;->b:Lcom/inmobi/media/x;

    .line 22
    .line 23
    instance-of v1, v0, Lcom/inmobi/media/ec;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    check-cast v0, Lcom/inmobi/media/ec;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0, p1}, Lcom/inmobi/media/ec;->a(Lorg/json/JSONObject;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1
.end method
