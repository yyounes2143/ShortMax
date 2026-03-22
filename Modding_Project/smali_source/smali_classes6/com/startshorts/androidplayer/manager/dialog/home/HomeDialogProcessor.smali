.class public final Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;
.super Ljava/lang/Object;
.source "HomeDialogProcessor.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHomeDialogProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HomeDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 Mutex.kt\nkotlinx/coroutines/sync/MutexKt\n*L\n1#1,111:1\n1010#2,2:112\n116#3,11:114\n*S KotlinDebug\n*F\n+ 1 HomeDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor\n*L\n49#1:112,2\n64#1:114,11\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final c:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Z

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->a:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;

    .line 7
    .line 8
    new-instance v0, Lwe/b;

    .line 9
    .line 10
    invoke-direct {v0}, Lwe/b;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->b:Lms/i;

    .line 18
    .line 19
    new-instance v0, Lwe/c;

    .line 20
    .line 21
    invoke-direct {v0}, Lwe/c;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sput-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->c:Lms/i;

    .line 29
    .line 30
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->h()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->l(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c()Lqt/a;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->g()Lqt/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final synthetic d(Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->j(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final e()Lqt/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->b:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lqt/a;

    .line 8
    .line 9
    return-object v0
.end method

.method private final f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/manager/dialog/home/c;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->c:Lms/i;

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

.method private static final g()Lqt/a;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    invoke-static {v2, v0, v1}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    return-object v0
.end method

.method private static final h()Ljava/util/List;
    .locals 13

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/manager/dialog/home/UpdateDialogProcessor;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/manager/dialog/home/h;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/dialog/home/h;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;

    .line 12
    .line 13
    invoke-direct {v2}, Lcom/startshorts/androidplayer/manager/dialog/home/MergeTouristDialogProcessor;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v3, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;

    .line 17
    .line 18
    invoke-direct {v3}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeRetainDiscountSubProcessor;-><init>()V

    .line 19
    .line 20
    .line 21
    new-instance v4, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor;

    .line 22
    .line 23
    invoke-direct {v4}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor;-><init>()V

    .line 24
    .line 25
    .line 26
    new-instance v5, Lcom/startshorts/androidplayer/manager/dialog/home/i;

    .line 27
    .line 28
    invoke-direct {v5}, Lcom/startshorts/androidplayer/manager/dialog/home/i;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v6, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;

    .line 32
    .line 33
    invoke-direct {v6}, Lcom/startshorts/androidplayer/manager/dialog/home/RFMGuideDialogProcessor;-><init>()V

    .line 34
    .line 35
    .line 36
    new-instance v7, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor;

    .line 37
    .line 38
    invoke-direct {v7}, Lcom/startshorts/androidplayer/manager/dialog/home/LoginGuideDialogProcessor;-><init>()V

    .line 39
    .line 40
    .line 41
    new-instance v8, Lcom/startshorts/androidplayer/manager/dialog/home/a;

    .line 42
    .line 43
    invoke-direct {v8}, Lcom/startshorts/androidplayer/manager/dialog/home/a;-><init>()V

    .line 44
    .line 45
    .line 46
    new-instance v9, Lcom/startshorts/androidplayer/manager/dialog/home/b;

    .line 47
    .line 48
    invoke-direct {v9}, Lcom/startshorts/androidplayer/manager/dialog/home/b;-><init>()V

    .line 49
    .line 50
    .line 51
    new-instance v10, Lcom/startshorts/androidplayer/manager/dialog/home/NotificationPermissionDialogProcessor;

    .line 52
    .line 53
    invoke-direct {v10}, Lcom/startshorts/androidplayer/manager/dialog/home/NotificationPermissionDialogProcessor;-><init>()V

    .line 54
    .line 55
    .line 56
    const/16 v11, 0xb

    .line 57
    .line 58
    new-array v11, v11, [Lcom/startshorts/androidplayer/manager/dialog/home/c;

    .line 59
    .line 60
    const/4 v12, 0x0

    .line 61
    aput-object v0, v11, v12

    .line 62
    .line 63
    const/4 v0, 0x1

    .line 64
    aput-object v1, v11, v0

    .line 65
    .line 66
    const/4 v0, 0x2

    .line 67
    aput-object v2, v11, v0

    .line 68
    .line 69
    const/4 v0, 0x3

    .line 70
    aput-object v3, v11, v0

    .line 71
    .line 72
    const/4 v0, 0x4

    .line 73
    aput-object v4, v11, v0

    .line 74
    .line 75
    const/4 v0, 0x5

    .line 76
    aput-object v5, v11, v0

    .line 77
    .line 78
    const/4 v0, 0x6

    .line 79
    aput-object v6, v11, v0

    .line 80
    .line 81
    const/4 v0, 0x7

    .line 82
    aput-object v7, v11, v0

    .line 83
    .line 84
    const/16 v0, 0x8

    .line 85
    .line 86
    aput-object v8, v11, v0

    .line 87
    .line 88
    const/16 v0, 0x9

    .line 89
    .line 90
    aput-object v9, v11, v0

    .line 91
    .line 92
    const/16 v0, 0xa

    .line 93
    .line 94
    aput-object v10, v11, v0

    .line 95
    .line 96
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method private final j(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "I",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->n:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->n:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->l:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->n:I

    .line 32
    .line 33
    const-string/jumbo v3, "showInLoop"

    .line 34
    .line 35
    .line 36
    const-string v4, "HomeDialogProcessor"

    .line 37
    .line 38
    const/4 v5, 0x1

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    if-ne v2, v5, :cond_1

    .line 42
    .line 43
    iget p2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->k:I

    .line 44
    .line 45
    iget-object p1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->j:Ljava/lang/Object;

    .line 46
    .line 47
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->i:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v1, Lcom/startshorts/androidplayer/manager/dialog/home/c;

    .line 52
    .line 53
    iget-object v0, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->h:Ljava/lang/Object;

    .line 54
    .line 55
    check-cast v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;

    .line 56
    .line 57
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 64
    .line 65
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    throw p1

    .line 69
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->f()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    invoke-static {p3, p2}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    check-cast p3, Lcom/startshorts/androidplayer/manager/dialog/home/c;

    .line 81
    .line 82
    if-nez p3, :cond_3

    .line 83
    .line 84
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 85
    .line 86
    new-instance p3, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p2, " -> end, processor == null"

    .line 98
    .line 99
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p2

    .line 106
    invoke-virtual {p1, v4, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    const/4 p1, 0x0

    .line 110
    sput-boolean p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 111
    .line 112
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 113
    .line 114
    return-object p1

    .line 115
    :cond_3
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->f()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    add-int/lit8 v6, p2, 0x1

    .line 120
    .line 121
    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->t0(Ljava/util/List;I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Lcom/startshorts/androidplayer/manager/dialog/home/c;

    .line 126
    .line 127
    new-instance v6, Lwe/d;

    .line 128
    .line 129
    invoke-direct {v6, v2, p1, p2}, Lwe/d;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;I)V

    .line 130
    .line 131
    .line 132
    iput-object p0, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->h:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object p3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->i:Ljava/lang/Object;

    .line 135
    .line 136
    iput-object v6, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->j:Ljava/lang/Object;

    .line 137
    .line 138
    iput p2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->k:I

    .line 139
    .line 140
    iput v5, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$1;->n:I

    .line 141
    .line 142
    invoke-interface {p3, p1, v6, v0}, Lcom/startshorts/androidplayer/manager/dialog/home/c;->b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    if-ne p1, v1, :cond_4

    .line 147
    .line 148
    return-object v1

    .line 149
    :cond_4
    move-object v1, p3

    .line 150
    move-object p3, p1

    .line 151
    move-object p1, v6

    .line 152
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    .line 153
    .line 154
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 155
    .line 156
    .line 157
    move-result p3

    .line 158
    if-eqz p3, :cond_5

    .line 159
    .line 160
    sget p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->e:I

    .line 161
    .line 162
    add-int/2addr p1, v5

    .line 163
    sput p1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->e:I

    .line 164
    .line 165
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 166
    .line 167
    new-instance p3, Ljava/lang/StringBuilder;

    .line 168
    .line 169
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p2, " -> start, mProcessing("

    .line 179
    .line 180
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    sget-boolean p2, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 184
    .line 185
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p2, ") processor.name="

    .line 189
    .line 190
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-interface {v1}, Lcom/startshorts/androidplayer/manager/dialog/home/c;->name()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object p2

    .line 197
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object p2

    .line 204
    invoke-virtual {p1, v4, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 212
    .line 213
    return-object p1
.end method

.method static synthetic k(Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x2

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->j(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method

.method private static final l(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;I)Lkotlin/Unit;
    .locals 3

    .line 1
    sget v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->e:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/c;->a()Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    sput-boolean p0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    sget-object p0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 20
    .line 21
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-direct {v0, p1, p2, v2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$showInLoop$showNextProcessor$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;)V

    .line 25
    .line 26
    .line 27
    const-string/jumbo p1, "showInLoop"

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, p1, v1, v0}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->j(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/r;

    .line 31
    .line 32
    .line 33
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 34
    .line 35
    return-object p0
.end method

.method private final m()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->f()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-le v1, v2, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$a;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$a;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->D(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public final i(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lrs/c;)Ljava/lang/Object;
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
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
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
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
    instance-of v0, p2, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->l:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->l:I

    .line 18
    .line 19
    :goto_0
    move-object v4, v0

    .line 20
    goto :goto_1

    .line 21
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;

    .line 22
    .line 23
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;Lrs/c;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    iget-object p2, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->j:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v1, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->l:I

    .line 34
    .line 35
    const-string v2, "process failed -> ForceUpdateDialog is showing"

    .line 36
    .line 37
    const-string v3, "process failed -> mProcessing is true"

    .line 38
    .line 39
    const/4 v5, 0x2

    .line 40
    const/4 v6, 0x1

    .line 41
    const-string v7, "HomeDialogProcessor"

    .line 42
    .line 43
    const/4 v8, 0x0

    .line 44
    if-eqz v1, :cond_3

    .line 45
    .line 46
    if-eq v1, v6, :cond_2

    .line 47
    .line 48
    if-ne v1, v5, :cond_1

    .line 49
    .line 50
    iget-object p1, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast p1, Lqt/a;

    .line 53
    .line 54
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .line 56
    .line 57
    goto/16 :goto_3

    .line 58
    .line 59
    :catchall_0
    move-exception p2

    .line 60
    goto/16 :goto_4

    .line 61
    .line 62
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 63
    .line 64
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1

    .line 70
    :cond_2
    iget-object p1, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->i:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast p1, Lqt/a;

    .line 73
    .line 74
    iget-object v1, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 75
    .line 76
    check-cast v1, Lcom/startshorts/androidplayer/ui/activity/MainActivity;

    .line 77
    .line 78
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    move-object p2, v1

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    sget-boolean p2, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 87
    .line 88
    if-eqz p2, :cond_4

    .line 89
    .line 90
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 91
    .line 92
    invoke-virtual {p1, v7, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 96
    .line 97
    return-object p1

    .line 98
    :cond_4
    sget-object p2, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 99
    .line 100
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_5

    .line 105
    .line 106
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 107
    .line 108
    invoke-virtual {p1, v7, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 112
    .line 113
    return-object p1

    .line 114
    :cond_5
    invoke-direct {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->e()Lqt/a;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iput-object p1, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 119
    .line 120
    iput-object p2, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->i:Ljava/lang/Object;

    .line 121
    .line 122
    iput v6, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->l:I

    .line 123
    .line 124
    invoke-interface {p2, v8, v4}, Lqt/a;->lock(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    if-ne v1, v0, :cond_6

    .line 129
    .line 130
    return-object v0

    .line 131
    :cond_6
    move-object v9, p2

    .line 132
    move-object p2, p1

    .line 133
    move-object p1, v9

    .line 134
    :goto_2
    :try_start_1
    sget-boolean v1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 135
    .line 136
    if-eqz v1, :cond_7

    .line 137
    .line 138
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 139
    .line 140
    invoke-virtual {p2, v7, v3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 144
    .line 145
    invoke-interface {p1, v8}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    return-object p2

    .line 149
    :cond_7
    :try_start_2
    sget-object v1, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->a:Lcom/startshorts/androidplayer/manager/update/UpdateManager;

    .line 150
    .line 151
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/manager/update/UpdateManager;->k()Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-eqz v1, :cond_8

    .line 156
    .line 157
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 158
    .line 159
    invoke-virtual {p2, v7, v2}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    .line 164
    invoke-interface {p1, v8}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    return-object p2

    .line 168
    :cond_8
    :try_start_3
    sput-boolean v6, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 169
    .line 170
    const/4 v1, 0x0

    .line 171
    sput v1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->e:I

    .line 172
    .line 173
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 174
    .line 175
    const-string/jumbo v2, "start showInLoop"

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v7, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    sget-object v1, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->a:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;

    .line 182
    .line 183
    invoke-direct {v1}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->m()V

    .line 184
    .line 185
    .line 186
    iput-object p1, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 187
    .line 188
    iput-object v8, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->i:Ljava/lang/Object;

    .line 189
    .line 190
    iput v5, v4, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor$process$1;->l:I

    .line 191
    .line 192
    const/4 v3, 0x0

    .line 193
    const/4 v5, 0x2

    .line 194
    const/4 v6, 0x0

    .line 195
    move-object v2, p2

    .line 196
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->k(Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;Lcom/startshorts/androidplayer/ui/activity/MainActivity;ILrs/c;ILjava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p2

    .line 200
    if-ne p2, v0, :cond_9

    .line 201
    .line 202
    return-object v0

    .line 203
    :cond_9
    :goto_3
    sget-boolean p2, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogProcessor;->d:Z

    .line 204
    .line 205
    if-nez p2, :cond_a

    .line 206
    .line 207
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 208
    .line 209
    const-string v0, "no processor find"

    .line 210
    .line 211
    invoke-virtual {p2, v7, v0}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    :cond_a
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 215
    .line 216
    invoke-interface {p1, v8}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 217
    .line 218
    .line 219
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 220
    .line 221
    return-object p1

    .line 222
    :goto_4
    invoke-interface {p1, v8}, Lqt/a;->unlock(Ljava/lang/Object;)V

    .line 223
    .line 224
    .line 225
    throw p2
.end method
