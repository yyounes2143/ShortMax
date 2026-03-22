.class public final Leq/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final a:Leq/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Leq/e;

    .line 2
    .line 3
    invoke-direct {v0}, Leq/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Leq/e;->a:Leq/e;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Lio/bidmachine/util/Tag;Ljava/util/Map;Leq/g;)Leq/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/bidmachine/util/Tag;",
            "Ljava/util/Map<",
            "Lio/bidmachine/rendering/model/AnimationEventType;",
            "Lrq/d;",
            ">;",
            "Leq/g<",
            "TParams;>;)",
            "Leq/b;"
        }
    .end annotation

    .line 1
    new-instance v0, Leq/b;

    .line 2
    .line 3
    new-instance v1, Leq/j;

    .line 4
    .line 5
    invoke-direct {v1, p2}, Leq/j;-><init>(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p1, v1, p3}, Leq/b;-><init>(Lio/bidmachine/util/Tag;Leq/j;Leq/g;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public static final b(Lrq/a;Z)Leq/b;
    .locals 4
    .param p0    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Leq/e;->a:Leq/e;

    .line 7
    .line 8
    new-instance v1, Lio/bidmachine/util/Tag;

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v3, "AdElementAnimator ("

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lrq/a;->j()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/16 v3, 0x29

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-direct {v1, v2}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Lrq/a;->b()Ljava/util/Map;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    new-instance v3, Leq/k;

    .line 44
    .line 45
    invoke-direct {v3, p0, p1}, Leq/k;-><init>(Lrq/a;Z)V

    .line 46
    .line 47
    .line 48
    invoke-direct {v0, v1, v2, v3}, Leq/e;->a(Lio/bidmachine/util/Tag;Ljava/util/Map;Leq/g;)Leq/b;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    return-object p0
.end method

.method public static final c(Lrq/c;)Leq/b;
    .locals 4
    .param p0    # Lrq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Leq/e;->a:Leq/e;

    .line 7
    .line 8
    new-instance v1, Lio/bidmachine/util/Tag;

    .line 9
    .line 10
    const-string v2, "AdPhaseAnimator"

    .line 11
    .line 12
    invoke-direct {v1, v2}, Lio/bidmachine/util/Tag;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lrq/c;->b()Ljava/util/Map;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    new-instance v3, Leq/l;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Leq/l;-><init>(Lrq/c;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {v0, v1, v2, v3}, Leq/e;->a(Lio/bidmachine/util/Tag;Ljava/util/Map;Leq/g;)Leq/b;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    return-object p0
.end method
