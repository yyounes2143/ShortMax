.class public final Lcom/inmobi/media/r8;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/inmobi/media/s8;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/s8;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/inmobi/media/r8;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p1, p0, Lcom/inmobi/media/r8;->b:Lcom/inmobi/media/s8;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lcom/inmobi/media/Nc;->a()Lcom/inmobi/media/m1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/inmobi/media/r8;->a:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/inmobi/media/m1;->b(Ljava/lang/String;)Lcom/inmobi/media/j;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v2, p0, Lcom/inmobi/media/r8;->b:Lcom/inmobi/media/s8;

    .line 15
    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/inmobi/media/j;->c:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-static {v2, v0}, Lcom/inmobi/media/s8;->a(Lcom/inmobi/media/s8;Ljava/lang/String;)Lcom/inmobi/media/I4;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    iget-object v2, v2, Lcom/inmobi/media/s8;->x:Ljava/lang/String;

    .line 29
    .line 30
    const-string v3, "access$getTAG$p(...)"

    .line 31
    .line 32
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object v2, Lcom/inmobi/media/S5;->a:Lcom/inmobi/media/S5;

    .line 36
    .line 37
    const-string v2, "event"

    .line 38
    .line 39
    invoke-static {v0, v2}, Lcom/inmobi/media/w5;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/inmobi/media/f2;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    sget-object v2, Lcom/inmobi/media/S5;->d:Lcom/inmobi/media/E6;

    .line 44
    .line 45
    invoke-virtual {v2, v0}, Lcom/inmobi/media/E6;->a(Lcom/inmobi/media/f2;)V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    :cond_0
    :goto_0
    return-object v1
.end method
