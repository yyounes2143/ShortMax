.class public abstract Lcom/google/protobuf/kotlin/DslProxy;
.super Ljava/lang/Object;
.source "DslProxy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2
    .annotation build Lcom/google/protobuf/kotlin/OnlyForUseByGeneratedProtoCode;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string v1, "A DslProxy should never be instantiated"

    .line 7
    .line 8
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw v0
.end method
