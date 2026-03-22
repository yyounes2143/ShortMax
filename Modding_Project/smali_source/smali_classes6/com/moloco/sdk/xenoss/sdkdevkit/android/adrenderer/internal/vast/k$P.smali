.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->r(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseTrackingTag$$inlined$iterateTag$1"
    f = "VastParser.kt"
    l = {}
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n582#2,8:118\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lorg/xmlpull/v1/XmlPullParser;

.field public final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7
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
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    move-object v0, v6

    .line 12
    move-object v2, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->i:Ljava/lang/Object;

    .line 17
    .line 18
    return-object v6
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_c

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->i:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Lgt/g0;

    .line 14
    .line 15
    invoke-static {p1}, Lkotlinx/coroutines/i;->g(Lgt/g0;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->M(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 27
    .line 28
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->B(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 40
    .line 41
    return-object p1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_b

    .line 49
    .line 50
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 51
    .line 52
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 57
    .line 58
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-lt v0, p1, :cond_a

    .line 63
    .line 64
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 65
    .line 66
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    sub-int/2addr v0, p1

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    const/4 v1, 0x1

    .line 74
    if-eq v0, v1, :cond_2

    .line 75
    .line 76
    goto/16 :goto_3

    .line 77
    .line 78
    :cond_2
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_6

    .line 91
    .line 92
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 95
    .line 96
    const-string v2, "event"

    .line 97
    .line 98
    invoke-static {v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->A(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    const/4 v3, 0x0

    .line 103
    if-eqz v2, :cond_4

    .line 104
    .line 105
    invoke-static {v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->N(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    goto :goto_1

    .line 110
    :cond_4
    move-object v2, v3

    .line 111
    :goto_1
    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 112
    .line 113
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 114
    .line 115
    const-string v2, "offset"

    .line 116
    .line 117
    invoke-static {v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->A(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->J(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    :cond_5
    iput-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_6
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->V(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    .line 138
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 139
    .line 140
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    if-eqz v0, :cond_8

    .line 145
    .line 146
    invoke-static {v0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    if-eqz v0, :cond_7

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_7
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 154
    .line 155
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const-string v1, "getText(...)"

    .line 160
    .line 161
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-static {v0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 173
    .line 174
    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->H(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 180
    .line 181
    .line 182
    move-result v0

    .line 183
    if-eqz v0, :cond_9

    .line 184
    .line 185
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 186
    .line 187
    return-object p1

    .line 188
    :cond_9
    :goto_3
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;->j:Lorg/xmlpull/v1/XmlPullParser;

    .line 189
    .line 190
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_a
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 196
    .line 197
    return-object p1

    .line 198
    :cond_b
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 199
    .line 200
    const-string v0, "iterateCurrentTagEvents call is allowed only for START_TAG event"

    .line 201
    .line 202
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p1

    .line 206
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 207
    .line 208
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 209
    .line 210
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    throw p1
.end method
