.class final Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;
.super Ljava/lang/Object;
.source "Jdk8WithJettyBootPlatform.kt"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AlpnProvider"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private selected:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private unsupported:Z


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "protocols"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getSelected()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnsupported()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    .line 2
    .line 3
    return v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/reflect/Method;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const-string v0, "proxy"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "method"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    if-nez p3, :cond_0

    .line 13
    .line 14
    new-array p3, p1, [Ljava/lang/Object;

    .line 15
    .line 16
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const-string v2, "supports"

    .line 25
    .line 26
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 33
    .line 34
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_1

    .line 39
    .line 40
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 41
    .line 42
    return-object p1

    .line 43
    :cond_1
    const-string/jumbo v2, "unsupported"

    .line 44
    .line 45
    .line 46
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    const/4 v3, 0x0

    .line 51
    const/4 v4, 0x1

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 55
    .line 56
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v2

    .line 60
    if-eqz v2, :cond_2

    .line 61
    .line 62
    iput-boolean v4, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    .line 63
    .line 64
    return-object v3

    .line 65
    :cond_2
    const-string v2, "protocols"

    .line 66
    .line 67
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-eqz v2, :cond_3

    .line 72
    .line 73
    array-length v2, p3

    .line 74
    if-nez v2, :cond_3

    .line 75
    .line 76
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_3
    const-string v2, "selectProtocol"

    .line 80
    .line 81
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    const-string v5, "null cannot be cast to non-null type kotlin.String"

    .line 86
    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    const-string v2, "select"

    .line 90
    .line 91
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    if-eqz v2, :cond_7

    .line 96
    .line 97
    :cond_4
    const-class v2, Ljava/lang/String;

    .line 98
    .line 99
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_7

    .line 104
    .line 105
    array-length v1, p3

    .line 106
    if-ne v1, v4, :cond_7

    .line 107
    .line 108
    aget-object v1, p3, p1

    .line 109
    .line 110
    instance-of v2, v1, Ljava/util/List;

    .line 111
    .line 112
    if-eqz v2, :cond_7

    .line 113
    .line 114
    const-string p2, "null cannot be cast to non-null type kotlin.collections.List<*>"

    .line 115
    .line 116
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    check-cast v1, Ljava/util/List;

    .line 120
    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 122
    .line 123
    .line 124
    move-result p2

    .line 125
    if-ltz p2, :cond_6

    .line 126
    .line 127
    move p3, p1

    .line 128
    :goto_0
    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    check-cast v0, Ljava/lang/String;

    .line 136
    .line 137
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    .line 138
    .line 139
    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    if-eqz v2, :cond_5

    .line 144
    .line 145
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_5
    if-eq p3, p2, :cond_6

    .line 149
    .line 150
    add-int/lit8 p3, p3, 0x1

    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->protocols:Ljava/util/List;

    .line 154
    .line 155
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/lang/String;

    .line 160
    .line 161
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    .line 162
    .line 163
    return-object p1

    .line 164
    :cond_7
    const-string v1, "protocolSelected"

    .line 165
    .line 166
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    move-result v1

    .line 170
    if-nez v1, :cond_8

    .line 171
    .line 172
    const-string v1, "selected"

    .line 173
    .line 174
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_9

    .line 179
    .line 180
    :cond_8
    array-length v0, p3

    .line 181
    if-ne v0, v4, :cond_9

    .line 182
    .line 183
    aget-object p1, p3, p1

    .line 184
    .line 185
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    check-cast p1, Ljava/lang/String;

    .line 189
    .line 190
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    .line 191
    .line 192
    return-object v3

    .line 193
    :cond_9
    array-length p1, p3

    .line 194
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    invoke-virtual {p2, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    return-object p1
.end method

.method public final setSelected(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->selected:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setUnsupported(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/applovin/shadow/okhttp3/internal/platform/Jdk8WithJettyBootPlatform$AlpnProvider;->unsupported:Z

    .line 2
    .line 3
    return-void
.end method
