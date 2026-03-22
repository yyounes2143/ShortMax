.class final Lcom/explorestack/protobuf/q$b;
.super Ljava/lang/Object;
.source "DescriptorMessageInfoFactory.java"

# interfaces
.implements Lcom/explorestack/protobuf/i0$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/explorestack/protobuf/q;->g(Ljava/lang/Class;Lcom/explorestack/protobuf/Descriptors$Descriptor;)Lcom/explorestack/protobuf/z1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/explorestack/protobuf/q$b;->a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/q$b;->a:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getEnumType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->findValueByNumber(I)Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method
