.class final Lcom/explorestack/protobuf/s0$c;
.super Lcom/explorestack/protobuf/t0$b;
.source "MapEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/s0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/explorestack/protobuf/t0$b<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field public final f:Lcom/explorestack/protobuf/j1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/j1<",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;Lcom/explorestack/protobuf/s0;Lcom/explorestack/protobuf/WireFormat$FieldType;Lcom/explorestack/protobuf/WireFormat$FieldType;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "Lcom/explorestack/protobuf/s0<",
            "TK;TV;>;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            "Lcom/explorestack/protobuf/WireFormat$FieldType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/explorestack/protobuf/s0;->b(Lcom/explorestack/protobuf/s0;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Lcom/explorestack/protobuf/s0;->d(Lcom/explorestack/protobuf/s0;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p0, p3, v0, p4, p2}, Lcom/explorestack/protobuf/t0$b;-><init>(Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;Lcom/explorestack/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iput-object p1, p0, Lcom/explorestack/protobuf/s0$c;->e:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 13
    .line 14
    new-instance p1, Lcom/explorestack/protobuf/s0$c$a;

    .line 15
    .line 16
    invoke-direct {p1, p0}, Lcom/explorestack/protobuf/s0$c$a;-><init>(Lcom/explorestack/protobuf/s0$c;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/s0$c;->f:Lcom/explorestack/protobuf/j1;

    .line 20
    .line 21
    return-void
.end method
