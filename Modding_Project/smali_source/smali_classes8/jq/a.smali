.class public final Ljq/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljq/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljq/a$a;,
        Ljq/a$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Ljq/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Ljq/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljq/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljq/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ljq/a;->c:Ljq/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljq/e;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljq/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventTaskExecutor"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sourceName"

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
    iput-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 15
    .line 16
    iput-object p2, p0, Ljq/a;->b:Ljava/lang/String;

    .line 17
    .line 18
    return-void
.end method

.method private final varargs b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    array-length v1, p2

    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    aget-object p1, p2, p1

    .line 22
    .line 23
    if-eqz p1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_2

    .line 30
    :cond_2
    :goto_1
    move-object v0, p1

    .line 31
    :cond_3
    :goto_2
    return-object v0
.end method

.method private final c(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljq/a;->j(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 5
    .line 6
    invoke-interface {p1}, Ljq/e;->b()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final d(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    const-string v0, "value"

    .line 10
    .line 11
    if-eqz p3, :cond_3

    .line 12
    .line 13
    invoke-static {p3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    invoke-static {p3}, Lsq/g;->c(Ljava/lang/String;)Lio/bidmachine/rendering/model/PrivacySheetParams;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, v0}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    const-string v0, "%s"

    .line 35
    .line 36
    invoke-direct {p0, p1, p2, v0, p3}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 40
    .line 41
    invoke-interface {p1, v1}, Ljq/e;->b(Lio/bidmachine/rendering/model/PrivacySheetParams;)V

    .line 42
    .line 43
    .line 44
    return-void

    .line 45
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2, v0}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final varargs e(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    array-length v0, p4

    .line 2
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p4

    .line 6
    invoke-direct {p0, p3, p4}, Ljq/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-static {p3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    const-string v0, "%s"

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v0, p4}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 29
    .line 30
    invoke-interface {p1, p3}, Ljq/e;->e(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const-string p3, "notify open url"

    .line 35
    .line 36
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Could not find required params ("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p3, ") for execute task ("

    .line 15
    .line 16
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, ", "

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const/16 p1, 0x29

    .line 31
    .line 32
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 p2, 0x0

    .line 40
    new-array p2, p2, [Ljava/lang/Object;

    .line 41
    .line 42
    const-string p3, "Event"

    .line 43
    .line 44
    invoke-static {p3, p1, p2}, Ltp/s;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private final g(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 1
    if-eqz p4, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p4, v1, v0, v1}, Lyq/s;->H(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    .line 6
    .line 7
    .line 8
    move-result-object p4

    .line 9
    if-eqz p4, :cond_0

    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 17
    .line 18
    :goto_0
    const-wide/16 v2, 0x0

    .line 19
    .line 20
    cmp-long p4, v0, v2

    .line 21
    .line 22
    if-gez p4, :cond_1

    .line 23
    .line 24
    const-string p3, "schedule time"

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object p4

    .line 34
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object p4

    .line 38
    const-string v2, "target - %s, timeMs - %s"

    .line 39
    .line 40
    invoke-direct {p0, p1, p2, v2, p4}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 44
    .line 45
    invoke-interface {p1, p3, v0, v1}, Ljq/e;->m(Ljava/lang/String;J)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final varargs h(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-static {p4, v0, v1, v0}, Lyq/s;->B(Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-nez p4, :cond_1

    .line 8
    .line 9
    array-length v2, p5

    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p4, 0x0

    .line 14
    aget-object p4, p5, p4

    .line 15
    .line 16
    invoke-static {p4, v0, v1, v0}, Lyq/s;->B(Ljava/lang/Object;Ljava/lang/Boolean;ILjava/lang/Object;)Ljava/lang/Boolean;

    .line 17
    .line 18
    .line 19
    move-result-object p4

    .line 20
    :cond_1
    :goto_0
    if-nez p4, :cond_2

    .line 21
    .line 22
    const-string p3, "visibility value"

    .line 23
    .line 24
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    const-string v0, "target - %s, lockVisibility - %s"

    .line 33
    .line 34
    invoke-direct {p0, p1, p2, v0, p5}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 38
    .line 39
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    invoke-interface {p1, p3, p2}, Ljq/e;->a(Ljava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    return-void
.end method

.method private final varargs i(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-static {p4}, Lkotlin/collections/n;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p2, p4, v0, p4}, Lyq/s;->F(Ljava/lang/Object;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    :cond_0
    invoke-interface {p1, p3, p4}, Ljq/e;->k(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final j(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private final k(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    if-eqz p3, :cond_2

    .line 10
    .line 11
    invoke-static {p3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "%s"

    .line 23
    .line 24
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 28
    .line 29
    invoke-interface {p1, p3}, Ljq/e;->a(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_1
    const-string p3, "state groups value"

    .line 34
    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final varargs l(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1

    .line 1
    array-length v0, p4

    .line 2
    invoke-static {p4, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p4

    .line 6
    invoke-direct {p0, p3, p4}, Ljq/a;->b(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    if-eqz p3, :cond_1

    .line 11
    .line 12
    invoke-static {p3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result p4

    .line 16
    if-eqz p4, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p4

    .line 23
    const-string v0, "%s"

    .line 24
    .line 25
    invoke-direct {p0, p1, p2, v0, p4}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 29
    .line 30
    invoke-interface {p1, p3}, Ljq/e;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    :goto_0
    const-string p3, "open url"

    .line 35
    .line 36
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private final m(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-interface {p1, p3}, Ljq/e;->c(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final n(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p4, :cond_1

    .line 2
    .line 3
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    if-nez p4, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    filled-new-array {p3, p4}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "target - %s, value - %s"

    .line 15
    .line 16
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 20
    .line 21
    invoke-interface {p1, p3, p4}, Ljq/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method private final varargs o(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 7

    .line 1
    :try_start_0
    sget-object v0, Ljq/a$b;->a:[I

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    aget v0, v0, v1

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :pswitch_0
    invoke-direct {p0, p1, p2, p4}, Ljq/a;->k(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :catchall_0
    move-exception p1

    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :pswitch_1
    invoke-direct {p0, p1, p2, p4}, Ljq/a;->d(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    goto/16 :goto_1

    .line 26
    .line 27
    :pswitch_2
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->s(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto/16 :goto_1

    .line 31
    .line 32
    :pswitch_3
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->u(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_1

    .line 36
    .line 37
    :pswitch_4
    array-length v0, p5

    .line 38
    invoke-static {p5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    move-object v1, p0

    .line 43
    move-object v2, p1

    .line 44
    move-object v3, p2

    .line 45
    move-object v4, p3

    .line 46
    move-object v5, p4

    .line 47
    invoke-direct/range {v1 .. v6}, Ljq/a;->h(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_5
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->n(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_6
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->g(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :pswitch_7
    array-length p4, p5

    .line 60
    invoke-static {p5, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object p4

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->v(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :pswitch_8
    array-length p4, p5

    .line 69
    invoke-static {p5, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p4

    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->i(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_1

    .line 77
    :pswitch_9
    array-length p4, p5

    .line 78
    invoke-static {p5, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p4

    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->w(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :pswitch_a
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->m(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :pswitch_b
    array-length p4, p5

    .line 91
    invoke-static {p5, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p4

    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->x(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :pswitch_c
    array-length p4, p5

    .line 100
    invoke-static {p5, p4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p4

    .line 104
    invoke-direct {p0, p1, p2, p3, p4}, Ljq/a;->t(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :pswitch_d
    invoke-direct {p0, p1, p2}, Ljq/a;->c(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :pswitch_e
    invoke-direct {p0, p1, p2}, Ljq/a;->q(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :pswitch_f
    array-length p3, p5

    .line 117
    invoke-static {p5, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p3

    .line 121
    invoke-direct {p0, p1, p2, p4, p3}, Ljq/a;->e(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :pswitch_10
    array-length p3, p5

    .line 126
    invoke-static {p5, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-direct {p0, p1, p2, p4, p3}, Ljq/a;->l(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_11
    invoke-direct {p0, p1, p2, p4}, Ljq/a;->r(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .line 136
    .line 137
    goto :goto_1

    .line 138
    :goto_0
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 139
    .line 140
    .line 141
    :goto_1
    return-void

    .line 142
    nop

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final varargs p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {}, Ltp/s;->f()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const-string v0, "Event"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const-string v2, "), Task - "

    .line 12
    .line 13
    const-string v3, " (source - "

    .line 14
    .line 15
    const-string v4, "Event - "

    .line 16
    .line 17
    if-nez p3, :cond_1

    .line 18
    .line 19
    new-instance p3, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventType;->getKey()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Ljq/a;->b:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/EventTaskType;->getKey()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    new-array p2, v1, [Ljava/lang/Object;

    .line 57
    .line 58
    invoke-static {v0, p1, p2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    :try_start_0
    sget-object v5, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    .line 63
    .line 64
    array-length v5, p4

    .line 65
    invoke-static {p4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p4

    .line 69
    array-length v5, p4

    .line 70
    invoke-static {p4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p4

    .line 74
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    const-string p4, "format(format, *args)"

    .line 79
    .line 80
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    new-instance p4, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1}, Lio/bidmachine/rendering/model/EventType;->getKey()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Ljq/a;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2}, Lio/bidmachine/rendering/model/EventTaskType;->getKey()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string p1, " ("

    .line 117
    .line 118
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    const/16 p1, 0x29

    .line 125
    .line 126
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    new-array p2, v1, [Ljava/lang/Object;

    .line 134
    .line 135
    invoke-static {v0, p1, p2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :catchall_0
    move-exception p1

    .line 140
    invoke-static {p1}, Ltp/s;->h(Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    :goto_0
    return-void
.end method

.method private final q(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljq/a;->j(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 5
    .line 6
    invoke-interface {p1}, Ljq/e;->e()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final r(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/Object;)V
    .locals 2

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p3, 0x0

    .line 9
    :goto_0
    if-eqz p3, :cond_2

    .line 10
    .line 11
    invoke-static {p3}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "%s"

    .line 23
    .line 24
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 28
    .line 29
    invoke-interface {p1, p3}, Ljq/e;->f(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    :goto_1
    const-string p3, "track url"

    .line 34
    .line 35
    invoke-direct {p0, p1, p2, p3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method private final s(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-interface {p1, p3}, Ljq/e;->g(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final varargs t(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-static {p4}, Lkotlin/collections/n;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p2, p4, v0, p4}, Lyq/s;->F(Ljava/lang/Object;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    :cond_0
    invoke-interface {p1, p3, p4}, Ljq/e;->i(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final u(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-interface {p1, p3}, Ljq/e;->d(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final varargs v(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p4

    .line 8
    .line 9
    array-length v4, v3

    .line 10
    const/4 v5, 0x2

    .line 11
    if-ge v4, v5, :cond_0

    .line 12
    .line 13
    const-string v3, "progress parameters"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2, v3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    aget-object v4, v3, v4

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    const/4 v6, 0x1

    .line 24
    invoke-static {v4, v5, v6, v5}, Lyq/s;->H(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const-wide/high16 v7, -0x8000000000000000L

    .line 29
    .line 30
    if-eqz v4, :cond_1

    .line 31
    .line 32
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 33
    .line 34
    .line 35
    move-result-wide v9

    .line 36
    move-wide v13, v9

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move-wide v13, v7

    .line 39
    :goto_0
    aget-object v3, v3, v6

    .line 40
    .line 41
    invoke-static {v3, v5, v6, v5}, Lyq/s;->H(Ljava/lang/Object;Ljava/lang/Long;ILjava/lang/Object;)Ljava/lang/Long;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v7

    .line 51
    :cond_2
    const-wide/16 v3, 0x1

    .line 52
    .line 53
    cmp-long v3, v13, v3

    .line 54
    .line 55
    if-ltz v3, :cond_4

    .line 56
    .line 57
    const-wide/16 v3, 0x0

    .line 58
    .line 59
    cmp-long v3, v7, v3

    .line 60
    .line 61
    if-gez v3, :cond_3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_3
    long-to-float v1, v7

    .line 65
    const/high16 v2, 0x42c80000    # 100.0f

    .line 66
    .line 67
    mul-float/2addr v1, v2

    .line 68
    long-to-float v2, v13

    .line 69
    div-float v17, v1, v2

    .line 70
    .line 71
    iget-object v11, v0, Ljq/a;->a:Ljq/e;

    .line 72
    .line 73
    move-object/from16 v12, p3

    .line 74
    .line 75
    move-wide v15, v7

    .line 76
    invoke-interface/range {v11 .. v17}, Ljq/e;->l(Ljava/lang/String;JJF)V

    .line 77
    .line 78
    .line 79
    return-void

    .line 80
    :cond_4
    :goto_1
    const-string v3, "maxProgressMs, currentProgressMs"

    .line 81
    .line 82
    invoke-direct {v0, v1, v2, v3}, Ljq/a;->f(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    return-void
.end method

.method private final varargs w(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-static {p4}, Lkotlin/collections/n;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p2, p4, v0, p4}, Lyq/s;->F(Ljava/lang/Object;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    :cond_0
    invoke-interface {p1, p3, p4}, Ljq/e;->j(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private final varargs x(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 1
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "target - %s"

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, v1, v0}, Ljq/a;->p(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Ljq/a;->a:Ljq/e;

    .line 11
    .line 12
    invoke-static {p4}, Lkotlin/collections/n;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    const/4 p4, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-static {p2, p4, v0, p4}, Lyq/s;->F(Ljava/lang/Object;Ljava/lang/Integer;ILjava/lang/Object;)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p4

    .line 24
    :cond_0
    invoke-interface {p1, p3, p4}, Ljq/e;->h(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public varargs a(Lio/bidmachine/rendering/model/EventType;Lrq/v;[Ljava/lang/Object;)V
    .locals 7
    .param p1    # Lio/bidmachine/rendering/model/EventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrq/v;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eventType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventTaskParams"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "params"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lrq/v;->a()Lio/bidmachine/rendering/model/EventTaskType;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-virtual {p2}, Lrq/v;->c()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    invoke-virtual {p2}, Lrq/v;->d()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v5

    .line 28
    array-length p2, p3

    .line 29
    invoke-static {p3, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    move-object v1, p0

    .line 34
    move-object v2, p1

    .line 35
    invoke-direct/range {v1 .. v6}, Ljq/a;->o(Lio/bidmachine/rendering/model/EventType;Lio/bidmachine/rendering/model/EventTaskType;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method
