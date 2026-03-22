.class final Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "AppConfigureManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.manager.configure.AppConfigureManager$init$2$2$1"
    f = "AppConfigureManager.kt"
    l = {
        0x3a,
        0x3b,
        0x3d,
        0x3e
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppConfigureManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppConfigureManager.kt\ncom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,162:1\n1863#2,2:163\n*S KotlinDebug\n*F\n+ 1 AppConfigureManager.kt\ncom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1\n*L\n69#1:163,2\n*E\n"
    }
.end annotation


# instance fields
.field h:I


# direct methods
.method constructor <init>(Lrs/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;

    .line 2
    .line 3
    invoke-direct {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x4

    .line 8
    const/4 v3, 0x3

    .line 9
    const/4 v4, 0x2

    .line 10
    const/4 v5, 0x1

    .line 11
    if-eqz v1, :cond_4

    .line 12
    .line 13
    if-eq v1, v5, :cond_3

    .line 14
    .line 15
    if-eq v1, v4, :cond_2

    .line 16
    .line 17
    if-eq v1, v3, :cond_1

    .line 18
    .line 19
    if-ne v1, v2, :cond_0

    .line 20
    .line 21
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    goto :goto_3

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 26
    .line 27
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 28
    .line 29
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw p1

    .line 33
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_2

    .line 37
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    sget-object p1, Lse/a;->a:Lse/a;

    .line 49
    .line 50
    iput v5, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->h:I

    .line 51
    .line 52
    invoke-virtual {p1, p0}, Lse/a;->b(Lrs/c;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-ne p1, v0, :cond_5

    .line 57
    .line 58
    return-object v0

    .line 59
    :cond_5
    :goto_0
    sget-object p1, Lqe/a;->a:Lqe/a;

    .line 60
    .line 61
    iput v4, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->h:I

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lqe/a;->b(Lrs/c;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-ne p1, v0, :cond_6

    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_6
    :goto_1
    sget-object p1, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->a:Lcom/startshorts/androidplayer/manager/crash/CrashManager;

    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/crash/CrashManager;->e()V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lqe/b;->a:Lqe/b;

    .line 76
    .line 77
    iput v3, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->h:I

    .line 78
    .line 79
    invoke-virtual {p1, p0}, Lqe/b;->b(Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v0, :cond_7

    .line 84
    .line 85
    return-object v0

    .line 86
    :cond_7
    :goto_2
    sget-object p1, Lre/a;->a:Lre/a;

    .line 87
    .line 88
    iput v2, p0, Lcom/startshorts/androidplayer/manager/configure/AppConfigureManager$init$2$2$1;->h:I

    .line 89
    .line 90
    invoke-virtual {p1, p0}, Lre/a;->b(Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_8

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_8
    :goto_3
    sget-object p1, Lmf/b;->a:Lmf/b;

    .line 98
    .line 99
    invoke-virtual {p1}, Lmf/b;->f()V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lqe/a;->a:Lqe/a;

    .line 103
    .line 104
    invoke-virtual {p1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getHttpDNSApiEnable()Z

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-eqz p1, :cond_b

    .line 113
    .line 114
    new-instance p1, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .line 118
    .line 119
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/p;->a:Lcom/startshorts/androidplayer/manager/api/base/p$a;

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/api/base/p$a;->a()Ljava/util/List;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Ljava/util/Collection;

    .line 126
    .line 127
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 128
    .line 129
    .line 130
    new-instance v0, Ljava/util/ArrayList;

    .line 131
    .line 132
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .line 134
    .line 135
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    :cond_9
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 140
    .line 141
    .line 142
    move-result v1

    .line 143
    if-eqz v1, :cond_a

    .line 144
    .line 145
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    check-cast v1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {v1}, Ljk/v;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    if-nez v2, :cond_9

    .line 160
    .line 161
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    goto :goto_4

    .line 165
    :cond_a
    sget-object p1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 166
    .line 167
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->j(Ljava/util/List;)V

    .line 168
    .line 169
    .line 170
    :cond_b
    sget-object p1, Lud/a;->a:Lud/a;

    .line 171
    .line 172
    invoke-virtual {p1}, Lud/a;->t()Z

    .line 173
    .line 174
    .line 175
    move-result p1

    .line 176
    if-eqz p1, :cond_c

    .line 177
    .line 178
    sget-object p1, Lcom/startshorts/androidplayer/utils/ResourceHandler;->a:Lcom/startshorts/androidplayer/utils/ResourceHandler;

    .line 179
    .line 180
    const/4 v0, 0x0

    .line 181
    const/4 v1, 0x0

    .line 182
    invoke-static {p1, v0, v5, v1}, Lcom/startshorts/androidplayer/utils/ResourceHandler;->q(Lcom/startshorts/androidplayer/utils/ResourceHandler;ZILjava/lang/Object;)V

    .line 183
    .line 184
    .line 185
    :cond_c
    sget-object p1, Lqe/a;->a:Lqe/a;

    .line 186
    .line 187
    invoke-virtual {p1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getFixedReportEvent()Z

    .line 192
    .line 193
    .line 194
    move-result p1

    .line 195
    if-nez p1, :cond_d

    .line 196
    .line 197
    sget-object p1, Laf/g;->a:Laf/g;

    .line 198
    .line 199
    invoke-virtual {p1}, Laf/g;->d()V

    .line 200
    .line 201
    .line 202
    :cond_d
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 203
    .line 204
    return-object p1
.end method
