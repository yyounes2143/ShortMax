.class Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;
.super Ljava/lang/Object;
.source "JdkWithJettyBootPlatform.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field b:Z

.field c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->a:Ljava/util/List;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez p3, :cond_0

    .line 10
    .line 11
    sget-object p3, Lcom/mbridge/msdk/thrid/okhttp/internal/c;->b:[Ljava/lang/String;

    .line 12
    .line 13
    :cond_0
    const-string/jumbo v1, "supports"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_1

    .line 21
    .line 22
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 23
    .line 24
    if-ne v1, v0, :cond_1

    .line 25
    .line 26
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 27
    .line 28
    return-object p1

    .line 29
    :cond_1
    const-string/jumbo v1, "unsupported"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 41
    .line 42
    if-ne v1, v0, :cond_2

    .line 43
    .line 44
    iput-boolean v3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->b:Z

    .line 45
    .line 46
    return-object v2

    .line 47
    :cond_2
    const-string v1, "protocols"

    .line 48
    .line 49
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    .line 55
    array-length v1, p3

    .line 56
    if-nez v1, :cond_3

    .line 57
    .line 58
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->a:Ljava/util/List;

    .line 59
    .line 60
    return-object p1

    .line 61
    :cond_3
    const-string v1, "selectProtocol"

    .line 62
    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    const/4 v4, 0x0

    .line 68
    if-nez v1, :cond_4

    .line 69
    .line 70
    const-string v1, "select"

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    :cond_4
    const-class v1, Ljava/lang/String;

    .line 79
    .line 80
    if-ne v1, v0, :cond_7

    .line 81
    .line 82
    array-length v0, p3

    .line 83
    if-ne v0, v3, :cond_7

    .line 84
    .line 85
    aget-object v0, p3, v4

    .line 86
    .line 87
    instance-of v1, v0, Ljava/util/List;

    .line 88
    .line 89
    if-eqz v1, :cond_7

    .line 90
    .line 91
    check-cast v0, Ljava/util/List;

    .line 92
    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    move p2, v4

    .line 98
    :goto_0
    if-ge p2, p1, :cond_6

    .line 99
    .line 100
    iget-object p3, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->a:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p3

    .line 110
    if-eqz p3, :cond_5

    .line 111
    .line 112
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/String;

    .line 117
    .line 118
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->c:Ljava/lang/String;

    .line 119
    .line 120
    return-object p1

    .line 121
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    iget-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->a:Ljava/util/List;

    .line 125
    .line 126
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    check-cast p1, Ljava/lang/String;

    .line 131
    .line 132
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->c:Ljava/lang/String;

    .line 133
    .line 134
    return-object p1

    .line 135
    :cond_7
    const-string v0, "protocolSelected"

    .line 136
    .line 137
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result v0

    .line 141
    if-nez v0, :cond_8

    .line 142
    .line 143
    const-string v0, "selected"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    if-eqz p1, :cond_9

    .line 150
    .line 151
    :cond_8
    array-length p1, p3

    .line 152
    if-ne p1, v3, :cond_9

    .line 153
    .line 154
    aget-object p1, p3, v4

    .line 155
    .line 156
    check-cast p1, Ljava/lang/String;

    .line 157
    .line 158
    iput-object p1, p0, Lcom/mbridge/msdk/thrid/okhttp/internal/platform/e$a;->c:Ljava/lang/String;

    .line 159
    .line 160
    return-object v2

    .line 161
    :cond_9
    invoke-virtual {p2, p0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    return-object p1
.end method
