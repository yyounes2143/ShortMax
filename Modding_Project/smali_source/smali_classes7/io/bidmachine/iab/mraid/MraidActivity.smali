.class public Lio/bidmachine/iab/mraid/MraidActivity;
.super Lio/bidmachine/rendering/internal/a;
.source "SourceFile"


# static fields
.field private static final d:Landroid/util/SparseArray;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/iab/mraid/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lio/bidmachine/iab/mraid/e;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/a;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    .line 6
    .line 7
    return-void
.end method

.method private static e(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;I)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/iab/mraid/MraidType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    const-class v0, Lio/bidmachine/iab/mraid/MraidActivity;

    .line 2
    .line 3
    invoke-static {p0, v0}, Ltp/e;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const-string v0, "InterstitialId"

    .line 8
    .line 9
    invoke-virtual {p0, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    const-string p2, "InterstitialType"

    .line 13
    .line 14
    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    return-object p0
.end method

.method private static f(Lio/bidmachine/iab/mraid/e;)V
    .locals 2
    .param p0    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/iab/mraid/e;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static g(Ljava/lang/Integer;)V
    .locals 1
    .param p0    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/mraid/MraidActivity;->g(Ljava/lang/Integer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static i(Landroid/content/Context;Lio/bidmachine/iab/mraid/e;Lio/bidmachine/iab/mraid/MraidType;)V
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p1    # Lio/bidmachine/iab/mraid/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/iab/mraid/MraidType;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "MraidActivity"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    new-array p0, v1, [Ljava/lang/Object;

    .line 7
    .line 8
    const-string p1, "MraidInterstitial is null during showing MraidActivity"

    .line 9
    .line 10
    invoke-static {v0, p1, p0}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-nez p0, :cond_1

    .line 15
    .line 16
    new-array p0, v1, [Ljava/lang/Object;

    .line 17
    .line 18
    const-string p2, "Context is null during showing MraidActivity"

    .line 19
    .line 20
    invoke-static {v0, p2, p0}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p2}, Lqm/a;->h(Ljava/lang/String;)Lqm/a;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {p1, p0}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    if-nez p2, :cond_2

    .line 32
    .line 33
    new-array p0, v1, [Ljava/lang/Object;

    .line 34
    .line 35
    const-string p2, "MraidType is null during showing MraidActivity"

    .line 36
    .line 37
    invoke-static {v0, p2, p0}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    invoke-static {p2}, Lqm/a;->h(Ljava/lang/String;)Lqm/a;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p1, p0}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    :try_start_0
    invoke-static {p1}, Lio/bidmachine/iab/mraid/MraidActivity;->f(Lio/bidmachine/iab/mraid/e;)V

    .line 49
    .line 50
    .line 51
    iget v0, p1, Lio/bidmachine/iab/mraid/e;->a:I

    .line 52
    .line 53
    invoke-static {p0, p2, v0}, Lio/bidmachine/iab/mraid/MraidActivity;->e(Landroid/content/Context;Lio/bidmachine/iab/mraid/MraidType;I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :catchall_0
    move-exception p0

    .line 62
    const-string p2, "Exception during showing MraidActivity"

    .line 63
    .line 64
    invoke-static {p2, p0}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p2, p0}, Lqm/a;->j(Ljava/lang/String;Ljava/lang/Throwable;)Lqm/a;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    invoke-virtual {p1, p0}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 72
    .line 73
    .line 74
    iget p0, p1, Lio/bidmachine/iab/mraid/e;->a:I

    .line 75
    .line 76
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-static {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->g(Ljava/lang/Integer;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    return-void
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/e;->o()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/rendering/internal/a;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v0, "InterstitialId"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    const-string v1, "MraidActivity"

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    new-array p1, v2, [Ljava/lang/Object;

    .line 20
    .line 21
    const-string v0, "Mraid display cache id not provided"

    .line 22
    .line 23
    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-static {p0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iput-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    .line 43
    .line 44
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity;->d:Landroid/util/SparseArray;

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    check-cast p1, Lio/bidmachine/iab/mraid/e;

    .line 51
    .line 52
    iput-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 53
    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->a:Ljava/lang/Integer;

    .line 57
    .line 58
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "Mraid interstitial not found in display cache, id=%s"

    .line 63
    .line 64
    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "InterstitialType"

    .line 76
    .line 77
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lio/bidmachine/iab/mraid/MraidType;

    .line 82
    .line 83
    if-nez p1, :cond_2

    .line 84
    .line 85
    new-array p1, v2, [Ljava/lang/Object;

    .line 86
    .line 87
    const-string v0, "MraidType is null"

    .line 88
    .line 89
    invoke-static {v1, v0, p1}, Lio/bidmachine/iab/mraid/h;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    invoke-static {p0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 96
    .line 97
    invoke-static {v0}, Lqm/a;->f(Ljava/lang/String;)Lqm/a;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 102
    .line 103
    .line 104
    return-void

    .line 105
    :cond_2
    invoke-static {p0}, Lsm/q;->h(Landroid/app/Activity;)V

    .line 106
    .line 107
    .line 108
    sget-object v0, Lio/bidmachine/iab/mraid/MraidActivity$a;->a:[I

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    aget p1, v0, p1

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    if-eq p1, v0, :cond_4

    .line 118
    .line 119
    const/4 v1, 0x2

    .line 120
    if-eq p1, v1, :cond_4

    .line 121
    .line 122
    const/4 v0, 0x3

    .line 123
    if-eq p1, v0, :cond_3

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_3
    iput-boolean v2, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_4
    iput-boolean v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->c:Z

    .line 130
    .line 131
    :goto_0
    :try_start_0
    iget-object p1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 132
    .line 133
    invoke-virtual {p1, p0, v2}, Lio/bidmachine/iab/mraid/e;->e(Landroid/app/Activity;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    const-string v0, "Exception during showing MraidInterstial in MraidActivity"

    .line 139
    .line 140
    invoke-static {v0, p1}, Lio/bidmachine/iab/mraid/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    invoke-static {p0}, Lyq/n;->a(Landroid/app/Activity;)V

    .line 144
    .line 145
    .line 146
    iget-object v1, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 147
    .line 148
    invoke-static {v0, p1}, Lqm/a;->j(Ljava/lang/String;Ljava/lang/Throwable;)Lqm/a;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-virtual {v1, p1}, Lio/bidmachine/iab/mraid/e;->k(Lqm/a;)V

    .line 153
    .line 154
    .line 155
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->h()V

    .line 156
    .line 157
    .line 158
    :goto_1
    invoke-static {p0}, Lsm/q;->j(Landroid/app/Activity;)V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/mraid/MraidActivity;->b:Lio/bidmachine/iab/mraid/e;

    .line 15
    .line 16
    invoke-virtual {v0}, Lio/bidmachine/iab/mraid/e;->g()V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lio/bidmachine/iab/mraid/MraidActivity;->h()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
