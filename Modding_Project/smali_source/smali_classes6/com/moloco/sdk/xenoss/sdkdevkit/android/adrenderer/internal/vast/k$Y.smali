.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->v(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseWrapperTag$$inlined$iterateTag$1"
    f = "VastParser.kt"
    l = {
        0x7e,
        0x7f,
        0x80,
        0x81,
        0x82
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,117:1\n237#2,2:118\n239#2,14:121\n1#3:120\n*E\n"
    }
.end annotation


# instance fields
.field public h:I

.field public i:I

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lorg/xmlpull/v1/XmlPullParser;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic n:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Ljava/util/List;

.field public final synthetic q:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->o:Ljava/util/List;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->p:Ljava/util/List;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->q:Ljava/util/List;

    .line 14
    .line 15
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 17
    .line 18
    .line 19
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 10
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
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->o:Ljava/util/List;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->p:Ljava/util/List;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->q:Ljava/util/List;

    .line 16
    .line 17
    move-object v0, v9

    .line 18
    move-object v2, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 20
    .line 21
    .line 22
    iput-object p1, v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 23
    .line 24
    return-object v9
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->i:I

    .line 6
    .line 7
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v1, :cond_5

    .line 13
    .line 14
    if-eq v1, v6, :cond_4

    .line 15
    .line 16
    if-eq v1, v5, :cond_3

    .line 17
    .line 18
    if-eq v1, v4, :cond_2

    .line 19
    .line 20
    if-eq v1, v3, :cond_1

    .line 21
    .line 22
    if-ne v1, v2, :cond_0

    .line 23
    .line 24
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 25
    .line 26
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_5

    .line 30
    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 32
    .line 33
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 34
    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1

    .line 39
    :cond_1
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 40
    .line 41
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_2

    .line 45
    .line 46
    :cond_2
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :cond_3
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 54
    .line 55
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 56
    .line 57
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    goto/16 :goto_4

    .line 63
    .line 64
    :cond_4
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 65
    .line 66
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_3

    .line 74
    .line 75
    :cond_5
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast p1, Lgt/g0;

    .line 81
    .line 82
    invoke-static {p1}, Lkotlinx/coroutines/i;->g(Lgt/g0;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->M(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-eqz p1, :cond_6

    .line 92
    .line 93
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 94
    .line 95
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 96
    .line 97
    .line 98
    :cond_6
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->B(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_7

    .line 105
    .line 106
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object p1

    .line 109
    :cond_7
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_1a

    .line 116
    .line 117
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 118
    .line 119
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    move v1, p1

    .line 124
    :goto_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 125
    .line 126
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-lt p1, v1, :cond_19

    .line 131
    .line 132
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 133
    .line 134
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 135
    .line 136
    .line 137
    move-result p1

    .line 138
    sub-int/2addr p1, v1

    .line 139
    const/4 v7, 0x0

    .line 140
    if-eqz p1, :cond_13

    .line 141
    .line 142
    if-eq p1, v6, :cond_8

    .line 143
    .line 144
    goto/16 :goto_7

    .line 145
    .line 146
    :cond_8
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-eqz p1, :cond_18

    .line 153
    .line 154
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 155
    .line 156
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v8

    .line 160
    if-eqz v8, :cond_18

    .line 161
    .line 162
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    sparse-switch v9, :sswitch_data_0

    .line 167
    .line 168
    .line 169
    goto/16 :goto_7

    .line 170
    .line 171
    :sswitch_0
    const-string v9, "Impression"

    .line 172
    .line 173
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v8

    .line 177
    if-nez v8, :cond_9

    .line 178
    .line 179
    goto/16 :goto_7

    .line 180
    .line 181
    :cond_9
    iput-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 182
    .line 183
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 184
    .line 185
    iput v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->i:I

    .line 186
    .line 187
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->q0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    if-ne p1, v0, :cond_a

    .line 192
    .line 193
    return-object v0

    .line 194
    :cond_a
    :goto_1
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/p;

    .line 195
    .line 196
    if-eqz p1, :cond_18

    .line 197
    .line 198
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->o:Ljava/util/List;

    .line 199
    .line 200
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    .line 202
    .line 203
    goto/16 :goto_7

    .line 204
    .line 205
    :sswitch_1
    const-string v9, "Error"

    .line 206
    .line 207
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    if-nez v8, :cond_b

    .line 212
    .line 213
    goto/16 :goto_7

    .line 214
    .line 215
    :cond_b
    iput-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 216
    .line 217
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 218
    .line 219
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->i:I

    .line 220
    .line 221
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Y(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    if-ne p1, v0, :cond_c

    .line 226
    .line 227
    return-object v0

    .line 228
    :cond_c
    :goto_2
    check-cast p1, Ljava/lang/String;

    .line 229
    .line 230
    if-eqz p1, :cond_18

    .line 231
    .line 232
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->p:Ljava/util/List;

    .line 233
    .line 234
    invoke-interface {v7, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_7

    .line 238
    .line 239
    :sswitch_2
    const-string v7, "VASTAdTagURI"

    .line 240
    .line 241
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    if-nez v7, :cond_d

    .line 246
    .line 247
    goto/16 :goto_7

    .line 248
    .line 249
    :cond_d
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 250
    .line 251
    iput-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 252
    .line 253
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 254
    .line 255
    iput v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->i:I

    .line 256
    .line 257
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->z0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    if-ne p1, v0, :cond_e

    .line 262
    .line 263
    return-object v0

    .line 264
    :cond_e
    :goto_3
    iput-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 265
    .line 266
    goto/16 :goto_7

    .line 267
    .line 268
    :sswitch_3
    const-string v7, "AdSystem"

    .line 269
    .line 270
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    move-result v7

    .line 274
    if-nez v7, :cond_f

    .line 275
    .line 276
    goto/16 :goto_7

    .line 277
    .line 278
    :cond_f
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 279
    .line 280
    iput-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 281
    .line 282
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 283
    .line 284
    iput v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->i:I

    .line 285
    .line 286
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->E(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    if-ne p1, v0, :cond_10

    .line 291
    .line 292
    return-object v0

    .line 293
    :cond_10
    :goto_4
    iput-object p1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 294
    .line 295
    goto/16 :goto_7

    .line 296
    .line 297
    :sswitch_4
    const-string v9, "Creatives"

    .line 298
    .line 299
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 300
    .line 301
    .line 302
    move-result v8

    .line 303
    if-nez v8, :cond_11

    .line 304
    .line 305
    goto :goto_7

    .line 306
    :cond_11
    iput-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->j:Ljava/lang/Object;

    .line 307
    .line 308
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->h:I

    .line 309
    .line 310
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->i:I

    .line 311
    .line 312
    const/4 v7, 0x0

    .line 313
    invoke-static {p1, v7, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->F(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    if-ne p1, v0, :cond_12

    .line 318
    .line 319
    return-object v0

    .line 320
    :cond_12
    :goto_5
    check-cast p1, Ljava/util/List;

    .line 321
    .line 322
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->q:Ljava/util/List;

    .line 323
    .line 324
    invoke-interface {v7, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 325
    .line 326
    .line 327
    goto :goto_7

    .line 328
    :cond_13
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 329
    .line 330
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 331
    .line 332
    .line 333
    move-result p1

    .line 334
    if-eqz p1, :cond_15

    .line 335
    .line 336
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 337
    .line 338
    iget-object v8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 339
    .line 340
    const-string v9, "followAdditionalWrappers"

    .line 341
    .line 342
    invoke-static {p1, v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->A(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object p1

    .line 346
    if-eqz p1, :cond_14

    .line 347
    .line 348
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 353
    .line 354
    .line 355
    move-result-object v7

    .line 356
    :cond_14
    iput-object v7, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 357
    .line 358
    goto :goto_7

    .line 359
    :cond_15
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 360
    .line 361
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->V(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 362
    .line 363
    .line 364
    move-result p1

    .line 365
    if-eqz p1, :cond_17

    .line 366
    .line 367
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 368
    .line 369
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    if-eqz p1, :cond_17

    .line 374
    .line 375
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-eqz p1, :cond_16

    .line 380
    .line 381
    goto :goto_6

    .line 382
    :cond_16
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 383
    .line 384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object p1

    .line 388
    const-string v7, "getText(...)"

    .line 389
    .line 390
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    invoke-static {p1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 394
    .line 395
    .line 396
    move-result-object p1

    .line 397
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    goto :goto_7

    .line 401
    :cond_17
    :goto_6
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 402
    .line 403
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->H(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 404
    .line 405
    .line 406
    move-result p1

    .line 407
    if-eqz p1, :cond_18

    .line 408
    .line 409
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 410
    .line 411
    return-object p1

    .line 412
    :cond_18
    :goto_7
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 413
    .line 414
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 415
    .line 416
    .line 417
    goto/16 :goto_0

    .line 418
    .line 419
    :cond_19
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 420
    .line 421
    return-object p1

    .line 422
    :cond_1a
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 423
    .line 424
    const-string v0, "iterateCurrentTagEvents call is allowed only for START_TAG event"

    .line 425
    .line 426
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 427
    .line 428
    .line 429
    throw p1

    .line 430
    nop

    .line 431
    :sswitch_data_0
    .sparse-switch
        -0x64e1597c -> :sswitch_4
        -0x616317ae -> :sswitch_3
        -0x2303541f -> :sswitch_2
        0x401e1e8 -> :sswitch_1
        0x7e026e29 -> :sswitch_0
    .end sparse-switch
.end method
