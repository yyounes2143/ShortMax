.class public final Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;
.super Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;
.source "ClipboardProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nClipboardProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClipboardProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider\n+ 2 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,55:1\n116#2,11:56\n*S KotlinDebug\n*F\n+ 1 ClipboardProvider.kt\ncom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider\n*L\n28#1:56,11\n*E\n"
    }
.end annotation


# static fields
.field public static final h:Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final g:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;->h:Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;->g:Lqt/a;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->CLIPBOARD:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected l(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of p1, p2, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    move-object p1, p2

    .line 6
    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;

    .line 7
    .line 8
    iget v0, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->l:I

    .line 9
    .line 10
    const/high16 v1, -0x80000000

    .line 11
    .line 12
    and-int v2, v0, v1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    sub-int/2addr v0, v1

    .line 17
    iput v0, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;

    .line 21
    .line 22
    invoke-direct {p1, p0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iget v1, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->l:I

    .line 32
    .line 33
    const-string v2, "CampaignNewTag"

    .line 34
    .line 35
    const/4 v3, 0x2

    .line 36
    const/4 v4, 0x1

    .line 37
    const/4 v5, 0x0

    .line 38
    if-eqz v1, :cond_3

    .line 39
    .line 40
    if-eq v1, v4, :cond_2

    .line 41
    .line 42
    if-ne v1, v3, :cond_1

    .line 43
    .line 44
    iget-object v0, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v0, Lqt/a;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;

    .line 51
    .line 52
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_3

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    goto/16 :goto_4

    .line 58
    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 60
    .line 61
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    iget-object v1, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 68
    .line 69
    check-cast v1, Lqt/a;

    .line 70
    .line 71
    iget-object v6, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 72
    .line 73
    check-cast v6, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;

    .line 74
    .line 75
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    move-object p2, v1

    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 84
    .line 85
    const-string v1, "queryInternal ClipboardProvider"

    .line 86
    .line 87
    invoke-virtual {p2, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider;->g:Lqt/a;

    .line 91
    .line 92
    iput-object p0, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 93
    .line 94
    iput-object p2, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 95
    .line 96
    iput v4, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->l:I

    .line 97
    .line 98
    invoke-interface {p2, v5, p1}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    if-ne v1, v0, :cond_4

    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_4
    move-object v6, p0

    .line 106
    :goto_1
    :try_start_1
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->c()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    if-eqz v1, :cond_6

    .line 111
    .line 112
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    if-nez v1, :cond_5

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_5
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 120
    .line 121
    invoke-interface {p2, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    return-object p1

    .line 125
    :catchall_1
    move-exception p1

    .line 126
    move-object v0, p2

    .line 127
    goto :goto_4

    .line 128
    :cond_6
    :goto_2
    :try_start_2
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->f()V

    .line 129
    .line 130
    .line 131
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    new-instance v7, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$2$clipboardInfo$1;

    .line 136
    .line 137
    invoke-direct {v7, v5}, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$2$clipboardInfo$1;-><init>(Lrs/c;)V

    .line 138
    .line 139
    .line 140
    iput-object v6, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 141
    .line 142
    iput-object p2, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 143
    .line 144
    iput v3, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/ClipboardProvider$queryInternal$1;->l:I

    .line 145
    .line 146
    invoke-static {v1, v7, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 150
    if-ne p1, v0, :cond_7

    .line 151
    .line 152
    return-object v0

    .line 153
    :cond_7
    move-object v0, p2

    .line 154
    move-object p2, p1

    .line 155
    move-object p1, v6

    .line 156
    :goto_3
    :try_start_3
    check-cast p2, Ljava/lang/String;

    .line 157
    .line 158
    const/4 v1, 0x0

    .line 159
    invoke-static {p1, v1, v4, v5}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->i(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;IILjava/lang/Object;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->o()V

    .line 163
    .line 164
    .line 165
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 166
    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    const-string v4, "ClipboardProvider query success -> "

    .line 173
    .line 174
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    .line 186
    .line 187
    sget-object v1, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser;->d:Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;

    .line 188
    .line 189
    invoke-virtual {v1, p2}, Lcom/startshorts/androidplayer/manager/attribution/parser/ClipboardParser$a;->a(Ljava/lang/String;)Z

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-eqz v1, :cond_8

    .line 194
    .line 195
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->n(Ljava/lang/String;)V

    .line 196
    .line 197
    .line 198
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 199
    .line 200
    invoke-interface {v0, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 204
    .line 205
    return-object p1

    .line 206
    :goto_4
    invoke-interface {v0, v5}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 207
    .line 208
    .line 209
    throw p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "ClipboardProvider"

    .line 2
    .line 3
    return-object v0
.end method
