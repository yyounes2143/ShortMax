.class public final Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;
.super Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;
.source "AJConversionDataProvider.kt"

# interfaces
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$a;,
        Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private g:Z

.field private final h:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private i:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private l:J

.field private m:J

.field private n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->o:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const-wide/16 v0, -0x1

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->l:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->m:J

    .line 17
    .line 18
    const-string v0, ""

    .line 19
    .line 20
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->n:Ljava/lang/String;

    .line 21
    .line 22
    return-void
.end method

.method public static final synthetic A(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic B(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->m:J

    .line 2
    .line 3
    return-void
.end method

.method private final C(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "CampaignNewTag"

    .line 4
    .line 5
    const-string v2, "AJConversionDataProvider fetchAttribution -> timeout 20000ms"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v0, Lie/g;

    .line 11
    .line 12
    invoke-direct {v0, p0}, Lie/g;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v1, 0x4e20

    .line 16
    .line 17
    invoke-static {p1, v1, v2, v0}, Lcom/adjust/sdk/Adjust;->getAttributionWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAttributionReadListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private static final D(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 8

    .line 1
    const-string v0, "CampaignNewTag"

    .line 2
    .line 3
    if-eqz p1, :cond_2

    .line 4
    .line 5
    iget-object v1, p1, Lcom/adjust/sdk/AdjustAttribution;->jsonResponse:Ljava/lang/String;

    .line 6
    .line 7
    iget-object p1, p1, Lcom/adjust/sdk/AdjustAttribution;->trackerName:Ljava/lang/String;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v4, "AJConversionDataProvider fetchAttribution trackerName: "

    .line 21
    .line 22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p1, ", result -> "

    .line 29
    .line 30
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v2, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    sget-object v2, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 53
    .line 54
    new-instance v5, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$fetchAttribution$1$1;

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    invoke-direct {v5, p0, v1, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$fetchAttribution$1$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;Lrs/c;)V

    .line 58
    .line 59
    .line 60
    const/4 v6, 0x2

    .line 61
    const/4 v7, 0x0

    .line 62
    const-string v3, "AJConversionDataProvider:fetchAttributionSuccess"

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-static/range {v2 .. v7}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_2
    sget-object p0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 70
    .line 71
    const-string p1, "AJConversionDataProvider fetchAttribution -> null (timeout)"

    .line 72
    .line 73
    invoke-virtual {p0, v0, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    :goto_0
    return-void
.end method

.method private final J(Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    const-string v5, "CampaignNewTag"

    .line 36
    .line 37
    const/4 v6, 0x0

    .line 38
    if-eqz v2, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-ne v2, v3, :cond_1

    .line 43
    .line 44
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    goto/16 :goto_3

    .line 48
    .line 49
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_2
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->i:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->h:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;

    .line 64
    .line 65
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_2

    .line 69
    .line 70
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-gtz p2, :cond_4

    .line 78
    .line 79
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_4
    sget-object p2, Lfk/a;->a:Lfk/a;

    .line 83
    .line 84
    invoke-virtual {p2}, Lfk/a;->d()Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 85
    .line 86
    .line 87
    move-result-object p2

    .line 88
    if-eqz p2, :cond_c

    .line 89
    .line 90
    sget-object v2, Laa/a;->a:Laa/a;

    .line 91
    .line 92
    invoke-virtual {v2}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    if-eqz v2, :cond_5

    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    check-cast v2, Lcom/hades/aar/activity/IDActivity;

    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_5
    move-object v2, v6

    .line 106
    :goto_1
    instance-of v2, v2, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 107
    .line 108
    if-eqz v2, :cond_6

    .line 109
    .line 110
    goto/16 :goto_4

    .line 111
    .line 112
    :cond_6
    sget-object v2, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 121
    .line 122
    const-string/jumbo v0, "show ImmersionActivity failed -> ForceShowingUpdateDialog is showing"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    sget-object p2, Lfk/g;->a:Lfk/g;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 131
    .line 132
    .line 133
    move-result p1

    .line 134
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    const/4 v0, 0x3

    .line 139
    invoke-virtual {p2, v0, p1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p1

    .line 145
    :cond_7
    sget-object v2, Lud/a;->a:Lud/a;

    .line 146
    .line 147
    invoke-virtual {v2}, Lud/a;->t()Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-nez v2, :cond_8

    .line 152
    .line 153
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 154
    .line 155
    const-string/jumbo v0, "show ImmersionActivity failed -> onForeground is false"

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    sget-object p2, Lfk/g;->a:Lfk/g;

    .line 162
    .line 163
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const/4 v0, 0x4

    .line 172
    invoke-virtual {p2, v0, p1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 173
    .line 174
    .line 175
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 176
    .line 177
    return-object p1

    .line 178
    :cond_8
    iput-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->h:Ljava/lang/Object;

    .line 179
    .line 180
    iput-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->i:Ljava/lang/Object;

    .line 181
    .line 182
    iput v4, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->l:I

    .line 183
    .line 184
    const-wide/16 v7, 0x1f4

    .line 185
    .line 186
    invoke-static {v7, v8, v0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    if-ne v2, v1, :cond_9

    .line 191
    .line 192
    return-object v1

    .line 193
    :cond_9
    move-object v2, p1

    .line 194
    move-object p1, p2

    .line 195
    :goto_2
    sget-object p2, Lcom/startshorts/androidplayer/manager/ad/AdManager;->a:Lcom/startshorts/androidplayer/manager/ad/AdManager;

    .line 196
    .line 197
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/ad/AdManager;->O()Z

    .line 198
    .line 199
    .line 200
    move-result p2

    .line 201
    if-eqz p2, :cond_a

    .line 202
    .line 203
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 204
    .line 205
    const-string/jumbo p2, "show ImmersionActivity failed -> FullScreenAd is showing"

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v5, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lfk/g;->a:Lfk/g;

    .line 212
    .line 213
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 214
    .line 215
    .line 216
    move-result p2

    .line 217
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p2

    .line 221
    const/4 v0, 0x5

    .line 222
    invoke-virtual {p1, v0, p2}, Lfk/g;->b(ILjava/lang/String;)V

    .line 223
    .line 224
    .line 225
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 226
    .line 227
    return-object p1

    .line 228
    :cond_a
    sget-object p2, Lud/a;->a:Lud/a;

    .line 229
    .line 230
    invoke-virtual {p2, v4}, Lud/a;->d0(Z)V

    .line 231
    .line 232
    .line 233
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 234
    .line 235
    .line 236
    move-result-object p2

    .line 237
    new-instance v4, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$2;

    .line 238
    .line 239
    invoke-direct {v4, p1, v2, v6}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$2;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)V

    .line 240
    .line 241
    .line 242
    iput-object v6, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->h:Ljava/lang/Object;

    .line 243
    .line 244
    iput-object v6, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->i:Ljava/lang/Object;

    .line 245
    .line 246
    iput v3, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleActiveJumpImmersion$1;->l:I

    .line 247
    .line 248
    invoke-static {p2, v4, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    if-ne p1, v1, :cond_b

    .line 253
    .line 254
    return-object v1

    .line 255
    :cond_b
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 256
    .line 257
    return-object p1

    .line 258
    :cond_c
    :goto_4
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 259
    .line 260
    const-string/jumbo v0, "show ImmersionActivity failed -> TopActivity is not ImmersionActivity or Not MainActivity"

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v5, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    sget-object p2, Lfk/g;->a:Lfk/g;

    .line 267
    .line 268
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;->getShortPlayId()I

    .line 269
    .line 270
    .line 271
    move-result p1

    .line 272
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    invoke-virtual {p2, v3, p1}, Lfk/g;->b(ILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 280
    .line 281
    return-object p1
.end method

.method private final K(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "AJConversionDataProvider:handleQueryFailed -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->g(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->o()V

    .line 29
    .line 30
    .line 31
    const-string p1, ""

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->n(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object p1, Lud/b;->a:Lud/b;

    .line 37
    .line 38
    const/4 v1, 0x1

    .line 39
    invoke-virtual {p1, v1}, Lud/b;->F2(Z)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v1}, Lud/b;->T2(Z)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->u()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-nez v1, :cond_0

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->s()Z

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    if-eqz p1, :cond_0

    .line 58
    .line 59
    const-string p1, "AJConversionDataProvider:handleQueryFailed isAllAttributionHandleNotCampaign"

    .line 60
    .line 61
    invoke-virtual {v0, v2, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignParser;->x()V

    .line 67
    .line 68
    .line 69
    :cond_0
    sget-object p1, Lcom/startshorts/androidplayer/manager/configure/ad/d;->a:Lcom/startshorts/androidplayer/manager/configure/ad/d;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/configure/ad/d;->b()V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private final L(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "AJConversionDataProvider:handleQuerySuccess -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-static {p0, v2, v0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->i(Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;IILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->o()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->n(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->D(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method private final M(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "AjUdl PullUp handleUdlQuerySuccess -> "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "CampaignNewTag"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget-object v3, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 26
    .line 27
    new-instance v6, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleUdlQuerySuccess$1;

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-direct {v6, p2, p1, v0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$handleUdlQuerySuccess$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    const/4 v7, 0x2

    .line 34
    const/4 v8, 0x0

    .line 35
    const-string v4, "reportUdlAjConversionDataPullUp"

    .line 36
    .line 37
    const/4 v5, 0x0

    .line 38
    invoke-static/range {v3 .. v8}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method private final N(Landroid/content/Context;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "AJConversionDataProvider initAdjust"

    .line 4
    .line 5
    const-string v2, "CampaignNewTag"

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lid/a;->a:Lid/a;

    .line 11
    .line 12
    invoke-virtual {v1}, Lid/a;->a()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const-string/jumbo v3, "test"

    .line 17
    .line 18
    .line 19
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    const-string v3, "sandbox"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string v3, "production"

    .line 29
    .line 30
    :goto_0
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object v1, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_1
    sget-object v1, Lcom/adjust/sdk/LogLevel;->ERROR:Lcom/adjust/sdk/LogLevel;

    .line 36
    .line 37
    :goto_1
    sget v4, Lcom/startshorts/androidplayer/R$string;->app_adjust_app_key:I

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    const-string v5, "getString(...)"

    .line 44
    .line 45
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    new-instance v6, Lcom/adjust/sdk/AdjustConfig;

    .line 49
    .line 50
    invoke-direct {v6, p1, v4, v3}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v6, v1}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 54
    .line 55
    .line 56
    new-instance v1, Lie/d;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lie/d;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1}, Lcom/adjust/sdk/AdjustConfig;->setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V

    .line 62
    .line 63
    .line 64
    new-instance v1, Lie/e;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lie/e;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v6, v1}, Lcom/adjust/sdk/AdjustConfig;->setOnDeferredDeeplinkResponseListener(Lcom/adjust/sdk/OnDeferredDeeplinkResponseListener;)V

    .line 70
    .line 71
    .line 72
    sget v1, Lcom/startshorts/androidplayer/R$string;->facebook_app_id:I

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    if-lez v3, :cond_2

    .line 86
    .line 87
    invoke-virtual {v6, v1}, Lcom/adjust/sdk/AdjustConfig;->setFbAppId(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const-string v1, "AJConversionDataProvider setFbAppId for Meta Referrer plugin"

    .line 91
    .line 92
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :cond_2
    invoke-static {v6}, Lcom/adjust/sdk/Adjust;->initSdk(Lcom/adjust/sdk/AdjustConfig;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lie/f;

    .line 99
    .line 100
    invoke-direct {v0}, Lie/f;-><init>()V

    .line 101
    .line 102
    .line 103
    const-wide/16 v1, 0x1388

    .line 104
    .line 105
    invoke-static {p1, v1, v2, v0}, Lcom/adjust/sdk/Adjust;->getAdidWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAdidReadListener;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->C(Landroid/content/Context;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method private static final O(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 6

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 4
    .line 5
    const-string v0, "CampaignNewTag"

    .line 6
    .line 7
    const-string v1, "AJConversionDataProvider setOnAttributionChangedListener ->attribution NULL"

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget-object p1, Lud/b;->a:Lud/b;

    .line 13
    .line 14
    invoke-virtual {p1}, Lud/b;->s()Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_1

    .line 19
    .line 20
    const-string p1, "AJConversionDataProvider attribution null"

    .line 21
    .line 22
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->K(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 27
    .line 28
    new-instance v3, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$1$1;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    invoke-direct {v3, p1, p0, v1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$1$1;-><init>(Lcom/adjust/sdk/AdjustAttribution;Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lrs/c;)V

    .line 32
    .line 33
    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x0

    .line 36
    const-string v1, "AJConversionDataProvider:onAttributionChangedListener"

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static/range {v0 .. v5}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method

.method private static final P(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Landroid/net/Uri;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 3
    .line 4
    const-string v2, "AJConversionDataProvider:onDeepLinking"

    .line 5
    .line 6
    new-instance v4, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-direct {v4, p1, p0, v3}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$initAdjust$2$1;-><init>(Landroid/net/Uri;Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    const/4 v5, 0x2

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return v0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "AJConversionDataProvider There\'s been an error: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    const-string v1, "CampaignNewTag"

    .line 40
    .line 41
    invoke-virtual {p1, v1, p0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return v0
.end method

.method private static final Q(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lud/b;->a:Lud/b;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lud/b;->x2(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private static final R(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)Lkotlin/Unit;
    .locals 1

    .line 1
    sget-object v0, Landroidx/lifecycle/ProcessLifecycleOwner;->Companion:Landroidx/lifecycle/ProcessLifecycleOwner$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/lifecycle/ProcessLifecycleOwner$Companion;->get()Landroidx/lifecycle/LifecycleOwner;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 12
    .line 13
    .line 14
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final T()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "CampaignNewTag"

    .line 4
    .line 5
    const-string/jumbo v2, "startAdjust"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    sget-object v1, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->l(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iput-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->n:Ljava/lang/String;

    .line 37
    .line 38
    return-void
.end method

.method public static synthetic p(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->D(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic q(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->Q(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic r(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->O(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/adjust/sdk/AdjustAttribution;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Landroid/net/Uri;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->P(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Landroid/net/Uri;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic t(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->R(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic u(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic v(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->J(Lcom/startshorts/androidplayer/bean/campaign/CampaignInfo;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic w(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->L(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic x(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->M(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic y(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic z(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public final E()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final G()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final H()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final I()Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->i:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;

    .line 2
    .line 3
    return-object v0
.end method

.method public final S(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->i:Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$b;

    .line 2
    .line 3
    return-void
.end method

.method public a()Lcom/startshorts/androidplayer/manager/attribution/CampaignType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/attribution/CampaignType;->AJ_CONVERSION_DATA:Lcom/startshorts/androidplayer/manager/attribution/CampaignType;

    .line 2
    .line 3
    return-object v0
.end method

.method protected l(Landroid/content/Context;Lrs/c;)Ljava/lang/Object;
    .locals 7
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->k:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const-string v5, "CampaignNewTag"

    .line 36
    .line 37
    if-eqz v2, :cond_2

    .line 38
    .line 39
    if-ne v2, v4, :cond_1

    .line 40
    .line 41
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;

    .line 44
    .line 45
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto/16 :goto_2

    .line 49
    .line 50
    :catch_0
    move-exception p2

    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 54
    .line 55
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 65
    .line 66
    const-string v2, "AJConversionDataProvider queryInternal AJConversionDataProvider"

    .line 67
    .line 68
    invoke-virtual {p2, v5, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v2, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 72
    .line 73
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->x()Z

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    if-nez v2, :cond_3

    .line 78
    .line 79
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 80
    .line 81
    return-object p1

    .line 82
    :cond_3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e()Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-eqz v2, :cond_4

    .line 87
    .line 88
    sget-object v2, Lud/b;->a:Lud/b;

    .line 89
    .line 90
    invoke-virtual {v2}, Lud/b;->s()Z

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    if-nez v2, :cond_4

    .line 95
    .line 96
    sget-object v2, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->a:Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;

    .line 97
    .line 98
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->c()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v2, v6}, Lcom/startshorts/androidplayer/manager/attribution/CampaignReporter;->D(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->g:Z

    .line 106
    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    const-string p1, "AJConversionDataProvider is already Initialized"

    .line 110
    .line 111
    invoke-virtual {p2, v5, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 115
    .line 116
    return-object p1

    .line 117
    :cond_5
    iput-boolean v4, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->g:Z

    .line 118
    .line 119
    sget-object v2, Lud/b;->a:Lud/b;

    .line 120
    .line 121
    invoke-virtual {v2}, Lud/b;->s()Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_6

    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->f()V

    .line 128
    .line 129
    .line 130
    :cond_6
    sget-object v2, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 131
    .line 132
    sget-object v6, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 133
    .line 134
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->h()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    invoke-virtual {v2, v6}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->m(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->N(Landroid/content/Context;)V

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 145
    .line 146
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_7

    .line 151
    .line 152
    const-string p1, "AJConversionDataProvider Registering Lifecycle Observer for AJ"

    .line 153
    .line 154
    invoke-virtual {p2, v5, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    :try_start_1
    sget-object p1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 158
    .line 159
    new-instance p2, Lie/c;

    .line 160
    .line 161
    invoke-direct {p2, p0}, Lie/c;-><init>(Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;)V

    .line 162
    .line 163
    .line 164
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->h:Ljava/lang/Object;

    .line 165
    .line 166
    iput v4, v0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider$queryInternal$1;->k:I

    .line 167
    .line 168
    invoke-virtual {p1, p2, v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->u(Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 172
    if-ne p1, v1, :cond_8

    .line 173
    .line 174
    return-object v1

    .line 175
    :catch_1
    move-exception p2

    .line 176
    move-object p1, p0

    .line 177
    :goto_1
    iget-object p1, p1, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 178
    .line 179
    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 180
    .line 181
    .line 182
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 183
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v1, "AJConversionDataProvider Failed to register lifecycle observer: "

    .line 190
    .line 191
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p2

    .line 201
    invoke-virtual {p1, v5, p2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :cond_7
    const-string p1, "AJConversionDataProvider Lifecycle Observer already registered, skipping."

    .line 206
    .line 207
    invoke-virtual {p2, v5, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 211
    .line 212
    return-object p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "AJConversionDataProvider"

    .line 2
    .line 3
    return-object v0
.end method

.method public onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStart(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->a:Lcom/startshorts/androidplayer/repo/config/ConfigRepo;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/config/ConfigRepo;->x()Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->g:Z

    .line 19
    .line 20
    const-string v0, "CampaignNewTag"

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 25
    .line 26
    const-string v1, "AJConversionDataProvider is onStart startAdjust"

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/attribution/provider/AJConversionDataProvider;->T()V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :cond_1
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 36
    .line 37
    const-string v1, "AJConversionDataProvider Lifecycle onStart: Reset mIsPullUpConsumed to false"

    .line 38
    .line 39
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 2
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "owner"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onStop(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    sget-object p1, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider;->e:Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/manager/attribution/provider/BaseCampaignProvider$a;->d()V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 15
    .line 16
    const-string v0, "CampaignNewTag"

    .line 17
    .line 18
    const-string v1, "AJConversionDataProvider Lifecycle onStop: Reset mIsPullUpConsumed to false"

    .line 19
    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
