.class public abstract Lcom/inmobi/media/Ac;
.super Lcom/inmobi/media/N9;
.source "SourceFile"


# instance fields
.field public final A:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final y:I

.field public final z:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/inmobi/media/ue;Ljava/lang/String;II)V
    .locals 9

    .line 1
    const-string v0, "POST"

    .line 2
    .line 3
    const-string v1, "requestType"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "url"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v0, "application/x-www-form-urlencoded"

    .line 14
    .line 15
    const-string v1, "requestContentType"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lcom/inmobi/media/G4;->a:Lcom/inmobi/media/G4;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v3, 0x0

    .line 24
    const/4 v8, 0x0

    .line 25
    invoke-static {v0, v8, v1, v3}, Lcom/inmobi/media/G4;->a(Lcom/inmobi/media/G4;ZILjava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const-string v6, "application/x-www-form-urlencoded"

    .line 30
    .line 31
    const/16 v7, 0x40

    .line 32
    .line 33
    const-string v1, "POST"

    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    move-object v0, p0

    .line 37
    move-object v2, p1

    .line 38
    move-object v3, p2

    .line 39
    invoke-direct/range {v0 .. v7}, Lcom/inmobi/media/N9;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/ue;ZLcom/inmobi/media/z5;Ljava/lang/String;I)V

    .line 40
    .line 41
    .line 42
    iput p4, p0, Lcom/inmobi/media/Ac;->y:I

    .line 43
    .line 44
    iput p5, p0, Lcom/inmobi/media/Ac;->z:I

    .line 45
    .line 46
    iput-object p3, p0, Lcom/inmobi/media/N9;->m:Ljava/lang/String;

    .line 47
    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 49
    .line 50
    invoke-direct {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/inmobi/media/Ac;->A:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 54
    .line 55
    return-void
.end method
