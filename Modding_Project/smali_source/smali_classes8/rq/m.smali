.class public final Lrq/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:J

.field private final b:D

.field private final c:Z

.field private final d:Z

.field private final e:Lio/bidmachine/rendering/model/StopDetectorAfter;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final f:D

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lrq/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(JDZZLio/bidmachine/rendering/model/StopDetectorAfter;DLjava/util/List;)V
    .locals 1
    .param p7    # Lio/bidmachine/rendering/model/StopDetectorAfter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JDZZ",
            "Lio/bidmachine/rendering/model/StopDetectorAfter;",
            "D",
            "Ljava/util/List<",
            "Lrq/k;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "stopAfter"

    .line 2
    .line 3
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "algorithms"

    .line 7
    .line 8
    invoke-static {p10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-wide p1, p0, Lrq/m;->a:J

    .line 15
    .line 16
    iput-wide p3, p0, Lrq/m;->b:D

    .line 17
    .line 18
    iput-boolean p5, p0, Lrq/m;->c:Z

    .line 19
    .line 20
    iput-boolean p6, p0, Lrq/m;->d:Z

    .line 21
    .line 22
    iput-object p7, p0, Lrq/m;->e:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 23
    .line 24
    iput-wide p8, p0, Lrq/m;->f:D

    .line 25
    .line 26
    iput-object p10, p0, Lrq/m;->g:Ljava/util/List;

    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lrq/k;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/m;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lrq/m;->b:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lio/bidmachine/rendering/model/StopDetectorAfter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/m;->e:Lio/bidmachine/rendering/model/StopDetectorAfter;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrq/m;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final e()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lrq/m;->f:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public final f()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrq/m;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lrq/m;->c:Z

    .line 2
    .line 3
    return v0
.end method
