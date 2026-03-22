.class public final Lcom/inmobi/media/bc;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/bc;->a:Lcom/inmobi/media/ec;

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
    new-instance v0, Lcom/inmobi/media/bd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/bc;->a:Lcom/inmobi/media/ec;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getWebViewFactory()Lcom/inmobi/media/tf;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/inmobi/media/bc;->a:Lcom/inmobi/media/ec;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 12
    .line 13
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/bd;-><init>(Lcom/inmobi/media/tf;Lcom/inmobi/media/z5;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
