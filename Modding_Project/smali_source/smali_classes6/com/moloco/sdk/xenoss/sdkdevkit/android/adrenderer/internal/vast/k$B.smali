.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->e0(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
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
    c = "com.moloco.sdk.xenoss.sdkdevkit.android.adrenderer.internal.vast.VastParserKt$parseLinearTag$$inlined$iterateTag$1"
    f = "VastParser.kt"
    l = {
        0x7c,
        0x7d,
        0x7e,
        0x7f,
        0x80,
        0x81
    }
    m = "invokeSuspend"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt$iterateTag$2\n+ 2 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n1#1,117:1\n408#2,14:118\n*E\n"
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

.field public final synthetic q:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic r:Z

.field public final synthetic s:Ljava/util/List;


# direct methods
.method public constructor <init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;ZLjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->o:Ljava/util/List;

    .line 10
    .line 11
    iput-object p7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->p:Ljava/util/List;

    .line 12
    .line 13
    iput-object p8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 14
    .line 15
    iput-boolean p9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->r:Z

    .line 16
    .line 17
    iput-object p10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->s:Ljava/util/List;

    .line 18
    .line 19
    const/4 p1, 0x2

    .line 20
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 21
    .line 22
    .line 23
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 12
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
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 4
    .line 5
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iget-object v6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->o:Ljava/util/List;

    .line 12
    .line 13
    iget-object v7, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->p:Ljava/util/List;

    .line 14
    .line 15
    iget-object v8, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 16
    .line 17
    iget-boolean v9, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->r:Z

    .line 18
    .line 19
    iget-object v10, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->s:Ljava/util/List;

    .line 20
    .line 21
    move-object v0, v11

    .line 22
    move-object v2, p2

    .line 23
    invoke-direct/range {v0 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;ZLjava/util/List;)V

    .line 24
    .line 25
    .line 26
    iput-object p1, v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 27
    .line 28
    return-object v11
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
    invoke-virtual {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 6
    .line 7
    packed-switch v1, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 11
    .line 12
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1

    .line 18
    :pswitch_0
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 19
    .line 20
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v2, Ljava/util/List;

    .line 23
    .line 24
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :pswitch_1
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 30
    .line 31
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 34
    .line 35
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    goto/16 :goto_7

    .line 39
    .line 40
    :pswitch_2
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v2, Ljava/util/List;

    .line 45
    .line 46
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto/16 :goto_1

    .line 50
    .line 51
    :pswitch_3
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 52
    .line 53
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v2, Ljava/util/List;

    .line 56
    .line 57
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto/16 :goto_3

    .line 61
    .line 62
    :pswitch_4
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 63
    .line 64
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto/16 :goto_5

    .line 72
    .line 73
    :pswitch_5
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 74
    .line 75
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 78
    .line 79
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_4

    .line 83
    .line 84
    :pswitch_6
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 88
    .line 89
    check-cast p1, Lgt/g0;

    .line 90
    .line 91
    invoke-static {p1}, Lkotlinx/coroutines/i;->g(Lgt/g0;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 95
    .line 96
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->M(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    .line 102
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 103
    .line 104
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 105
    .line 106
    .line 107
    :cond_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 108
    .line 109
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->B(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_1

    .line 114
    .line 115
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_16

    .line 125
    .line 126
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 127
    .line 128
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    move v1, p1

    .line 133
    :goto_0
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 134
    .line 135
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-lt p1, v1, :cond_15

    .line 140
    .line 141
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 142
    .line 143
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    sub-int/2addr p1, v1

    .line 148
    if-eqz p1, :cond_10

    .line 149
    .line 150
    const/4 v2, 0x1

    .line 151
    if-eq p1, v2, :cond_2

    .line 152
    .line 153
    goto/16 :goto_9

    .line 154
    .line 155
    :cond_2
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 156
    .line 157
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_14

    .line 162
    .line 163
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 164
    .line 165
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    if-eqz v3, :cond_14

    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    .line 172
    .line 173
    .line 174
    move-result v4

    .line 175
    sparse-switch v4, :sswitch_data_0

    .line 176
    .line 177
    .line 178
    goto/16 :goto_9

    .line 179
    .line 180
    :sswitch_0
    const-string v2, "TrackingEvents"

    .line 181
    .line 182
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    move-result v2

    .line 186
    if-nez v2, :cond_3

    .line 187
    .line 188
    goto/16 :goto_9

    .line 189
    .line 190
    :cond_3
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->p:Ljava/util/List;

    .line 191
    .line 192
    iput-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 193
    .line 194
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 195
    .line 196
    const/4 v3, 0x4

    .line 197
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 198
    .line 199
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->A0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    if-ne p1, v0, :cond_4

    .line 204
    .line 205
    return-object v0

    .line 206
    :cond_4
    :goto_1
    check-cast p1, Ljava/util/Collection;

    .line 207
    .line 208
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 209
    .line 210
    .line 211
    goto/16 :goto_9

    .line 212
    .line 213
    :sswitch_1
    const-string v2, "Icons"

    .line 214
    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    if-nez v2, :cond_5

    .line 220
    .line 221
    goto/16 :goto_9

    .line 222
    .line 223
    :cond_5
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->s:Ljava/util/List;

    .line 224
    .line 225
    iput-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 226
    .line 227
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 228
    .line 229
    const/4 v3, 0x6

    .line 230
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 231
    .line 232
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->o0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    if-ne p1, v0, :cond_6

    .line 237
    .line 238
    return-object v0

    .line 239
    :cond_6
    :goto_2
    check-cast p1, Ljava/util/Collection;

    .line 240
    .line 241
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 242
    .line 243
    .line 244
    goto/16 :goto_9

    .line 245
    .line 246
    :sswitch_2
    const-string v2, "MediaFiles"

    .line 247
    .line 248
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    move-result v2

    .line 252
    if-nez v2, :cond_7

    .line 253
    .line 254
    goto/16 :goto_9

    .line 255
    .line 256
    :cond_7
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->o:Ljava/util/List;

    .line 257
    .line 258
    iput-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 259
    .line 260
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 261
    .line 262
    const/4 v3, 0x3

    .line 263
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 264
    .line 265
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->w0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    if-ne p1, v0, :cond_8

    .line 270
    .line 271
    return-object v0

    .line 272
    :cond_8
    :goto_3
    check-cast p1, Ljava/util/Collection;

    .line 273
    .line 274
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    .line 276
    .line 277
    goto/16 :goto_9

    .line 278
    .line 279
    :sswitch_3
    const-string v4, "AdParameters"

    .line 280
    .line 281
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    if-nez v3, :cond_9

    .line 286
    .line 287
    goto/16 :goto_9

    .line 288
    .line 289
    :cond_9
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 290
    .line 291
    iput-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 292
    .line 293
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 294
    .line 295
    iput v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 296
    .line 297
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->y(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    move-result-object p1

    .line 301
    if-ne p1, v0, :cond_a

    .line 302
    .line 303
    return-object v0

    .line 304
    :cond_a
    move-object v2, v3

    .line 305
    :goto_4
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 306
    .line 307
    goto/16 :goto_9

    .line 308
    .line 309
    :sswitch_4
    const-string v2, "Duration"

    .line 310
    .line 311
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    if-nez v2, :cond_b

    .line 316
    .line 317
    goto/16 :goto_9

    .line 318
    .line 319
    :cond_b
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->n:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 320
    .line 321
    iput-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 322
    .line 323
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 324
    .line 325
    const/4 v3, 0x2

    .line 326
    iput v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 327
    .line 328
    invoke-static {p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->z0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    if-ne p1, v0, :cond_c

    .line 333
    .line 334
    return-object v0

    .line 335
    :cond_c
    :goto_5
    check-cast p1, Ljava/lang/String;

    .line 336
    .line 337
    if-eqz p1, :cond_d

    .line 338
    .line 339
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->D(Ljava/lang/String;)Ljava/lang/Long;

    .line 340
    .line 341
    .line 342
    move-result-object p1

    .line 343
    goto :goto_6

    .line 344
    :cond_d
    const/4 p1, 0x0

    .line 345
    :goto_6
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 346
    .line 347
    goto :goto_9

    .line 348
    :sswitch_5
    const-string v2, "VideoClicks"

    .line 349
    .line 350
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 351
    .line 352
    .line 353
    move-result v2

    .line 354
    if-nez v2, :cond_e

    .line 355
    .line 356
    goto :goto_9

    .line 357
    :cond_e
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->q:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 358
    .line 359
    iget-boolean v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->r:Z

    .line 360
    .line 361
    iput-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->j:Ljava/lang/Object;

    .line 362
    .line 363
    iput v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->h:I

    .line 364
    .line 365
    const/4 v4, 0x5

    .line 366
    iput v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->i:I

    .line 367
    .line 368
    invoke-static {p1, v3, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->P(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;

    .line 369
    .line 370
    .line 371
    move-result-object p1

    .line 372
    if-ne p1, v0, :cond_f

    .line 373
    .line 374
    return-object v0

    .line 375
    :cond_f
    :goto_7
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 376
    .line 377
    goto :goto_9

    .line 378
    :cond_10
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 379
    .line 380
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Q(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 381
    .line 382
    .line 383
    move-result p1

    .line 384
    if-eqz p1, :cond_11

    .line 385
    .line 386
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 387
    .line 388
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 389
    .line 390
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->c0(Lorg/xmlpull/v1/XmlPullParser;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 391
    .line 392
    .line 393
    move-result-object p1

    .line 394
    iput-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 395
    .line 396
    goto :goto_9

    .line 397
    :cond_11
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 398
    .line 399
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->V(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-eqz p1, :cond_13

    .line 404
    .line 405
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 406
    .line 407
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    if-eqz p1, :cond_13

    .line 412
    .line 413
    invoke-static {p1}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 414
    .line 415
    .line 416
    move-result p1

    .line 417
    if-eqz p1, :cond_12

    .line 418
    .line 419
    goto :goto_8

    .line 420
    :cond_12
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 421
    .line 422
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object p1

    .line 426
    const-string v2, "getText(...)"

    .line 427
    .line 428
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    invoke-static {p1}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 432
    .line 433
    .line 434
    move-result-object p1

    .line 435
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 436
    .line 437
    .line 438
    goto :goto_9

    .line 439
    :cond_13
    :goto_8
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 440
    .line 441
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->H(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 442
    .line 443
    .line 444
    move-result p1

    .line 445
    if-eqz p1, :cond_14

    .line 446
    .line 447
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 448
    .line 449
    return-object p1

    .line 450
    :cond_14
    :goto_9
    iget-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;->k:Lorg/xmlpull/v1/XmlPullParser;

    .line 451
    .line 452
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 453
    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :cond_15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 458
    .line 459
    return-object p1

    .line 460
    :cond_16
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    .line 461
    .line 462
    const-string v0, "iterateCurrentTagEvents call is allowed only for START_TAG event"

    .line 463
    .line 464
    invoke-direct {p1, v0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    throw p1

    .line 468
    nop

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 470
    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    .line 476
    .line 477
    .line 478
    .line 479
    .line 480
    .line 481
    .line 482
    .line 483
    .line 484
    .line 485
    .line 486
    .line 487
    :sswitch_data_0
    .sparse-switch
        -0x7a2ef3da -> :sswitch_5
        -0x72e14e4c -> :sswitch_4
        -0x50659173 -> :sswitch_3
        -0x16f37aed -> :sswitch_2
        0x43362fa -> :sswitch_1
        0x247392d0 -> :sswitch_0
    .end sparse-switch
.end method
