.class abstract Lfu/r;
.super Lfu/e0;
.source "HttpServiceMethod.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfu/r$b;,
        Lfu/r$c;,
        Lfu/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lfu/e0<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field private final a:Lfu/b0;

.field private final b:Lokhttp3/Call$Factory;

.field private final c:Lfu/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lfu/b0;Lokhttp3/Call$Factory;Lfu/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/b0;",
            "Lokhttp3/Call$Factory;",
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfu/e0;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfu/r;->a:Lfu/b0;

    .line 5
    .line 6
    iput-object p2, p0, Lfu/r;->b:Lokhttp3/Call$Factory;

    .line 7
    .line 8
    iput-object p3, p0, Lfu/r;->c:Lfu/h;

    .line 9
    .line 10
    return-void
.end method

.method private static d(Lfu/d0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lfu/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lfu/d0;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lfu/e<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p2, p3}, Lfu/d0;->a(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lfu/e;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    const-string p3, "Unable to create call adapter for %s"

    .line 8
    .line 9
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-static {p1, p0, p3, p2}, Lfu/h0;->o(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    throw p0
.end method

.method private static e(Lfu/d0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lfu/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            ">(",
            "Lfu/d0;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "TResponseT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-virtual {p0, p2, v0}, Lfu/d0;->h(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lfu/h;

    .line 6
    .line 7
    .line 8
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string v0, "Unable to create converter for %s"

    .line 12
    .line 13
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-static {p1, p0, v0, p2}, Lfu/h0;->o(Ljava/lang/reflect/Method;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    throw p0
.end method

.method static f(Lfu/d0;Ljava/lang/reflect/Method;Lfu/b0;)Lfu/r;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResponseT:",
            "Ljava/lang/Object;",
            "ReturnT:",
            "Ljava/lang/Object;",
            ">(",
            "Lfu/d0;",
            "Ljava/lang/reflect/Method;",
            "Lfu/b0;",
            ")",
            "Lfu/r<",
            "TResponseT;TReturnT;>;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-boolean v1, p2, Lfu/b0;->l:Z

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/AccessibleObject;->getAnnotations()[Ljava/lang/annotation/Annotation;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const-class v3, Lfu/c0;

    .line 9
    .line 10
    const/4 v4, 0x0

    .line 11
    if-eqz v1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    array-length v6, v5

    .line 18
    sub-int/2addr v6, v0

    .line 19
    aget-object v5, v5, v6

    .line 20
    .line 21
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 22
    .line 23
    invoke-static {v4, v5}, Lfu/h0;->f(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 24
    .line 25
    .line 26
    move-result-object v5

    .line 27
    invoke-static {v5}, Lfu/h0;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    const-class v7, Lfu/d;

    .line 32
    .line 33
    if-ne v6, v3, :cond_0

    .line 34
    .line 35
    instance-of v6, v5, Ljava/lang/reflect/ParameterizedType;

    .line 36
    .line 37
    if-eqz v6, :cond_0

    .line 38
    .line 39
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 40
    .line 41
    invoke-static {v4, v5}, Lfu/h0;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    move v8, v0

    .line 46
    move v6, v4

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-static {v5}, Lfu/h0;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    if-eq v6, v7, :cond_1

    .line 53
    .line 54
    invoke-static {v5}, Lfu/h0;->m(Ljava/lang/reflect/Type;)Z

    .line 55
    .line 56
    .line 57
    move-result v6

    .line 58
    move v8, v4

    .line 59
    :goto_0
    new-instance v9, Lfu/h0$b;

    .line 60
    .line 61
    const/4 v10, 0x0

    .line 62
    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 63
    .line 64
    aput-object v5, v0, v4

    .line 65
    .line 66
    invoke-direct {v9, v10, v7, v0}, Lfu/h0$b;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v2}, Lfu/g0;->a([Ljava/lang/annotation/Annotation;)[Ljava/lang/annotation/Annotation;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    move v11, v6

    .line 74
    goto :goto_1

    .line 75
    :cond_1
    check-cast v5, Ljava/lang/reflect/ParameterizedType;

    .line 76
    .line 77
    invoke-static {v4, v5}, Lfu/h0;->g(ILjava/lang/reflect/ParameterizedType;)Ljava/lang/reflect/Type;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    const-string p2, "Suspend functions should not return Call, as they already execute asynchronously.\nChange its return type to %s"

    .line 86
    .line 87
    invoke-static {p1, p2, p0}, Lfu/h0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    throw p0

    .line 92
    :cond_2
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    .line 93
    .line 94
    .line 95
    move-result-object v9

    .line 96
    move v8, v4

    .line 97
    move v11, v8

    .line 98
    :goto_1
    invoke-static {p0, p1, v9, v2}, Lfu/r;->d(Lfu/d0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;)Lfu/e;

    .line 99
    .line 100
    .line 101
    move-result-object v9

    .line 102
    invoke-interface {v9}, Lfu/e;->b()Ljava/lang/reflect/Type;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-class v2, Lokhttp3/Response;

    .line 107
    .line 108
    if-eq v0, v2, :cond_8

    .line 109
    .line 110
    if-eq v0, v3, :cond_7

    .line 111
    .line 112
    iget-object v2, p2, Lfu/b0;->d:Ljava/lang/String;

    .line 113
    .line 114
    const-string v3, "HEAD"

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-eqz v2, :cond_4

    .line 121
    .line 122
    const-class v2, Ljava/lang/Void;

    .line 123
    .line 124
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-nez v2, :cond_4

    .line 129
    .line 130
    invoke-static {v0}, Lfu/h0;->m(Ljava/lang/reflect/Type;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_3

    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_3
    const-string p0, "HEAD method must use Void or Unit as response type."

    .line 138
    .line 139
    new-array p2, v4, [Ljava/lang/Object;

    .line 140
    .line 141
    invoke-static {p1, p0, p2}, Lfu/h0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 142
    .line 143
    .line 144
    move-result-object p0

    .line 145
    throw p0

    .line 146
    :cond_4
    :goto_2
    invoke-static {p0, p1, v0}, Lfu/r;->e(Lfu/d0;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;)Lfu/h;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    iget-object v7, p0, Lfu/d0;->b:Lokhttp3/Call$Factory;

    .line 151
    .line 152
    if-nez v1, :cond_5

    .line 153
    .line 154
    new-instance p0, Lfu/r$a;

    .line 155
    .line 156
    invoke-direct {p0, p2, v7, p1, v9}, Lfu/r$a;-><init>(Lfu/b0;Lokhttp3/Call$Factory;Lfu/h;Lfu/e;)V

    .line 157
    .line 158
    .line 159
    return-object p0

    .line 160
    :cond_5
    if-eqz v8, :cond_6

    .line 161
    .line 162
    new-instance p0, Lfu/r$c;

    .line 163
    .line 164
    invoke-direct {p0, p2, v7, p1, v9}, Lfu/r$c;-><init>(Lfu/b0;Lokhttp3/Call$Factory;Lfu/h;Lfu/e;)V

    .line 165
    .line 166
    .line 167
    return-object p0

    .line 168
    :cond_6
    new-instance p0, Lfu/r$b;

    .line 169
    .line 170
    const/4 v10, 0x0

    .line 171
    move-object v5, p0

    .line 172
    move-object v6, p2

    .line 173
    move-object v8, p1

    .line 174
    invoke-direct/range {v5 .. v11}, Lfu/r$b;-><init>(Lfu/b0;Lokhttp3/Call$Factory;Lfu/h;Lfu/e;ZZ)V

    .line 175
    .line 176
    .line 177
    return-object p0

    .line 178
    :cond_7
    const-string p0, "Response must include generic type (e.g., Response<String>)"

    .line 179
    .line 180
    new-array p2, v4, [Ljava/lang/Object;

    .line 181
    .line 182
    invoke-static {p1, p0, p2}, Lfu/h0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 183
    .line 184
    .line 185
    move-result-object p0

    .line 186
    throw p0

    .line 187
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    const-string p2, "\'"

    .line 193
    .line 194
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-static {v0}, Lfu/h0;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    .line 207
    .line 208
    const-string p2, "\' is not a valid response body type. Did you mean ResponseBody?"

    .line 209
    .line 210
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p0

    .line 217
    new-array p2, v4, [Ljava/lang/Object;

    .line 218
    .line 219
    invoke-static {p1, p0, p2}, Lfu/h0;->n(Ljava/lang/reflect/Method;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 220
    .line 221
    .line 222
    move-result-object p0

    .line 223
    throw p0
.end method


# virtual methods
.method final a(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    new-instance v6, Lfu/t;

    .line 2
    .line 3
    iget-object v1, p0, Lfu/r;->a:Lfu/b0;

    .line 4
    .line 5
    iget-object v4, p0, Lfu/r;->b:Lokhttp3/Call$Factory;

    .line 6
    .line 7
    iget-object v5, p0, Lfu/r;->c:Lfu/h;

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v2, p1

    .line 11
    move-object v3, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Lfu/t;-><init>(Lfu/b0;Ljava/lang/Object;[Ljava/lang/Object;Lokhttp3/Call$Factory;Lfu/h;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v6, p2}, Lfu/r;->c(Lfu/d;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method protected abstract c(Lfu/d;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/d<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation
.end method
