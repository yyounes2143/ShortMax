.class public Lio/bidmachine/RequestDataRetriever;
.super Ljava/lang/Object;
.source "RequestDataRetriever.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static collectContext(Landroid/content/Context;Lio/bidmachine/j2;Lio/bidmachine/v5;Lio/bidmachine/TargetingParams;Lcom/explorestack/protobuf/adcom/ConnectionType;Lio/bidmachine/AdsType;)Lcom/explorestack/protobuf/adcom/Context;
    .locals 8
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/j2;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/v5;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/explorestack/protobuf/adcom/ConnectionType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/AdsType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v7

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$App;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/j2;->n()Lio/bidmachine/Publisher;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lio/bidmachine/Publisher;->build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/j2;->h()Lio/bidmachine/a1;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, p0, v0}, Lio/bidmachine/a1;->a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p3, v0}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)V

    .line 26
    .line 27
    .line 28
    invoke-static {}, Lio/bidmachine/protobuf/sdk/App;->newBuilder()Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {p3, v1}, Lio/bidmachine/TargetingParams;->fillAppExtension(Lio/bidmachine/protobuf/sdk/App$Builder;)V

    .line 33
    .line 34
    .line 35
    invoke-static {}, Lio/bidmachine/i4;->c()J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    invoke-static {v2, v3}, Lfr/e;->o(J)Lcom/explorestack/protobuf/Timestamp;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/App$Builder;->setInstallTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p0}, Lio/bidmachine/j2;->J(Landroid/content/Context;)J

    .line 47
    .line 48
    .line 49
    move-result-wide v2

    .line 50
    invoke-static {v2, v3}, Lfr/e;->o(J)Lcom/explorestack/protobuf/Timestamp;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Lio/bidmachine/protobuf/sdk/App$Builder;->setFirstLaunchTime(Lcom/explorestack/protobuf/Timestamp;)Lio/bidmachine/protobuf/sdk/App$Builder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Lio/bidmachine/protobuf/sdk/App$Builder;->build()Lio/bidmachine/protobuf/sdk/App;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {v1}, Lcom/explorestack/protobuf/Any;->pack(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Any;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/adcom/Context$App$Builder;->addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Context$App$Builder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v7, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setApp(Lcom/explorestack/protobuf/adcom/Context$App$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p3}, Lio/bidmachine/TargetingParams;->getBlockedParams()Lio/bidmachine/BlockedParams;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Restrictions;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Lio/bidmachine/BlockedParams;->build(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v7, v1}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRestrictions(Lcom/explorestack/protobuf/adcom/Context$Restrictions$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$User;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$User$Builder;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {p2, v0}, Lio/bidmachine/v5;->e(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lio/bidmachine/v5;->g()Z

    .line 95
    .line 96
    .line 97
    move-result v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    .line 100
    invoke-virtual {p3, v0}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)V

    .line 101
    .line 102
    .line 103
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/j2;->q()Lio/bidmachine/o5;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, p0, v0, p5}, Lio/bidmachine/o5;->d(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$User$Builder;Lio/bidmachine/AdsType;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v0}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setUser(Lcom/explorestack/protobuf/adcom/Context$User$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Context$Regs;->newBuilder()Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;

    .line 114
    .line 115
    .line 116
    move-result-object p5

    .line 117
    invoke-virtual {p2, p5}, Lio/bidmachine/v5;->d(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v7, p5}, Lcom/explorestack/protobuf/adcom/Context$Builder;->setRegs(Lcom/explorestack/protobuf/adcom/Context$Regs$Builder;)Lcom/explorestack/protobuf/adcom/Context$Builder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1}, Lio/bidmachine/j2;->i()Lio/bidmachine/v3;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    invoke-virtual {p1}, Lio/bidmachine/j2;->s()Lio/bidmachine/TargetingParams;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    move-object v1, p0

    .line 132
    move-object v2, v7

    .line 133
    move-object v3, p3

    .line 134
    move-object v5, p2

    .line 135
    move-object v6, p4

    .line 136
    invoke-virtual/range {v0 .. v6}, Lio/bidmachine/v3;->a(Landroid/content/Context;Lcom/explorestack/protobuf/adcom/Context$Builder;Lio/bidmachine/TargetingParams;Lio/bidmachine/TargetingParams;Llp/d;Lcom/explorestack/protobuf/adcom/ConnectionType;)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7}, Lcom/explorestack/protobuf/adcom/Context$Builder;->build()Lcom/explorestack/protobuf/adcom/Context;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method
