.class final Lio/bidmachine/rendering/internal/controller/h$e;
.super Lio/bidmachine/rendering/internal/controller/h$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/rendering/internal/controller/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "e"
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
    iput-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$e;->b:Lio/bidmachine/rendering/internal/controller/h;

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
    .locals 3
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
    iget-object v0, p0, Lio/bidmachine/rendering/internal/controller/h$e;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, p1, v1}, Lio/bidmachine/rendering/internal/controller/h;->C(Lup/a;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    new-instance v0, Lrq/t;

    .line 19
    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v2, "Failed to setup ad element ("

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const/16 v2, 0x29

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-direct {v0, v1}, Lrq/t;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p0, p1, v0}, Lio/bidmachine/rendering/internal/controller/h$e;->d(Lup/a;Lrq/t;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$e;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 49
    .line 50
    invoke-static {p1}, Lio/bidmachine/rendering/internal/controller/h;->K(Lio/bidmachine/rendering/internal/controller/h;)Ljava/util/Map;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lio/bidmachine/rendering/internal/controller/h$e;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 62
    .line 63
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/controller/h;->c0()V

    .line 64
    .line 65
    .line 66
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
    iget-object p2, p0, Lio/bidmachine/rendering/internal/controller/h$e;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 15
    .line 16
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/controller/h;->U()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, p1, v0}, Lio/bidmachine/rendering/internal/controller/h;->x(Ltp/f;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
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
    iget-object p2, p0, Lio/bidmachine/rendering/internal/controller/h$e;->b:Lio/bidmachine/rendering/internal/controller/h;

    .line 15
    .line 16
    invoke-virtual {p2}, Lio/bidmachine/rendering/internal/controller/h;->U()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, p1, v0}, Lio/bidmachine/rendering/internal/controller/h;->x(Ltp/f;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
