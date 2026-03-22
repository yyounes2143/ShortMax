.class final Lio/bidmachine/a1;
.super Ljava/lang/Object;
.source "AppParams.java"


# instance fields
.field private final a:Lio/bidmachine/b1;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/b1;)V
    .locals 0
    .param p1    # Lio/bidmachine/b1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/a1;->a:Lio/bidmachine/b1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/explorestack/protobuf/adcom/Context$App$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setBundle(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Lio/bidmachine/core/g;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setVer(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {p1}, Lio/bidmachine/core/g;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->setName(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 38
    .line 39
    .line 40
    :cond_2
    iget-object v0, p0, Lio/bidmachine/a1;->a:Lio/bidmachine/b1;

    .line 41
    .line 42
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/b1;->a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method b(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/sdk/App$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lio/bidmachine/core/g;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-static {p1}, Lio/bidmachine/core/g;->t(Landroid/content/Context;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setAppName(Ljava/lang/String;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-static {}, Lio/bidmachine/i4;->c()J

    .line 28
    .line 29
    .line 30
    move-result-wide v0

    .line 31
    invoke-static {v0, v1}, Lfr/e;->o(J)Lcom/explorestack/protobuf/Timestamp;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 36
    .line 37
    .line 38
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lio/bidmachine/j2;->J(Landroid/content/Context;)J

    .line 43
    .line 44
    .line 45
    move-result-wide v0

    .line 46
    invoke-static {v0, v1}, Lfr/e;->o(J)Lcom/explorestack/protobuf/Timestamp;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p2, v0}, Lio/bidmachine/protobuf/sdk/App$Builder;->setFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lio/bidmachine/a1;->a:Lio/bidmachine/b1;

    .line 54
    .line 55
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/b1;->b(Landroid/content/Context;Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method
