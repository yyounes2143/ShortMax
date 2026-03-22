.class public final Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;
.super Lyd/h;
.source "SearchActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->u1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/r;",
            ">;",
            "Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Lyd/h;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9

    .line 1
    const-string v0, "s"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 7
    .line 8
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v0, Lkotlinx/coroutines/r;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 24
    .line 25
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->d1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v3, v3, Lcom/startshorts/androidplayer/databinding/ActivitySearchBinding;->c:Landroid/widget/ImageView;

    .line 30
    .line 31
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-lez v4, :cond_1

    .line 36
    .line 37
    const/4 v4, 0x0

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/16 v4, 0x8

    .line 40
    .line 41
    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 45
    .line 46
    invoke-static {v3}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->f1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    instance-of v3, v3, Lcom/startshorts/androidplayer/viewmodel/search/d$f;

    .line 59
    .line 60
    if-eqz v3, :cond_2

    .line 61
    .line 62
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 63
    .line 64
    const-string v0, "afterTextChanged -> SearchState.SearchExactlyStart "

    .line 65
    .line 66
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :cond_2
    invoke-static {v0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    sget-object v4, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 79
    .line 80
    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "getBytes(...)"

    .line 85
    .line 86
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    array-length v3, v3

    .line 90
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    if-nez v0, :cond_3

    .line 95
    .line 96
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->f1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->C()Landroidx/lifecycle/MutableLiveData;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/search/d$a;

    .line 111
    .line 112
    if-nez p1, :cond_5

    .line 113
    .line 114
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 115
    .line 116
    const-string v0, "afterTextChanged -> SearchIntent.Init"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 122
    .line 123
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->f1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/search/c$a;->a:Lcom/startshorts/androidplayer/viewmodel/search/c$a;

    .line 128
    .line 129
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_3
    if-ne v3, v1, :cond_4

    .line 134
    .line 135
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 136
    .line 137
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;->f1(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;)Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/search/c$d;

    .line 142
    .line 143
    const-string v3, ""

    .line 144
    .line 145
    invoke-direct {v1, v3}, Lcom/startshorts/androidplayer/viewmodel/search/c$d;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/search/SearchViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/search/c;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 152
    .line 153
    const-string v1, "afterTextChanged -> SearchIntent.SearchFuzzy"

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 159
    .line 160
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-static {v1}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    new-instance v6, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2;->b:Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;

    .line 171
    .line 172
    invoke-direct {v6, v1, p1, v2}, Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity$initSearchLabelEdt$1$2$afterTextChanged$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/search/SearchActivity;Landroid/text/Editable;Lrs/c;)V

    .line 173
    .line 174
    .line 175
    const/4 v7, 0x3

    .line 176
    const/4 v8, 0x0

    .line 177
    const/4 v4, 0x0

    .line 178
    const/4 v5, 0x0

    .line 179
    invoke-static/range {v3 .. v8}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iput-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 184
    .line 185
    :cond_5
    :goto_1
    return-void
.end method
