.class public final Lcom/inmobi/media/f4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/h4;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/h4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/f4;->a:Lcom/inmobi/media/h4;

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
    .locals 1

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    .line 2
    .line 3
    const-string v0, "it"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/inmobi/media/f4;->a:Lcom/inmobi/media/h4;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/inmobi/media/h4;->f:Lcom/inmobi/media/X3;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/inmobi/media/X3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p1
.end method
