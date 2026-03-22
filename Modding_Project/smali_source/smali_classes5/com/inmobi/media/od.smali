.class public final Lcom/inmobi/media/od;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Bd;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Bd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/od;->a:Lcom/inmobi/media/Bd;

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
    iget-object v0, p0, Lcom/inmobi/media/od;->a:Lcom/inmobi/media/Bd;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/Bd;->a:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    check-cast v0, Lcom/inmobi/media/A5;

    .line 8
    .line 9
    const-string v1, "StateMachine"

    .line 10
    .line 11
    const-string v2, "WebView destroyed from FAILED"

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object v0
.end method
