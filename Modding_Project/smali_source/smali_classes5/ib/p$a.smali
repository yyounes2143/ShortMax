.class Lib/p$a;
.super Ljava/lang/Object;
.source "AccountSdkUtil.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lib/p;->d(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lib/p$a;->a:Landroid/view/ViewGroup;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 8

    .line 1
    const-string v0, ":"

    .line 2
    .line 3
    const-string v1, "AccountSdkUtil"

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    :try_start_0
    const-string v3, "com.huawei.android.view.WindowManagerEx$LayoutParamsEx"

    .line 7
    .line 8
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    const-string v4, "getDisplaySideRegion"

    .line 13
    .line 14
    const-class v5, Landroid/view/WindowInsets;

    .line 15
    .line 16
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    const/4 v5, 0x0

    .line 29
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    if-nez v3, :cond_0

    .line 34
    .line 35
    const-string v0, "sideRegion is null"

    .line 36
    .line 37
    invoke-static {v1, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 38
    .line 39
    .line 40
    goto/16 :goto_1

    .line 41
    .line 42
    :catchall_0
    move-exception v0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const-string v4, "com.huawei.android.view.DisplaySideRegionEx"

    .line 45
    .line 46
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const-string v5, "getSafeInsets"

    .line 51
    .line 52
    const/4 v6, 0x0

    .line 53
    new-array v7, v6, [Ljava/lang/Class;

    .line 54
    .line 55
    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    new-array v5, v6, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    check-cast v3, Landroid/graphics/Rect;

    .line 66
    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v5, "safeInsets LR: "

    .line 73
    .line 74
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 78
    .line 79
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v5, v3, Landroid/graphics/Rect;->right:I

    .line 86
    .line 87
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v4

    .line 94
    invoke-static {v1, v4, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v5, "safeInsets TB: "

    .line 103
    .line 104
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 108
    .line 109
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 116
    .line 117
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-static {v1, v0, v2}, Lib/t;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lib/p$a;->a:Landroid/view/ViewGroup;

    .line 128
    .line 129
    if-eqz v0, :cond_1

    .line 130
    .line 131
    iget v4, v3, Landroid/graphics/Rect;->left:I

    .line 132
    .line 133
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 134
    .line 135
    invoke-virtual {v0, v4, v6, v3, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    const-string v4, "onApplyWindowInsets--"

    .line 145
    .line 146
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v1, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :catch_0
    const-string v0, "ClassNotFoundException onApplyWindowInsets"

    .line 169
    .line 170
    invoke-static {v1, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_1
    const-string v0, "IllegalAccessException onApplyWindowInsets"

    .line 175
    .line 176
    invoke-static {v1, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_1

    .line 180
    :catch_2
    const-string v0, "NoSuchMethodException onApplyWindowInsets"

    .line 181
    .line 182
    invoke-static {v1, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    .line 184
    .line 185
    goto :goto_1

    .line 186
    :catch_3
    const-string v0, "InvocationTargetException onApplyWindowInsets"

    .line 187
    .line 188
    invoke-static {v1, v0, v2}, Lib/t;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 189
    .line 190
    .line 191
    :cond_1
    :goto_1
    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1
.end method
