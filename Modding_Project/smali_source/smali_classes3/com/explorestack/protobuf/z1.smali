.class final Lcom/explorestack/protobuf/z1;
.super Ljava/lang/Object;
.source "StructuralMessageInfo.java"

# interfaces
.implements Lcom/explorestack/protobuf/y0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/z1$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/ProtoSyntax;

.field private final b:Z

.field private final c:[I

.field private final d:[Lcom/explorestack/protobuf/d0;

.field private final e:Lcom/explorestack/protobuf/MessageLite;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/ProtoSyntax;Z[I[Lcom/explorestack/protobuf/d0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/z1;->a:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/explorestack/protobuf/z1;->b:Z

    .line 7
    .line 8
    iput-object p3, p0, Lcom/explorestack/protobuf/z1;->c:[I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/explorestack/protobuf/z1;->d:[Lcom/explorestack/protobuf/d0;

    .line 11
    .line 12
    const-string p1, "defaultInstance"

    .line 13
    .line 14
    invoke-static {p5, p1}, Lcom/explorestack/protobuf/i0;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/explorestack/protobuf/MessageLite;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/z1;->e:Lcom/explorestack/protobuf/MessageLite;

    .line 21
    .line 22
    return-void
.end method

.method public static c(I)Lcom/explorestack/protobuf/z1$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/z1$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/explorestack/protobuf/z1$a;-><init>(I)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public a()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/z1;->c:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public b()[Lcom/explorestack/protobuf/d0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/z1;->d:[Lcom/explorestack/protobuf/d0;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDefaultInstance()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/z1;->e:Lcom/explorestack/protobuf/MessageLite;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSyntax()Lcom/explorestack/protobuf/ProtoSyntax;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/z1;->a:Lcom/explorestack/protobuf/ProtoSyntax;

    .line 2
    .line 3
    return-object v0
.end method

.method public isMessageSetWireFormat()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/z1;->b:Z

    .line 2
    .line 3
    return v0
.end method
