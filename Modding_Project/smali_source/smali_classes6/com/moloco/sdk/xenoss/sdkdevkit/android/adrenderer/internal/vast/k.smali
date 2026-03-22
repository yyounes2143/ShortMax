.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVastParser.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,940:1\n82#1:942\n117#1:943\n82#1:944\n117#1:945\n82#1:946\n117#1:947\n82#1:948\n117#1:949\n82#1:950\n117#1:951\n82#1:952\n117#1:953\n82#1:954\n117#1:955\n82#1:956\n117#1:957\n82#1:958\n117#1:959\n82#1:960\n117#1:961\n82#1:962\n117#1:963\n82#1:964\n117#1:965\n82#1:966\n117#1:967\n82#1:968\n117#1:969\n82#1:970\n117#1:971\n82#1:972\n117#1:973\n82#1:974\n117#1:975\n82#1:976\n117#1:977\n82#1:978\n117#1:979\n82#1:980\n117#1:981\n82#1:982\n117#1:983\n82#1:984\n117#1:985\n82#1:986\n117#1:987\n82#1:988\n117#1:989\n1#2:941\n*S KotlinDebug\n*F\n+ 1 VastParser.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/VastParserKt\n*L\n140#1:942\n140#1:943\n163#1:944\n163#1:945\n194#1:946\n194#1:947\n235#1:948\n235#1:949\n274#1:950\n274#1:951\n293#1:952\n293#1:953\n310#1:954\n310#1:955\n328#1:956\n328#1:957\n345#1:958\n345#1:959\n367#1:960\n367#1:961\n406#1:962\n406#1:963\n469#1:964\n469#1:965\n486#1:966\n486#1:967\n515#1:968\n515#1:969\n560#1:970\n560#1:971\n580#1:972\n580#1:973\n627#1:974\n627#1:975\n656#1:976\n656#1:977\n673#1:978\n673#1:979\n699#1:980\n699#1:981\n746#1:982\n746#1:983\n771#1:984\n771#1:985\n807#1:986\n807#1:987\n838#1:988\n838#1:989\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final b:Ljava/text/NumberFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/w;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->a:Lms/i;

    .line 11
    .line 12
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->b:Ljava/text/NumberFormat;

    .line 17
    .line 18
    return-void
.end method

.method public static final synthetic A(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic A0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->q(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic B(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->i0(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic B0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->r(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final C()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/v;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->I()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/j;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic C0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->s(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->X(Ljava/lang/String;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic D0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->t(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->H0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic E0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->u(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->Z(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic F0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->v(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    .line 4
    .line 5
    move-result-object p0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-static {p0}, Lkotlin/text/StringsKt;->t0(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    move-object v0, p0

    .line 15
    :cond_0
    return-object v0
.end method

.method public static final G0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$b;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$b;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$c;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;

    .line 99
    .line 100
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p0, Ljava/lang/Boolean;

    .line 103
    .line 104
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v3
.end method

.method public static final synthetic H(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->l0(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final H0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$d;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$d;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$e;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;

    .line 102
    .line 103
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-object v3
.end method

.method public static final I()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/j;
    .locals 1

    .line 1
    sget-object v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->a:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/j;

    .line 8
    .line 9
    return-object v0
.end method

.method public static final synthetic J(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->b0(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic K(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->a(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic L(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->e0(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic M(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->n0(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic N(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->j0(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic O(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->b(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic P(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->h0(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic Q(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->p0(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final R(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;
    .locals 2

    .line 1
    const-string v0, "image/"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->T(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string v0, "javascript"

    .line 14
    .line 15
    invoke-static {p0, v0, v1}, Lkotlin/text/StringsKt;->Z(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_1

    .line 20
    .line 21
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 p0, 0x0

    .line 25
    :goto_0
    return-object p0
.end method

.method public static final synthetic S(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->c(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final T(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->n:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->n:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->m:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->n:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->l:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->k:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->j:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->i:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->h:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 65
    .line 66
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    throw v0

    .line 72
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 81
    .line 82
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 83
    .line 84
    .line 85
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 86
    .line 87
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 88
    .line 89
    .line 90
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 91
    .line 92
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 93
    .line 94
    .line 95
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 96
    .line 97
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 98
    .line 99
    .line 100
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$l;

    .line 101
    .line 102
    const/4 v7, 0x0

    .line 103
    move-object v5, v12

    .line 104
    move-object/from16 v6, p0

    .line 105
    .line 106
    move-object v8, v0

    .line 107
    move-object v9, v3

    .line 108
    move-object v10, v14

    .line 109
    move-object v11, v15

    .line 110
    move-object/from16 v16, v12

    .line 111
    .line 112
    move-object v12, v13

    .line 113
    move-object v4, v13

    .line 114
    move/from16 v13, p1

    .line 115
    .line 116
    invoke-direct/range {v5 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$l;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Z)V

    .line 117
    .line 118
    .line 119
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->h:Ljava/lang/Object;

    .line 120
    .line 121
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->i:Ljava/lang/Object;

    .line 122
    .line 123
    iput-object v14, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->j:Ljava/lang/Object;

    .line 124
    .line 125
    iput-object v15, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->k:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->l:Ljava/lang/Object;

    .line 128
    .line 129
    const/4 v5, 0x1

    .line 130
    iput v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$m;->n:I

    .line 131
    .line 132
    move-object/from16 v5, v16

    .line 133
    .line 134
    invoke-static {v5, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    if-ne v1, v2, :cond_3

    .line 139
    .line 140
    return-object v2

    .line 141
    :cond_3
    move-object v1, v0

    .line 142
    move-object v5, v3

    .line 143
    move-object v2, v4

    .line 144
    move-object v4, v14

    .line 145
    move-object v3, v15

    .line 146
    :goto_1
    iget-object v0, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 147
    .line 148
    move-object v11, v0

    .line 149
    check-cast v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;

    .line 150
    .line 151
    if-eqz v11, :cond_4

    .line 152
    .line 153
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;

    .line 154
    .line 155
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 156
    .line 157
    move-object v7, v1

    .line 158
    check-cast v7, Ljava/lang/String;

    .line 159
    .line 160
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 161
    .line 162
    move-object v8, v1

    .line 163
    check-cast v8, Ljava/lang/Integer;

    .line 164
    .line 165
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 166
    .line 167
    move-object v9, v1

    .line 168
    check-cast v9, Ljava/lang/String;

    .line 169
    .line 170
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 171
    .line 172
    move-object v10, v1

    .line 173
    check-cast v10, Ljava/lang/String;

    .line 174
    .line 175
    move-object v6, v0

    .line 176
    invoke-direct/range {v6 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/k;)V

    .line 177
    .line 178
    .line 179
    goto :goto_2

    .line 180
    :cond_4
    const/4 v0, 0x0

    .line 181
    :goto_2
    return-object v0
.end method

.method public static final U()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    const-string v0, "HH:mm:ss.SSS"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/r;->b(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final synthetic V(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->r0(Lorg/xmlpull/v1/XmlPullParser;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic W(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Integer;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->s0(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final X(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 3
    .line 4
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->U()Ljava/text/SimpleDateFormat;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    move-object v1, v0

    .line 26
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    goto :goto_2

    .line 31
    :goto_1
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 32
    .line 33
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-eqz v2, :cond_1

    .line 46
    .line 47
    move-object v1, v0

    .line 48
    :cond_1
    check-cast v1, Ljava/lang/Long;

    .line 49
    .line 50
    if-nez v1, :cond_4

    .line 51
    .line 52
    :try_start_1
    invoke-static {}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->a0()Ljava/text/SimpleDateFormat;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    if-eqz p0, :cond_2

    .line 61
    .line 62
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    .line 63
    .line 64
    .line 65
    move-result-wide v1

    .line 66
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    goto :goto_3

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_4

    .line 73
    :cond_2
    move-object p0, v0

    .line 74
    :goto_3
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 78
    goto :goto_5

    .line 79
    :goto_4
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 80
    .line 81
    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    :goto_5
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    .line 95
    goto :goto_6

    .line 96
    :cond_3
    move-object v0, p0

    .line 97
    :goto_6
    move-object v1, v0

    .line 98
    check-cast v1, Ljava/lang/Long;

    .line 99
    .line 100
    :cond_4
    return-object v1
.end method

.method public static final synthetic Y(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->d(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final Z(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/j;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p2, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$n;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, p0, v4, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$n;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;ZLjava/util/List;)V

    .line 66
    .line 67
    .line 68
    iput-object p2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$o;->j:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object p0, p2

    .line 80
    :goto_1
    return-object p0
.end method

.method public static final a(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->j:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$f;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v4, v11

    .line 84
    move-object v5, p0

    .line 85
    move-object v7, p1

    .line 86
    move-object v8, v2

    .line 87
    move-object v9, v10

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$f;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->h:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->i:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->j:Ljava/lang/Object;

    .line 96
    .line 97
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$g;->l:I

    .line 98
    .line 99
    invoke-static {v11, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v1, :cond_3

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_3
    move-object v0, p1

    .line 107
    move-object v1, v2

    .line 108
    move-object p0, v10

    .line 109
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d;

    .line 112
    .line 113
    if-eqz p0, :cond_4

    .line 114
    .line 115
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;

    .line 116
    .line 117
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v0, Ljava/lang/String;

    .line 120
    .line 121
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 122
    .line 123
    check-cast v1, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-direct {p1, v0, v1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/c;-><init>(Ljava/lang/String;Ljava/lang/Integer;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/d;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    const/4 p1, 0x0

    .line 130
    :goto_2
    return-object p1
.end method

.method public static final a0()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 1
    const-string v0, "HH:mm:ss"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/r;->b(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public static final b(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$h;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, p0, v4, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$h;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$i;->j:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object p0, p1

    .line 80
    :goto_1
    return-object p0
.end method

.method public static final b0(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;
    .locals 2

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->X(Ljava/lang/String;)Ljava/lang/Long;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    .line 8
    .line 9
    .line 10
    move-result-wide v0

    .line 11
    new-instance p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t$b;

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t$b;-><init>(J)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->f0(Ljava/lang/String;)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    if-eqz p0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t$a;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t$a;-><init>(I)V

    .line 30
    .line 31
    .line 32
    move-object p0, v0

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    :goto_0
    return-object p0
.end method

.method public static final c(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->s:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->s:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->r:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->s:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->q:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->p:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->o:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ljava/util/List;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->n:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Ljava/util/List;

    .line 55
    .line 56
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->m:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->l:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iget-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->k:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->j:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v10, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->i:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->h:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    move-object v13, v4

    .line 84
    move-object v12, v5

    .line 85
    goto/16 :goto_1

    .line 86
    .line 87
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 88
    .line 89
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw v0

    .line 95
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 99
    .line 100
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 104
    .line 105
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 109
    .line 110
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 114
    .line 115
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 119
    .line 120
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 124
    .line 125
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v11, Ljava/util/ArrayList;

    .line 129
    .line 130
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v10, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 139
    .line 140
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 141
    .line 142
    .line 143
    new-instance v8, Ljava/util/ArrayList;

    .line 144
    .line 145
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .line 147
    .line 148
    new-instance v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$j;

    .line 149
    .line 150
    const/16 v16, 0x0

    .line 151
    .line 152
    move-object v5, v7

    .line 153
    move-object/from16 v6, p0

    .line 154
    .line 155
    move-object/from16 v18, v7

    .line 156
    .line 157
    move-object/from16 v7, v16

    .line 158
    .line 159
    move-object/from16 p0, v8

    .line 160
    .line 161
    move-object v8, v0

    .line 162
    move-object/from16 p1, v9

    .line 163
    .line 164
    move-object v9, v3

    .line 165
    move-object/from16 v19, v10

    .line 166
    .line 167
    move-object v10, v15

    .line 168
    move-object/from16 v20, v11

    .line 169
    .line 170
    move-object v11, v13

    .line 171
    move-object/from16 v21, v12

    .line 172
    .line 173
    move-object v12, v14

    .line 174
    move-object v4, v13

    .line 175
    move-object/from16 v13, v21

    .line 176
    .line 177
    move-object/from16 v22, v14

    .line 178
    .line 179
    move-object/from16 v14, v20

    .line 180
    .line 181
    move-object/from16 v23, v15

    .line 182
    .line 183
    move-object/from16 v15, p1

    .line 184
    .line 185
    move-object/from16 v16, v19

    .line 186
    .line 187
    move-object/from16 v17, p0

    .line 188
    .line 189
    invoke-direct/range {v5 .. v17}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$j;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;)V

    .line 190
    .line 191
    .line 192
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->h:Ljava/lang/Object;

    .line 193
    .line 194
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->i:Ljava/lang/Object;

    .line 195
    .line 196
    move-object/from16 v5, v23

    .line 197
    .line 198
    iput-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->j:Ljava/lang/Object;

    .line 199
    .line 200
    move-object/from16 v6, v22

    .line 201
    .line 202
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->k:Ljava/lang/Object;

    .line 203
    .line 204
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->l:Ljava/lang/Object;

    .line 205
    .line 206
    move-object/from16 v7, v21

    .line 207
    .line 208
    iput-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->m:Ljava/lang/Object;

    .line 209
    .line 210
    move-object/from16 v8, v20

    .line 211
    .line 212
    iput-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->n:Ljava/lang/Object;

    .line 213
    .line 214
    move-object/from16 v9, v19

    .line 215
    .line 216
    iput-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->o:Ljava/lang/Object;

    .line 217
    .line 218
    move-object/from16 v10, p1

    .line 219
    .line 220
    iput-object v10, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->p:Ljava/lang/Object;

    .line 221
    .line 222
    move-object/from16 v11, p0

    .line 223
    .line 224
    iput-object v11, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->q:Ljava/lang/Object;

    .line 225
    .line 226
    const/4 v12, 0x1

    .line 227
    iput v12, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$k;->s:I

    .line 228
    .line 229
    move-object/from16 v12, v18

    .line 230
    .line 231
    invoke-static {v12, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v1

    .line 235
    if-ne v1, v2, :cond_3

    .line 236
    .line 237
    return-object v2

    .line 238
    :cond_3
    move-object v1, v0

    .line 239
    move-object v12, v8

    .line 240
    move-object v13, v9

    .line 241
    move-object v2, v11

    .line 242
    move-object v9, v5

    .line 243
    move-object v8, v6

    .line 244
    move-object v6, v7

    .line 245
    move-object v7, v4

    .line 246
    move-object/from16 v24, v10

    .line 247
    .line 248
    move-object v10, v3

    .line 249
    move-object/from16 v3, v24

    .line 250
    .line 251
    :goto_1
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 252
    .line 253
    check-cast v0, Ljava/lang/String;

    .line 254
    .line 255
    const/4 v3, 0x0

    .line 256
    if-eqz v0, :cond_4

    .line 257
    .line 258
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;

    .line 259
    .line 260
    invoke-direct {v4, v0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 261
    .line 262
    .line 263
    move-object v0, v4

    .line 264
    goto :goto_2

    .line 265
    :cond_4
    move-object v0, v3

    .line 266
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    if-eqz v2, :cond_5

    .line 271
    .line 272
    goto :goto_3

    .line 273
    :cond_5
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;

    .line 274
    .line 275
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 276
    .line 277
    move-object v5, v1

    .line 278
    check-cast v5, Ljava/lang/String;

    .line 279
    .line 280
    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 281
    .line 282
    check-cast v1, Ljava/lang/Integer;

    .line 283
    .line 284
    iget-object v2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v2, Ljava/lang/Integer;

    .line 287
    .line 288
    iget-object v4, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 289
    .line 290
    move-object v8, v4

    .line 291
    check-cast v8, Ljava/lang/String;

    .line 292
    .line 293
    iget-object v4, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 294
    .line 295
    move-object v9, v4

    .line 296
    check-cast v9, Ljava/lang/String;

    .line 297
    .line 298
    iget-object v4, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 299
    .line 300
    move-object v11, v4

    .line 301
    check-cast v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;

    .line 302
    .line 303
    move-object v4, v3

    .line 304
    move-object v6, v1

    .line 305
    move-object v7, v2

    .line 306
    move-object v10, v0

    .line 307
    invoke-direct/range {v4 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/g;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/h;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;Ljava/util/List;Ljava/util/List;)V

    .line 308
    .line 309
    .line 310
    :goto_3
    return-object v3
.end method

.method public static final synthetic c0(Lorg/xmlpull/v1/XmlPullParser;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->u0(Lorg/xmlpull/v1/XmlPullParser;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final d(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->p(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic d0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->e(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final e(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;->i:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;->i:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$p;->i:I

    .line 54
    .line 55
    invoke-static {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->p(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v1, :cond_3

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    new-instance p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/l;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 p0, 0x0

    .line 73
    :goto_2
    return-object p0
.end method

.method public static final e0(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p2

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->q:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->q:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->p:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->q:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-boolean v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->h:Z

    .line 41
    .line 42
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->o:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v3, Ljava/util/List;

    .line 45
    .line 46
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->n:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->m:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v5, Ljava/util/List;

    .line 53
    .line 54
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->l:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v6, Ljava/util/List;

    .line 57
    .line 58
    iget-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->k:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 61
    .line 62
    iget-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->j:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 65
    .line 66
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->i:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    move-object v10, v3

    .line 74
    move-object v0, v7

    .line 75
    move-object v3, v8

    .line 76
    move-object v8, v5

    .line 77
    move-object v7, v6

    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 102
    .line 103
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v14, Ljava/util/ArrayList;

    .line 107
    .line 108
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v13, Ljava/util/ArrayList;

    .line 112
    .line 113
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 117
    .line 118
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v11, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;

    .line 127
    .line 128
    const/4 v7, 0x0

    .line 129
    move-object v5, v10

    .line 130
    move-object/from16 v6, p0

    .line 131
    .line 132
    move-object v8, v0

    .line 133
    move-object v9, v3

    .line 134
    move-object/from16 v16, v10

    .line 135
    .line 136
    move-object v10, v15

    .line 137
    move-object/from16 p0, v11

    .line 138
    .line 139
    move-object v11, v14

    .line 140
    move-object/from16 p2, v12

    .line 141
    .line 142
    move-object v12, v13

    .line 143
    move-object v4, v13

    .line 144
    move-object/from16 v13, p2

    .line 145
    .line 146
    move-object/from16 v17, v14

    .line 147
    .line 148
    move/from16 v14, p1

    .line 149
    .line 150
    move-object/from16 v18, v2

    .line 151
    .line 152
    move-object v2, v15

    .line 153
    move-object/from16 v15, p0

    .line 154
    .line 155
    invoke-direct/range {v5 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$B;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;ZLjava/util/List;)V

    .line 156
    .line 157
    .line 158
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->i:Ljava/lang/Object;

    .line 159
    .line 160
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->j:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->k:Ljava/lang/Object;

    .line 163
    .line 164
    move-object/from16 v5, v17

    .line 165
    .line 166
    iput-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->l:Ljava/lang/Object;

    .line 167
    .line 168
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->m:Ljava/lang/Object;

    .line 169
    .line 170
    move-object/from16 v6, p2

    .line 171
    .line 172
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->n:Ljava/lang/Object;

    .line 173
    .line 174
    move-object/from16 v7, p0

    .line 175
    .line 176
    iput-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->o:Ljava/lang/Object;

    .line 177
    .line 178
    move/from16 v8, p1

    .line 179
    .line 180
    iput-boolean v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->h:Z

    .line 181
    .line 182
    const/4 v9, 0x1

    .line 183
    iput v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$C;->q:I

    .line 184
    .line 185
    move-object/from16 v9, v16

    .line 186
    .line 187
    invoke-static {v9, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    move-object/from16 v9, v18

    .line 192
    .line 193
    if-ne v1, v9, :cond_3

    .line 194
    .line 195
    return-object v9

    .line 196
    :cond_3
    move-object v1, v0

    .line 197
    move-object v0, v2

    .line 198
    move-object v10, v7

    .line 199
    move v2, v8

    .line 200
    move-object v8, v4

    .line 201
    move-object v7, v5

    .line 202
    move-object v4, v6

    .line 203
    :goto_1
    if-eqz v2, :cond_4

    .line 204
    .line 205
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    .line 206
    .line 207
    .line 208
    move-result v2

    .line 209
    if-eqz v2, :cond_4

    .line 210
    .line 211
    const/4 v0, 0x0

    .line 212
    goto :goto_2

    .line 213
    :cond_4
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;

    .line 214
    .line 215
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 216
    .line 217
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 218
    .line 219
    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 220
    .line 221
    move-object v5, v3

    .line 222
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;

    .line 223
    .line 224
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 225
    .line 226
    move-object v6, v0

    .line 227
    check-cast v6, Ljava/lang/Long;

    .line 228
    .line 229
    iget-object v0, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 230
    .line 231
    move-object v9, v0

    .line 232
    check-cast v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 233
    .line 234
    move-object v3, v2

    .line 235
    move-object v4, v1

    .line 236
    invoke-direct/range {v3 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/r;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/e;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;Ljava/util/List;)V

    .line 237
    .line 238
    .line 239
    move-object v0, v2

    .line 240
    :goto_2
    return-object v0
.end method

.method public static final f(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;->i:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;->i:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;->i:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0

    .line 50
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$q;->i:I

    .line 54
    .line 55
    invoke-static {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->p(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    if-ne p1, v1, :cond_3

    .line 60
    .line 61
    return-object v1

    .line 62
    :cond_3
    :goto_1
    check-cast p1, Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p1, :cond_4

    .line 65
    .line 66
    new-instance p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;

    .line 67
    .line 68
    invoke-direct {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/m;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_4
    const/4 p0, 0x0

    .line 73
    :goto_2
    return-object p0
.end method

.method public static final f0(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 3
    .line 4
    sget-object v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->b:Ljava/text/NumberFormat;

    .line 5
    .line 6
    invoke-virtual {v1, p0}, Ljava/text/NumberFormat;->parse(Ljava/lang/String;)Ljava/lang/Number;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/16 v1, 0x64

    .line 17
    .line 18
    int-to-float v1, v1

    .line 19
    mul-float/2addr p0, v1

    .line 20
    float-to-int p0, p0

    .line 21
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-ltz p0, :cond_0

    .line 26
    .line 27
    const/16 v2, 0x65

    .line 28
    .line 29
    if-ge p0, v2, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    goto :goto_1

    .line 34
    :cond_0
    move-object v1, v0

    .line 35
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_2

    .line 40
    :goto_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 41
    .line 42
    invoke-static {p0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-static {p0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    :goto_2
    invoke-static {p0}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :cond_1
    move-object v0, p0

    .line 58
    :goto_3
    check-cast v0, Ljava/lang/Integer;

    .line 59
    .line 60
    return-object v0
.end method

.method public static final g(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Ljava/util/List;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Ljava/util/ArrayList;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$r;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, p1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$r;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$s;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p1, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz p1, :cond_4

    .line 97
    .line 98
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;

    .line 99
    .line 100
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    :cond_4
    return-object v3
.end method

.method public static final synthetic g0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->f(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final h(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->r:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->r:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->q:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->r:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->p:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->o:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->n:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->m:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->l:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->k:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iget-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->j:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->i:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->h:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    move-object v10, v2

    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 83
    .line 84
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    throw v0

    .line 90
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 94
    .line 95
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 96
    .line 97
    .line 98
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 99
    .line 100
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 101
    .line 102
    .line 103
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 104
    .line 105
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 106
    .line 107
    .line 108
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 109
    .line 110
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 111
    .line 112
    .line 113
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 114
    .line 115
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 116
    .line 117
    .line 118
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 119
    .line 120
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 121
    .line 122
    .line 123
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 124
    .line 125
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 126
    .line 127
    .line 128
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 129
    .line 130
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 131
    .line 132
    .line 133
    new-instance v9, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .line 137
    .line 138
    new-instance v8, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$t;

    .line 139
    .line 140
    const/4 v7, 0x0

    .line 141
    move-object v5, v8

    .line 142
    move-object/from16 v6, p0

    .line 143
    .line 144
    move-object/from16 v17, v8

    .line 145
    .line 146
    move-object v8, v0

    .line 147
    move-object/from16 p0, v9

    .line 148
    .line 149
    move-object v9, v3

    .line 150
    move-object/from16 p1, v10

    .line 151
    .line 152
    move-object v10, v15

    .line 153
    move-object/from16 v18, v11

    .line 154
    .line 155
    move-object v11, v14

    .line 156
    move-object/from16 v19, v12

    .line 157
    .line 158
    move-object v12, v13

    .line 159
    move-object v4, v13

    .line 160
    move-object/from16 v13, v19

    .line 161
    .line 162
    move-object/from16 v20, v14

    .line 163
    .line 164
    move-object/from16 v14, p1

    .line 165
    .line 166
    move-object/from16 v21, v15

    .line 167
    .line 168
    move-object/from16 v15, v18

    .line 169
    .line 170
    move-object/from16 v16, p0

    .line 171
    .line 172
    invoke-direct/range {v5 .. v16}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$t;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    .line 173
    .line 174
    .line 175
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->h:Ljava/lang/Object;

    .line 176
    .line 177
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->i:Ljava/lang/Object;

    .line 178
    .line 179
    move-object/from16 v5, v21

    .line 180
    .line 181
    iput-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->j:Ljava/lang/Object;

    .line 182
    .line 183
    move-object/from16 v6, v20

    .line 184
    .line 185
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->k:Ljava/lang/Object;

    .line 186
    .line 187
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->l:Ljava/lang/Object;

    .line 188
    .line 189
    move-object/from16 v7, v19

    .line 190
    .line 191
    iput-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->m:Ljava/lang/Object;

    .line 192
    .line 193
    move-object/from16 v8, v18

    .line 194
    .line 195
    iput-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->n:Ljava/lang/Object;

    .line 196
    .line 197
    move-object/from16 v9, p1

    .line 198
    .line 199
    iput-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->o:Ljava/lang/Object;

    .line 200
    .line 201
    move-object/from16 v10, p0

    .line 202
    .line 203
    iput-object v10, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->p:Ljava/lang/Object;

    .line 204
    .line 205
    const/4 v11, 0x1

    .line 206
    iput v11, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$u;->r:I

    .line 207
    .line 208
    move-object/from16 v11, v17

    .line 209
    .line 210
    invoke-static {v11, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    if-ne v1, v2, :cond_3

    .line 215
    .line 216
    return-object v2

    .line 217
    :cond_3
    move-object v1, v0

    .line 218
    move-object/from16 v22, v9

    .line 219
    .line 220
    move-object v9, v3

    .line 221
    move-object/from16 v3, v22

    .line 222
    .line 223
    move-object/from16 v23, v6

    .line 224
    .line 225
    move-object v6, v4

    .line 226
    move-object v4, v8

    .line 227
    move-object v8, v5

    .line 228
    move-object v5, v7

    .line 229
    move-object/from16 v7, v23

    .line 230
    .line 231
    :goto_1
    iget-object v0, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 232
    .line 233
    move-object v11, v0

    .line 234
    check-cast v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;

    .line 235
    .line 236
    if-eqz v11, :cond_4

    .line 237
    .line 238
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;

    .line 239
    .line 240
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 241
    .line 242
    move-object v3, v1

    .line 243
    check-cast v3, Ljava/lang/String;

    .line 244
    .line 245
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v1, Ljava/lang/Integer;

    .line 248
    .line 249
    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 250
    .line 251
    move-object v8, v2

    .line 252
    check-cast v8, Ljava/lang/Integer;

    .line 253
    .line 254
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 255
    .line 256
    move-object v7, v2

    .line 257
    check-cast v7, Ljava/lang/String;

    .line 258
    .line 259
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 260
    .line 261
    move-object v9, v2

    .line 262
    check-cast v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 263
    .line 264
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 265
    .line 266
    move-object v12, v2

    .line 267
    check-cast v12, Ljava/lang/Long;

    .line 268
    .line 269
    iget-object v2, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 270
    .line 271
    move-object v13, v2

    .line 272
    check-cast v13, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;

    .line 273
    .line 274
    move-object v2, v0

    .line 275
    move-object v4, v1

    .line 276
    move-object v5, v8

    .line 277
    move-object v6, v7

    .line 278
    move-object v7, v9

    .line 279
    move-object v8, v12

    .line 280
    move-object v9, v13

    .line 281
    invoke-direct/range {v2 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;Ljava/lang/Long;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/o;Ljava/util/List;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a0;)V

    .line 282
    .line 283
    .line 284
    goto :goto_2

    .line 285
    :cond_4
    const/4 v0, 0x0

    .line 286
    :goto_2
    return-object v0
.end method

.method public static final h0(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->m:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->m:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;

    .line 21
    .line 22
    invoke-direct {v0, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->m:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-boolean p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->h:Z

    .line 39
    .line 40
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->k:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Ljava/util/List;

    .line 43
    .line 44
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->j:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v1, Ljava/util/List;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->i:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 57
    .line 58
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 59
    .line 60
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw p0

    .line 64
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v2, Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .line 76
    .line 77
    new-instance v10, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$W;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    move-object v4, v11

    .line 86
    move-object v5, p0

    .line 87
    move-object v7, p2

    .line 88
    move-object v8, v2

    .line 89
    move-object v9, v10

    .line 90
    invoke-direct/range {v4 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$W;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;)V

    .line 91
    .line 92
    .line 93
    iput-object p2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->i:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->j:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->k:Ljava/lang/Object;

    .line 98
    .line 99
    iput-boolean p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->h:Z

    .line 100
    .line 101
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$X;->m:I

    .line 102
    .line 103
    invoke-static {v11, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p0

    .line 107
    if-ne p0, v1, :cond_3

    .line 108
    .line 109
    return-object v1

    .line 110
    :cond_3
    move-object v0, p2

    .line 111
    move-object v1, v2

    .line 112
    move-object p0, v10

    .line 113
    :goto_1
    if-eqz p1, :cond_4

    .line 114
    .line 115
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;

    .line 122
    .line 123
    iget-object p2, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;

    .line 126
    .line 127
    invoke-direct {p1, p2, v1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;Ljava/util/List;Ljava/util/List;)V

    .line 128
    .line 129
    .line 130
    move-object p0, p1

    .line 131
    :goto_2
    return-object p0
.end method

.method public static final i(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/n;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$v;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, p0, v4, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$v;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$w;->j:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object p0, p1

    .line 80
    :goto_1
    return-object p0
.end method

.method public static final i0(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public static final j(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/p;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$x;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, p1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$x;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$y;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/p;

    .line 99
    .line 100
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v3
.end method

.method public static final j0(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sparse-switch v0, :sswitch_data_0

    .line 6
    .line 7
    .line 8
    goto/16 :goto_0

    .line 9
    .line 10
    :sswitch_0
    const-string v0, "creativeView"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 21
    .line 22
    goto/16 :goto_1

    .line 23
    .line 24
    :sswitch_1
    const-string v0, "firstQuartile"

    .line 25
    .line 26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p0

    .line 30
    if-nez p0, :cond_1

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :cond_1
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 35
    .line 36
    goto/16 :goto_1

    .line 37
    .line 38
    :sswitch_2
    const-string/jumbo v0, "start"

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_2

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :cond_2
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 50
    .line 51
    goto/16 :goto_1

    .line 52
    .line 53
    :sswitch_3
    const-string v0, "pause"

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    .line 61
    goto/16 :goto_0

    .line 62
    .line 63
    :cond_3
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 64
    .line 65
    goto/16 :goto_1

    .line 66
    .line 67
    :sswitch_4
    const-string/jumbo v0, "skip"

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-nez p0, :cond_4

    .line 75
    .line 76
    goto/16 :goto_0

    .line 77
    .line 78
    :cond_4
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->m:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 79
    .line 80
    goto/16 :goto_1

    .line 81
    .line 82
    :sswitch_5
    const-string v0, "mute"

    .line 83
    .line 84
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    if-nez p0, :cond_5

    .line 89
    .line 90
    goto/16 :goto_0

    .line 91
    .line 92
    :cond_5
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->g:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 93
    .line 94
    goto/16 :goto_1

    .line 95
    .line 96
    :sswitch_6
    const-string v0, "closeLinear"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    if-nez p0, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :sswitch_7
    const-string v0, "complete"

    .line 109
    .line 110
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result p0

    .line 114
    if-nez p0, :cond_7

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :sswitch_8
    const-string/jumbo v0, "unmute"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result p0

    .line 127
    if-nez p0, :cond_8

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_8
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :sswitch_9
    const-string v0, "rewind"

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p0

    .line 139
    if-nez p0, :cond_9

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_9
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 143
    .line 144
    goto :goto_1

    .line 145
    :sswitch_a
    const-string v0, "resume"

    .line 146
    .line 147
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-nez p0, :cond_a

    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_a
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->k:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 155
    .line 156
    goto :goto_1

    .line 157
    :sswitch_b
    const-string v0, "progress"

    .line 158
    .line 159
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result p0

    .line 163
    if-nez p0, :cond_b

    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_b
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :sswitch_c
    const-string/jumbo v0, "thirdQuartile"

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 173
    .line 174
    .line 175
    move-result p0

    .line 176
    if-nez p0, :cond_c

    .line 177
    .line 178
    goto :goto_0

    .line 179
    :cond_c
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->e:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 180
    .line 181
    goto :goto_1

    .line 182
    :sswitch_d
    const-string v0, "midpoint"

    .line 183
    .line 184
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 185
    .line 186
    .line 187
    move-result p0

    .line 188
    if-nez p0, :cond_d

    .line 189
    .line 190
    :goto_0
    const/4 p0, 0x0

    .line 191
    goto :goto_1

    .line 192
    :cond_d
    sget-object p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->d:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 193
    .line 194
    :goto_1
    return-object p0

    .line 195
    :sswitch_data_0
    .sparse-switch
        -0x61aea3b8 -> :sswitch_d
        -0x4fbdabf6 -> :sswitch_c
        -0x3bab3dd3 -> :sswitch_b
        -0x37b237d3 -> :sswitch_a
        -0x37b09345 -> :sswitch_9
        -0x321793ce -> :sswitch_8
        -0x23bacec7 -> :sswitch_7
        -0x23f00c3 -> :sswitch_6
        0x335219 -> :sswitch_5
        0x35e57f -> :sswitch_4
        0x65825f6 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0x21644853 -> :sswitch_1
        0x69fcaef4 -> :sswitch_0
    .end sparse-switch
.end method

.method public static final k(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->q:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->q:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->p:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->q:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->o:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->n:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/List;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->m:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ljava/util/List;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->l:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->k:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->j:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iget-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->i:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->h:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    move-object v10, v2

    .line 76
    move-object v9, v3

    .line 77
    move-object v0, v4

    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 83
    .line 84
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw v0

    .line 88
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 92
    .line 93
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 94
    .line 95
    .line 96
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 97
    .line 98
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 99
    .line 100
    .line 101
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 102
    .line 103
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 104
    .line 105
    .line 106
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 107
    .line 108
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 109
    .line 110
    .line 111
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 112
    .line 113
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v12, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    new-instance v11, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    new-instance v10, Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 129
    .line 130
    .line 131
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$z;

    .line 132
    .line 133
    const/4 v7, 0x0

    .line 134
    move-object v5, v9

    .line 135
    move-object/from16 v6, p0

    .line 136
    .line 137
    move-object v8, v0

    .line 138
    move-object/from16 v16, v9

    .line 139
    .line 140
    move-object v9, v3

    .line 141
    move-object/from16 p0, v10

    .line 142
    .line 143
    move-object v10, v15

    .line 144
    move-object/from16 p1, v11

    .line 145
    .line 146
    move-object v11, v14

    .line 147
    move-object/from16 v17, v12

    .line 148
    .line 149
    move-object v12, v13

    .line 150
    move-object v4, v13

    .line 151
    move-object/from16 v13, v17

    .line 152
    .line 153
    move-object/from16 v18, v14

    .line 154
    .line 155
    move-object/from16 v14, p1

    .line 156
    .line 157
    move-object/from16 v19, v2

    .line 158
    .line 159
    move-object v2, v15

    .line 160
    move-object/from16 v15, p0

    .line 161
    .line 162
    invoke-direct/range {v5 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$z;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->h:Ljava/lang/Object;

    .line 166
    .line 167
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->i:Ljava/lang/Object;

    .line 168
    .line 169
    iput-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->j:Ljava/lang/Object;

    .line 170
    .line 171
    move-object/from16 v5, v18

    .line 172
    .line 173
    iput-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->k:Ljava/lang/Object;

    .line 174
    .line 175
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->l:Ljava/lang/Object;

    .line 176
    .line 177
    move-object/from16 v6, v17

    .line 178
    .line 179
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->m:Ljava/lang/Object;

    .line 180
    .line 181
    move-object/from16 v7, p1

    .line 182
    .line 183
    iput-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->n:Ljava/lang/Object;

    .line 184
    .line 185
    move-object/from16 v8, p0

    .line 186
    .line 187
    iput-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->o:Ljava/lang/Object;

    .line 188
    .line 189
    const/4 v9, 0x1

    .line 190
    iput v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$A;->q:I

    .line 191
    .line 192
    move-object/from16 v9, v16

    .line 193
    .line 194
    invoke-static {v9, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    move-object/from16 v9, v19

    .line 199
    .line 200
    if-ne v1, v9, :cond_3

    .line 201
    .line 202
    return-object v9

    .line 203
    :cond_3
    move-object v1, v0

    .line 204
    move-object v0, v6

    .line 205
    move-object v9, v7

    .line 206
    move-object v10, v8

    .line 207
    move-object v7, v2

    .line 208
    move-object v8, v3

    .line 209
    move-object v6, v5

    .line 210
    move-object v5, v4

    .line 211
    :goto_1
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;

    .line 212
    .line 213
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 214
    .line 215
    move-object v3, v1

    .line 216
    check-cast v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;

    .line 217
    .line 218
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 219
    .line 220
    move-object v4, v1

    .line 221
    check-cast v4, Ljava/lang/String;

    .line 222
    .line 223
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 224
    .line 225
    check-cast v1, Ljava/lang/String;

    .line 226
    .line 227
    iget-object v2, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 228
    .line 229
    move-object v6, v2

    .line 230
    check-cast v6, Ljava/lang/String;

    .line 231
    .line 232
    iget-object v2, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 233
    .line 234
    move-object v7, v2

    .line 235
    check-cast v7, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/u;

    .line 236
    .line 237
    move-object v2, v11

    .line 238
    move-object v5, v1

    .line 239
    move-object v8, v0

    .line 240
    invoke-direct/range {v2 .. v10}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/q;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/u;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 241
    .line 242
    .line 243
    return-object v11
.end method

.method public static final synthetic k0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->g(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final l(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->u:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->u:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->t:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->u:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->s:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->r:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->q:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->p:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->o:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->n:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    iget-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->m:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    iget-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->l:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    iget-object v10, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->k:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 75
    .line 76
    iget-object v11, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->j:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    iget-object v12, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->i:Ljava/lang/Object;

    .line 81
    .line 82
    check-cast v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 83
    .line 84
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->h:Ljava/lang/Object;

    .line 85
    .line 86
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 87
    .line 88
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    goto/16 :goto_1

    .line 92
    .line 93
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 94
    .line 95
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 96
    .line 97
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    throw v0

    .line 101
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 105
    .line 106
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 107
    .line 108
    .line 109
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 110
    .line 111
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 112
    .line 113
    .line 114
    new-instance v15, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 115
    .line 116
    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 117
    .line 118
    .line 119
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 120
    .line 121
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 122
    .line 123
    .line 124
    new-instance v13, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 125
    .line 126
    invoke-direct {v13}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 127
    .line 128
    .line 129
    new-instance v12, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 130
    .line 131
    invoke-direct {v12}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 132
    .line 133
    .line 134
    new-instance v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 135
    .line 136
    invoke-direct {v11}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 137
    .line 138
    .line 139
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 140
    .line 141
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 142
    .line 143
    .line 144
    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 145
    .line 146
    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 147
    .line 148
    .line 149
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 150
    .line 151
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 152
    .line 153
    .line 154
    new-instance v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 155
    .line 156
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 157
    .line 158
    .line 159
    new-instance v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 160
    .line 161
    invoke-direct {v6}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 162
    .line 163
    .line 164
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$D;

    .line 165
    .line 166
    const/16 v16, 0x0

    .line 167
    .line 168
    move-object/from16 p1, v5

    .line 169
    .line 170
    move-object/from16 v20, v6

    .line 171
    .line 172
    move-object/from16 v6, p0

    .line 173
    .line 174
    move-object/from16 p0, v7

    .line 175
    .line 176
    move-object/from16 v7, v16

    .line 177
    .line 178
    move-object/from16 v21, v8

    .line 179
    .line 180
    move-object v8, v3

    .line 181
    move-object/from16 v22, v9

    .line 182
    .line 183
    move-object v9, v15

    .line 184
    move-object/from16 v23, v10

    .line 185
    .line 186
    move-object v10, v14

    .line 187
    move-object/from16 v24, v11

    .line 188
    .line 189
    move-object v11, v13

    .line 190
    move-object/from16 v25, v12

    .line 191
    .line 192
    move-object v4, v13

    .line 193
    move-object/from16 v13, v24

    .line 194
    .line 195
    move-object/from16 v26, v14

    .line 196
    .line 197
    move-object/from16 v14, v23

    .line 198
    .line 199
    move-object/from16 v27, v15

    .line 200
    .line 201
    move-object/from16 v15, v22

    .line 202
    .line 203
    move-object/from16 v16, v21

    .line 204
    .line 205
    move-object/from16 v17, p0

    .line 206
    .line 207
    move-object/from16 v18, v20

    .line 208
    .line 209
    move-object/from16 v19, v0

    .line 210
    .line 211
    invoke-direct/range {v5 .. v19}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$D;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 212
    .line 213
    .line 214
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->h:Ljava/lang/Object;

    .line 215
    .line 216
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->i:Ljava/lang/Object;

    .line 217
    .line 218
    move-object/from16 v5, v27

    .line 219
    .line 220
    iput-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->j:Ljava/lang/Object;

    .line 221
    .line 222
    move-object/from16 v6, v26

    .line 223
    .line 224
    iput-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->k:Ljava/lang/Object;

    .line 225
    .line 226
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->l:Ljava/lang/Object;

    .line 227
    .line 228
    move-object/from16 v7, v25

    .line 229
    .line 230
    iput-object v7, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->m:Ljava/lang/Object;

    .line 231
    .line 232
    move-object/from16 v8, v24

    .line 233
    .line 234
    iput-object v8, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->n:Ljava/lang/Object;

    .line 235
    .line 236
    move-object/from16 v9, v23

    .line 237
    .line 238
    iput-object v9, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->o:Ljava/lang/Object;

    .line 239
    .line 240
    move-object/from16 v10, v22

    .line 241
    .line 242
    iput-object v10, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->p:Ljava/lang/Object;

    .line 243
    .line 244
    move-object/from16 v11, v21

    .line 245
    .line 246
    iput-object v11, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->q:Ljava/lang/Object;

    .line 247
    .line 248
    move-object/from16 v12, p0

    .line 249
    .line 250
    iput-object v12, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->r:Ljava/lang/Object;

    .line 251
    .line 252
    move-object/from16 v13, v20

    .line 253
    .line 254
    iput-object v13, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->s:Ljava/lang/Object;

    .line 255
    .line 256
    const/4 v14, 0x1

    .line 257
    iput v14, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$E;->u:I

    .line 258
    .line 259
    move-object/from16 v14, p1

    .line 260
    .line 261
    invoke-static {v14, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    if-ne v1, v2, :cond_3

    .line 266
    .line 267
    return-object v2

    .line 268
    :cond_3
    move-object v1, v0

    .line 269
    move-object v2, v13

    .line 270
    move-object/from16 v28, v12

    .line 271
    .line 272
    move-object v12, v3

    .line 273
    move-object/from16 v3, v28

    .line 274
    .line 275
    move-object/from16 v29, v9

    .line 276
    .line 277
    move-object v9, v4

    .line 278
    move-object v4, v11

    .line 279
    move-object v11, v5

    .line 280
    move-object v5, v10

    .line 281
    move-object v10, v6

    .line 282
    move-object/from16 v6, v29

    .line 283
    .line 284
    move-object/from16 v30, v8

    .line 285
    .line 286
    move-object v8, v7

    .line 287
    move-object/from16 v7, v30

    .line 288
    .line 289
    :goto_1
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 290
    .line 291
    if-eqz v0, :cond_5

    .line 292
    .line 293
    iget-object v0, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 294
    .line 295
    if-eqz v0, :cond_5

    .line 296
    .line 297
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 298
    .line 299
    if-nez v0, :cond_4

    .line 300
    .line 301
    goto :goto_2

    .line 302
    :cond_4
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;

    .line 303
    .line 304
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 305
    .line 306
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 307
    .line 308
    .line 309
    move-object v14, v1

    .line 310
    check-cast v14, Ljava/lang/String;

    .line 311
    .line 312
    iget-object v1, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 313
    .line 314
    move-object v15, v1

    .line 315
    check-cast v15, Ljava/lang/String;

    .line 316
    .line 317
    iget-object v1, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 318
    .line 319
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    check-cast v1, Ljava/lang/Boolean;

    .line 323
    .line 324
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 325
    .line 326
    .line 327
    move-result v16

    .line 328
    iget-object v1, v10, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 329
    .line 330
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 331
    .line 332
    .line 333
    move-object/from16 v17, v1

    .line 334
    .line 335
    check-cast v17, Ljava/lang/String;

    .line 336
    .line 337
    iget-object v1, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 338
    .line 339
    move-object/from16 v18, v1

    .line 340
    .line 341
    check-cast v18, Ljava/lang/Integer;

    .line 342
    .line 343
    iget-object v1, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 344
    .line 345
    move-object/from16 v19, v1

    .line 346
    .line 347
    check-cast v19, Ljava/lang/Integer;

    .line 348
    .line 349
    iget-object v1, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 350
    .line 351
    move-object/from16 v20, v1

    .line 352
    .line 353
    check-cast v20, Ljava/lang/String;

    .line 354
    .line 355
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 356
    .line 357
    move-object/from16 v21, v1

    .line 358
    .line 359
    check-cast v21, Ljava/lang/Integer;

    .line 360
    .line 361
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 362
    .line 363
    move-object/from16 v22, v1

    .line 364
    .line 365
    check-cast v22, Ljava/lang/Integer;

    .line 366
    .line 367
    iget-object v1, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 368
    .line 369
    move-object/from16 v23, v1

    .line 370
    .line 371
    check-cast v23, Ljava/lang/Integer;

    .line 372
    .line 373
    iget-object v1, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 374
    .line 375
    move-object/from16 v24, v1

    .line 376
    .line 377
    check-cast v24, Ljava/lang/Boolean;

    .line 378
    .line 379
    iget-object v1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 380
    .line 381
    move-object/from16 v25, v1

    .line 382
    .line 383
    check-cast v25, Ljava/lang/String;

    .line 384
    .line 385
    move-object v13, v0

    .line 386
    invoke-direct/range {v13 .. v25}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    goto :goto_3

    .line 390
    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 391
    :goto_3
    return-object v0
.end method

.method public static final l0(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x3

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static final m(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/s;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$F;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, p0, v4, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$F;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$G;->j:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object p0, p1

    .line 80
    :goto_1
    return-object p0
.end method

.method public static final synthetic m0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->h(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final n(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/u;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$H;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, p1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$H;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$I;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    if-nez p1, :cond_4

    .line 95
    .line 96
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/u;

    .line 102
    .line 103
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast p1, Ljava/lang/String;

    .line 106
    .line 107
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast p0, Ljava/lang/String;

    .line 110
    .line 111
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/u;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    return-object v3
.end method

.method public static final n0(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 0

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static final o(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$J;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, v2, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$J;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$K;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    if-eqz p1, :cond_5

    .line 95
    .line 96
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    .line 98
    if-nez p1, :cond_4

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_4
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;

    .line 102
    .line 103
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 104
    .line 105
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    check-cast p1, Ljava/lang/String;

    .line 109
    .line 110
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 116
    .line 117
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/w;-><init>(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;)V

    .line 118
    .line 119
    .line 120
    :cond_5
    :goto_2
    return-object v3
.end method

.method public static final synthetic o0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->i(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final p(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 58
    .line 59
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$L;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, p0, v4, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$L;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$M;->j:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object p0, p1

    .line 80
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 81
    .line 82
    return-object p0
.end method

.method public static final p0(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x2

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static final q(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->j:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->i:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->h:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Ljava/util/List;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance p1, Ljava/util/ArrayList;

    .line 58
    .line 59
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 60
    .line 61
    .line 62
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$N;

    .line 63
    .line 64
    const/4 v4, 0x0

    .line 65
    invoke-direct {v2, p0, v4, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$N;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->h:Ljava/lang/Object;

    .line 69
    .line 70
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$O;->j:I

    .line 71
    .line 72
    invoke-static {v2, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    if-ne p0, v1, :cond_3

    .line 77
    .line 78
    return-object v1

    .line 79
    :cond_3
    move-object p0, p1

    .line 80
    :goto_1
    return-object p0
.end method

.method public static final synthetic q0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->j(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final r(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->j:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    .line 67
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v4, v11

    .line 84
    move-object v5, p0

    .line 85
    move-object v7, p1

    .line 86
    move-object v8, v10

    .line 87
    move-object v9, v2

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$P;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->h:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->i:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->j:Ljava/lang/Object;

    .line 96
    .line 97
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Q;->l:I

    .line 98
    .line 99
    invoke-static {v11, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v1, :cond_3

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_3
    move-object v0, p1

    .line 107
    move-object v1, v2

    .line 108
    move-object p0, v10

    .line 109
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 110
    .line 111
    if-eqz p1, :cond_5

    .line 112
    .line 113
    iget-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 114
    .line 115
    if-eqz v2, :cond_5

    .line 116
    .line 117
    sget-object v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 118
    .line 119
    if-ne p1, v2, :cond_4

    .line 120
    .line 121
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 122
    .line 123
    if-nez p1, :cond_4

    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_4
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;

    .line 127
    .line 128
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;

    .line 134
    .line 135
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 136
    .line 137
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    check-cast v1, Ljava/lang/String;

    .line 141
    .line 142
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 143
    .line 144
    check-cast p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 145
    .line 146
    invoke-direct {p1, v0, v1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/y;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/v;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;)V

    .line 147
    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 151
    :goto_3
    return-object p1
.end method

.method public static final r0(Lorg/xmlpull/v1/XmlPullParser;)Z
    .locals 1

    .line 1
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 v0, 0x4

    .line 6
    if-ne p0, v0, :cond_0

    .line 7
    .line 8
    const/4 p0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
.end method

.method public static final s(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/moloco/sdk/internal/scheduling/c;->a()Lcom/moloco/sdk/internal/scheduling/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/internal/scheduling/a;->getIo()Lkotlin/coroutines/CoroutineContext;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$R;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {v1, p0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$R;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v0, v1, p1}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    return-object p0
.end method

.method public static final s0(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const-string v0, "sequence"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lkotlin/text/StringsKt;->toIntOrNull(Ljava/lang/String;)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/16 p0, 0x3e7

    .line 21
    .line 22
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_1
    return-object p0
.end method

.method public static final t(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->l:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->l:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->j:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->i:Ljava/lang/Object;

    .line 43
    .line 44
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->h:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast v0, Ljava/util/List;

    .line 49
    .line 50
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p0

    .line 62
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    new-instance p1, Ljava/util/ArrayList;

    .line 66
    .line 67
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .line 69
    .line 70
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 71
    .line 72
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 73
    .line 74
    .line 75
    new-instance v10, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 76
    .line 77
    invoke-direct {v10}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 78
    .line 79
    .line 80
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$S;

    .line 81
    .line 82
    const/4 v6, 0x0

    .line 83
    move-object v4, v11

    .line 84
    move-object v5, p0

    .line 85
    move-object v7, v2

    .line 86
    move-object v8, v10

    .line 87
    move-object v9, p1

    .line 88
    invoke-direct/range {v4 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$S;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->h:Ljava/lang/Object;

    .line 92
    .line 93
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->i:Ljava/lang/Object;

    .line 94
    .line 95
    iput-object v10, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->j:Ljava/lang/Object;

    .line 96
    .line 97
    iput v3, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$T;->l:I

    .line 98
    .line 99
    invoke-static {v11, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p0

    .line 103
    if-ne p0, v1, :cond_3

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_3
    move-object v0, p1

    .line 107
    move-object v1, v2

    .line 108
    move-object p0, v10

    .line 109
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    if-eqz p1, :cond_4

    .line 114
    .line 115
    iget-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 116
    .line 117
    if-nez p1, :cond_4

    .line 118
    .line 119
    const/4 p0, 0x0

    .line 120
    goto :goto_2

    .line 121
    :cond_4
    new-instance p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;

    .line 122
    .line 123
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 124
    .line 125
    check-cast p0, Ljava/lang/String;

    .line 126
    .line 127
    iget-object v1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v1, Ljava/lang/String;

    .line 130
    .line 131
    invoke-direct {p1, v0, p0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/z;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    .line 133
    .line 134
    move-object p0, p1

    .line 135
    :goto_2
    return-object p0
.end method

.method public static final synthetic t0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->k(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final u(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->k:I

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
    iput v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->k:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->j:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->k:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object p0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->i:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 42
    .line 43
    iget-object v0, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->h:Ljava/lang/Object;

    .line 44
    .line 45
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 46
    .line 47
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 52
    .line 53
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 54
    .line 55
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p0

    .line 59
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 65
    .line 66
    .line 67
    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 68
    .line 69
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$U;

    .line 73
    .line 74
    invoke-direct {v5, p0, v3, p1, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$U;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 75
    .line 76
    .line 77
    iput-object p1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->h:Ljava/lang/Object;

    .line 78
    .line 79
    iput-object v2, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->i:Ljava/lang/Object;

    .line 80
    .line 81
    iput v4, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$V;->k:I

    .line 82
    .line 83
    invoke-static {v5, v0}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    if-ne p0, v1, :cond_3

    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_3
    move-object v0, p1

    .line 91
    move-object p0, v2

    .line 92
    :goto_1
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast p0, Ljava/lang/String;

    .line 95
    .line 96
    if-eqz p0, :cond_4

    .line 97
    .line 98
    new-instance v3, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;

    .line 99
    .line 100
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast p1, Ljava/lang/String;

    .line 103
    .line 104
    invoke-direct {v3, p1, p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_4
    return-object v3
.end method

.method public static final u0(Lorg/xmlpull/v1/XmlPullParser;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;
    .locals 1

    .line 1
    const-string/jumbo v0, "skipoffset"

    .line 2
    .line 3
    .line 4
    invoke-static {p0, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->G(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->b0(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/t;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return-object p0
.end method

.method public static final v(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    instance-of v1, v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;

    .line 9
    .line 10
    iget v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->o:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->o:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;-><init>(Lrs/c;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    iget-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->n:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    iget v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->o:I

    .line 34
    .line 35
    const/4 v4, 0x1

    .line 36
    if-eqz v3, :cond_2

    .line 37
    .line 38
    if-ne v3, v4, :cond_1

    .line 39
    .line 40
    iget-object v2, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->m:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v2, Ljava/util/List;

    .line 43
    .line 44
    iget-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->l:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v3, Ljava/util/List;

    .line 47
    .line 48
    iget-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->k:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v4, Ljava/util/List;

    .line 51
    .line 52
    iget-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->j:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 55
    .line 56
    iget-object v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->i:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 59
    .line 60
    iget-object v1, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->h:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    move-object v8, v2

    .line 68
    move-object v7, v3

    .line 69
    move-object v15, v4

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 72
    .line 73
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw v0

    .line 79
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 83
    .line 84
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 85
    .line 86
    .line 87
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 88
    .line 89
    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 90
    .line 91
    .line 92
    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 93
    .line 94
    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 95
    .line 96
    .line 97
    new-instance v15, Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .line 101
    .line 102
    new-instance v13, Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .line 106
    .line 107
    new-instance v12, Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .line 111
    .line 112
    new-instance v11, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;

    .line 113
    .line 114
    const/4 v7, 0x0

    .line 115
    move-object v5, v11

    .line 116
    move-object/from16 v6, p0

    .line 117
    .line 118
    move-object v8, v3

    .line 119
    move-object v9, v0

    .line 120
    move-object v10, v14

    .line 121
    move-object/from16 v16, v11

    .line 122
    .line 123
    move-object v11, v15

    .line 124
    move-object/from16 p0, v12

    .line 125
    .line 126
    move-object v12, v13

    .line 127
    move-object v4, v13

    .line 128
    move-object/from16 v13, p0

    .line 129
    .line 130
    invoke-direct/range {v5 .. v13}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Y;-><init>(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 131
    .line 132
    .line 133
    iput-object v0, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->h:Ljava/lang/Object;

    .line 134
    .line 135
    iput-object v3, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->i:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object v14, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->j:Ljava/lang/Object;

    .line 138
    .line 139
    iput-object v15, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->k:Ljava/lang/Object;

    .line 140
    .line 141
    iput-object v4, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->l:Ljava/lang/Object;

    .line 142
    .line 143
    move-object/from16 v5, p0

    .line 144
    .line 145
    iput-object v5, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->m:Ljava/lang/Object;

    .line 146
    .line 147
    const/4 v6, 0x1

    .line 148
    iput v6, v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k$Z;->o:I

    .line 149
    .line 150
    move-object/from16 v6, v16

    .line 151
    .line 152
    invoke-static {v6, v1}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    if-ne v1, v2, :cond_3

    .line 157
    .line 158
    return-object v2

    .line 159
    :cond_3
    move-object v1, v0

    .line 160
    move-object v6, v3

    .line 161
    move-object v7, v4

    .line 162
    move-object v8, v5

    .line 163
    move-object v5, v14

    .line 164
    :goto_1
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 165
    .line 166
    move-object v3, v0

    .line 167
    check-cast v3, Ljava/lang/String;

    .line 168
    .line 169
    if-eqz v3, :cond_4

    .line 170
    .line 171
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;

    .line 172
    .line 173
    iget-object v1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 174
    .line 175
    move-object v4, v1

    .line 176
    check-cast v4, Ljava/lang/Boolean;

    .line 177
    .line 178
    iget-object v1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 179
    .line 180
    move-object v5, v1

    .line 181
    check-cast v5, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;

    .line 182
    .line 183
    move-object v2, v0

    .line 184
    move-object v6, v15

    .line 185
    invoke-direct/range {v2 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/b;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/f;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 186
    .line 187
    .line 188
    goto :goto_2

    .line 189
    :cond_4
    const/4 v0, 0x0

    .line 190
    :goto_2
    return-object v0
.end method

.method public static final synthetic v0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->l(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final w()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/j;
    .locals 1

    .line 1
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final synthetic w0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->m(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->R(Ljava/lang/String;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/model/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic x0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->n(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->G0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic y0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->o(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->T(Lorg/xmlpull/v1/XmlPullParser;ZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic z0(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/k;->p(Lorg/xmlpull/v1/XmlPullParser;Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method
