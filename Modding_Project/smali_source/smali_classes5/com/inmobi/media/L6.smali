.class public final Lcom/inmobi/media/L6;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/M6;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/M6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L6;->a:Lcom/inmobi/media/M6;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Ljava/util/Map;

    .line 4
    .line 5
    const-string v0, "trackerName"

    .line 6
    .line 7
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "macros"

    .line 11
    .line 12
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/inmobi/media/L6;->a:Lcom/inmobi/media/M6;

    .line 16
    .line 17
    iget-object v2, v2, Lcom/inmobi/media/M6;->d:Lcom/inmobi/media/Ub;

    .line 18
    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, v2, Lcom/inmobi/media/Ub;->a:Lcom/inmobi/media/ec;

    .line 28
    .line 29
    iget-boolean v1, v0, Lcom/inmobi/media/ec;->e:Z

    .line 30
    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/media/ec;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 37
    .line 38
    return-object p1
.end method
