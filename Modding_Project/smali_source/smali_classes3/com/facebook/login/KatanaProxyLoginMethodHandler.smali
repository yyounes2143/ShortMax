.class public final Lcom/facebook/login/KatanaProxyLoginMethodHandler;
.super Lcom/facebook/login/NativeAppLoginMethodHandler;
.source "KatanaProxyLoginMethodHandler.kt"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x3
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/login/KatanaProxyLoginMethodHandler$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/facebook/login/KatanaProxyLoginMethodHandler;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final f:Lcom/facebook/login/KatanaProxyLoginMethodHandler$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->f:Lcom/facebook/login/KatanaProxyLoginMethodHandler$b;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler$a;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/facebook/login/KatanaProxyLoginMethodHandler$a;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1    # Landroid/os/Parcel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Landroid/os/Parcel;)V

    .line 4
    const-string p1, "katana_proxy_auth"

    iput-object p1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/login/LoginClient;)V
    .locals 1
    .param p1    # Lcom/facebook/login/LoginClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "loginClient"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/facebook/login/NativeAppLoginMethodHandler;-><init>(Lcom/facebook/login/LoginClient;)V

    .line 2
    const-string p1, "katana_proxy_auth"

    iput-object p1, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/login/KatanaProxyLoginMethodHandler;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public p(Lcom/facebook/login/LoginClient$Request;)I
    .locals 23
    .param p1    # Lcom/facebook/login/LoginClient$Request;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "request"

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->k()Lcom/facebook/login/LoginBehavior;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    sget-boolean v3, Lcom/facebook/v;->r:Z

    .line 15
    .line 16
    const/4 v4, 0x1

    .line 17
    const/4 v5, 0x0

    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/facebook/internal/e;->a()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    if-eqz v3, :cond_0

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/facebook/login/LoginBehavior;->allowsCustomTabAuth()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    .line 32
    move v15, v4

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v15, v5

    .line 35
    :goto_0
    sget-object v1, Lcom/facebook/login/LoginClient;->m:Lcom/facebook/login/LoginClient$c;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/facebook/login/LoginClient$c;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/login/LoginMethodHandler;->d()Lcom/facebook/login/LoginClient;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Lcom/facebook/login/LoginClient;->j()Landroidx/fragment/app/FragmentActivity;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->a()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->o()Ljava/util/Set;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    move-object v8, v3

    .line 58
    check-cast v8, Ljava/util/Collection;

    .line 59
    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->z()Z

    .line 61
    .line 62
    .line 63
    move-result v10

    .line 64
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->w()Z

    .line 65
    .line 66
    .line 67
    move-result v11

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->g()Lcom/facebook/login/DefaultAudience;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    if-nez v3, :cond_1

    .line 73
    .line 74
    sget-object v3, Lcom/facebook/login/DefaultAudience;->NONE:Lcom/facebook/login/DefaultAudience;

    .line 75
    .line 76
    :cond_1
    move-object v12, v3

    .line 77
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->b()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {v0, v3}, Lcom/facebook/login/LoginMethodHandler;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v13

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->c()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v14

    .line 89
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->m()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v16

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->p()Z

    .line 94
    .line 95
    .line 96
    move-result v17

    .line 97
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->x()Z

    .line 98
    .line 99
    .line 100
    move-result v18

    .line 101
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->I()Z

    .line 102
    .line 103
    .line 104
    move-result v19

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->n()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v20

    .line 109
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->d()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v21

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/login/LoginClient$Request;->e()Lcom/facebook/login/CodeChallengeMethod;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    if-eqz v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v2

    .line 123
    :goto_1
    move-object/from16 v22, v2

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_2
    const/4 v2, 0x0

    .line 127
    goto :goto_1

    .line 128
    :goto_2
    move-object v9, v1

    .line 129
    invoke-static/range {v6 .. v22}, Lcom/facebook/internal/l0;->n(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;Ljava/lang/String;ZZLcom/facebook/login/DefaultAudience;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const-string v3, "e2e"

    .line 134
    .line 135
    invoke-virtual {v0, v3, v1}, Lcom/facebook/login/LoginMethodHandler;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    move v2, v5

    .line 143
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_4

    .line 148
    .line 149
    add-int/2addr v2, v4

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    check-cast v3, Landroid/content/Intent;

    .line 155
    .line 156
    sget-object v6, Lcom/facebook/login/LoginClient;->m:Lcom/facebook/login/LoginClient$c;

    .line 157
    .line 158
    invoke-virtual {v6}, Lcom/facebook/login/LoginClient$c;->b()I

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    invoke-virtual {v0, v3, v6}, Lcom/facebook/login/NativeAppLoginMethodHandler;->I(Landroid/content/Intent;I)Z

    .line 163
    .line 164
    .line 165
    move-result v3

    .line 166
    if-eqz v3, :cond_3

    .line 167
    .line 168
    return v2

    .line 169
    :cond_4
    return v5
.end method
