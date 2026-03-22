.class public final Lcom/inmobi/media/Y9;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/Z9;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/Z9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Y9;->a:Lcom/inmobi/media/Z9;

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
    check-cast p1, Lcom/inmobi/media/P9;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/inmobi/media/Y9;->a:Lcom/inmobi/media/Z9;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/inmobi/media/Z9;->b:Lcom/inmobi/media/z5;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v0, "NovatiqDataHandler"

    .line 17
    .line 18
    const-string v1, "Novatiq hyper id synced"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p1
.end method
