.class final Lio/bidmachine/rendering/internal/controller/h$a;
.super Lio/bidmachine/rendering/internal/controller/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic b:Lio/bidmachine/rendering/internal/controller/h;


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/internal/controller/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/controller/h$b;-><init>(Lio/bidmachine/rendering/internal/controller/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lup/a;)V
    .locals 4
    .param p1    # Lup/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adForm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/controller/h$b;->a(Lup/a;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    invoke-static {v0, p1, v3, v1, v2}, Lio/bidmachine/rendering/internal/controller/h;->B(Lio/bidmachine/rendering/internal/controller/h;Lup/a;ZILjava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    new-instance v0, Lrq/t;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Failed to setup ad element ("

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v2, 0x29

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/internal/controller/h$a;->d(Lup/a;Lrq/t;)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 52
    .line 53
    invoke-static {p1}, Lio/bidmachine/rendering/internal/controller/h;->K(Lio/bidmachine/rendering/internal/controller/h;)Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-nez p1, :cond_1

    .line 62
    .line 63
    return-void

    .line 64
    :cond_1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 65
    .line 66
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/controller/h;->c0()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public d(Lup/a;Lrq/t;)V
    .locals 1
    .param p1    # Lup/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adForm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "error"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h$b;->d(Lup/a;Lrq/t;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/controller/h;->u(Lrq/t;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public e(Lup/a;Lrq/t;)V
    .locals 1
    .param p1    # Lup/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/t;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adForm"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "error"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Lio/bidmachine/rendering/internal/controller/h$b;->e(Lup/a;Lrq/t;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$a;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lio/bidmachine/rendering/internal/controller/h;->u(Lrq/t;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
