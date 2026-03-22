.class public final Lcom/inmobi/media/Q8;
.super Lcom/inmobi/media/d8;
.source "SourceFile"


# instance fields
.field public final x:Lcom/inmobi/media/P8;

.field public y:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;Lcom/inmobi/media/P8;)V
    .locals 7

    .line 1
    const-string v0, "assetId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "assetName"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "assetStyle"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "timer"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v4, "TIMER"

    .line 22
    .line 23
    const/16 v6, 0x10

    .line 24
    .line 25
    move-object v1, p0

    .line 26
    move-object v2, p1

    .line 27
    move-object v3, p2

    .line 28
    move-object v5, p3

    .line 29
    invoke-direct/range {v1 .. v6}, Lcom/inmobi/media/d8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/e8;I)V

    .line 30
    .line 31
    .line 32
    iput-object p4, p0, Lcom/inmobi/media/Q8;->x:Lcom/inmobi/media/P8;

    .line 33
    .line 34
    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/media/Q8;->y:Z

    .line 2
    .line 3
    return-void
.end method
