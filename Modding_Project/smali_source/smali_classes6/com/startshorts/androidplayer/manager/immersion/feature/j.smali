.class public final Lcom/startshorts/androidplayer/manager/immersion/feature/j;
.super Ljava/lang/Object;
.source "HttpDNSFeature.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/immersion/feature/j$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHttpDNSFeature.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HttpDNSFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/HttpDNSFeature\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n1755#2,3:87\n1863#2,2:90\n*S KotlinDebug\n*F\n+ 1 HttpDNSFeature.kt\ncom/startshorts/androidplayer/manager/immersion/feature/HttpDNSFeature\n*L\n30#1:87,3\n64#1:90,2\n*E\n"
    }
.end annotation


# instance fields
.field private a:Z

.field private final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhf/l;

    .line 5
    .line 6
    invoke-direct {v0}, Lhf/l;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->b:Lms/i;

    .line 14
    .line 15
    new-instance v0, Lhf/m;

    .line 16
    .line 17
    invoke-direct {v0}, Lhf/m;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->c:Lms/i;

    .line 25
    .line 26
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic c()Ljava/util/HashSet;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->j()Ljava/util/HashSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->n(Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic f()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->k()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method private final h()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->c:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/HashSet;

    .line 8
    .line 9
    return-object v0
.end method

.method private final i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    .line 9
    return-object v0
.end method

.method private static final j()Ljava/util/HashSet;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final k()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final l(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Z
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-ne p0, p1, :cond_0

    .line 15
    .line 16
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
.end method

.method private static final m(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method private static final n(Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getDomain()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x5f

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/dns/DomainIpInfo;->getIps()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    return-object p0
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)V
    .locals 16
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "message"

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->b()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$MessageType;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v2, Lcom/startshorts/androidplayer/manager/immersion/feature/j$a;->$EnumSwitchMapping$0:[I

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    aget v0, v2, v0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    const-string v3, "err_code"

    .line 22
    .line 23
    if-eq v0, v2, :cond_5

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v0, v2, :cond_3

    .line 27
    .line 28
    const/4 v1, 0x3

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    .line 31
    :cond_0
    move-object/from16 v2, p0

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->i()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->i()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, Ljava/lang/Iterable;

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_0

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    check-cast v1, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 67
    .line 68
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 69
    .line 70
    invoke-virtual {v4, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    sget-object v1, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->a:Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/api/dns/HttpDNSIPPools;->d()Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v7, v1

    .line 81
    check-cast v7, Ljava/lang/Iterable;

    .line 82
    .line 83
    new-instance v13, Lhf/p;

    .line 84
    .line 85
    invoke-direct {v13}, Lhf/p;-><init>()V

    .line 86
    .line 87
    .line 88
    const/16 v14, 0x1e

    .line 89
    .line 90
    const/4 v15, 0x0

    .line 91
    const-string v8, ","

    .line 92
    .line 93
    const/4 v9, 0x0

    .line 94
    const/4 v10, 0x0

    .line 95
    const/4 v11, 0x0

    .line 96
    const/4 v12, 0x0

    .line 97
    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    const-string v2, "ip_list"

    .line 102
    .line 103
    invoke-virtual {v6, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->h()Ljava/util/HashSet;

    .line 107
    .line 108
    .line 109
    move-result-object v7

    .line 110
    const/16 v14, 0x3e

    .line 111
    .line 112
    const-string v8, ","

    .line 113
    .line 114
    const/4 v13, 0x0

    .line 115
    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v6, v3, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 123
    .line 124
    const/4 v9, 0x4

    .line 125
    const-string v5, "http_dns_replay_video_failed"

    .line 126
    .line 127
    const-wide/16 v7, 0x0

    .line 128
    .line 129
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->i()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    new-instance v2, Lhf/n;

    .line 145
    .line 146
    invoke-direct {v2, v0}, Lhf/n;-><init>(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)V

    .line 147
    .line 148
    .line 149
    new-instance v4, Lhf/o;

    .line 150
    .line 151
    invoke-direct {v4, v2}, Lhf/o;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 152
    .line 153
    .line 154
    invoke-interface {v1, v4}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    move-object/from16 v2, p0

    .line 159
    .line 160
    iput-boolean v1, v2, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->a:Z

    .line 161
    .line 162
    if-eqz v1, :cond_d

    .line 163
    .line 164
    sget-object v4, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 165
    .line 166
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 167
    .line 168
    .line 169
    move-result-object v6

    .line 170
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->h()Ljava/util/HashSet;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    const/16 v14, 0x3e

    .line 175
    .line 176
    const/4 v15, 0x0

    .line 177
    const-string v8, ","

    .line 178
    .line 179
    const/4 v9, 0x0

    .line 180
    const/4 v10, 0x0

    .line 181
    const/4 v11, 0x0

    .line 182
    const/4 v12, 0x0

    .line 183
    const/4 v13, 0x0

    .line 184
    invoke-static/range {v7 .. v15}, Lkotlin/collections/CollectionsKt;->A0(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v6, v3, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 192
    .line 193
    const/4 v9, 0x4

    .line 194
    const-string v5, "http_dns_replay_video_succeed"

    .line 195
    .line 196
    const-wide/16 v7, 0x0

    .line 197
    .line 198
    invoke-static/range {v4 .. v10}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 199
    .line 200
    .line 201
    goto/16 :goto_3

    .line 202
    .line 203
    :cond_5
    move-object/from16 v2, p0

    .line 204
    .line 205
    invoke-virtual/range {p0 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    if-nez v0, :cond_6

    .line 210
    .line 211
    return-void

    .line 212
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->i()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object v4

    .line 216
    check-cast v4, Ljava/lang/Iterable;

    .line 217
    .line 218
    instance-of v5, v4, Ljava/util/Collection;

    .line 219
    .line 220
    if-eqz v5, :cond_7

    .line 221
    .line 222
    move-object v5, v4

    .line 223
    check-cast v5, Ljava/util/Collection;

    .line 224
    .line 225
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 226
    .line 227
    .line 228
    move-result v5

    .line 229
    if-eqz v5, :cond_7

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_7
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 233
    .line 234
    .line 235
    move-result-object v4

    .line 236
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    if-eqz v5, :cond_9

    .line 241
    .line 242
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v5

    .line 246
    check-cast v5, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 247
    .line 248
    invoke-virtual {v5}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;->getId()I

    .line 253
    .line 254
    .line 255
    move-result v6

    .line 256
    if-ne v5, v6, :cond_8

    .line 257
    .line 258
    return-void

    .line 259
    :cond_9
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/k;->a()Ljava/util/HashMap;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const/4 v4, 0x0

    .line 264
    if-eqz v1, :cond_a

    .line 265
    .line 266
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    goto :goto_2

    .line 271
    :cond_a
    move-object v1, v4

    .line 272
    :goto_2
    instance-of v5, v1, Ljava/lang/String;

    .line 273
    .line 274
    if-eqz v5, :cond_b

    .line 275
    .line 276
    move-object v4, v1

    .line 277
    check-cast v4, Ljava/lang/String;

    .line 278
    .line 279
    :cond_b
    if-nez v4, :cond_c

    .line 280
    .line 281
    return-void

    .line 282
    :cond_c
    sget-object v1, Lmf/b;->a:Lmf/b;

    .line 283
    .line 284
    invoke-virtual {v1, v4}, Lmf/b;->c(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    if-eqz v1, :cond_d

    .line 289
    .line 290
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->h()Ljava/util/HashSet;

    .line 291
    .line 292
    .line 293
    move-result-object v1

    .line 294
    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 295
    .line 296
    .line 297
    invoke-direct/range {p0 .. p0}, Lcom/startshorts/androidplayer/manager/immersion/feature/j;->i()Ljava/util/List;

    .line 298
    .line 299
    .line 300
    move-result-object v1

    .line 301
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    .line 303
    .line 304
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 305
    .line 306
    invoke-virtual {v5, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->C(Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;)Landroid/os/Bundle;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-virtual {v7, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 314
    .line 315
    const/4 v10, 0x4

    .line 316
    const/4 v11, 0x0

    .line 317
    const-string v6, "http_dns_replay_video_start"

    .line 318
    .line 319
    const-wide/16 v8, 0x0

    .line 320
    .line 321
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 322
    .line 323
    .line 324
    :cond_d
    :goto_3
    return-void
.end method

.method public g(Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/immersion/feature/k;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$a;->b(Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature;Lcom/startshorts/androidplayer/manager/immersion/feature/k;)Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public type()Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;->HTTP_DNS:Lcom/startshorts/androidplayer/manager/immersion/feature/IImmersionFeature$FeatureType;

    .line 2
    .line 3
    return-object v0
.end method
