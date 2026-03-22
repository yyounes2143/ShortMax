.class public final Lrq/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/rendering/model/AnimationEventType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lio/bidmachine/rendering/model/AnimationStyleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lio/bidmachine/rendering/model/AnimationFunctionType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final d:J

.field private final e:Lio/bidmachine/rendering/model/AnimationDirectionType;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/rendering/model/AnimationEventType;Lio/bidmachine/rendering/model/AnimationStyleType;Lio/bidmachine/rendering/model/AnimationFunctionType;JLio/bidmachine/rendering/model/AnimationDirectionType;)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationStyleType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/rendering/model/AnimationFunctionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lio/bidmachine/rendering/model/AnimationDirectionType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "style"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lrq/d;->a:Lio/bidmachine/rendering/model/AnimationEventType;

    .line 15
    .line 16
    iput-object p2, p0, Lrq/d;->b:Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 17
    .line 18
    iput-object p3, p0, Lrq/d;->c:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 19
    .line 20
    iput-wide p4, p0, Lrq/d;->d:J

    .line 21
    .line 22
    iput-object p6, p0, Lrq/d;->e:Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/rendering/model/AnimationDirectionType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/d;->e:Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lio/bidmachine/rendering/model/AnimationDirectionType;->Left:Lio/bidmachine/rendering/model/AnimationDirectionType;

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method

.method public final b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lrq/d;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final c()Lio/bidmachine/rendering/model/AnimationFunctionType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/d;->c:Lio/bidmachine/rendering/model/AnimationFunctionType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final d()Lio/bidmachine/rendering/model/AnimationStyleType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lrq/d;->b:Lio/bidmachine/rendering/model/AnimationStyleType;

    .line 2
    .line 3
    return-object v0
.end method
