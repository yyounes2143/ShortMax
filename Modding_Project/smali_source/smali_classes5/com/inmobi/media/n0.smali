.class public final Lcom/inmobi/media/n0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/o0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/o0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/media/o0;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/n0;->a:Lcom/inmobi/media/o0;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/o0;->h:Lcom/inmobi/media/df;

    .line 4
    .line 5
    sget-object v1, Lcom/inmobi/media/df;->c:Lcom/inmobi/media/df;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    return-object v0
.end method
