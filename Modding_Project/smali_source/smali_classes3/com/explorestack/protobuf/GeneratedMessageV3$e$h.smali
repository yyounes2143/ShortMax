.class Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;
.super Ljava/lang/Object;
.source "GeneratedMessageV3.java"

# interfaces
.implements Lcom/explorestack/protobuf/GeneratedMessageV3$e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$b;,
        Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;
    }
.end annotation


# instance fields
.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field protected final b:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field protected final c:Z

.field protected final d:Z

.field protected final e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getContainingOneof()Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->isSynthetic()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move v10, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move v10, v2

    .line 26
    :goto_0
    iput-boolean v10, v0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->c:Z

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getSyntax()Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;->PROTO2:Lcom/explorestack/protobuf/Descriptors$FileDescriptor$Syntax;

    .line 37
    .line 38
    if-eq v1, v4, :cond_2

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->hasOptionalKeyword()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    if-nez v10, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    .line 53
    .line 54
    if-ne v1, v4, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    move v11, v2

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    :goto_1
    move v11, v3

    .line 60
    :goto_2
    iput-boolean v11, v0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->d:Z

    .line 61
    .line 62
    new-instance v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$b;

    .line 63
    .line 64
    move-object v4, v1

    .line 65
    move-object v5, p1

    .line 66
    move-object v6, p2

    .line 67
    move-object v7, p3

    .line 68
    move-object/from16 v8, p4

    .line 69
    .line 70
    move-object/from16 v9, p5

    .line 71
    .line 72
    invoke-direct/range {v4 .. v11}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$b;-><init>(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;ZZ)V

    .line 73
    .line 74
    .line 75
    move-object v2, p1

    .line 76
    iput-object v2, v0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 77
    .line 78
    iget-object v2, v1, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$b;->a:Ljava/lang/reflect/Method;

    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iput-object v2, v0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->a:Ljava/lang/Class;

    .line 85
    .line 86
    invoke-static {v1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->q(Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$b;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, v0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 91
    .line 92
    return-void
.end method

.method static q(Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$b;)Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;
    .locals 0

    .line 1
    return-object p0
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->b(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "getRepeatedField() called on a singular field."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public e(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "addRepeatedField() called on a singular field."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public f(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->d(Lcom/explorestack/protobuf/GeneratedMessageV3;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    xor-int/2addr p1, v1

    .line 42
    return p1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->f(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public g(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->c:Z

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->e(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    :goto_0
    return v1

    .line 27
    :cond_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->c(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->getDefaultValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    xor-int/2addr p1, v1

    .line 42
    return p1

    .line 43
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 44
    .line 45
    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->g(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    return p1
.end method

.method public h(Lcom/explorestack/protobuf/GeneratedMessageV3;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "getRepeatedFieldSize() called on a singular field."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public i(Lcom/explorestack/protobuf/GeneratedMessageV3;I)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "getRepeatedField() called on a singular field."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public j(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->e:Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h$a;->j(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public k(Lcom/explorestack/protobuf/GeneratedMessageV3$b;ILjava/lang/Object;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "setRepeatedField() called on a singular field."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public l(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)I
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "getRepeatedFieldSize() called on a singular field."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public m(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "getFieldBuilder() called on a non-Message type."

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public n(Lcom/explorestack/protobuf/GeneratedMessageV3$b;I)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p2, "getRepeatedFieldBuilder() called on a non-Message type."

    .line 4
    .line 5
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public o(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$e$h;->b(Lcom/explorestack/protobuf/GeneratedMessageV3;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public p()Lcom/explorestack/protobuf/Message$Builder;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "newBuilderForField() called on a non-Message type."

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method
