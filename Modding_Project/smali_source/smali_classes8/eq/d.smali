.class public final Leq/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Leq/d$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final c:Leq/d$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/rendering/model/EventType;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Leq/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Leq/d$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Leq/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Leq/d;->c:Leq/d$a;

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/rendering/model/EventType;->OnClick:Lio/bidmachine/rendering/model/EventType;

    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Leq/d;->d:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Leq/c;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Leq/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leq/c;",
            "Lkotlin/jvm/functions/Function0<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "animationController"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Leq/d;->a:Leq/c;

    .line 10
    .line 11
    iput-object p2, p0, Leq/d;->b:Lkotlin/jvm/functions/Function0;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Z
    .locals 7
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "params"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    instance-of v2, v1, Lio/bidmachine/rendering/model/EventType;

    .line 12
    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    return v0

    .line 16
    :cond_0
    const/4 v2, 0x1

    .line 17
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v3, p1, Ljava/lang/Integer;

    .line 22
    .line 23
    if-nez v3, :cond_1

    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    sget-object v3, Leq/d;->d:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-nez v3, :cond_2

    .line 33
    .line 34
    return v0

    .line 35
    :cond_2
    iget-object v3, p0, Leq/d;->b:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    if-eqz v3, :cond_3

    .line 39
    .line 40
    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Ljava/lang/Integer;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move-object v3, v4

    .line 48
    :goto_0
    if-eqz v3, :cond_5

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v6, -0x1

    .line 55
    if-eq v5, v6, :cond_4

    .line 56
    .line 57
    move-object v4, v3

    .line 58
    :cond_4
    if-eqz v4, :cond_5

    .line 59
    .line 60
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iget-object v4, p0, Leq/d;->a:Leq/c;

    .line 65
    .line 66
    invoke-interface {v4, v3}, Leq/c;->a(I)Z

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    goto :goto_1

    .line 71
    :cond_5
    move v3, v0

    .line 72
    :goto_1
    iget-object v4, p0, Leq/d;->a:Leq/c;

    .line 73
    .line 74
    move-object v5, p1

    .line 75
    check-cast v5, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v5

    .line 81
    invoke-interface {v4, v5}, Leq/c;->a(I)Z

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-nez v3, :cond_7

    .line 86
    .line 87
    if-eqz v4, :cond_6

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_6
    move v2, v0

    .line 91
    :cond_7
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v4, "Intercept result="

    .line 97
    .line 98
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v4, "; eventType="

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, "; viewId="

    .line 113
    .line 114
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-array v0, v0, [Ljava/lang/Object;

    .line 125
    .line 126
    const-string v1, "AdAnimationEventInterceptor"

    .line 127
    .line 128
    invoke-static {v1, p1, v0}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    return v2
.end method
