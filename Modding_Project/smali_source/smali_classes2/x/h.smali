.class public abstract Lx/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lms/i;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lx/g;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lx/h;->a:Lms/i;

    .line 11
    .line 12
    return-void
.end method

.method public static final a()Lcom/google/gson/Gson;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/Gson;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 2

    .line 1
    const-string v0, "clazz"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    if-eqz p0, :cond_7

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    new-instance p1, Lx/a;

    .line 26
    .line 27
    invoke-direct {p1}, Lx/a;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 36
    .line 37
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    new-instance p1, Lx/b;

    .line 44
    .line 45
    invoke-direct {p1}, Lx/b;-><init>()V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 54
    .line 55
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_3

    .line 60
    .line 61
    new-instance p1, Lx/c;

    .line 62
    .line 63
    invoke-direct {p1}, Lx/c;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    goto :goto_0

    .line 71
    :cond_3
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 72
    .line 73
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-eqz v1, :cond_4

    .line 78
    .line 79
    new-instance p1, Lx/d;

    .line 80
    .line 81
    invoke-direct {p1}, Lx/d;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 90
    .line 91
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-eqz v1, :cond_5

    .line 96
    .line 97
    new-instance p1, Lx/e;

    .line 98
    .line 99
    invoke-direct {p1}, Lx/e;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    goto :goto_0

    .line 107
    :cond_5
    const-class v1, Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_6

    .line 114
    .line 115
    new-instance p1, Lx/f;

    .line 116
    .line 117
    invoke-direct {p1}, Lx/f;-><init>()V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    goto :goto_0

    .line 125
    :cond_6
    new-instance v1, Ldd/e;

    .line 126
    .line 127
    invoke-direct {v1, p1}, Ldd/e;-><init>(Ljava/lang/Class;)V

    .line 128
    .line 129
    .line 130
    move-object p1, v1

    .line 131
    :goto_0
    :try_start_0
    sget-object v1, Lx/h;->a:Lms/i;

    .line 132
    .line 133
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    check-cast v1, Lcom/google/gson/Gson;

    .line 138
    .line 139
    invoke-virtual {v1, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .line 145
    move-object v0, p0

    .line 146
    :catch_0
    :cond_7
    :goto_1
    return-object v0
.end method
