.class public Lgr/f;
.super Lgr/d;
.source "StructDataRetriever.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgr/d<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lgr/d;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public u(Lcom/explorestack/protobuf/Struct;)V
    .locals 0
    .param p1    # Lcom/explorestack/protobuf/Struct;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lfr/e;->s(Lcom/explorestack/protobuf/Struct;)Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lgr/d;->t(Ljava/util/Map;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
