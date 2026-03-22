.class public final Lcom/inmobi/media/Qa;
.super Lcom/inmobi/media/V1;
.source "SourceFile"


# instance fields
.field public final b:Landroid/view/Window;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/view/Window;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V
    .locals 1

    .line 1
    const-string v0, "window"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "config"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcom/inmobi/media/V1;-><init>(Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 15
    .line 16
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    const/4 p2, 0x0

    .line 19
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 20
    .line 21
    .line 22
    iput-object p1, p0, Lcom/inmobi/media/Qa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    return-void
.end method

.method public static final a(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/inmobi/media/Qa;I)V
    .locals 2

    const-string v0, "$isSuccess"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p2, :cond_0

    .line 2
    iput-boolean v0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 3
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "capture result - success - "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    const-string p2, "tag"

    const-string v1, "PixelCopyScreenShotProcess"

    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "message"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p1, Lcom/inmobi/media/Qa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/Qa;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/graphics/Bitmap;
    .locals 11

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget-object v3, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 26
    .line 27
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "createBitmap(...)"

    .line 32
    .line 33
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v5, Landroid/graphics/Rect;

    .line 37
    .line 38
    const/4 v6, 0x0

    .line 39
    invoke-direct {v5, v6, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 40
    .line 41
    .line 42
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 43
    .line 44
    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 45
    .line 46
    .line 47
    iget-object v3, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 48
    .line 49
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getLayerType()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    iget-object v7, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 58
    .line 59
    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v7

    .line 63
    const/4 v8, 0x0

    .line 64
    invoke-virtual {v7, v6, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    iget-object v6, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 68
    .line 69
    new-instance v7, Lub/q1;

    .line 70
    .line 71
    invoke-direct {v7, v2, p0}, Lub/q1;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/inmobi/media/Qa;)V

    .line 72
    .line 73
    .line 74
    new-instance v9, Landroid/os/Handler;

    .line 75
    .line 76
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 77
    .line 78
    .line 79
    move-result-object v10

    .line 80
    invoke-direct {v9, v10}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v6, v5, v4, v7, v9}, Lcom/applovin/impl/ha;->a(Landroid/view/Window;Landroid/graphics/Rect;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    iget-object v5, p0, Lcom/inmobi/media/Qa;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 89
    .line 90
    .line 91
    move-result v5

    .line 92
    if-nez v5, :cond_0

    .line 93
    .line 94
    const-wide/16 v5, 0x1f4

    .line 95
    .line 96
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    const-string v6, "success - "

    .line 103
    .line 104
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-boolean v6, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 108
    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v6, " - time - "

    .line 113
    .line 114
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 118
    .line 119
    .line 120
    move-result-wide v6

    .line 121
    sub-long/2addr v6, v0

    .line 122
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "PixelCopyScreenShotProcess"

    .line 130
    .line 131
    const-string v5, "tag"

    .line 132
    .line 133
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v6, "message"

    .line 137
    .line 138
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object v0, p0, Lcom/inmobi/media/Qa;->b:Landroid/view/Window;

    .line 145
    .line 146
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v3, v8}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 151
    .line 152
    .line 153
    iget-boolean v0, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 154
    .line 155
    if-eqz v0, :cond_1

    .line 156
    .line 157
    invoke-static {v1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    const-string v0, "success"

    .line 161
    .line 162
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0, v4}, Lcom/inmobi/media/V1;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    :cond_1
    return-object v8
.end method
