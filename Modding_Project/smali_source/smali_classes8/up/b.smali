.class public final Lup/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lup/b$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Llq/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Llq/a;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Llq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "repository"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p2, p0, Lup/b;->a:Llq/a;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lup/b;->b:Landroid/content/Context;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final a(Lqq/b;Ljava/util/List;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;
    .locals 5
    .param p1    # Lqq/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqq/b;",
            "Ljava/util/List<",
            "Lrq/c0;",
            ">;)",
            "Lio/bidmachine/rendering/measurer/HtmlMeasurer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lrq/c0;

    .line 33
    .line 34
    :try_start_0
    iget-object v3, p0, Lup/b;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2}, Lrq/c0;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2}, Lrq/c0;->b()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {p1, v3, v4, v2}, Lqq/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 45
    .line 46
    .line 47
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-object v2, v0

    .line 50
    :goto_1
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    new-instance p1, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurer;

    .line 64
    .line 65
    invoke-direct {p1, v1}, Lio/bidmachine/rendering/measurer/CompositeHtmlMeasurer;-><init>(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final b(Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)Lup/a;
    .locals 9
    .param p1    # Lrq/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lup/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljq/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lio/bidmachine/rendering/internal/detector/brokencreative/a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "adElementParams"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "adFormListener"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "eventCallback"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Lrq/a;->a()Lio/bidmachine/rendering/model/AdElementType;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lup/b$a;->a:[I

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    aget v0, v1, v0

    .line 27
    .line 28
    const-string v1, "applicationContext"

    .line 29
    .line 30
    packed-switch v0, :pswitch_data_0

    .line 31
    .line 32
    .line 33
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 34
    .line 35
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 36
    .line 37
    .line 38
    throw v0

    .line 39
    :pswitch_0
    new-instance v0, Lvp/a;

    .line 40
    .line 41
    iget-object v2, p0, Lup/b;->b:Landroid/content/Context;

    .line 42
    .line 43
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lup/b;->a:Llq/a;

    .line 47
    .line 48
    move-object v1, v0

    .line 49
    move-object v4, p1

    .line 50
    move-object v5, p2

    .line 51
    move-object v6, p3

    .line 52
    move-object v7, p4

    .line 53
    invoke-direct/range {v1 .. v7}, Lvp/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_0

    .line 57
    .line 58
    :pswitch_1
    new-instance v0, Lzp/a;

    .line 59
    .line 60
    iget-object v2, p0, Lup/b;->b:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lup/b;->a:Llq/a;

    .line 66
    .line 67
    move-object v1, v0

    .line 68
    move-object v4, p1

    .line 69
    move-object v5, p2

    .line 70
    move-object v6, p3

    .line 71
    move-object v7, p4

    .line 72
    invoke-direct/range {v1 .. v7}, Lzp/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 73
    .line 74
    .line 75
    goto/16 :goto_0

    .line 76
    .line 77
    :pswitch_2
    new-instance v0, Lyp/a;

    .line 78
    .line 79
    iget-object v2, p0, Lup/b;->b:Landroid/content/Context;

    .line 80
    .line 81
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lup/b;->a:Llq/a;

    .line 85
    .line 86
    move-object v1, v0

    .line 87
    move-object v4, p1

    .line 88
    move-object v5, p2

    .line 89
    move-object v6, p3

    .line 90
    move-object v7, p4

    .line 91
    invoke-direct/range {v1 .. v7}, Lyp/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :pswitch_3
    new-instance v0, Lxp/a;

    .line 96
    .line 97
    iget-object v2, p0, Lup/b;->b:Landroid/content/Context;

    .line 98
    .line 99
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    iget-object v3, p0, Lup/b;->a:Llq/a;

    .line 103
    .line 104
    move-object v1, v0

    .line 105
    move-object v4, p1

    .line 106
    move-object v5, p2

    .line 107
    move-object v6, p3

    .line 108
    move-object v7, p4

    .line 109
    invoke-direct/range {v1 .. v7}, Lxp/a;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;)V

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :pswitch_4
    new-instance v0, Laq/k;

    .line 114
    .line 115
    iget-object v2, p0, Lup/b;->b:Landroid/content/Context;

    .line 116
    .line 117
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    iget-object v3, p0, Lup/b;->a:Llq/a;

    .line 121
    .line 122
    invoke-virtual {p1}, Lrq/a;->h()Lqq/b;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {p1}, Lrq/a;->i()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v7

    .line 130
    invoke-virtual {p0, v1, v7}, Lup/b;->c(Lqq/b;Ljava/util/List;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 131
    .line 132
    .line 133
    move-result-object v8

    .line 134
    move-object v1, v0

    .line 135
    move-object v4, p1

    .line 136
    move-object v5, p2

    .line 137
    move-object v6, p3

    .line 138
    move-object v7, p4

    .line 139
    invoke-direct/range {v1 .. v8}, Laq/k;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/VideoMeasurer;)V

    .line 140
    .line 141
    .line 142
    goto :goto_0

    .line 143
    :pswitch_5
    new-instance v0, Lwp/f;

    .line 144
    .line 145
    iget-object v2, p0, Lup/b;->b:Landroid/content/Context;

    .line 146
    .line 147
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iget-object v3, p0, Lup/b;->a:Llq/a;

    .line 151
    .line 152
    invoke-virtual {p1}, Lrq/a;->h()Lqq/b;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-virtual {p1}, Lrq/a;->i()Ljava/util/List;

    .line 157
    .line 158
    .line 159
    move-result-object v7

    .line 160
    invoke-virtual {p0, v1, v7}, Lup/b;->a(Lqq/b;Ljava/util/List;)Lio/bidmachine/rendering/measurer/HtmlMeasurer;

    .line 161
    .line 162
    .line 163
    move-result-object v8

    .line 164
    move-object v1, v0

    .line 165
    move-object v4, p1

    .line 166
    move-object v5, p2

    .line 167
    move-object v6, p3

    .line 168
    move-object v7, p4

    .line 169
    invoke-direct/range {v1 .. v8}, Lwp/f;-><init>(Landroid/content/Context;Llq/a;Lrq/a;Lup/c;Ljq/b;Lio/bidmachine/rendering/internal/detector/brokencreative/a;Lio/bidmachine/rendering/measurer/HtmlMeasurer;)V

    .line 170
    .line 171
    .line 172
    :goto_0
    return-object v0

    .line 173
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Lqq/b;Ljava/util/List;)Lio/bidmachine/rendering/measurer/VideoMeasurer;
    .locals 5
    .param p1    # Lqq/b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lqq/b;",
            "Ljava/util/List<",
            "Lrq/c0;",
            ">;)",
            "Lio/bidmachine/rendering/measurer/VideoMeasurer;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    if-eqz p2, :cond_4

    .line 5
    .line 6
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lrq/c0;

    .line 33
    .line 34
    :try_start_0
    iget-object v3, p0, Lup/b;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-virtual {v2}, Lrq/c0;->a()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    invoke-virtual {v2}, Lrq/c0;->b()Ljava/util/Map;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-interface {p1, v3, v4, v2}, Lqq/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Lio/bidmachine/rendering/measurer/VideoMeasurer;

    .line 45
    .line 46
    .line 47
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_1

    .line 49
    :catchall_0
    move-object v2, v0

    .line 50
    :goto_1
    if-eqz v2, :cond_1

    .line 51
    .line 52
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    if-eqz p1, :cond_3

    .line 61
    .line 62
    return-object v0

    .line 63
    :cond_3
    new-instance p1, Lio/bidmachine/rendering/measurer/CompositeVideoMeasurer;

    .line 64
    .line 65
    invoke-direct {p1, v1}, Lio/bidmachine/rendering/measurer/CompositeVideoMeasurer;-><init>(Ljava/util/List;)V

    .line 66
    .line 67
    .line 68
    return-object p1

    .line 69
    :cond_4
    :goto_2
    return-object v0
.end method
