.class public abstract Ld/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lg/a;)J
    .locals 6

    .line 1
    const-string v0, "elapsedTime"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v0, -0x1

    .line 7
    .line 8
    :try_start_0
    iget-wide v2, p0, Lg/a;->b:J

    .line 9
    .line 10
    const-wide/16 v4, 0x0

    .line 11
    .line 12
    cmp-long v2, v2, v4

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_0
    if-nez v2, :cond_2

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v2

    .line 23
    iput-wide v2, p0, Lg/a;->b:J

    .line 24
    .line 25
    iget-wide v0, p0, Lg/a;->a:J

    .line 26
    .line 27
    cmp-long p0, v0, v4

    .line 28
    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    cmp-long p0, v2, v4

    .line 32
    .line 33
    if-eqz p0, :cond_1

    .line 34
    .line 35
    sub-long v0, v2, v0

    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move-wide v0, v4

    .line 39
    goto :goto_1

    .line 40
    :catch_0
    move-exception p0

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    new-instance p0, Ljava/lang/IllegalAccessException;

    .line 43
    .line 44
    const-string v2, "end() has been called before"

    .line 45
    .line 46
    invoke-direct {p0, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :goto_0
    sget-object v2, Lga/a;->a:Lga/a;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    const-string v4, "getCostTime -> "

    .line 55
    .line 56
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const-string v3, "AdUITools"

    .line 71
    .line 72
    invoke-virtual {v2, v3, p0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_1
    return-wide v0
.end method

.method public static b(Landroid/content/Context;Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 1
    const-string v0, "showBlurImage"

    .line 2
    .line 3
    const-string v1, ",url="

    .line 4
    .line 5
    const-string v2, "showBlurImage -> imageViewExist="

    .line 6
    .line 7
    const-string v3, "context"

    .line 8
    .line 9
    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    if-nez p2, :cond_0

    .line 13
    .line 14
    move-object v3, p3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move-object v3, p2

    .line 17
    :goto_0
    :try_start_0
    sget-object v4, Lga/a;->a:Lga/a;

    .line 18
    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    move v7, v6

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    move v7, v2

    .line 31
    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v7, ",mainDrawableExist="

    .line 35
    .line 36
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    move p2, v6

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    move p2, v2

    .line 44
    :goto_2
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string p2, ",iconDrawableExist="

    .line 48
    .line 49
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    if-eqz p3, :cond_3

    .line 53
    .line 54
    move v2, v6

    .line 55
    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {v4, v0, p2}, Lga/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string p2, "null cannot be cast to non-null type android.graphics.drawable.BitmapDrawable"

    .line 69
    .line 70
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 74
    .line 75
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    sget-object p3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 80
    .line 81
    invoke-virtual {p2, p3, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-static {p0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    invoke-static {p0, p2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    .line 90
    .line 91
    .line 92
    move-result-object p3

    .line 93
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {p0, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getElement()Landroid/renderscript/Element;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {p0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    const/high16 v3, 0x41c80000    # 25.0f

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, p3}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 121
    .line 122
    .line 123
    if-eqz p1, :cond_4

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    .line 127
    .line 128
    goto :goto_3

    .line 129
    :catch_0
    move-exception p0

    .line 130
    goto :goto_4

    .line 131
    :cond_4
    :goto_3
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->destroy()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->destroy()V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2}, Landroid/renderscript/BaseObj;->destroy()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/renderscript/RenderScript;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .line 142
    .line 143
    goto :goto_5

    .line 144
    :goto_4
    sget-object p1, Lga/a;->a:Lga/a;

    .line 145
    .line 146
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    invoke-virtual {p1, v0, p0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    :goto_5
    return-void
.end method

.method public static c(Landroid/widget/FrameLayout;)V
    .locals 3

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, -0x1

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 14
    .line 15
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    .line 20
    .line 21
    goto :goto_1

    .line 22
    :catch_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 29
    .line 30
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :goto_0
    sget-object v0, Lga/a;->a:Lga/a;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, "modifyViewToMatchParent Exception -> "

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    const-string v1, "AdUITools"

    .line 65
    .line 66
    invoke-virtual {v0, v1, p0}, Lga/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_1
    return-void
.end method
