.class public final Lcom/inmobi/media/j6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/m6;

.field public final synthetic b:S


# direct methods
.method public constructor <init>(Lcom/inmobi/media/m6;S)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/j6;->a:Lcom/inmobi/media/m6;

    .line 2
    .line 3
    iput-short p2, p0, Lcom/inmobi/media/j6;->b:S

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
    const/4 v0, 0x2

    .line 2
    const-string v1, "InMobiInterstitial"

    .line 3
    .line 4
    const-string v2, "RenderProcess of the WebView has crashed. Please create another adUnit"

    .line 5
    .line 6
    invoke-static {v0, v1, v2}, Lcom/inmobi/media/h7;->a(BLjava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/inmobi/media/j6;->a:Lcom/inmobi/media/m6;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/inmobi/media/S0;->j:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/inmobi/media/m6;->e()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v3, "access$getTAG$cp(...)"

    .line 20
    .line 21
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lcom/inmobi/media/A5;

    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/j6;->a:Lcom/inmobi/media/m6;

    .line 30
    .line 31
    iget-short v1, p0, Lcom/inmobi/media/j6;->b:S

    .line 32
    .line 33
    const/4 v2, 0x1

    .line 34
    invoke-virtual {v0, v2, v1}, Lcom/inmobi/media/S0;->a(ZS)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/inmobi/media/j6;->a:Lcom/inmobi/media/m6;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-static {v0, v1}, Lcom/inmobi/media/m6;->a(Lcom/inmobi/media/m6;Lkotlin/jvm/functions/Function0;)V

    .line 41
    .line 42
    .line 43
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 44
    .line 45
    return-object v0
.end method
