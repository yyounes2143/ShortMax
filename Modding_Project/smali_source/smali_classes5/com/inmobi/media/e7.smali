.class public final Lcom/inmobi/media/e7;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/f7;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/f7;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/e7;->a:Lcom/inmobi/media/f7;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/e7;->b:Landroid/content/Context;

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
    .locals 3

    .line 1
    check-cast p1, Lcom/inmobi/media/Y6;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/e7;->a:Lcom/inmobi/media/f7;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/inmobi/media/e7;->b:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v2, v0, Lcom/inmobi/media/f7;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, p1}, Lcom/inmobi/media/f7;->a(Landroid/content/Context;Ljava/lang/String;Lcom/inmobi/media/Y6;)V

    .line 15
    .line 16
    .line 17
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 18
    .line 19
    return-object p1
.end method
