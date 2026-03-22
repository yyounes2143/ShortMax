.class public final Lcom/inmobi/media/K1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/M1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/M1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/K1;->a:Lcom/inmobi/media/M1;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/K1;->a:Lcom/inmobi/media/M1;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-static {v0}, Lcom/inmobi/media/M1;->a(Lcom/inmobi/media/M1;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v2, "access$getTAG$p(...)"

    .line 12
    .line 13
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    check-cast v1, Lcom/inmobi/media/A5;

    .line 17
    .line 18
    const-string v2, "loadWithRetry success"

    .line 19
    .line 20
    invoke-virtual {v1, v0, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/K1;->a:Lcom/inmobi/media/M1;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/inmobi/media/M1;->b(Lcom/inmobi/media/M1;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 29
    .line 30
    return-object v0
.end method
