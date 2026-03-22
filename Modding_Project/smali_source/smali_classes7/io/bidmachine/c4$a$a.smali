.class Lio/bidmachine/c4$a$a;
.super Ljava/lang/Object;
.source "InitialRequest.java"

# interfaces
.implements Lio/bidmachine/core/NetworkRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/c4$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/bidmachine/core/NetworkRequest$b<",
        "Lio/bidmachine/protobuf/InitResponse;",
        "Lfr/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/c4$a;


# direct methods
.method constructor <init>(Lio/bidmachine/c4$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic b(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/c4$a$a;->c(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic c(J)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string p1, "reschedule init request (%s)"

    .line 10
    .line 11
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lfr/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/c4$a$a;->d(Lfr/a;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d(Lfr/a;)V
    .locals 4
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lio/bidmachine/c4;->a(Lio/bidmachine/c4;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 10
    .line 11
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 12
    .line 13
    invoke-static {v0}, Lio/bidmachine/c4;->f(Lio/bidmachine/c4;)Ljava/util/Queue;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 24
    .line 25
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 26
    .line 27
    invoke-static {v0}, Lio/bidmachine/c4;->g(Lio/bidmachine/c4;)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    new-instance v0, Lio/bidmachine/b4;

    .line 32
    .line 33
    invoke-direct {v0, v2, v3}, Lio/bidmachine/b4;-><init>(J)V

    .line 34
    .line 35
    .line 36
    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 40
    .line 41
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 42
    .line 43
    invoke-static {v0}, Lio/bidmachine/c4;->d(Lio/bidmachine/c4;)Lio/bidmachine/c4$c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 50
    .line 51
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 52
    .line 53
    invoke-static {v0}, Lio/bidmachine/c4;->d(Lio/bidmachine/c4;)Lio/bidmachine/c4$c;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0, p1}, Lio/bidmachine/core/NetworkRequest$b;->a(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    const-wide/16 v2, 0x0

    .line 62
    .line 63
    :cond_1
    :goto_0
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 64
    .line 65
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 66
    .line 67
    invoke-static {v0}, Lio/bidmachine/c4;->c(Lio/bidmachine/c4;)Ljava/lang/Runnable;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {v0, v2, v3}, Lio/bidmachine/core/g;->Y(Ljava/lang/Runnable;J)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 75
    .line 76
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 77
    .line 78
    invoke-static {v0}, Lio/bidmachine/c4;->e(Lio/bidmachine/c4;)Lwq/k;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    sget-object v2, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 83
    .line 84
    invoke-interface {v0, v2, v1, v1, p1}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public e(Lio/bidmachine/protobuf/InitResponse;)V
    .locals 4
    .param p1    # Lio/bidmachine/protobuf/InitResponse;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lio/bidmachine/c4;->a(Lio/bidmachine/c4;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 10
    .line 11
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    invoke-static {v0, v2, v3}, Lio/bidmachine/c4;->b(Lio/bidmachine/c4;J)J

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 19
    .line 20
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 21
    .line 22
    invoke-static {v0}, Lio/bidmachine/c4;->c(Lio/bidmachine/c4;)Ljava/lang/Runnable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lio/bidmachine/core/g;->g(Ljava/lang/Runnable;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 30
    .line 31
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 32
    .line 33
    invoke-static {v0}, Lio/bidmachine/c4;->d(Lio/bidmachine/c4;)Lio/bidmachine/c4$c;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    iget-object v0, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 40
    .line 41
    iget-object v0, v0, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 42
    .line 43
    invoke-static {v0}, Lio/bidmachine/c4;->d(Lio/bidmachine/c4;)Lio/bidmachine/c4$c;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0, p1}, Lio/bidmachine/core/NetworkRequest$b;->onSuccess(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    :cond_0
    iget-object p1, p0, Lio/bidmachine/c4$a$a;->a:Lio/bidmachine/c4$a;

    .line 51
    .line 52
    iget-object p1, p1, Lio/bidmachine/c4$a;->a:Lio/bidmachine/c4;

    .line 53
    .line 54
    invoke-static {p1}, Lio/bidmachine/c4;->e(Lio/bidmachine/c4;)Lwq/k;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    sget-object v0, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 59
    .line 60
    invoke-interface {p1, v0, v1, v1, v1}, Lwq/k;->eventFinish(Lio/bidmachine/TrackEventType;Lio/bidmachine/AdsType;Lwq/a;Lfr/a;)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lio/bidmachine/protobuf/InitResponse;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lio/bidmachine/c4$a$a;->e(Lio/bidmachine/protobuf/InitResponse;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
