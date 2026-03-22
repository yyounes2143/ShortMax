.class public abstract Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "OnPageChangeCallbackCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final e:Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroidx/viewpager2/widget/ViewPager2;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/util/SparseIntArray;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->e:Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1
    .param p1    # Landroidx/viewpager2/widget/ViewPager2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string/jumbo v0, "viewPager"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 11
    .line 12
    new-instance p1, Landroid/util/SparseIntArray;

    .line 13
    .line 14
    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b:Landroid/util/SparseIntArray;

    .line 18
    .line 19
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d:I

    .line 21
    .line 22
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->e(Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;I)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->c:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iput-object v1, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->c:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    return-void
.end method

.method private final d(I)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 5
    .line 6
    new-instance v4, Lyd/e;

    .line 7
    .line 8
    invoke-direct {v4, p0, p1}, Lyd/e;-><init>(Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;I)V

    .line 9
    .line 10
    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x0

    .line 13
    const-wide/16 v1, 0xa

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    invoke-static/range {v0 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->c:Lkotlinx/coroutines/r;

    .line 21
    .line 22
    return-void
.end method

.method private static final e(Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->onPageSelected(I)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public abstract c(I)V
.end method

.method public final onPageSelected(I)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x29

    .line 5
    .line 6
    const-string v3, "OnPageChangeCallbackCompat"

    .line 7
    .line 8
    if-eq p1, v0, :cond_1

    .line 9
    .line 10
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 11
    .line 12
    new-instance v4, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v5, "onPageSelected -> position("

    .line 18
    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-virtual {v0, v3, v4}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget v0, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d:I

    .line 36
    .line 37
    const/4 v4, -0x1

    .line 38
    if-eq v0, v4, :cond_0

    .line 39
    .line 40
    iget-object v4, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b:Landroid/util/SparseIntArray;

    .line 41
    .line 42
    invoke-virtual {v4, v0, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d:I

    .line 46
    .line 47
    invoke-direct {p0}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b()V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object v0, Lfk/i0;->a:Lfk/i0;

    .line 51
    .line 52
    iget-object v4, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->a:Landroidx/viewpager2/widget/ViewPager2;

    .line 53
    .line 54
    invoke-virtual {v0, v4, p1}, Lfk/i0;->a(Landroidx/viewpager2/widget/ViewPager2;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v4, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b:Landroid/util/SparseIntArray;

    .line 59
    .line 60
    invoke-virtual {v4, p1}, Landroid/util/SparseIntArray;->get(I)I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-nez v0, :cond_2

    .line 65
    .line 66
    const/16 v0, 0xa

    .line 67
    .line 68
    if-ge v4, v0, :cond_2

    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b:Landroid/util/SparseIntArray;

    .line 71
    .line 72
    add-int/lit8 v4, v4, 0x1

    .line 73
    .line 74
    invoke-virtual {v0, p1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 75
    .line 76
    .line 77
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d(I)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_2
    iget v0, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d:I

    .line 82
    .line 83
    if-ne v0, p1, :cond_3

    .line 84
    .line 85
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 86
    .line 87
    new-instance v5, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v6, "onPageRealSelected -> position("

    .line 93
    .line 94
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v6, ") retryCount("

    .line 101
    .line 102
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v0, v3, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->b:Landroid/util/SparseIntArray;

    .line 119
    .line 120
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->c(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_3
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 128
    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v4, "invalid onPageSelected -> mCurrentPosition("

    .line 135
    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    iget v4, p0, Lcom/startshorts/androidplayer/listener/OnPageChangeCallbackCompat;->d:I

    .line 140
    .line 141
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    const-string v4, ") position("

    .line 145
    .line 146
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v0, v3, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :goto_0
    return-void
.end method
