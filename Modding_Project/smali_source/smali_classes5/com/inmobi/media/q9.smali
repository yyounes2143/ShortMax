.class public final Lcom/inmobi/media/q9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final a:Lcom/inmobi/media/d8;

.field public final b:Ljava/lang/ref/WeakReference;

.field public final c:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;Lcom/inmobi/media/d8;)V
    .locals 1

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "imageView"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "imageAsset"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p3, p0, Lcom/inmobi/media/q9;->a:Lcom/inmobi/media/d8;

    .line 20
    .line 21
    new-instance p3, Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object p3, p0, Lcom/inmobi/media/q9;->b:Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iput-object p1, p0, Lcom/inmobi/media/q9;->c:Ljava/lang/ref/WeakReference;

    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    const/4 p1, 0x1

    .line 2
    sget-object p3, Lcom/inmobi/media/D9;->c:Ljava/util/HashMap;

    .line 3
    .line 4
    const-string p3, "D9"

    .line 5
    .line 6
    const-string v0, "access$getTAG$cp(...)"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    const/4 p3, 0x0

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object p2, p3

    .line 23
    :goto_0
    const-string v0, "onError"

    .line 24
    .line 25
    invoke-static {v0, p2, p1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    if-eqz p2, :cond_a

    .line 30
    .line 31
    iget-object p2, p0, Lcom/inmobi/media/q9;->b:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    check-cast p2, Landroid/content/Context;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/inmobi/media/q9;->c:Ljava/lang/ref/WeakReference;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    check-cast v0, Landroid/widget/ImageView;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/inmobi/media/q9;->a:Lcom/inmobi/media/d8;

    .line 48
    .line 49
    if-eqz p2, :cond_9

    .line 50
    .line 51
    if-eqz v0, :cond_9

    .line 52
    .line 53
    iget-object v2, v1, Lcom/inmobi/media/d8;->p:Ljava/lang/String;

    .line 54
    .line 55
    iget-object v3, v1, Lcom/inmobi/media/d8;->b:Ljava/lang/String;

    .line 56
    .line 57
    const-string v4, "cross_button"

    .line 58
    .line 59
    invoke-static {v4, v3, p1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    if-eqz v3, :cond_9

    .line 64
    .line 65
    if-eqz v2, :cond_7

    .line 66
    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    sub-int/2addr v3, p1

    .line 72
    const/4 v4, 0x0

    .line 73
    move v5, v4

    .line 74
    move v6, v5

    .line 75
    :goto_1
    if-gt v5, v3, :cond_6

    .line 76
    .line 77
    if-nez v6, :cond_1

    .line 78
    .line 79
    move v7, v5

    .line 80
    goto :goto_2

    .line 81
    :cond_1
    move v7, v3

    .line 82
    :goto_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    const/16 v8, 0x20

    .line 87
    .line 88
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-gtz v7, :cond_2

    .line 93
    .line 94
    move v7, p1

    .line 95
    goto :goto_3

    .line 96
    :cond_2
    move v7, v4

    .line 97
    :goto_3
    if-nez v6, :cond_4

    .line 98
    .line 99
    if-nez v7, :cond_3

    .line 100
    .line 101
    move v6, p1

    .line 102
    goto :goto_1

    .line 103
    :cond_3
    add-int/2addr v5, p1

    .line 104
    goto :goto_1

    .line 105
    :cond_4
    if-nez v7, :cond_5

    .line 106
    .line 107
    goto :goto_4

    .line 108
    :cond_5
    add-int/lit8 v3, v3, -0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    :goto_4
    invoke-static {v3, p1, v2, v5}, Lcom/inmobi/media/I7;->a(IILjava/lang/String;I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    goto :goto_5

    .line 116
    :cond_7
    move-object p1, p3

    .line 117
    :goto_5
    if-eqz p1, :cond_8

    .line 118
    .line 119
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    if-nez p1, :cond_9

    .line 124
    .line 125
    :cond_8
    invoke-static {p2, v0}, Lcom/inmobi/media/n9;->a(Landroid/content/Context;Landroid/widget/ImageView;)V

    .line 126
    .line 127
    .line 128
    :cond_9
    new-instance p1, Ljava/util/HashMap;

    .line 129
    .line 130
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 131
    .line 132
    .line 133
    const-string p2, "[ERRORCODE]"

    .line 134
    .line 135
    const-string v0, "603"

    .line 136
    .line 137
    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    const-string p2, "error"

    .line 141
    .line 142
    invoke-virtual {v1, p2, p1, p3, p3}, Lcom/inmobi/media/d8;->a(Ljava/lang/String;Ljava/util/HashMap;Lcom/inmobi/media/L7;Lcom/inmobi/media/z5;)V

    .line 143
    .line 144
    .line 145
    :cond_a
    return-object p3
.end method
