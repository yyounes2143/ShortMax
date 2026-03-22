.class public final Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "MetricsRequest.java"

# interfaces
.implements Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;",
        "Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;",
        ">;",
        "Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$b;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;->d()Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/moloco/sdk/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Iterable;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;->a(Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;Ljava/lang/Iterable;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public b(I)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;->b(Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;I)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    check-cast v0, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;->c(Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
