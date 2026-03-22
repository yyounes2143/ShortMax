.class public Lcom/bytedance/bdtracker/v4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field public static final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "android.app.Activity"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/bytedance/bdtracker/v4;->a:Ljava/util/List;

    .line 8
    .line 9
    const-string v1, "androidx.fragment.app.Fragment"

    .line 10
    .line 11
    const-string v2, "android.support.v4.app.Fragment"

    .line 12
    .line 13
    const-string v3, "android.app.Fragment"

    .line 14
    .line 15
    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sput-object v1, Lcom/bytedance/bdtracker/v4;->b:Ljava/util/List;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    sput-object v1, Lcom/bytedance/bdtracker/v4;->c:Ljava/util/List;

    .line 31
    .line 32
    new-instance v1, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v1, Lcom/bytedance/bdtracker/v4;->d:Ljava/util/List;

    .line 38
    .line 39
    const-string v1, "PageUtils"

    .line 40
    .line 41
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    sput-object v1, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    check-cast v1, Ljava/lang/String;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    sget-object v2, Lcom/bytedance/bdtracker/v4;->c:Ljava/util/List;

    .line 70
    .line 71
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    sget-object v0, Lcom/bytedance/bdtracker/v4;->b:Ljava/util/List;

    .line 76
    .line 77
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-eqz v1, :cond_3

    .line 86
    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/bytedance/bdtracker/l0$b;->b(Ljava/lang/String;)Ljava/lang/Class;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    if-eqz v1, :cond_2

    .line 98
    .line 99
    sget-object v2, Lcom/bytedance/bdtracker/v4;->d:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_3
    return-void
.end method

.method public static a(Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    const-string v1, "getView"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-array v1, v2, [Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    instance-of v0, p0, Landroid/view/View;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p0, Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    return-object p0

    .line 29
    :catchall_0
    :cond_0
    const/4 p0, 0x0

    .line 30
    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/bytedance/applog/IPageMeta;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    move-object v0, p0

    .line 12
    check-cast v0, Lcom/bytedance/applog/IPageMeta;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bytedance/applog/IPageMeta;->path()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 25
    .line 26
    new-array v4, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v5, "Cannot get path from IPageMeta"

    .line 29
    .line 30
    invoke-interface {v2, v3, v5, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object v0, Lcom/bytedance/bdtracker/b;->c:Lcom/bytedance/bdtracker/b$e;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$e;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v2, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 46
    .line 47
    new-array v1, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v3, "PageMeta Annotation Disable"

    .line 50
    .line 51
    invoke-interface {v0, v2, v3, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-class v1, Lcom/bytedance/applog/annotation/PageMeta;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/bytedance/applog/annotation/PageMeta;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/bytedance/applog/annotation/PageMeta;->path()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/bytedance/applog/annotation/PageMeta;->path()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const-string p0, ""

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    instance-of v0, p0, Lcom/bytedance/applog/IPageMeta;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    :try_start_0
    move-object v0, p0

    .line 12
    check-cast v0, Lcom/bytedance/applog/IPageMeta;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/bytedance/applog/IPageMeta;->title()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    return-object p0

    .line 19
    :catchall_0
    move-exception v0

    .line 20
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    sget-object v3, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 25
    .line 26
    new-array v4, v1, [Ljava/lang/Object;

    .line 27
    .line 28
    const-string v5, "Cannot get title from IPageMeta"

    .line 29
    .line 30
    invoke-interface {v2, v3, v5, v0, v4}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    sget-object v0, Lcom/bytedance/bdtracker/b;->c:Lcom/bytedance/bdtracker/b$e;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/bytedance/bdtracker/b;->a(Lcom/bytedance/bdtracker/b$e;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sget-object v2, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 46
    .line 47
    new-array v3, v1, [Ljava/lang/Object;

    .line 48
    .line 49
    const-string v4, "PageMeta Annotation Disable"

    .line 50
    .line 51
    invoke-interface {v0, v2, v4, v3}, Lcom/bytedance/applog/log/IAppLogLogger;->info(Ljava/util/List;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const-class v2, Lcom/bytedance/applog/annotation/PageMeta;

    .line 60
    .line 61
    invoke-virtual {v0, v2}, Ljava/lang/Class;->isAnnotationPresent(Ljava/lang/Class;)Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Lcom/bytedance/applog/annotation/PageMeta;

    .line 76
    .line 77
    if-eqz v0, :cond_3

    .line 78
    .line 79
    invoke-interface {v0}, Lcom/bytedance/applog/annotation/PageMeta;->title()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    invoke-interface {v0}, Lcom/bytedance/applog/annotation/PageMeta;->title()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p0

    .line 93
    return-object p0

    .line 94
    :cond_3
    :goto_0
    instance-of v0, p0, Landroid/app/Activity;

    .line 95
    .line 96
    if-eqz v0, :cond_8

    .line 97
    .line 98
    move-object v0, p0

    .line 99
    check-cast v0, Landroid/app/Activity;

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    if-nez v2, :cond_4

    .line 110
    .line 111
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    .line 112
    .line 113
    .line 114
    move-result-object p0

    .line 115
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    return-object p0

    .line 120
    :cond_4
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    if-eqz v2, :cond_5

    .line 125
    .line 126
    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_6

    .line 135
    .line 136
    invoke-virtual {v2}, Landroid/app/ActionBar;->getTitle()Ljava/lang/CharSequence;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    :try_start_1
    const-string v2, "android.support.v7.app.AppCompatActivity"

    .line 146
    .line 147
    const-string v3, "androidx.appcompat.app.AppCompatActivity"

    .line 148
    .line 149
    filled-new-array {v2, v3}, [Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-static {v2}, Lcom/bytedance/bdtracker/l0$b;->a([Ljava/lang/String;)Ljava/lang/Class;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    if-eqz v2, :cond_6

    .line 158
    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 160
    .line 161
    .line 162
    move-result v2

    .line 163
    if-eqz v2, :cond_6

    .line 164
    .line 165
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 166
    .line 167
    .line 168
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    const-string v3, "getSupportActionBar"

    .line 170
    .line 171
    :try_start_2
    new-array v4, v1, [Ljava/lang/Class;

    .line 172
    .line 173
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 174
    .line 175
    .line 176
    move-result-object v2

    .line 177
    new-array v3, v1, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-eqz v0, :cond_6

    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 189
    const-string v3, "getTitle"

    .line 190
    .line 191
    :try_start_3
    new-array v4, v1, [Ljava/lang/Class;

    .line 192
    .line 193
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    new-array v3, v1, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    check-cast v0, Ljava/lang/CharSequence;

    .line 204
    .line 205
    if-eqz v0, :cond_6

    .line 206
    .line 207
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 211
    goto :goto_1

    .line 212
    :catch_0
    :cond_6
    const/4 v0, 0x0

    .line 213
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    if-nez v2, :cond_7

    .line 218
    .line 219
    return-object v0

    .line 220
    :cond_7
    :try_start_4
    move-object v0, p0

    .line 221
    check-cast v0, Landroid/app/Activity;

    .line 222
    .line 223
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    if-eqz v0, :cond_8

    .line 228
    .line 229
    move-object v2, p0

    .line 230
    check-cast v2, Landroid/app/Activity;

    .line 231
    .line 232
    invoke-virtual {v2}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    .line 237
    .line 238
    .line 239
    move-result-object v2

    .line 240
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 245
    .line 246
    .line 247
    move-result v2

    .line 248
    if-nez v2, :cond_8

    .line 249
    .line 250
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 254
    return-object p0

    .line 255
    :catch_1
    move-exception v0

    .line 256
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 257
    .line 258
    .line 259
    move-result-object v2

    .line 260
    sget-object v3, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 261
    .line 262
    new-array v1, v1, [Ljava/lang/Object;

    .line 263
    .line 264
    const-string v4, "Cannot get title from activity label"

    .line 265
    .line 266
    invoke-interface {v2, v3, v4, v0, v1}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 267
    .line 268
    .line 269
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 270
    .line 271
    .line 272
    move-result-object p0

    .line 273
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    return-object p0
.end method

.method public static d(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 4

    .line 1
    instance-of v0, p0, Lcom/bytedance/applog/IPageMeta;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    check-cast p0, Lcom/bytedance/applog/IPageMeta;

    .line 6
    .line 7
    invoke-interface {p0}, Lcom/bytedance/applog/IPageMeta;->pageProperties()Lorg/json/JSONObject;

    .line 8
    .line 9
    .line 10
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    return-object p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    invoke-static {}, Lcom/bytedance/applog/log/LoggerImpl;->global()Lcom/bytedance/applog/log/IAppLogLogger;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lcom/bytedance/bdtracker/v4;->e:Ljava/util/List;

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    .line 22
    const-string v3, "Cannot get track properties from activity"

    .line 23
    .line 24
    invoke-interface {v0, v1, v3, p0, v2}, Lcom/bytedance/applog/log/IAppLogLogger;->error(Ljava/util/List;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/4 p0, 0x0

    .line 28
    return-object p0
.end method
