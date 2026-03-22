.class Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;
.super Ljava/lang/Object;
.source "GeneratedMessageV3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageV3$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/reflect/Method;

.field private final d:Ljava/lang/reflect/Method;

.field private final e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;


# direct methods
.method constructor <init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$Descriptor;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/explorestack/protobuf/GeneratedMessageV3$b;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->getOneofs()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->isSynthetic()Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v0, 0x0

    .line 21
    const/4 v1, 0x0

    .line 22
    if-eqz p2, :cond_0

    .line 23
    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->getFields()Ljava/util/List;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string p2, "get"

    .line 47
    .line 48
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v2, "Case"

    .line 55
    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-array v3, v1, [Ljava/lang/Class;

    .line 64
    .line 65
    invoke-static {p4, p1, v3}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    .line 70
    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    new-array p2, v1, [Ljava/lang/Class;

    .line 90
    .line 91
    invoke-static {p5, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    .line 96
    .line 97
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 98
    .line 99
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p2, "clear"

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    new-array p2, v1, [Ljava/lang/Class;

    .line 117
    .line 118
    invoke-static {p5, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1000(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->d:Ljava/lang/reflect/Method;

    .line 123
    .line 124
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->d:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {v0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public b(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 13
    .line 14
    :cond_0
    return-object v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, p1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/explorestack/protobuf/i0$c;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$c;->getNumber()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_2
    return-object v1
.end method

.method public c(Lcom/explorestack/protobuf/GeneratedMessageV3;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 13
    .line 14
    :cond_0
    return-object v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    new-array v2, v2, [Ljava/lang/Object;

    .line 19
    .line 20
    invoke-static {v0, p1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/explorestack/protobuf/i0$c;

    .line 25
    .line 26
    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$c;->getNumber()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->a:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 33
    .line 34
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Descriptors$Descriptor;->findFieldByNumber(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1

    .line 39
    :cond_2
    return-object v1
.end method

.method public d(Lcom/explorestack/protobuf/GeneratedMessageV3$b;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->c:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v0, p1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/explorestack/protobuf/i0$c;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$c;->getNumber()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p1, 0x1

    .line 29
    return p1
.end method

.method public e(Lcom/explorestack/protobuf/GeneratedMessageV3;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->e:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lcom/explorestack/protobuf/GeneratedMessageV3;->hasField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageV3$e$c;->b:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    new-array v2, v1, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-static {v0, p1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3;->access$1100(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/explorestack/protobuf/i0$c;

    .line 20
    .line 21
    invoke-interface {p1}, Lcom/explorestack/protobuf/i0$c;->getNumber()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 p1, 0x1

    .line 29
    return p1
.end method
